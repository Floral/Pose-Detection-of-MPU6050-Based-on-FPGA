`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 11:55:45
// Design Name: 
// Module Name: Kalman_Calibration_tb
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


module Kalman_Calibration_tb();


reg               clk_in;
reg               rst_n;
reg signed [15:0] acc_x_in;
reg signed [15:0] acc_y_in;
reg signed [15:0] acc_z_in;
reg signed [15:0] temp_in;
reg signed [15:0] gyro_x_in;
reg signed [15:0] gyro_y_in;
reg signed [15:0] gyro_z_in;
reg	signed	[25:0]		acc_x_bias_sum;
reg	signed	[25:0]		acc_y_bias_sum;
reg	signed	[25:0]		acc_z_bias_sum;
reg	signed	[25:0]		temp_bias_sum;
reg	signed	[25:0]		gyro_x_bias_sum;
reg	signed	[25:0]		gyro_y_bias_sum;
reg	signed	[25:0]		gyro_z_bias_sum;



reg               i2c_ack_5_pos_in;
reg               config_done;
reg               key_flag_in;

wire               calib_done_out;
wire signed [15:0] acc_x_bias_out;
wire signed [15:0] acc_y_bias_out;
wire signed [15:0] acc_z_bias_out;
wire signed [15:0] temp_bias_out;
wire signed [15:0] gyro_x_bias_out;
wire signed [15:0] gyro_y_bias_out;
wire signed [15:0] gyro_z_bias_out;


always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  acc_x_in = 0;
  acc_y_in = 0;
  acc_z_in = 0;
  temp_in = 0;
  gyro_x_in = 0;
  gyro_y_in = 0;
  gyro_z_in = 0;

	acc_x_bias_sum	=	0;	
    acc_y_bias_sum	=	0;	
    acc_z_bias_sum	=	0;	
    temp_bias_sum	=	0;	
    gyro_x_bias_sum	=	0;	
    gyro_y_bias_sum	=	0;	
    gyro_z_bias_sum	=	0;	

  i2c_ack_5_pos_in = 0;
  config_done = 0;
  key_flag_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
  #2 config_done = 1;
end


integer	i;

initial begin

	#50;

	wait(rst_n);


	for (i = 0; i < 1024; i=i+1) begin
		@(negedge clk_in);
		acc_x_in = 'sd1353	+	($random % 20);
  		acc_y_in = -'sd370	+	($random % 20);
  		acc_z_in = -'sd68	+	($random % 20);
  		temp_in = -'sd20	+	($random % 20);
  		gyro_x_in = -'sd112	+	($random % 20);
  		gyro_y_in = -'sd35	+	($random % 20);
  		gyro_z_in = -'sd44	+	($random % 20);

		acc_x_bias_sum	=	acc_x_bias_sum	+	acc_x_in; 
        acc_y_bias_sum	=	acc_y_bias_sum	+	acc_y_in; 
        acc_z_bias_sum	=	acc_z_bias_sum	+	acc_z_in; 
        temp_bias_sum	=	temp_bias_sum	+  	temp_in ;
        gyro_x_bias_sum	=	gyro_x_bias_sum	+	gyro_x_in;
        gyro_y_bias_sum	=	gyro_y_bias_sum	+	gyro_y_in;
        gyro_z_bias_sum	=	gyro_z_bias_sum	+	gyro_z_in;

		#4
		i2c_ack_5_pos_in = 1;
		#2
		i2c_ack_5_pos_in = 0;
		#1;
		
		// $display("acc_x_in: %d", acc_x_in);
		// $display("acc_y_in: %d", acc_y_in);
		// $display("acc_z_in: %d", acc_z_in);
		// $display("temp_in: %d", temp_in);
		// $display("gyro_x_in: %d", gyro_x_in);
		// $display("gyro_y_in: %d", gyro_y_in);
		// $display("gyro_z_in: %d", gyro_z_in);

	end

end


initial begin

	wait(calib_done_out);

	if (acc_x_bias_sum/1024 == acc_x_bias_out)
		$display("acc_x_bias correct!");	
	else
		$display("acc_x_bias wrong! %d", acc_x_bias_sum/1024);	

	if (acc_y_bias_sum/1024 == acc_y_bias_out)
		$display("acc_y_bias correct!");	
	else
		$display("acc_y_bias wrong! %d", acc_y_bias_sum/1024);	

	if (acc_z_bias_sum/1024 == acc_z_bias_out)
		$display("acc_z_bias correct!");	
	else
		$display("acc_z_bias wrong! %d", acc_z_bias_sum/1024);	


	if (temp_bias_sum/1024 == temp_bias_out)
		$display("temp_bias correct!");	
	else
		$display("temp_bias wrong! %d", temp_bias_sum/1024);	

	if (gyro_x_bias_sum/1024 == gyro_x_bias_out)
		$display("gyro_x_bias correct!");	
	else
		$display("gyro_x_bias wrong! %d", gyro_x_bias_sum/1024);	

	if (gyro_y_bias_sum/1024 == gyro_y_bias_out)
		$display("gyro_y_bias correct!");	
	else
		$display("gyro_y_bias wrong! %d", gyro_y_bias_sum/1024);	
	if (gyro_z_bias_sum/1024 == gyro_z_bias_out)
		$display("gyro_z_bias correct!");	
	else
		$display("gyro_z_bias wrong! %d", gyro_z_bias_sum/1024);	

	#10
	$finish;
end


Kalman_Calibration U_KALMAN_CALIBRATION_0
(  .clk_in           ( clk_in           ),
   .rst_n            ( rst_n            ),
   .acc_x_in         ( acc_x_in         ),
   .acc_y_in         ( acc_y_in         ),
   .acc_z_in         ( acc_z_in         ),
   .temp_in          ( temp_in          ),
   .gyro_x_in        ( gyro_x_in        ),
   .gyro_y_in        ( gyro_y_in        ),
   .gyro_z_in        ( gyro_z_in        ),
   .i2c_ack_5_pos_in ( i2c_ack_5_pos_in ),
   .config_done      ( config_done      ),
   .key_flag_in      ( key_flag_in      ),
   .calib_done_out   ( calib_done_out   ),
   .acc_x_bias_out   ( acc_x_bias_out   ),
   .acc_y_bias_out   ( acc_y_bias_out   ),
   .acc_z_bias_out   ( acc_z_bias_out   ),
   .temp_bias_out    ( temp_bias_out    ),
   .gyro_x_bias_out  ( gyro_x_bias_out  ),
   .gyro_y_bias_out  ( gyro_y_bias_out  ),
   .gyro_z_bias_out  ( gyro_z_bias_out  ));


initial begin



end

endmodule
