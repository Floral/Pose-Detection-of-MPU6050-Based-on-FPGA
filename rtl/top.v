`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/09 00:18:25
// Design Name: 
// Module Name: top
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


module top(
		input				clk_in,
		input				rst_n,

		input	[3:0]		col_in,

		output	[3:0]		row_out,

		output				scl,
		inout				sda,

		input				rx,
		output				tx,

		output	[7:0]		seg_out,
		output	[5:0]		dig_out
	);
	
	parameter				CLK_FREQUENCE	=	64'd50_000_000;
	parameter				BAUD_RATE		=	64'd115200;
	parameter				DATA_WIDTH		=	8;


	wire	[3:0]			key_id_out		 	;
    wire					key_data_vld_out	;
	
	wire	[23:0]			data_in;

	wire	[7:0]			i2c_ack				;			
	wire	[7:0]			i2c_ack_out			;			
    wire	[7:0]			state_debug			;		
    wire	[7:0]			i2c_read_data		;	
	
    wire	[7:0]			i2c_config			;
    wire	[6:0]			i2c_device_address	;
    wire	[7:0]			i2c_reg_address		;
    wire	[7:0]			i2c_write_reg_data	;	
    wire	[7:0]			i2c_data_num		;	

	wire	[15:0]			acc_x	 	;
    wire	[15:0]			acc_y	 	;
    wire	[15:0]			acc_z	 	;
    wire	[15:0]			temp	 	;
    wire	[15:0]			gyro_x	 	;
    wire	[15:0]			gyro_y	 	;
    wire	[15:0]			gyro_z	 	;

	wire	[15:0]			angle_out	;
	wire					config_done	;
	wire					calib_done	;

	wire					i2c_ack_2_pos_out;	
	wire					i2c_ack_5_pos_out;	
	wire					i2c_ack_6_pos_out;	

	wire	  				acc_rdy;
	wire					gyro_rdy;	

	wire	  				acc_rdy_pos;
	wire					gyro_rdy_pos;	
	
	wire	signed	[31:0]	angle_opt_out;
    wire					roll_opt_vld_out;	
    wire					pitch_opt_vld_out;	

	wire			[7:0]	frame_data_out;
    wire					data_out_vld;
    wire					rx_rdy     ;
    wire					tx_rdy     ;
    wire			[7:0]	rx_data_out;
    wire					rx_data_vld;

	wire					timer_tick;
	wire					timer_en;


	clk_div 
	u_cli_div_0 (
		.clk	(clk_in	),
		.rst_n	(rst_n	),
		.clkout	(clkout	)
	);
	
	edge_detect
	u_edge_detect_0 (
    	.clk_in				(clk_in				),
		.rst_n				(rst_n				),
    	.i2c_ack_in			(i2c_ack			),
		.acc_rdy_in			(acc_rdy			),
		.gyro_rdy_in		(gyro_rdy			),

    	.i2c_ack_out		(i2c_ack_out		),
    	.i2c_ack_2_pos_out	(i2c_ack_2_pos_out	),
    	.i2c_ack_5_pos_out	(i2c_ack_5_pos_out	),
    	.i2c_ack_6_pos_out	(i2c_ack_6_pos_out	),
		.acc_rdy_pos_out	(acc_rdy_pos		),
		.gyro_rdy_pos_out	(gyro_rdy_pos		)
    );

	keyboard_0 
	u_keyboard_0 (
  		.clk_in				(clk_in			 )	,
  		.rst_n				(rst_n			 )	,
  		.col_in				(col_in			 )	,
  		.row_out			(row_out		 )	,
  		.key_id_out			(key_id_out		 )	,
  		.key_data_vld_out	(key_data_vld_out)	
	);

	reg		[23:0]		data;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			data	<=	1'b0;
		end
		else begin
			if (roll_opt_vld_out)
				data	<=	{8'h00, angle_opt_out[31:16]};
			else
				data	<=	data;
		end
	end
	assign	data_in		=	data;	

	dynamic_digital_0 
	u_dynamic_digital_0 (
  		.clk_in				(clk_in			),
  		.rst_n				(rst_n			),
  		.data_in			(data_in		),
  		.seg_out			(seg_out		),
  		.dig_out			(dig_out		)
	);


	mpu_read_timer
	u_mpu_read_timer_0 (
		.clk_in			(clk_in			),
    	.rst_n			(rst_n			),
		.timer_en_in	(timer_en		),
                                        
		.timer_tick_out	(timer_tick		)
	);


	Kalman_Ctrl	
	u_Kalman_Ctrl_0 (
		.clk_in				(clk_in				),
		.rst_n				(rst_n				),
                                                
		.key_flag_in		(key_data_vld_out	),
		.calib_done			(calib_done			),

		.i2c_ack_2_pos_in	(i2c_ack_2_pos_out	),
		.i2c_ack_5_pos_in	(i2c_ack_5_pos_out	),
		.i2c_ack_6_pos_in	(i2c_ack_6_pos_out	),
                                                
		// .i2c_ack			(i2c_ack			),
		.state_debug		(state_debug		),
		// .i2c_read_data		(i2c_read_data		),

		.timer_tick_in		(timer_tick			),
                                                
		.i2c_config			(i2c_config			),
        .i2c_device_address	(i2c_device_address	),
        .i2c_reg_address	(i2c_reg_address	),
        .i2c_write_reg_data	(i2c_write_reg_data	),
		.i2c_data_num		(i2c_data_num		),

		.config_done		(config_done		),
		.timer_en_out		(timer_en			)
	);

	I2C_master
	u_I2C_master_0 (
        .clk_in				(clkout				),
        .rst_n				(rst_n				),
        .scl				(scl				),
        .sda				(sda				),
        .i2c_config			(i2c_config			),
        .i2c_device_address	(i2c_device_address	),
        .i2c_reg_address	(i2c_reg_address	),
        .i2c_write_reg_data	(i2c_write_reg_data	),
		.i2c_data_num		(i2c_data_num		),

        .i2c_read_data		(i2c_read_data		),
        .state_debug		(state_debug		),
        .i2c_ack			(i2c_ack			),
                                                
		.acc_x				(acc_x				),
		.acc_y				(acc_y				),
		.acc_z				(acc_z				),
		.temp				(temp				),
		.gyro_x				(gyro_x				),
		.gyro_y				(gyro_y				),
		.gyro_z				(gyro_z				),
		.acc_rdy			(acc_rdy			),
		.gyro_rdy			(gyro_rdy			)
    );

	Kalman_Filter
	u_Kalman_Filter_0 (
		.clk_in				(clk_in				),
		.rst_n				(rst_n				),

		.key_flag_in		(key_data_vld_out	),
		.config_done		(config_done		),
		.i2c_ack_5_pos_in	(i2c_ack_5_pos_out	),
		.acc_rdy_pos_in 	(acc_rdy_pos 		),
        .gyro_rdy_pos_in	(gyro_rdy_pos		),
	                                            
		.acc_x_in			(acc_x				),
		.acc_y_in			(acc_y				),
		.acc_z_in			(acc_z				),
		.temp_in			(temp				),
		.gyro_x_in			(gyro_x				),
		.gyro_y_in			(gyro_y				),
		.gyro_z_in			(gyro_z				),

		.calib_done			(calib_done			),
                                                
		.angle_opt_out   	(angle_opt_out   	), 
        .roll_opt_vld_out	(roll_opt_vld_out	), 
        .pitch_opt_vld_out	(pitch_opt_vld_out	)
	);



	data_packing
	U_DATA_PACKING_0(
		.clk_in           (clk_in           ),
		.rst_n            (rst_n            ),
		.angle_opt_in     (angle_opt_out    ),
		.roll_opt_vld_in  (roll_opt_vld_out ),
		.pitch_opt_vld_in (pitch_opt_vld_out),
		.tx_rdy_in        (tx_rdy        ),
		.frame_data_out   (frame_data_out   ),
		.data_out_vld     (data_out_vld     ));


	uart_with_fifo #(
		.CLK_FREQUENCE ( CLK_FREQUENCE ),
    	.BAUD_RATE     ( BAUD_RATE     ),
    	.DATA_WIDTH    ( DATA_WIDTH    ))
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


	

endmodule
