`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/04 11:59:17
// Design Name: 
// Module Name: Kalman_Update
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


module Kalman_Update #(
			parameter	Q_NEW_ANGLE	=	32'd1966,	// 16位精度0.03
			parameter	CNT_MAX = 'd3
		)(
		input 						clk_in,
    	input 						rst_n,

		input	signed	[31:0]		new_angle_in,
		input	signed	[31:0]		angle_t_in,
		input	signed	[31:0]		bias_t_in,

		input	signed	[31:0]		P_0_0_t_in,
		input	signed	[31:0]		P_0_1_t_in,
		input	signed	[31:0]		P_1_0_t_in,
		input	signed	[31:0]		P_1_1_t_in,

		input						update_en_in,

		output						update_done_out,

		output	signed	[31:0]		angle_out,
		output	signed	[31:0]		bias_out,

		output	signed	[31:0]		P_0_0_out,
		output	signed	[31:0]		P_0_1_out,
		output	signed	[31:0]		P_1_0_out,
		output	signed	[31:0]		P_1_1_out
    );

	parameter	IDLE			=	4'b0001;
	parameter	UPDATE_K		=	4'b0010;
	parameter	UPDATE_X_AND_P	=	4'b0100;
	parameter	DONE			=	4'b1000;

	reg				[3:0]		state_current;
	reg				[3:0]		state_next;

	reg		signed	[31:0]		K_0;
	reg		signed	[31:0]		K_1;
	reg							K_done;
	reg							update_done;
	reg							step;
	reg		signed	[31:0]		divident_0;
    reg		signed	[31:0]		divident_1;
	reg		signed	[31:0]		divisor	  ;

	reg							state_current_1_ff_0;
	reg							state_current_1_ff_1;
    wire						div_in_vld;	

	reg		signed	[31:0]		angle_t;
    reg		signed	[31:0]		bias_t;

    reg		signed	[31:0]		P_0_0_t;
    reg		signed	[31:0]		P_0_1_t;
    reg		signed	[31:0]		P_1_0_t;
    reg		signed	[31:0]		P_1_1_t;

    reg		signed	[31:0]		new_angle;

	reg		signed	[31:0]		angle;
    reg		signed	[31:0]		bias;

    reg		signed	[31:0]		P_0_0;
    reg		signed	[31:0]		P_0_1;
    reg		signed	[31:0]		P_1_0;
    reg		signed	[31:0]		P_1_1;


	reg		signed	[63:0]		angle_temp;
	reg		signed	[63:0]		bias_temp ;
    reg		signed	[63:0]		P_0_0_temp;
    reg		signed	[63:0]		P_0_1_temp;
    reg		signed	[63:0]		P_1_0_temp;
    reg		signed	[63:0]		P_1_1_temp;

	wire	signed	[48:0]		K_0_out;
	wire	signed	[48:0]		K_1_out;
	wire						K_0_out_vld;
	wire						K_1_out_vld;

	
	assign	angle_out	=	angle;	
	assign	bias_out	=	bias;
	                              
	assign	P_0_0_out	=	P_0_0;
	assign	P_0_1_out	=	P_0_1;
	assign	P_1_0_out	=	P_1_0;
	assign	P_1_1_out	=	P_1_1;

	assign	update_done_out	=	update_done;


	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	IDLE;
		end
		else begin
			state_current	<=	state_next;
		end
	end

	always  @(*)begin
		case(state_current)
			IDLE: 		begin
				if (update_en_in)	state_next	=	UPDATE_K;
				else				state_next	=	IDLE;
			end
			UPDATE_K:	begin
				if (K_done)		state_next	=	UPDATE_X_AND_P;
				else			state_next	=	UPDATE_K;
			end
			UPDATE_X_AND_P:	begin
				if (update_done)	state_next	=	DONE;
				else				state_next	=	UPDATE_X_AND_P;
			end
			DONE:	begin
				state_next	=	IDLE;
			end
			default:	begin
				state_next	=	IDLE;
			end
		endcase
	end


	// 控制信号
	// assign	K_done	=	K_0_out_vld;	// 移到了与K_0、K_1一起的

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current_1_ff_0	<=	1'b0;
			state_current_1_ff_1	<=	1'b0;
		end
		else begin
			state_current_1_ff_0	<=	state_current[1];
			state_current_1_ff_1	<=	state_current_1_ff_0;
		end
	end

	assign	div_in_vld	=	(!state_current_1_ff_0) && state_current[1];

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			update_done	<=	1'b0;
		end
		else if (update_en_in) begin
			case (state_next)
				IDLE: begin
					update_done	<=	1'b0;
				end
				UPDATE_K:	begin
					update_done	<=	1'b0;
				end
				UPDATE_X_AND_P:	begin
					if (step == 1'b1)
						update_done	<=	1'b1;
					else
						update_done	<=	1'b0;
				end
				DONE:	begin
					update_done	<=	1'b0;
				end
			endcase
		end
	end

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			K_0		<=	1'b0;
			K_1		<=	1'b0;
			K_done	<=	1'b0;
		end
		else if (K_0_out_vld)begin
			K_0		<=	K_0_out[31:0];
			K_1		<=	K_1_out[31:0];
			K_done	<=	1'b1;
		end
		else begin
			K_0		<=	K_0;
			K_1		<=	K_1;
			K_done	<=	1'b0;
		end
	end

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			step		<=	1'b0;
			divident_0	<=	1'b0;
			divident_1	<=	1'b0;
			divisor		<=	1'b0;

			new_angle	<=	1'b0;
			angle_t		<=	1'b0;
            bias_t		<=	1'b0;
                   
            P_0_0_t		<=	1'b0;
            P_0_1_t		<=	1'b0;
            P_1_0_t		<=	1'b0;
            P_1_1_t		<=	1'b0;

			angle_temp	<=	1'b0;
            bias_temp	<=	1'b0;
            P_0_0_temp	<=	1'b0;
            P_0_1_temp	<=	1'b0;
            P_1_0_temp	<=	1'b0;
            P_1_1_temp	<=	1'b0;

			angle		<=	1'b0;
            bias 		<=	1'b0;
            P_0_0		<=	1'b0;
            P_0_1		<=	1'b0;
            P_1_0		<=	1'b0;
            P_1_1		<=	1'b0;
		end
		else if (update_en_in) begin
			case (state_next)	// 注意是next，可以节省一个周期
				IDLE: begin
					divident_0	<=	divident_0;
					divident_1	<=	divident_1;
					divisor		<=	divisor	  ;

					new_angle	<=	new_angle;
					angle_t	<=	angle_t;
            		bias_t	<=	bias_t ;
            		                   
            		P_0_0_t	<=	P_0_0_t;
            		P_0_1_t	<=	P_0_1_t;
            		P_1_0_t	<=	P_1_0_t;
            		P_1_1_t	<=	P_1_1_t;
				end
				UPDATE_K: begin
					divident_0	<=	P_0_0_t_in;
					divident_1	<=	P_1_0_t_in;
					divisor		<=	P_0_0_t_in+Q_NEW_ANGLE;

					new_angle	<=	new_angle_in;
					angle_t	<=	angle_t_in;
            		bias_t	<=	bias_t_in ;
            		                   
            		P_0_0_t	<=	P_0_0_t_in;
            		P_0_1_t	<=	P_0_1_t_in;
            		P_1_0_t	<=	P_1_0_t_in;
            		P_1_1_t	<=	P_1_1_t_in;
				end
				UPDATE_X_AND_P:	begin
					case (step)
						0: begin
							angle_temp	<=	K_0*(new_angle - angle_t);
							bias_temp	<=	K_1*(new_angle - angle_t);
							P_0_0_temp	<=	K_0*P_0_0_t;
							P_0_1_temp	<=	K_0*P_0_1_t;
							P_1_0_temp	<=	K_1*P_0_0_t;
							P_1_1_temp	<=	K_1*P_0_1_t;
							step		<=	1'b1;
						end
						1: begin
							angle		<=	angle_t + angle_temp[47:16];
							bias		<=	bias_t  + bias_temp[47:16];
							P_0_0		<=	P_0_0_t - P_0_0_temp[47:16];
							P_0_1		<=	P_0_1_t - P_0_1_temp[47:16];
							P_1_0		<=	P_1_0_t - P_1_0_temp[47:16];
							P_1_1		<=	P_1_1_t - P_1_1_temp[47:16];
							step		<=	1'b0;
						end
					endcase
				end
				DONE:	begin
					angle		<=	angle;	
                    bias	 	<=	bias;   
                    P_0_0		<=	P_0_0;	
                    P_0_1		<=	P_0_1;	
                    P_1_0		<=	P_1_0;	
                    P_1_1		<=	P_1_1;	
				end
			endcase
		end
	end

	div_gen
	u_div_gen_2(
		.aclk                    	(clk_in),
		.aresetn					(rst_n),
 		.s_axis_divisor_tvalid   	(div_in_vld),
 		.s_axis_divisor_tdata    	({divisor[31], divisor}),
 		.s_axis_dividend_tvalid  	(div_in_vld),
 		.s_axis_dividend_tdata   	({divident_0[31], divident_0}),
 		.m_axis_dout_tvalid      	(K_0_out_vld),
 		.m_axis_dout_tdata       	(K_0_out)
	);
	
	div_gen
	u_div_gen_3(
		.aclk                    	(clk_in),
		.aresetn					(rst_n),
 		.s_axis_divisor_tvalid   	(div_in_vld),
 		.s_axis_divisor_tdata    	({divisor[31], divisor}),
 		.s_axis_dividend_tvalid  	(div_in_vld),
 		.s_axis_dividend_tdata   	({divident_1[31], divident_1}),
 		.m_axis_dout_tvalid      	(K_1_out_vld),
 		.m_axis_dout_tdata       	(K_1_out)
	);

endmodule
