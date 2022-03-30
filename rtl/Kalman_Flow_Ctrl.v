`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/04 11:38:52
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


module Kalman_Flow_Ctrl(
		input 						clk_in,
    	input 						rst_n,

		input	signed	[31:0]		roll_in,
		input	signed	[31:0]		gyro_x_in,
		input	signed	[31:0]		pitch_in,
		input	signed	[31:0]		gyro_y_in,
		input						gyro_fp_vld_in,

		input	signed	[15:0]		gyro_x_bias_in,
		input	signed	[15:0]		gyro_y_bias_in,

		input	signed	[31:0]		angle_t_in,
		input	signed	[31:0]		bias_t_in,

		input	signed	[31:0]		P_0_0_t_in,
		input	signed	[31:0]		P_0_1_t_in,
		input	signed	[31:0]		P_1_0_t_in,
		input	signed	[31:0]		P_1_1_t_in,

		input						forecast_done_in,
		input						update_done_in,
		input						calib_done_pos_in,
		
		output	signed	[31:0]		gyro_out,
		output	signed	[31:0]		new_angle_out,
		//X
		output	signed	[31:0]		angle_t_1_out,
		output	signed	[31:0]		bias_t_1_out,
		//P
		output	signed	[31:0]		P_0_0_t_1_out,
		output	signed	[31:0]		P_0_1_t_1_out,
		output	signed	[31:0]		P_1_0_t_1_out,
		output	signed	[31:0]		P_1_1_t_1_out,

		output	signed	[31:0]		angle_opt_out,
		output						roll_opt_vld_out,
		output						pitch_opt_vld_out,

		output						forecast_en_out,
		output						update_en_out
    );

	parameter		IDLE			=	6'b000001;
	parameter		INITIAL_BIAS	=	6'b000010;
	parameter		FORECAST_ROLL	=	6'b000100;
	parameter		UPDATE_ROLL		=	6'b001000;
	parameter		FORECAST_PITCH	=	6'b010000;
	parameter		UPDATE_PITCH	=	6'b100000;

	reg				[5:0]		state_current;
	reg				[5:0]		state_next;

	reg		signed	[31:0]		roll  ;
	reg		signed	[31:0]		gyro_x;
	reg		signed	[31:0]		pitch ;
	reg		signed	[31:0]		gyro_y;

	reg		signed	[31:0]		roll_angle_t ;
    reg		signed	[31:0]		roll_bias_t	 ;

    reg		signed	[31:0]		roll_P_0_0_t ;
    reg		signed	[31:0]		roll_P_0_1_t ;
    reg		signed	[31:0]		roll_P_1_0_t ;
    reg		signed	[31:0]		roll_P_1_1_t ;

    reg		signed	[31:0]		pitch_angle_t;
    reg		signed	[31:0]		pitch_bias_t ;

    reg		signed	[31:0]		pitch_P_0_0_t;
    reg		signed	[31:0]		pitch_P_0_1_t;
    reg		signed	[31:0]		pitch_P_1_0_t;
    reg		signed	[31:0]		pitch_P_1_1_t;


	reg		signed	[31:0]		gyro_x_bias	;
    reg		signed	[31:0]		gyro_y_bias	;

    reg		signed	[49:0]		gyro_x_bias_fp; 
    reg		signed	[49:0]		gyro_y_bias_fp; 

    reg		signed	[49:0]		gyro_x_bias_fp_temp;
    reg		signed	[49:0]		gyro_y_bias_fp_temp;

	reg							initial_done;

	reg							forecast_en;	
    reg							update_en  ; 

    reg		signed	[31:0]		gyro;
    reg		signed	[31:0]		new_angle;	

    reg		signed	[31:0]		angle_t_1;	
    reg		signed	[31:0]		bias_t_1;	

    reg		signed	[31:0]		P_0_0_t_1;	
    reg		signed	[31:0]		P_0_1_t_1;	
    reg		signed	[31:0]		P_1_0_t_1;	
    reg		signed	[31:0]		P_1_1_t_1;	


	reg		signed	[31:0]		angle_opt;	

	reg							roll_opt_vld ;   
    reg							pitch_opt_vld;	


	assign	gyro_out		=	gyro;
	assign	new_angle_out	=	new_angle;

	assign	forecast_en_out	=	forecast_en;
	assign	update_en_out	=	update_en;

	assign	angle_opt_out	=	angle_opt;
	assign	roll_opt_vld_out=	roll_opt_vld;
	assign	pitch_opt_vld_out=	pitch_opt_vld;

	assign	angle_t_1_out	=	angle_t_1; 
    assign	bias_t_1_out 	=   bias_t_1 ;
                                         
    assign	P_0_0_t_1_out	=   P_0_0_t_1;
    assign	P_0_1_t_1_out	=   P_0_1_t_1;
    assign	P_1_0_t_1_out	=   P_1_0_t_1;
	assign	P_1_1_t_1_out	=   P_1_1_t_1;


	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			roll	<=	1'b0;
			gyro_x	<=	1'b0;
			pitch	<=	1'b0;
			gyro_y	<=	1'b0;
		end
		else if (gyro_fp_vld_in) begin
			roll	<=	roll_in  ;
			gyro_x	<=	gyro_x_in;
			pitch	<=	pitch_in ;
			gyro_y	<=	gyro_y_in;
		end
	end

	// 忘了初始化bias了
	// 保存上一轮的X和P
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			roll_angle_t	<=	1'b0;
            roll_bias_t		<=	1'b0;	

            roll_P_0_0_t	<=	1'b1 <<< 16;	
            roll_P_0_1_t	<=	1'b0;	
            roll_P_1_0_t	<=	1'b0;	
            roll_P_1_1_t	<=	1'b1 <<< 16;	

			pitch_angle_t	<=	1'b0;	
            pitch_bias_t	<=	1'b0;	

            pitch_P_0_0_t	<=	1'b1 <<< 16;	
            pitch_P_0_1_t	<=	1'b0;	
            pitch_P_1_0_t	<=	1'b0;	
            pitch_P_1_1_t	<=	1'b1 <<< 16;	
		end
		else if (initial_done && state_current == INITIAL_BIAS) begin
			roll_bias_t		<=	gyro_x_bias_fp_temp[31:0];
			pitch_bias_t	<=	gyro_y_bias_fp_temp[31:0];
		end
		else if (update_done_in && state_current==UPDATE_ROLL) begin
			roll_angle_t	<=	angle_t_in;
            roll_bias_t		<=	bias_t_in ;	
                                          
            roll_P_0_0_t	<=	P_0_0_t_in;	
            roll_P_0_1_t	<=	P_0_1_t_in;	
            roll_P_1_0_t	<=	P_1_0_t_in;	
            roll_P_1_1_t	<=	P_1_1_t_in;	
		end
		else if (update_done_in && state_current==UPDATE_PITCH) begin
			pitch_angle_t	<=	angle_t_in;	
            pitch_bias_t	<=	bias_t_in ;	
                                          
            pitch_P_0_0_t	<=	P_0_0_t_in;	
            pitch_P_0_1_t	<=	P_0_1_t_in;	
            pitch_P_1_0_t	<=	P_1_0_t_in;	
            pitch_P_1_1_t	<=	P_1_1_t_in;	
		end
		else begin
			roll_angle_t	<=	roll_angle_t ;
            roll_bias_t		<=	roll_bias_t	 ;	
                                             
            roll_P_0_0_t	<=	roll_P_0_0_t ;	
            roll_P_0_1_t	<=	roll_P_0_1_t ;	
            roll_P_1_0_t	<=	roll_P_1_0_t ;	
            roll_P_1_1_t	<=	roll_P_1_1_t ;	
                                             
			pitch_angle_t	<=	pitch_angle_t;	
            pitch_bias_t	<=	pitch_bias_t ;	
                                             
            pitch_P_0_0_t	<=	pitch_P_0_0_t;	
            pitch_P_0_1_t	<=	pitch_P_0_1_t;	
            pitch_P_1_0_t	<=	pitch_P_1_0_t;	
            pitch_P_1_1_t	<=	pitch_P_1_1_t;	
		end
	end


	// bias 除以32.8
	reg		[2:0]		i;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			i			<=	1'b0;
			gyro_x_bias	<=	1'b0;
			gyro_y_bias	<=	1'b0;

			gyro_x_bias_fp	<=	1'b0;
            gyro_y_bias_fp	<=	1'b0;

			gyro_x_bias_fp_temp	<=	1'b0;
            gyro_y_bias_fp_temp	<=	1'b0;

			initial_done<=	1'b0;
		end
		else begin
			case(i)
				0: begin
					initial_done	<=	1'b0;

					gyro_x_bias_fp	<=	{{18{gyro_x_bias_in[15]}}, gyro_x_bias_in, {16'h0000}};		
                	gyro_y_bias_fp	<=	{{18{gyro_y_bias_in[15]}}, gyro_y_bias_in, {16'h0000}};	

					gyro_x_bias	<=	gyro_x_bias;
					gyro_y_bias	<=	gyro_y_bias;

					if (calib_done_pos_in)
						i	<=	i+1;
					else
						i	<=	1'b0;
				end
				1: begin
					gyro_x_bias_fp_temp	<=	(gyro_x_bias_fp <<< 17) - (gyro_x_bias_fp <<< 11) - (gyro_x_bias_fp <<< 10);	
					gyro_y_bias_fp_temp	<=	(gyro_y_bias_fp <<< 17) - (gyro_y_bias_fp <<< 11) - (gyro_y_bias_fp <<< 10);	
					i	<=	i+1;
				end
				2: begin
					gyro_x_bias_fp_temp	<=	gyro_x_bias_fp_temp	- (gyro_x_bias_fp <<< 7) + (gyro_x_bias_fp <<< 1) + gyro_x_bias_fp;	
                    gyro_y_bias_fp_temp	<=	gyro_y_bias_fp_temp	- (gyro_y_bias_fp <<< 7) + (gyro_y_bias_fp <<< 1) +	gyro_y_bias_fp;
					i	<=	i+1;
				end
				3: begin
					gyro_x_bias_fp_temp	<=	gyro_x_bias_fp_temp	+ (gyro_x_bias_fp_temp >>> 20); 
                    gyro_y_bias_fp_temp	<=	gyro_y_bias_fp_temp	+ (gyro_y_bias_fp_temp >>> 20);
					i	<=	i+1;
				end
				4: begin
					gyro_x_bias_fp_temp	<=	gyro_x_bias_fp_temp >>> 22; 
                    gyro_y_bias_fp_temp	<=	gyro_y_bias_fp_temp >>> 22;
					initial_done	<=	1'b1;
					i	<=	1'b0;
				end
			endcase
		end
	end
/*
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			roll_bias_t		<=	1'b0;
			pitch_bias_t	<=	1'b0;
		end
		else if (initial_done) begin
			roll_bias_t		<=	gyro_x_bias_fp_temp[31:0];
			pitch_bias_t	<=	gyro_y_bias_fp_temp[31:0];
		end
		else begin
			roll_bias_t		<=	roll_bias_t	;
			pitch_bias_t	<=	pitch_bias_t;
		end
	end
*/	

	// fsm-1
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	IDLE;
		end
		else begin
			state_current	<=	state_next;
		end
	end

	// fsm-2
	always  @(*)begin
		case (state_current)
			IDLE:	begin
				if (calib_done_pos_in)		state_next	=	INITIAL_BIAS;
				else if (gyro_fp_vld_in)	state_next	=	FORECAST_ROLL;
				else						state_next	=	IDLE;
			end
			INITIAL_BIAS:	begin	// initial 应该比gyro要早很多，所以不用考虑其他情况
				if (initial_done)	state_next	=	IDLE;
				else				state_next	=	INITIAL_BIAS;
			end
			FORECAST_ROLL:	begin
				if (forecast_done_in)	state_next	=	UPDATE_ROLL;
				else				state_next	=	FORECAST_ROLL;
			end
			UPDATE_ROLL:	begin
				if (update_done_in)	state_next	=	FORECAST_PITCH;
				else				state_next	=	UPDATE_ROLL;
			end
			FORECAST_PITCH:	begin
				if (forecast_done_in)	state_next	=	UPDATE_PITCH;
				else				state_next	=	FORECAST_PITCH;
			end
			UPDATE_PITCH:	begin
				if (update_done_in)	state_next	=	IDLE;
				else				state_next	=	UPDATE_PITCH;
			end
			default:	state_next	=	IDLE;
		endcase
	end

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			forecast_en	<=	1'b0;
			update_en	<=	1'b0;

			gyro		<=	1'b0;
            new_angle	<=	1'b0;

			angle_t_1	<=	1'b0;
            bias_t_1	<=	1'b0;
                      
            P_0_0_t_1	<=	1'b1;
            P_0_1_t_1	<=	1'b0;
            P_1_0_t_1	<=	1'b0;
            P_1_1_t_1	<=	1'b1;
		end
		else begin
			case (state_next)
				IDLE: begin
					forecast_en	<=	1'b0;
					update_en	<=	1'b0;

					angle_t_1	<=	roll_angle_t;
            		bias_t_1	<=	roll_bias_t	;
            		                            
            		P_0_0_t_1	<=	roll_P_0_0_t;
            		P_0_1_t_1	<=	roll_P_0_1_t;
            		P_1_0_t_1	<=	roll_P_1_0_t;
            		P_1_1_t_1	<=	roll_P_1_1_t;
				end
				FORECAST_ROLL:	begin
					forecast_en	<=	1'b1;
					update_en	<=	1'b0;

					gyro		<=	gyro_x_in;	//这里是因为此时gyro_x还没更新

					angle_t_1	<=	roll_angle_t;
            		bias_t_1	<=	roll_bias_t	;
            		                            
            		P_0_0_t_1	<=	roll_P_0_0_t;
            		P_0_1_t_1	<=	roll_P_0_1_t;
            		P_1_0_t_1	<=	roll_P_1_0_t;
            		P_1_1_t_1	<=	roll_P_1_1_t;
				end
				UPDATE_ROLL	:	begin
					forecast_en	<=	1'b0;
					update_en	<=	1'b1;

            		new_angle	<=	roll;
				end
				FORECAST_PITCH:	begin
					forecast_en	<=	1'b1;
					update_en	<=	1'b0;

					gyro		<=	gyro_y;

					angle_t_1	<=	pitch_angle_t;
            		bias_t_1	<=	pitch_bias_t;

            		P_0_0_t_1	<=	pitch_P_0_0_t;
            		P_0_1_t_1	<=	pitch_P_0_1_t;
            		P_1_0_t_1	<=	pitch_P_1_0_t;
            		P_1_1_t_1	<=	pitch_P_1_1_t;
				end
				UPDATE_PITCH:	begin
					forecast_en	<=	1'b0;
					update_en	<=	1'b1;

            		new_angle	<=	pitch;
				end
				default:	begin
					angle_t_1	<=	angle_t_1;
            		bias_t_1	<=	bias_t_1;
            		                       
            		P_0_0_t_1	<=	P_0_0_t_1;
            		P_0_1_t_1	<=	P_0_1_t_1;
            		P_1_0_t_1	<=	P_1_0_t_1;
            		P_1_1_t_1	<=	P_1_1_t_1;
				end
			endcase
		end
	end


	// 最优估计角度输出
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			angle_opt	<=	1'b0;
		end
		else if (update_done_in) begin
			angle_opt	<=	angle_t_in;
		end
		else begin
			angle_opt	<=	angle_opt;
		end
	end

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			roll_opt_vld	<=	1'b0;
			pitch_opt_vld	<=	1'b0;
		end
		else if (update_done_in)begin
			case (state_current)
				UPDATE_ROLL:	begin
					roll_opt_vld	<=	1'b1;
					pitch_opt_vld	<=	1'b0;

				end
				UPDATE_PITCH:	begin
					roll_opt_vld	<=	1'b0;
					pitch_opt_vld	<=	1'b1;
				end
				default:	begin
					roll_opt_vld	<=	1'b0;
					pitch_opt_vld	<=	1'b0;
				end
			endcase
		end
		else begin
			roll_opt_vld	<=	1'b0;
			pitch_opt_vld	<=	1'b0;
		end
	end


endmodule
