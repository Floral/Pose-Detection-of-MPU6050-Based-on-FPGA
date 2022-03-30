`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/09 00:18:25
// Design Name: 
// Module Name: Kalman_Filter
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


module Kalman_Filter(
		input						clk_in,
		input						rst_n,
	
		input						key_flag_in,
		input						config_done,
		input						i2c_ack_5_pos_in,
		input						acc_rdy_pos_in ,
        input						gyro_rdy_pos_in,


    	input 	signed	[15:0] 		acc_x_in,
    	input 	signed	[15:0] 		acc_y_in,
    	input 	signed	[15:0] 		acc_z_in,
    	input 	signed	[15:0] 		temp_in,
    	input 	signed	[15:0] 		gyro_x_in,
    	input 	signed	[15:0] 		gyro_y_in,
    	input 	signed	[15:0] 		gyro_z_in,

		output						calib_done,

		output	signed	[31:0]		angle_opt_out   , 
        output						roll_opt_vld_out, 
        output						pitch_opt_vld_out

    );

   	wire 	[15:0] 		acc_x_bias	;
   	wire 	[15:0] 		acc_y_bias	;
   	wire 	[15:0] 		acc_z_bias	;
   	wire 	[15:0] 		temp_bias	;
   	wire 	[15:0] 		gyro_x_bias	;
   	wire 	[15:0] 		gyro_y_bias	;
   	wire 	[15:0] 		gyro_z_bias	;

	wire				calib_done	;
	
	Kalman_Calibration 
	u_Kalman_Calibration_0 (
    	.clk_in				(clk_in				),
    	.rst_n				(rst_n				),
    	.acc_x_in			(acc_x_in			),
    	.acc_y_in			(acc_y_in			),
    	.acc_z_in			(acc_z_in			),
    	.temp_in			(temp_in			),
    	.gyro_x_in			(gyro_x_in			),
    	.gyro_y_in			(gyro_y_in			),
    	.gyro_z_in			(gyro_z_in			),
    	.i2c_ack_5_pos_in	(i2c_ack_5_pos_in	),
		.config_done		(config_done		),
		.key_flag_in		(key_flag_in		),
							   				
    	.calib_done_out		(calib_done			),
    	.acc_x_bias_out		(acc_x_bias	),
    	.acc_y_bias_out		(acc_y_bias	),
    	.acc_z_bias_out		(acc_z_bias	),
    	.temp_bias_out		(temp_bias	),
    	.gyro_x_bias_out	(gyro_x_bias),
    	.gyro_y_bias_out	(gyro_y_bias),
    	.gyro_z_bias_out	(gyro_z_bias)
    );

	Kalman_Calculate U_KALMAN_CALCULATE_0
	(  	.clk_in            	(clk_in         ),
	   	.rst_n             	(rst_n          ),
	   	.calib_done_in    	(calib_done     ),
	   	.acc_x_bias_in     	(acc_x_bias	    ),
	   	.acc_y_bias_in     	(acc_y_bias	    ),
	   	.acc_z_bias_in     	(acc_z_bias	    ),
	   	.temp_bias_in      	(temp_bias      ),
	   	.gyro_x_bias_in    	(gyro_x_bias    ),
	   	.gyro_y_bias_in    	(gyro_y_bias    ),
	   	.gyro_z_bias_in    	(gyro_z_bias    ),
	   	.acc_x_in          	(acc_x_in         ),
	   	.acc_y_in          	(acc_y_in         ),
	   	.acc_z_in          	(acc_z_in         ),
	   	.temp_in           	(temp_in          ),
	   	.gyro_x_in         	(gyro_x_in        ),
	   	.gyro_y_in         	(gyro_y_in        ),
	   	.gyro_z_in         	(gyro_z_in        ),
	   	.acc_rdy_pos_in    	(acc_rdy_pos_in   ),
	   	.gyro_rdy_pos_in   	(gyro_rdy_pos_in  ),

	   	.angle_opt_out     	(angle_opt_out    ),
	   	.roll_opt_vld_out  	(roll_opt_vld_out ),
	   	.pitch_opt_vld_out 	(pitch_opt_vld_out));


endmodule
