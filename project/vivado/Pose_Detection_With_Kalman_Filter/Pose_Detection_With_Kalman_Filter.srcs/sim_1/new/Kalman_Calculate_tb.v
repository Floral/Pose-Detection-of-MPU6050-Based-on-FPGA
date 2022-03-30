`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/28 13:59:57
// Design Name: 
// Module Name: Kalman_Calculate_tb
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


module Kalman_Calculate_tb();


reg               clk_in;
reg               rst_n;
reg               calib_done_in;
reg signed [15:0] acc_x_bias_in;
reg signed [15:0] acc_y_bias_in;
reg signed [15:0] acc_z_bias_in;
reg signed [15:0] temp_bias_in;
reg signed [15:0] gyro_x_bias_in;
reg signed [15:0] gyro_y_bias_in;
reg signed [15:0] gyro_z_bias_in;
reg signed [15:0] acc_x_in;
reg signed [15:0] acc_y_in;
reg signed [15:0] acc_z_in;
reg signed [15:0] temp_in;
reg signed [15:0] gyro_x_in;
reg signed [15:0] gyro_y_in;
reg signed [15:0] gyro_z_in;
reg               acc_rdy_pos_in;
reg               gyro_rdy_pos_in;

wire signed [31:0] angle_opt_out;
wire               roll_opt_vld_out;
wire               pitch_opt_vld_out;

wire				angle_out_vld;

assign	angle_out_vld	=	pitch_opt_vld_out;

always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  calib_done_in = 0;
  acc_x_bias_in = 0;
  acc_y_bias_in = 0;
  acc_z_bias_in = 0;
  temp_bias_in = 0;
  gyro_x_bias_in = 0;
  gyro_y_bias_in = 0;
  gyro_z_bias_in = 0;
  acc_x_in = 0;
  acc_y_in = 0;
  acc_z_in = 0;
  temp_in = 0;
  gyro_x_in = 0;
  gyro_y_in = 0;
  gyro_z_in = 0;
  acc_rdy_pos_in = 0;
  gyro_rdy_pos_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #4 rst_n = 1;
end

initial begin
  #7 calib_done_in = 1;

  #500 
  acc_rdy_pos_in = 1;
  #2
  acc_rdy_pos_in = 0;
  #400
  gyro_rdy_pos_in = 1;
  #2 
  gyro_rdy_pos_in = 0;

  @ (negedge angle_out_vld) begin
  	#500 
  	acc_rdy_pos_in = 1;
  	#2
  	acc_rdy_pos_in = 0;
  	#400
  	gyro_rdy_pos_in = 1;
  	#2 
  	gyro_rdy_pos_in = 0;
  end

end


Kalman_Calculate U_KALMAN_CALCULATE_0
(  .clk_in            ( clk_in            ),
   .rst_n             ( rst_n             ),
   .calib_done_in     ( calib_done_in     ),
   .acc_x_bias_in     ( acc_x_bias_in     ),
   .acc_y_bias_in     ( acc_y_bias_in     ),
   .acc_z_bias_in     ( acc_z_bias_in     ),
   .temp_bias_in      ( temp_bias_in      ),
   .gyro_x_bias_in    ( gyro_x_bias_in    ),
   .gyro_y_bias_in    ( gyro_y_bias_in    ),
   .gyro_z_bias_in    ( gyro_z_bias_in    ),
   .acc_x_in          ( acc_x_in          ),
   .acc_y_in          ( acc_y_in          ),
   .acc_z_in          ( acc_z_in          ),
   .temp_in           ( temp_in           ),
   .gyro_x_in         ( gyro_x_in         ),
   .gyro_y_in         ( gyro_y_in         ),
   .gyro_z_in         ( gyro_z_in         ),
   .acc_rdy_pos_in    ( acc_rdy_pos_in    ),
   .gyro_rdy_pos_in   ( gyro_rdy_pos_in   ),
	
   .angle_opt_out     ( angle_opt_out     ),
   .roll_opt_vld_out  ( roll_opt_vld_out  ),
   .pitch_opt_vld_out ( pitch_opt_vld_out ));

reg		[3:0]		i;
reg		[3:0]		k;

always  @(posedge clk_in or negedge rst_n)begin
	if(rst_n==1'b0)begin
		i	<=	0;
		k	<=	0;
		acc_x_bias_in <= 16'sd1353;
  		acc_y_bias_in <= -16'sd370;
  		acc_z_bias_in <= -16'sd68;
  		temp_bias_in  <= 0;
  		gyro_x_bias_in <= -16'sd112;
  		gyro_y_bias_in <= -16'sd35;
  		gyro_z_bias_in <= -16'sd44;
  		acc_x_in <= 0;
  		acc_y_in <= 0;
  		acc_z_in <= 0;
  		temp_in <= 0;
  		gyro_x_in <= 0;
  		gyro_y_in <= 0;
  		gyro_z_in <= 0;
  		// acc_rdy_pos_in <= 0;
  		// gyro_rdy_pos_in <= 0;
	end
	else begin
		case (i)
			0: begin
				if (angle_out_vld) begin
					i	<=	i + 1;
					k	<=	1'b0;
  					acc_x_in 	<= 	16'sd0;
  					acc_y_in 	<= 	-16'sd0;
  					acc_z_in 	<= 	16'sd0;
  					temp_in 	<= 	16'sd0;
  					gyro_x_in 	<= 	-16'sd0;
  					gyro_y_in 	<= 	-16'sd0;
  					gyro_z_in 	<= 	-16'sd0;
				end
				else begin
  					acc_x_in 	<= 	16'sd1356;
  					acc_y_in 	<= 	-16'sd370;
  					acc_z_in 	<= 	16'sd16302;
  					temp_in 	<= 	16'sd0;
  					gyro_x_in 	<= 	-16'sd112;
  					gyro_y_in 	<= 	-16'sd34;
  					gyro_z_in 	<= 	-16'sd44;
				end

				if (!k) begin
					// acc_rdy_pos_in	<=	1'b1;
					// gyro_rdy_pos_in	<=	1'b1;
					k	<=	1'b1;
				end 
				else begin
					// acc_rdy_pos_in	<=	1'b0;
					// gyro_rdy_pos_in	<=	1'b0;
				end
			end
			1: begin
				if (angle_out_vld) begin
					i	<=	i + 1;
					k	<=	1'b0;
  					acc_x_in 	<= 	16'sd0;
  					acc_y_in 	<= 	-16'sd0;
  					acc_z_in 	<= 	16'sd0;
  					temp_in 	<= 	16'sd0;
  					gyro_x_in 	<= 	-16'sd0;
  					gyro_y_in 	<= 	-16'sd0;
  					gyro_z_in 	<= 	-16'sd0;
				end
				else begin
  					acc_x_in 	<= 	16'sd17234;
  					acc_y_in 	<= 	-16'sd728;
  					acc_z_in 	<= 	-16'sd1332;
  					temp_in 	<= 	16'sd0;
  					gyro_x_in 	<= 	-16'sd114;
  					gyro_y_in 	<= 	-16'sd73;
  					gyro_z_in 	<= 	-16'sd44;
				end

				if (!k) begin
					// acc_rdy_pos_in	<=	1'b1;
					// gyro_rdy_pos_in	<=	1'b1;
					k	<=	1'b1;
				end 
				else begin
					// acc_rdy_pos_in	<=	1'b0;
					// gyro_rdy_pos_in	<=	1'b0;
				end
			end

			2: begin
				i	<=	i;
			end

		endcase
	end
end



initial begin

end

endmodule

