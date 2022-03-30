`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/25 12:05:44
// Design Name: 
// Module Name: test_kalman_iter_unit
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


module test_kalman_iter_unit(
    input clk_in,
    input rst_n
    );

	localparam	DATA_NUM	=	128;
	
	reg	signed	[15:0]	roll	[DATA_NUM-1:0];
	reg	signed	[15:0]	pitch	[DATA_NUM-1:0];
	reg	signed	[15:0]	gyro_x	[DATA_NUM-1:0];
	reg	signed	[15:0]	gyro_y	[DATA_NUM-1:0];
	
	reg               clk_in;
	reg               rst_n;
	reg signed [15:0] gyro_x_bias_in	=	-'sd111;
	reg signed [15:0] gyro_y_bias_in	=	-'sd44;
	reg signed [31:0] roll_in;
	reg signed [31:0] gyro_x_in;
	reg signed [31:0] pitch_in;
	reg signed [31:0] gyro_y_in;
	reg               gyro_fp_vld_in;
	reg               calib_done_pos_in;
	
	wire signed [31:0] angle_opt_out;
	wire               roll_opt_vld_out;
	wire               pitch_opt_vld_out;

	initial	begin
		$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/roll_data_for_iter.hex", roll);
		$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/pitch_data_for_iter.hex", pitch);
		$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/gyro_x_data_for_iter.hex", gyro_x);
		$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/gyro_y_data_for_iter.hex", gyro_y);
	end


	localparam	STATE_IDLE		=	3'b001;
	localparam	STATE_INITIAL	=	3'b010;
	localparam	STATE_DATA		=	3'b100;

	always  @(posedge clk or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	IDLE;
		end
		else begin
			state_current	<=	state_next;
		end
	end

	// fsm-2
	always  @(*)begin
		case (state_current)
			STATE_IDLE:

			STATE_INITIAL:

			STATE_DATA:

		endcase
	end


	always @(posedge clk or negedge rst_n)begin
		if(!rst_n)begin
			cnt0 <= 0;
		end
		else if(add_cnt0)begin
			if(end_cnt0)
				cnt0 <= 0;
			else
				cnt0 <= cnt0 + 1;
		end
	end
	
	assign add_cnt0 = ;
	assign end_cnt0 = add_cnt0 && cnt0== ;
	
	always @(posedge clk or negedge rst_n)begin 
		if(!rst_n)begin
			cnt1 <= 0;
		end
		else if(add_cnt1)begin
			if(end_cnt1)
				cnt1 <= 0;
			else
				cnt1 <= cnt1 + 1;
		end
	end
	
	assign add_cnt1 = end_cnt0;
	assign end_cnt1 = add_cnt1 && cnt1== ;
	
	always @(posedge clk or negedge rst_n)begin
		if(!rst_n)begin
			cnt2 <= 0;
		end
		else if(add_cnt2)begin
			if(end_cnt2)
				cnt2 <= 0;
			else
				cnt2 <= cnt2 + 1;
		end
	end
	
	assign add_cnt2 = end_cnt1;
	assign end_cnt2 = add_cnt2 && cnt2== ;
	 


	mpu_read_timer
	u_mpu_read_timer_0 (
		.clk_in			(clk_in			),
    	.rst_n			(rst_n			),
		.timer_en_in	(1'b1			),
                                        
		.timer_tick_out	(timer_tick		)
	);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			gyro_fp_vld_in	<=	1'b0;
		end
		else if (timer_tick)begin
			gyro_fp_vld_in	<=	1'b1;
		end
		else begin
			gyro_fp_vld_in	<=	1'b0;
		end
	end


	Kalman_Iter_Unit U_KALMAN_ITER_UNIT_0
	(  .clk_in            ( clk_in            ),
	   .rst_n             ( rst_n             ),
	   .gyro_x_bias_in    ( gyro_x_bias_in    ),
	   .gyro_y_bias_in    ( gyro_y_bias_in    ),
	   .roll_in           ( roll_in           ),
	   .gyro_x_in         ( gyro_x_in         ),
	   .pitch_in          ( pitch_in          ),
	   .gyro_y_in         ( gyro_y_in         ),
	   .gyro_fp_vld_in    ( gyro_fp_vld_in    ),
	   .calib_done_pos_in ( calib_done_pos_in ),
	   .angle_opt_out     ( angle_opt_out     ),
	   .roll_opt_vld_out  ( roll_opt_vld_out  ),
	   .pitch_opt_vld_out ( pitch_opt_vld_out ));



endmodule
