`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/23 15:49:40
// Design Name: 
// Module Name: test_uart_with_fifo
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


module test_uart_with_fifo(
    input					clk_in,
    input 					rst_n,
	input					rx,

    output 					tx1,
	output					tx2,
	output		[7:0]		frame_data,
	output					data_vld
    );

	localparam CLK_FREQUENCE	=	64'd50_000_000;
	localparam BAUD_RATE		=	64'd115200;
	localparam DATA_WIDTH		=	'd8;
	localparam CNT_MAX			=	'd13;
	localparam DATA_NUM			=	'd64;


	reg		[15:0]		roll_data	[DATA_NUM-1:0];
	reg		[15:0]		pitch_data	[DATA_NUM-1:0];

	initial begin
		$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/roll_data.hex", roll_data);
		$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/pitch_data.hex", pitch_data);
	end


	reg				state_current;
	reg				state_next;

	reg		[7:0]	cnt;
	reg		[4:0]	byte_cnt;

	// wire			timer_en;
	wire			timer_tick;
	wire			add_cnt;
	wire			end_cnt;
	wire			add_byte;
	wire			end_byte;

	wire			tx;
	wire			tx_rdy;

	reg				data_out_vld;	
	reg		[7:0]	frame_data_out;
	reg		[7:0]	check_sum1	;	
	reg		[7:0]	check_sum2	;	


	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	1'b0;
		end
		else begin
			state_current	<=	state_next;
		end
	end

	always  @(*)begin
		case(state_current)
			0: begin
				if (timer_tick)	state_next	=	1'b1;
				else			state_next	=	1'b0;
			end
			1: begin
				if (end_byte)	state_next	=	1'b0;
				else			state_next	=	1'b1;
			end
		endcase
	end


	mpu_read_timer
	u_mpu_read_timer_0 (
		.clk_in			(clk_in			),
    	.rst_n			(rst_n			),
		.timer_en_in	(1'b1			),
                                        
		.timer_tick_out	(timer_tick		)
	);
	
	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			cnt <= 0;
		end
		else if(add_cnt)begin
			if(end_cnt)
				cnt <= 0;
			else
				cnt <= cnt + 1;
		end
	end
	
	assign add_cnt = end_byte;       
	assign end_cnt = add_cnt && cnt==(DATA_NUM - 1) ;   



	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			byte_cnt <= 0;
		end
		else if(add_byte)begin
			if(end_byte)
				byte_cnt <= 0;
			else
				byte_cnt <= byte_cnt + 1;
		end
	end
	
	assign add_byte = (state_current==1'b1) && tx_rdy;	//	暂时是这样处理tx_rdy，这个处理并不好
	assign end_byte = add_byte && byte_cnt==(CNT_MAX-1) ;   


	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			data_out_vld	<=	1'b0;		
			frame_data_out	<=	8'h00;
			check_sum1		<=	8'hAA+8'hFF+8'h0A;
			check_sum2		<=	8'hAA*4+8'hFF*3+8'h03*2+8'h07;
		end
		else if (state_current == 1'b1)begin
			data_out_vld	<=	1'b1;		

			case (byte_cnt)
				0:	begin
					frame_data_out	<=	8'hAA;
				end
				1:	begin
					frame_data_out	<=	8'hFF;
				end
				2:	begin
					frame_data_out	<=	8'h03;
				end
				3:	begin
					frame_data_out	<=	8'h07;
				end
				4:	begin
					frame_data_out	<=	roll_data[cnt][7:0];
					check_sum1		<=	check_sum1+roll_data[cnt][7:0];
				end
				5:	begin
					frame_data_out	<=	roll_data[cnt][15:8];
					check_sum1		<=	check_sum1+roll_data[cnt][15:8];
					check_sum2		<=	check_sum2+check_sum1;
				end
				6:	begin
					frame_data_out	<=	pitch_data[cnt][7:0];
					check_sum1		<=	check_sum1+pitch_data[cnt][7:0];
					check_sum2		<=	check_sum2+check_sum1;
				end
				7:	begin
					frame_data_out	<=	pitch_data[cnt][15:8];
					check_sum1		<=	check_sum1+pitch_data[cnt][15:8];
					check_sum2		<=	check_sum2+check_sum1;
				end
				8:	begin
					frame_data_out	<=	8'h00;	//yaw_opt_int[7:0];
					check_sum1		<=	check_sum1;
					check_sum2		<=	check_sum2+check_sum1;
				end
				9:	begin
					frame_data_out	<=	8'h00;
					check_sum1		<=	check_sum1;
					check_sum2		<=	check_sum2+check_sum1;
				end
				10:	begin
					frame_data_out	<=	8'h00;	// fusion
					check_sum1		<=	check_sum1;
					check_sum2		<=	check_sum2+check_sum1;
				end
				11:	begin
					frame_data_out	<=	check_sum1;
					check_sum2		<=	check_sum2+check_sum1;
				end
				12:	begin
					frame_data_out	<=	check_sum2;
				end
				default: begin
					check_sum1		<=	check_sum1;
					check_sum2		<=	check_sum2;
					frame_data_out	<=	frame_data_out;
				end
			endcase
		end
		else begin
			data_out_vld	<=	1'b0;
			check_sum1		<=	8'hAA+8'hFF+8'h0A;
			check_sum2		<=	8'hAA*4+8'hFF*3+8'h03*2+8'h07;
		end
	end

                                           
                                           
	uart_with_fifo #(
		.CLK_FREQUENCE (CLK_FREQUENCE ),
    	.BAUD_RATE     (BAUD_RATE     ),
    	.DATA_WIDTH    (DATA_WIDTH    ))
	U_UART_WITH_FIFO_0(
	 	.clk_in      (clk_in      ),
		.rst_n       (rst_n       ),
		.rx          (rx          ),
		.tx_data_in  (frame_data_out),
		.tx_data_vld (data_out_vld),
	//	.rx_rdy      (rx_rdy      ),
		.tx          (tx          ),
		.tx_rdy      (tx_rdy      )
	//	.rx_data_out (rx_data_out ),
	//	.rx_data_vld (rx_data_vld )
	);

	assign	tx1 = tx;
	assign	tx2	= tx;

	assign	frame_data	=	frame_data_out;
	assign	data_vld	=	data_out_vld;

endmodule
