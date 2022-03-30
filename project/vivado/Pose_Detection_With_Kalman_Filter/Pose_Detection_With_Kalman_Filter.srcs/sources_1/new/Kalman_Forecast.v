`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/04 11:20:08
// Design Name: 
// Module Name: Kalman_Flow_Ctrl
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


module Kalman_Forecast #(
		parameter	DELTA_T	=	12'd5,		//12位的0.001，多一点，具体是0.00122
		parameter	Q_ANGLE	=	32'd66,		//16位的0.001
		parameter	Q_BIAS	=	32'd197,	//16位的0.003
		parameter	CNT_MAX	=	'd4
	)(
    	input 						clk_in,
    	input 						rst_n,

		input	signed	[31:0]		angle_t_1_in,
		input	signed	[31:0]		bias_t_1_in,

		input	signed	[31:0]		P_0_0_t_1_in,
		input	signed	[31:0]		P_0_1_t_1_in,
		input	signed	[31:0]		P_1_0_t_1_in,
		input	signed	[31:0]		P_1_1_t_1_in,

		input	signed	[31:0]		gyro_in,
		input						forecast_en_in,

		output						forecast_done_out,

		output	signed	[31:0]		angle_t_out,
		output	signed	[31:0]		bias_t_out,

		output	signed	[31:0]		P_0_0_t_out,
		output	signed	[31:0]		P_0_1_t_out,
		output	signed	[31:0]		P_1_0_t_out,
		output	signed	[31:0]		P_1_1_t_out
    );

	wire						add_cnt;
	wire						end_cnt;

	reg							forecast_done;
	reg				[1:0]		cnt;

	reg		signed	[31:0]		angle_t;
	reg		signed	[31:0]		bias_t;
    reg		signed	[31:0]		P_0_0_t;
    reg		signed	[31:0]		P_0_1_t;
    reg		signed	[31:0]		P_1_0_t;
	reg		signed	[31:0]		P_1_1_t;

	reg		signed	[43:0]		angle_temp;
    reg		signed	[43:0]		P_0_0_temp;
    reg		signed	[43:0]		P_0_1_temp;
    reg		signed	[43:0]		P_1_0_temp;

	wire	signed	[31:0] 		angle_temp_sign_ext;
	wire	signed	[31:0] 		P_0_0_temp_sign_ext;

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
		else
			cnt	<=	0;
	end
	
	assign add_cnt = forecast_en_in;       
	assign end_cnt = add_cnt && cnt==(CNT_MAX-1);   
	
	assign angle_temp_sign_ext	=	bias_t_1_in - gyro_in;
	assign P_0_0_temp_sign_ext	=	P_1_0_t_1_in + P_0_1_t_1_in;


	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			angle_temp	<=		1'b0;
            P_0_0_temp	<=		1'b0;
            P_0_1_temp	<=		1'b0;
            P_1_0_temp	<=		1'b0;

			angle_t		<=		1'b0;
			bias_t		<=		1'b0;
			P_0_0_t		<=		1'b0;
            P_0_1_t		<=		1'b0;
            P_1_0_t		<=		1'b0;
            P_1_1_t		<=		1'b0;
			forecast_done	<=	1'b0;
		end
		else if (forecast_en_in) begin
			case (cnt)
				0 :	begin
					angle_t	<=	angle_t_1_in;
					bias_t	<=	bias_t_1_in;
					P_0_0_t	<=	P_0_0_t_1_in;
            		P_0_1_t	<=	P_0_1_t_1_in;
            		P_1_0_t	<=	P_1_0_t_1_in;
            		P_1_1_t	<=	P_1_1_t_1_in;

					forecast_done	<=	1'b0;
				end
				1 :	begin
					angle_temp	<=	({{12{angle_temp_sign_ext[31]}}, angle_temp_sign_ext}) * DELTA_T;	// 不同位数的有符号数相乘，需要对一个数扩展进行符号扩展
					P_0_0_temp	<=	({{12{P_0_0_temp_sign_ext[31]}}, P_0_0_temp_sign_ext}) * DELTA_T;
            		P_0_1_temp	<=	({{12{P_1_1_t_1_in[31]}}, P_1_1_t_1_in} * DELTA_T);
            		P_1_0_temp	<=	({{12{P_1_1_t_1_in[31]}}, P_1_1_t_1_in} * DELTA_T);
				end
				2 : begin
					angle_t	<=	angle_t - angle_temp[43:12];
					P_0_0_t	<=	P_0_0_t + Q_ANGLE - P_0_0_temp[43:12];
            		P_0_1_t	<=	P_0_1_t - P_0_1_temp[43:12];
            		P_1_0_t	<=	P_1_0_t - P_1_0_temp[43:12];
            		P_1_1_t	<=	P_1_1_t + Q_BIAS;

					forecast_done	<=	1'b1;
				end
				3 : begin
					forecast_done	<=	1'b0;
				end
			endcase
		end
		else begin	// 计算一次后保持一段时间
			angle_t	<=	angle_t;
			bias_t	<=	bias_t;
			P_0_0_t	<=	P_0_0_t;
        	P_0_1_t	<=	P_0_1_t;
        	P_1_0_t	<=	P_1_0_t;
        	P_1_1_t	<=	P_1_1_t;

			forecast_done	<=	1'b0;
		end
	end
	
	assign	forecast_done_out	=	forecast_done;
	assign	angle_t_out	=	angle_t;
	assign	bias_t_out 	=	bias_t_1_in;
	assign	P_0_0_t_out	=	P_0_0_t;
    assign  P_0_1_t_out	=	P_0_1_t;
    assign  P_1_0_t_out	=	P_1_0_t;
    assign  P_1_1_t_out	=	P_1_1_t;
	
	
endmodule
