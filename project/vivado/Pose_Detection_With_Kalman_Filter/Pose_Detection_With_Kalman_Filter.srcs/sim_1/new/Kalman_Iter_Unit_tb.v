`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/24 22:49:22
// Design Name: 
// Module Name: Kalman_Iter_Unit_tb
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


module Kalman_Iter_Unit_tb();


localparam	DATA_NUM	=	128;


reg	signed	[15:0]	roll	[DATA_NUM-1:0];
reg	signed	[15:0]	pitch	[DATA_NUM-1:0];
reg	signed	[15:0]	gyro_x	[DATA_NUM-1:0];
reg	signed	[15:0]	gyro_y	[DATA_NUM-1:0];

reg               clk_in;
reg               rst_n;
reg signed [15:0] gyro_x_bias_in;
reg signed [15:0] gyro_y_bias_in;
reg signed [31:0] roll_in;
reg signed [31:0] gyro_x_in;
reg signed [31:0] pitch_in;
reg signed [31:0] gyro_y_in;
reg               gyro_fp_vld_in;
reg               calib_done_pos_in;

wire signed [31:0] angle_opt_out;
wire               roll_opt_vld_out;
wire               pitch_opt_vld_out;


always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  gyro_x_bias_in = 0;
  gyro_y_bias_in = 0;
  roll_in = 0;
  gyro_x_in = 0;
  pitch_in = 0;
  gyro_y_in = 0;
  gyro_fp_vld_in = 0;
  calib_done_pos_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
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

initial	begin
	$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/roll_data_for_iter.hex", roll);
	$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/pitch_data_for_iter.hex", pitch);
	$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/gyro_x_data_for_iter.hex", gyro_x);
	$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/debug/gyro_y_data_for_iter.hex", gyro_y);
end

integer	i;

initial begin

	# 100
	gyro_x_bias_in	=	-'sd111;
	gyro_y_bias_in	=	-'sd44;

	#2
	calib_done_pos_in	<=	1;
	#3
	calib_done_pos_in	<=	0;

	#100;

	for(i=0 ; i<DATA_NUM; i=i+1) begin
		#100;
		roll_in		=	roll[i];
		pitch_in	=	pitch[i];
		
		gyro_x_in	=	gyro_x[i];
		gyro_y_in	=	gyro_y[i];
		#2;
		gyro_fp_vld_in	<=	1;
		#2;
		gyro_fp_vld_in	<=	0;

		@(negedge	pitch_opt_vld_out);
	end


	#1000;
	$finish;

end

endmodule

