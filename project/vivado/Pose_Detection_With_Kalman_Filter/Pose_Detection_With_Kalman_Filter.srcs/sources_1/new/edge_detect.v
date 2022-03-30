`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/17 12:23:43
// Design Name: 
// Module Name: edge_detect
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


module edge_detect(
    	input 				clk_in				,
		input 				rst_n				,
    	input 	[7:0] 		i2c_ack_in			,
		input				acc_rdy_in			,
		input				gyro_rdy_in			,
    	output 	[7:0] 		i2c_ack_out			,
    	output 				i2c_ack_2_pos_out	,
    	output 				i2c_ack_5_pos_out	,
		output				i2c_ack_6_pos_out	,
		output				acc_rdy_pos_out		,
		output				gyro_rdy_pos_out	
    );

	assign	i2c_ack_out		=	i2c_ack_in;

	reg		i2c_ack_2_ff0;
	reg		i2c_ack_5_ff0;
	reg		i2c_ack_6_ff0;
	reg		acc_rdy_ff0	;
	reg		gyro_rdy_ff0;

	reg		i2c_ack_2_ff1;
	reg		i2c_ack_5_ff1;
	reg		i2c_ack_6_ff1;
	reg		acc_rdy_ff1	;
	reg		gyro_rdy_ff1;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			i2c_ack_2_ff0	<=	1'b0;
			i2c_ack_2_ff1	<=	1'b0;
		end
		else begin
			i2c_ack_2_ff0	<=	i2c_ack_in[2];
			i2c_ack_2_ff1	<=	i2c_ack_2_ff0;
		end
	end
	assign	i2c_ack_2_pos_out	=	i2c_ack_2_ff0 & (!i2c_ack_2_ff1);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			i2c_ack_5_ff0	<=	1'b0;
			i2c_ack_5_ff1	<=	1'b0;
		end
		else begin
			i2c_ack_5_ff0	<=	i2c_ack_in[5];
			i2c_ack_5_ff1	<=	i2c_ack_5_ff0;
		end
	end
	assign	i2c_ack_5_pos_out	=	i2c_ack_5_ff0 & (!i2c_ack_5_ff1);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			i2c_ack_6_ff0	<=	1'b0;
			i2c_ack_6_ff1	<=	1'b0;
		end
		else begin
			i2c_ack_6_ff0	<=	i2c_ack_in[6];
			i2c_ack_6_ff1	<=	i2c_ack_5_ff0;
		end
	end
	assign	i2c_ack_6_pos_out	=	i2c_ack_6_ff0 & (!i2c_ack_6_ff1);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			acc_rdy_ff0		<=	1'b0;
			acc_rdy_ff1		<=	1'b0;
		end
		else begin
			acc_rdy_ff0		<=	acc_rdy_in;
			acc_rdy_ff1		<=	acc_rdy_ff0;
		end
	end
	assign 	acc_rdy_pos_out	=	acc_rdy_ff0 & (!acc_rdy_ff1);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			gyro_rdy_ff0	<=	1'b0;
			gyro_rdy_ff1	<=	1'b0;
		end
		else begin
			gyro_rdy_ff0	<=	gyro_rdy_in;
			gyro_rdy_ff1	<=	gyro_rdy_ff0;
		end
	end
	assign 	gyro_rdy_pos_out=	gyro_rdy_ff0 & (!gyro_rdy_ff1);

	
endmodule
