`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/13 20:33:10
// Design Name: 
// Module Name: data_convert
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


module data_convert(
    	input 						clk_in,
    	input 						rst_n,
    	input 	signed	[31:0]		angle_opt_fp_in,
		input						roll_opt_fp_vld_in,
		input						pitch_opt_fp_vld_in,

		output 	signed	[15:0] 		angle_opt_int_out,
		output						angle_opt_int_vld_out
    );

	localparam		CNT_MAX	=	2;

	reg				[1:0]		cnt;
	wire						conv_start;
	wire						end_cnt;

	reg							angle_opt_int_vld	;
    reg		signed	[31:0]		angle_opt_fp_temp	;

	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			cnt <= 0;
		end
		else if (cnt == 1'b0) begin
			if (conv_start)
				cnt	<=	1'b1;
			else 
				cnt	<=	1'b0;
		end
		else if (end_cnt) 
			cnt	<=	1'b0;
		else
			cnt <= cnt + 1;
	end
	
	assign conv_start	=	roll_opt_fp_vld_in || pitch_opt_fp_vld_in;       
	assign end_cnt = (cnt==CNT_MAX-1);   

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			angle_opt_int_vld	<=	1'b0;
			angle_opt_fp_temp	<=	1'b0;
		end
		else begin
			case(cnt)
				0:	begin
					angle_opt_int_vld	<=	1'b0;
					if (conv_start)	angle_opt_fp_temp	<=	angle_opt_fp_in;
					else			angle_opt_fp_temp	<=	angle_opt_fp_temp;
				end
				1:	begin
					angle_opt_fp_temp	<=	(angle_opt_fp_temp <<< 6) + (angle_opt_fp_temp <<< 5) + (angle_opt_fp_temp <<< 2);	// x100
					angle_opt_int_vld	<=	1'b1;
				end
			endcase
		end
	end

	assign	angle_opt_int_out		=	angle_opt_fp_temp[31:16];
	assign	angle_opt_int_vld_out	=	angle_opt_int_vld;


endmodule
