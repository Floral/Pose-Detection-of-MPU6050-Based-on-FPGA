`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/07 19:14:28
// Design Name: 
// Module Name: Kalman_Iter_Unit
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


module Kalman_Iter_Unit(
		input						clk_in,
		input						rst_n,

		input	signed	[15:0]		gyro_x_bias_in,
		input	signed	[15:0]		gyro_y_bias_in,

		input	signed	[31:0]		roll_in,
		input	signed	[31:0]		gyro_x_in,
		input	signed	[31:0]		pitch_in,
		input	signed	[31:0]		gyro_y_in,

		input						gyro_fp_vld_in,
		input						calib_done_pos_in,

		output	signed	[31:0]		angle_opt_out,
		output						roll_opt_vld_out, 
        output						pitch_opt_vld_out
    );

	parameter Q_NEW_ANGLE = 32'd1966;
	parameter DELTA_T = 12'd5;
	parameter Q_ANGLE = 32'd66;
	parameter Q_BIAS  = 32'd197;

	// wire	signed	[31:0]		angle_t_in       ;
    // wire	signed	[31:0]		bias_t_in        ;
    // wire	signed	[31:0]		P_0_0_t_in       ;
    // wire	signed	[31:0]		P_0_1_t_in       ;
    // wire	signed	[31:0]		P_1_0_t_in       ;
    // wire	signed	[31:0]		P_1_1_t_in       ;

    wire						forecast_done ;
    wire						update_done   ;

	wire						forecast_en;
    wire						update_en  ;



    wire	signed	[31:0]		gyro     ;
    wire	signed	[31:0]		new_angle;

    wire	signed	[31:0]		angle_t_1;
    wire	signed	[31:0]		bias_t_1 ;
    wire	signed	[31:0]		P_0_0_t_1;
    wire	signed	[31:0]		P_0_1_t_1;
    wire	signed	[31:0]		P_1_0_t_1;
    wire	signed	[31:0]		P_1_1_t_1;

	wire	signed	[31:0]		angle_t;
    wire	signed	[31:0]		bias_t ;
    wire	signed	[31:0]		P_0_0_t;
    wire	signed	[31:0]		P_0_1_t;
    wire	signed	[31:0]		P_1_0_t;
    wire	signed	[31:0]		P_1_1_t;

	wire	signed	[31:0]		angle;
    wire	signed	[31:0]		bias;
    wire	signed	[31:0]		P_0_0;
    wire	signed	[31:0]		P_0_1;
    wire	signed	[31:0]		P_1_0;
    wire	signed	[31:0]		P_1_1;



	Kalman_Flow_Ctrl 
	U_KALMAN_FLOW_CTRL_0
	(  	.clk_in            	(clk_in            ),
	   	.rst_n             	(rst_n             ),
	   	.roll_in           	(roll_in           ),
	   	.gyro_x_in         	(gyro_x_in         ),
	   	.pitch_in          	(pitch_in          ),
	   	.gyro_y_in         	(gyro_y_in         ),
	   	.gyro_fp_vld_in    	(gyro_fp_vld_in    ),
	   	.gyro_x_bias_in    	(gyro_x_bias_in    ),
	   	.gyro_y_bias_in    	(gyro_y_bias_in    ),
	   	.angle_t_in        	(angle        	),
	   	.bias_t_in         	(bias        	),
	   	.P_0_0_t_in        	(P_0_0       	),
	   	.P_0_1_t_in        	(P_0_1       	),
	   	.P_1_0_t_in        	(P_1_0       	),
	   	.P_1_1_t_in        	(P_1_1       	),
	   	.forecast_done_in  	(forecast_done ),
	   	.update_done_in    	(update_done   ),
	   	.calib_done_pos_in 	(calib_done_pos_in),

	   	.gyro_out          	(gyro          ),
	   	.new_angle_out     	(new_angle     ),
	   	.angle_t_1_out     	(angle_t_1     ),
	   	.bias_t_1_out      	(bias_t_1      ),
	   	.P_0_0_t_1_out     	(P_0_0_t_1     ),
	   	.P_0_1_t_1_out     	(P_0_1_t_1     ),
	   	.P_1_0_t_1_out     	(P_1_0_t_1     ),
	   	.P_1_1_t_1_out     	(P_1_1_t_1     ),
	   	.angle_opt_out     	(angle_opt_out     ),
	   	.roll_opt_vld_out  	(roll_opt_vld_out  ),
	   	.pitch_opt_vld_out 	(pitch_opt_vld_out ),
	   	.forecast_en_out   	(forecast_en   ),
	   	.update_en_out     	(update_en     ));


	Kalman_Forecast 
	#(  .DELTA_T ( DELTA_T ),
        .Q_ANGLE ( Q_ANGLE ),
        .Q_BIAS  ( Q_BIAS  ),
        .CNT_MAX ( 'd4 ))
	U_KALMAN_FORECAST_0
	(  	.clk_in            	(clk_in        ),
	   	.rst_n             	(rst_n         ),
	   	.angle_t_1_in      	(angle_t_1     ),
	   	.bias_t_1_in       	(bias_t_1      ),
	   	.P_0_0_t_1_in      	(P_0_0_t_1     ),
	   	.P_0_1_t_1_in      	(P_0_1_t_1     ),
	   	.P_1_0_t_1_in      	(P_1_0_t_1     ),
	   	.P_1_1_t_1_in      	(P_1_1_t_1     ),
	   	.gyro_in           	(gyro 	       ),
	   	.forecast_en_in    	(forecast_en   ),

	   	.forecast_done_out 	(forecast_done ),
	   	.angle_t_out       	(angle_t       ),
	   	.bias_t_out        	(bias_t        ),
	   	.P_0_0_t_out       	(P_0_0_t       ),
	   	.P_0_1_t_out       	(P_0_1_t       ),
	   	.P_1_0_t_out       	(P_1_0_t       ),
	   	.P_1_1_t_out       	(P_1_1_t       ));


	Kalman_Update 
	#(  .Q_NEW_ANGLE ( Q_NEW_ANGLE ),
        .CNT_MAX     ( 'd3     ))
	U_KALMAN_UPDATE_0
	(  	.clk_in       		(clk_in    ),
	   	.rst_n        		(rst_n     ),
	   	.angle_t_in   		(angle_t   ),
	   	.bias_t_in    		(bias_t    ),
	   	.P_0_0_t_in   		(P_0_0_t   ),
	   	.P_0_1_t_in   		(P_0_1_t   ),
	   	.P_1_0_t_in   		(P_1_0_t   ),
	   	.P_1_1_t_in   		(P_1_1_t   ),
	   	.new_angle_in 		(new_angle ),
	   	.update_en_in    	(update_en  ),

	   	.update_done_out 	(update_done),
	   	.angle_out    		(angle    ),
	   	.bias_out     		(bias     ),
	   	.P_0_0_out    		(P_0_0    ),
	   	.P_0_1_out    		(P_0_1    ),
	   	.P_1_0_out    		(P_1_0    ),
	   	.P_1_1_out    		(P_1_1    ));





endmodule
