`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 12:12:38
// Design Name: 
// Module Name: data_packing
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


module data_packing(
    	input 				clk_in,
    	input 				rst_n,
    	input 		[31:0] 	angle_opt_in,
		input				roll_opt_vld_in,
		input				pitch_opt_vld_in,

		input				tx_rdy_in,

		output	reg	[7:0]	frame_data_out,
		output	reg			data_out_vld
    );

	localparam		STATE_WAIT_ROLL		=	4'b0001;
	localparam		STATE_WAIT_PITCH	=	4'b0010;
	localparam		STATE_DATA_CONV		=	4'b0100;
	localparam		STATE_SEND_FRAME	=	4'b1000;

	localparam		CNT_MAX	=	13;
	
	reg				[3:0]		state_current;		
	reg				[3:0]		state_next;	

	wire	signed	[15:0]		angle_opt_int;
	wire						angle_opt_int_vld;

	reg		signed	[15:0]		roll_opt_int;
	reg		signed	[15:0]		pitch_opt_int;

	reg				[3:0]		byte_cnt;
	wire						add_cnt;
	wire						end_cnt;
	
    reg				[7:0]		check_sum1	;
    reg				[7:0]		check_sum2	;


	data_convert 
	U_DATA_CONVERT_0(  
		.clk_in                ( clk_in             ),
		.rst_n                 ( rst_n              ),
		.angle_opt_fp_in       ( angle_opt_in    ),
		.roll_opt_fp_vld_in    ( roll_opt_vld_in 	),
		.pitch_opt_fp_vld_in   ( pitch_opt_vld_in	),
		.angle_opt_int_out     ( angle_opt_int		),
		.angle_opt_int_vld_out ( angle_opt_int_vld	));

	
	// fsm-1
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	STATE_WAIT_ROLL;
		end
		else begin
			state_current	<=	state_next;
		end
	end

	// fsm-2
	
	always  @(*)begin
		case(state_current)
			STATE_WAIT_ROLL:	begin
				if (roll_opt_vld_in)	state_next	=	STATE_WAIT_PITCH;
				else					state_next	=	STATE_WAIT_ROLL;
			end
			STATE_WAIT_PITCH:	begin
				if (pitch_opt_vld_in)	state_next	=	STATE_DATA_CONV;
				else					state_next	=	STATE_WAIT_PITCH;
			end
			STATE_DATA_CONV:	begin
				if (angle_opt_int_vld)	state_next	=	STATE_SEND_FRAME;
				else					state_next	=	STATE_DATA_CONV;
			end
			STATE_SEND_FRAME:	begin
				if (end_cnt)	state_next	=	STATE_WAIT_ROLL;
				else			state_next	=	STATE_SEND_FRAME;
			end
		endcase
	end

	// fsm-3
	// roll和pitch放大100倍后的int
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			roll_opt_int	<=	1'b0;
			pitch_opt_int	<=	1'b0;
		end
		else begin
			case (state_current)
				STATE_WAIT_PITCH:	begin
					if (angle_opt_int_vld)	roll_opt_int	<=	angle_opt_int;
					else					roll_opt_int	<=	roll_opt_int;
				end
				STATE_DATA_CONV:	begin
					if (angle_opt_int_vld)	pitch_opt_int	<=	angle_opt_int;
					else					pitch_opt_int	<=	pitch_opt_int;
				end
				default:	begin
					roll_opt_int	<=	roll_opt_int ;
					pitch_opt_int	<=	pitch_opt_int;
				end
			endcase
		end
	end

	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			byte_cnt <= 0;
		end
		else if(add_cnt)begin
			if(end_cnt)
				byte_cnt <= 0;
			else
				byte_cnt <= byte_cnt + 1;
		end
	end
	
	assign add_cnt = (state_current==STATE_SEND_FRAME) && tx_rdy_in;	//	暂时是这样处理tx_rdy，这个处理并不好
	assign end_cnt = add_cnt && byte_cnt==(CNT_MAX-1) ;   

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			data_out_vld	<=	1'b0;		
			frame_data_out	<=	8'h00;
			check_sum1		<=	8'hAA+8'hFF+8'h0A;
			check_sum2		<=	8'hAA*4+8'hFF*3+8'h03*2+8'h07;
		end
		else if (state_current == STATE_SEND_FRAME)begin
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
					frame_data_out	<=	roll_opt_int[7:0];
					check_sum1		<=	check_sum1+roll_opt_int[7:0];
				end
				5:	begin
					frame_data_out	<=	roll_opt_int[15:8];
					check_sum1		<=	check_sum1+roll_opt_int[15:8];
					check_sum2		<=	check_sum2+check_sum1;
				end
				6:	begin
					frame_data_out	<=	pitch_opt_int[7:0];
					check_sum1		<=	check_sum1+pitch_opt_int[7:0];
					check_sum2		<=	check_sum2+check_sum1;
				end
				7:	begin
					frame_data_out	<=	pitch_opt_int[15:8];
					check_sum1		<=	check_sum1+pitch_opt_int[15:8];
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

endmodule
