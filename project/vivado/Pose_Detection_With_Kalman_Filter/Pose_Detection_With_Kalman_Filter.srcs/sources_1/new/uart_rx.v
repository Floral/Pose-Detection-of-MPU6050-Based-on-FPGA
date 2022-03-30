`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 11:59:33
// Design Name: 
// Module Name: uart_rx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_rx #(
		parameter	CLK_FREQUENCE   = 	50_000_000,
		parameter	BAUD_RATE		= 	9600,
		parameter	DATA_WIDTH		=	8
	)(
		input							clk_in	,
		input							rst_n	,

		output		[DATA_WIDTH-1:0]	m_axis_tdata	,
		output							m_axis_tvalid	,
		input							m_axis_tready	,

		input							rx	,

		output							rx_busy_out
    );

	localparam		STATE_START	=	3'b001;
	localparam		STATE_DATA	=	3'b010;
	localparam		STATE_STOP	=	3'b100;

	wire						rx_bps_tick;

	reg		[1:0]				rx_sync;
	reg		[2:0]				clk_cnt = 3'b111;

	reg							rx_bit;

	reg		[2:0]				state_current;
	reg		[2:0]				state_next;
	

	reg		[3:0]				tick_cnt;
	wire						add_tick_cnt;
    wire			 			end_tick_cnt;

	reg		[3:0]				bit_cnt;
	wire						add_bit_cnt;
    wire					 	end_bit_cnt;

	reg		[DATA_WIDTH-1:0]	rx_r;
	reg							m_axis_tvalid_r;

	baud_gen #(
		.CLK_FREQUENCE      (CLK_FREQUENCE      ),
		.BAUD_RATE          (BAUD_RATE          ),
		.OVERSAMPLING		(16)
	)
	U_BAUD_GEN_1 (
		.clk_in    	(clk_in     ),
		.rst_n     	(rst_n      ),
		.bps_clk_en	(1'b1		),
		.bps_clk   	(rx_bps_tick));

	// 两个寄存器完成非同步信号的同步,及消除亚稳态
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			rx_sync	<=	1'b0;
		end
		else if (rx_bps_tick) begin
			rx_sync	<=	{rx_sync[0], rx};
		end
	end
	// rx_sync[1]就是经过两个寄存器之后的值

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			clk_cnt	<=	3'b111;
		end
		else if (rx_bps_tick)begin
			if (rx_sync[1] && clk_cnt!=3'b111)			clk_cnt	<=	clk_cnt + 1;
			else if (~rx_sync[1] && clk_cnt!=3'b000)	clk_cnt	<=	clk_cnt - 1;

			if (clk_cnt==3'b111)		rx_bit	<=	1'b1;	// rx_bit采样的是一个bit中间的稳定值
			else if (clk_cnt==3'b000)	rx_bit	<=	1'b0;
		end
	end
	
	// fsm-1
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	STATE_START;
		end
		else begin
			state_current	<=	state_next;
		end
	end

	// fsm-2
	always  @(*)begin
		case(state_current)
			STATE_START:	begin
				if (rx_bit == 1'b0)	state_next	=	STATE_DATA;
				else				state_next	=	STATE_START;
			end
			STATE_DATA:	begin
				if (end_bit_cnt)	state_next	=	STATE_STOP;
				else				state_next	=	STATE_DATA;
			end
			STATE_STOP:	begin
				if (end_tick_cnt)	state_next	=	STATE_START;
				else				state_next	=	STATE_STOP;
			end
			default	:	begin
				state_next	=	STATE_START;
			end
		endcase
	end

	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			tick_cnt <= 0;
		end
		else if(add_tick_cnt)begin
			if(end_tick_cnt)
				tick_cnt <= 0;
			else
				tick_cnt <= tick_cnt + 1;
		end
	end
	
	assign add_tick_cnt = (state_current != STATE_START) && rx_bps_tick;       
	assign end_tick_cnt = add_tick_cnt && tick_cnt==(16-1);   
	//assign sample_now	=	end_tick_cnt;
	
	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			bit_cnt <= 0;
		end
		else if(add_bit_cnt)begin
			if(end_bit_cnt)
				bit_cnt <= 0;
			else
				bit_cnt <= bit_cnt + 1;
		end
	end
	
	assign add_bit_cnt = end_tick_cnt;       
	assign end_bit_cnt = add_bit_cnt && bit_cnt==(DATA_WIDTH-1);   


	// fsm-3
	//
	assign	m_axis_tdata	=	rx_r;
	assign	m_axis_tvalid	=	m_axis_tvalid_r;
	assign	rx_busy_out		=	state_next!=STATE_START;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			rx_r	<=	1'b0;
			m_axis_tvalid_r	<=	1'b0;
		end
		else if (end_tick_cnt)begin
			rx_r	<=	{rx_bit, rx_r[DATA_WIDTH-1:1]};

			if (end_bit_cnt)
				m_axis_tvalid_r	<=	1'b1;
			else
				m_axis_tvalid_r	<=	1'b0;
		end
		else begin
			rx_r	<=	rx_r;
			m_axis_tvalid_r	<=	1'b0;
		end
	end

endmodule
