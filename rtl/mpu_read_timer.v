`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/15 20:29:57
// Design Name: 
// Module Name: mpu_read_timer
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


module mpu_read_timer #(
		parameter	CNT_MAX	=	'd62500			// 默认800Hz
	)(
    	input			clk_in,
    	input 			rst_n,
		input			timer_en_in,

		output			timer_tick_out
    );

	
	reg		[19:0]		cnt;
	wire				add_cnt;
	wire				end_cnt;
	
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
			cnt	<=	1'b0;
	end
	
	assign add_cnt = timer_en_in;       
	assign end_cnt = add_cnt && cnt==(CNT_MAX-1);   

	assign	timer_tick_out	=	end_cnt;

endmodule
