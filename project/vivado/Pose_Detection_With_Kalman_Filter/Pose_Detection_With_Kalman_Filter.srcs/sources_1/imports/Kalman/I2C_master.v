`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/10 17:07:19
// Design Name: 
// Module Name: I2C_master
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


module I2C_master(
				input						clk_in,
				input						rst_n,
				output						scl,
				inout						sda,
				input			 [7:0]		i2c_config,
				input			 [6:0]		i2c_device_address,
				input			 [7:0]		i2c_reg_address,
				input			 [7:0]		i2c_write_reg_data,
				input			 [7:0]		i2c_data_num,
				output			 [7:0]		i2c_read_data,
				output			 [7:0]		state_debug,
				output			 [7:0]		i2c_ack,

				output	signed	[15:0]		acc_x,
				output	signed	[15:0]		acc_y,
				output	signed	[15:0]		acc_z,
				output	signed	[15:0]		temp,
				output	signed	[15:0]		gyro_x,
				output	signed	[15:0]		gyro_y,
				output	signed	[15:0]		gyro_z,
				output						acc_rdy,
				output						gyro_rdy
	);
	
	// parameter		I2C_Continuous_Read_Byte	=	8'h05;

	reg		[7:0]		acc_x_h	;
	reg		[7:0]		acc_x_l	;
	reg		[7:0]		acc_y_h	;
	reg		[7:0]		acc_y_l	;
	reg		[7:0]		acc_z_h	;
	reg		[7:0]		acc_z_l	;
	reg		[7:0]		temp_h	;
	reg		[7:0]		temp_l	;
	reg		[7:0]		gyro_x_h;
	reg		[7:0]		gyro_x_l;
	reg		[7:0]		gyro_y_h;
	reg		[7:0]		gyro_y_l;
	reg		[7:0]		gyro_z_h;
	reg		[7:0]		gyro_z_l;

	reg					acc_rdy_r	;
	reg					gyro_rdy_r	;

	reg		[3:0]		cnt_byte;

	wire				i2c_flag;
	wire				cnt_rst_flag;

	i2c_master_logic
	u_i2c_master_logic_0 (
		.clk_in					(clk_in			   ),
		.rst_n					(rst_n			   ),
		.scl					(scl			   ),
		.sda					(sda			   ),
		.i2c_device_address		(i2c_device_address),
		.i2c_reg_address		(i2c_reg_address   ),
		.i2c_write_reg_data		(i2c_write_reg_data),
		.i2c_read_data			(i2c_read_data	   ),
		.i2c_data_num			(i2c_data_num	   ),
		.state_debug			(state_debug	   ),
		.i2c_config				(i2c_config		   ),
		.i2c_ack				(i2c_ack		   )
	);

	assign	i2c_flag	=	i2c_ack[4] | i2c_ack[5];
	assign	cnt_rst_flag=	i2c_config == (8'h00);	// 8'h00??????I2C_Wait??????

	always @(posedge i2c_flag or posedge cnt_rst_flag or negedge rst_n)begin
		if (!rst_n) 
			cnt_byte <= 1'b0;
		else if (cnt_rst_flag) 
			cnt_byte <= 1'b0;
		else if (end_cnt_byte) 
			cnt_byte	<=	1'b0;
		else
			cnt_byte	<= cnt_byte + 1;
	end
	
	assign end_cnt_byte = cnt_byte==(14-1) ;   

	always	@(posedge i2c_flag or posedge cnt_rst_flag or negedge rst_n)begin
		if(!rst_n)begin
			acc_x_h		<=		8'd0;	
			acc_x_l		<=		8'd0;	
			acc_y_h		<=		8'd0;	
			acc_y_l		<=		8'd0;	
			acc_z_h		<=		8'd0;	
			acc_z_l		<=		8'd0;	
			temp_h		<=		8'd0;	
			temp_l		<=		8'd0;
			gyro_x_h	<=		8'd0;
			gyro_x_l	<=		8'd0;
			gyro_y_h	<=		8'd0;
			gyro_y_l	<=		8'd0;
			gyro_z_h	<=		8'd0;
			gyro_z_l	<=		8'd0;
		end
		else if (cnt_rst_flag) begin
			acc_x_h		<=		8'd0;	
			acc_x_l		<=		8'd0;	
			acc_y_h		<=		8'd0;	
			acc_y_l		<=		8'd0;	
			acc_z_h		<=		8'd0;	
			acc_z_l		<=		8'd0;	
			temp_h		<=		8'd0;	
			temp_l		<=		8'd0;
			gyro_x_h	<=		8'd0;
			gyro_x_l	<=		8'd0;
			gyro_y_h	<=		8'd0;
			gyro_y_l	<=		8'd0;
			gyro_z_h	<=		8'd0;
			gyro_z_l	<=		8'd0;
		end
		else begin
			case (cnt_byte)
				0 : acc_x_h		<=	i2c_read_data;	
				1 : acc_x_l		<=	i2c_read_data;	
				2 : acc_y_h		<=	i2c_read_data;	
				3 : acc_y_l		<=	i2c_read_data;	
				4 : acc_z_h		<=	i2c_read_data;	
				5 : acc_z_l		<=	i2c_read_data;	
				6 : temp_h		<=	i2c_read_data;	
				7 : temp_l		<=	i2c_read_data;	
				8 : gyro_x_h	<=	i2c_read_data;	
				9 : gyro_x_l	<=	i2c_read_data;	
			   10 : gyro_y_h	<=	i2c_read_data;	
			   11 : gyro_y_l	<=	i2c_read_data;	
			   12 : gyro_z_h	<=	i2c_read_data;	
			   13 : gyro_z_l	<=	i2c_read_data;	
				default: begin
					acc_x_h		<=	acc_x_h	;	
					acc_x_l		<=	acc_x_l	;	
					acc_y_h		<=	acc_y_h	;	
					acc_y_l		<=	acc_y_l	;	
					acc_z_h		<=	acc_z_h	;	
					acc_z_l		<=	acc_z_l	;	
					temp_h		<=	temp_h	;	
					temp_l		<=	temp_l	;	
					gyro_x_h	<=	gyro_x_h;	
					gyro_x_l	<=	gyro_x_l;	
					gyro_y_h	<=	gyro_y_h;	
					gyro_y_l	<=	gyro_y_l;	
					gyro_z_h	<=	gyro_z_h;	
					gyro_z_l	<=	gyro_z_l;	
				end
			endcase
		end
	end

	assign	acc_x	=	{acc_x_h,	acc_x_l};
	assign	acc_y	=	{acc_y_h,	acc_y_l};
	assign	acc_z	=	{acc_z_h,	acc_z_l};
	assign	temp	=	{temp_h,	temp_l };
	assign	gyro_x	=	{gyro_x_h,	gyro_x_l};
	assign	gyro_y	=	{gyro_y_h,	gyro_y_l};
	assign	gyro_z	=	{gyro_z_h,	gyro_z_l};


	always	@(posedge i2c_flag or negedge rst_n)begin
		if(rst_n==1'b0)begin
			acc_rdy_r		<=	0;
			gyro_rdy_r		<=	0;
		end
		else begin
			case (cnt_byte)
				5:	acc_rdy_r		<=	1'b1;
				13:	gyro_rdy_r		<=	1'b1;
				default: begin
					acc_rdy_r		<=	1'b0;
					gyro_rdy_r		<=	1'b0;
				end
			endcase
		end
	end

	assign	acc_rdy		=	acc_rdy_r;
	assign	gyro_rdy	=	gyro_rdy_r;
	
endmodule
