`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/16 16:58:22
// Design Name: 
// Module Name: Kalman_Calibration
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


module Kalman_Calibration (
    	input	 					clk_in,
    	input	 					rst_n,
    	input	signed 	[15:0] 		acc_x_in,
    	input	signed 	[15:0] 		acc_y_in,
    	input	signed 	[15:0] 		acc_z_in,
    	input	signed 	[15:0] 		temp_in,
    	input	signed 	[15:0] 		gyro_x_in,
    	input	signed 	[15:0] 		gyro_y_in,
    	input	signed 	[15:0] 		gyro_z_in,
    	input		 				i2c_ack_5_pos_in,
		input						config_done,
		input						key_flag_in,

    	output 						calib_done_out,
    	output 	signed	[15:0] 		acc_x_bias_out,
    	output 	signed	[15:0] 		acc_y_bias_out,
    	output 	signed	[15:0] 		acc_z_bias_out,
    	output 	signed	[15:0] 		temp_bias_out,
    	output 	signed	[15:0] 		gyro_x_bias_out,
    	output 	signed	[15:0] 		gyro_y_bias_out,
    	output 	signed	[15:0] 		gyro_z_bias_out
    );
	
	parameter	CNT_NUM		=		'd1024;
	parameter	G_BIAS		=		'd16384;
	
	reg							calib_done;
	reg		signed	[25:0]		acc_x_bias;
	reg		signed	[25:0]		acc_y_bias;
	reg		signed	[25:0]		acc_z_bias;
	reg		signed	[25:0]		gyro_x_bias;
	reg		signed	[25:0]		gyro_y_bias;
	reg		signed	[25:0]		gyro_z_bias;
	        
	wire	signed	[25:0]		acc_x_bias_sum;
	wire	signed	[25:0]		acc_y_bias_sum;
	wire	signed	[25:0]		acc_z_bias_sum;
	wire	signed	[25:0]		gyro_x_bias_sum;
	wire	signed	[25:0]		gyro_y_bias_sum;
	wire	signed	[25:0]		gyro_z_bias_sum;
            
	wire						calib_en;
	wire						add_cnt	;
	wire						end_cnt	;

	assign	calib_en		=	(!calib_done) & config_done;
	assign	calib_done_out	=	calib_done;

	// 除以1024得到均值
	assign	acc_x_bias_out	=	{ acc_x_bias[25:10]};
	assign	acc_y_bias_out	=	{ acc_y_bias[25:10]};
	assign	acc_z_bias_out	=	{ acc_z_bias[25:10]};

	assign	gyro_x_bias_out	=	{ gyro_x_bias[25:10]};
	assign	gyro_y_bias_out	=	{ gyro_y_bias[25:10]};
	assign	gyro_z_bias_out	=	{ gyro_z_bias[25:10]};

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			calib_done	<=	1'b0;
		end
		else if (end_cnt) begin
			calib_done	<=	1'b1;
		end
		else if (key_flag_in) begin
			calib_done	<=	1'b0;
		end
		else begin
			calib_done	<=	calib_done;
		end
	end

	reg		[9:0]		cnt;
	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			cnt <= 0;
		end
		else if(add_cnt)begin
			if(end_cnt)
				cnt <= 0;
			else
				cnt <= cnt + 1;
		end
	end
	
	assign add_cnt = i2c_ack_5_pos_in & calib_en;       
	assign end_cnt = add_cnt && cnt==(CNT_NUM-1) ;   

	assign acc_x_bias_sum	=	acc_x_in + acc_x_bias;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			acc_x_bias	<=	1'b0;
		end
		else if (add_cnt) begin
			acc_x_bias	<=	acc_x_bias_sum;
			
		end else begin
			acc_x_bias	<=	acc_x_bias;
		end
	end
		
	
	assign acc_y_bias_sum	=	acc_y_in + acc_y_bias;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			acc_y_bias	<=	1'b0;
		end
		else if (add_cnt) begin
			acc_y_bias	<=	acc_y_bias_sum;
			
		end else begin
			acc_y_bias	<=	acc_y_bias;
		end
	end

	assign acc_z_bias_sum	=	acc_z_in - G_BIAS + acc_z_bias;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			acc_z_bias	<=	1'b0;
		end
		else if (add_cnt) begin
			acc_z_bias	<=	acc_z_bias_sum;
			
		end else begin
			acc_z_bias	<=	acc_z_bias;
		end
	end

	assign gyro_x_bias_sum	=	gyro_x_in + gyro_x_bias;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			gyro_x_bias	<=	1'b0;
		end
		else if (add_cnt) begin
			gyro_x_bias	<=	gyro_x_bias_sum;
			
		end else begin
			gyro_x_bias	<=	gyro_x_bias;
		end
	end

	assign gyro_y_bias_sum	=	gyro_y_in + gyro_y_bias;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			gyro_y_bias	<=	1'b0;
		end
		else if (add_cnt) begin
			gyro_y_bias	<=	gyro_y_bias_sum;
			
		end else begin
			gyro_y_bias	<=	gyro_y_bias;
		end
	end

	assign gyro_z_bias_sum	=	gyro_z_in + gyro_z_bias;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			gyro_z_bias	<=	1'b0;
		end
		else if (add_cnt) begin
			gyro_z_bias	<=	gyro_z_bias_sum;
			
		end else begin
			gyro_z_bias	<=	gyro_z_bias;
		end
	end


endmodule
