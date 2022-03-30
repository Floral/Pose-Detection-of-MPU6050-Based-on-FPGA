`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/27 15:42:25
// Design Name: 
// Module Name: cordic_arcsin_arccos
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


module cordic_arcsin_arccos(
    input 							clk_in,
    input 							rst_n,
    input 							data_in_rdy,
    input 	signed		[31:0] 		data_in,

    output 							data_out_rdy,
    output 	signed		[31:0] 		arcsin_out,
    output 	signed		[31:0] 		arccos_out
    );

	wire						sigma;
	wire	signed	[31:0]		tx;
	wire	signed	[31:0]		ty;

	reg				[4:0]		i;	// 迭代大循环计数
	reg							k;	// 迭代小循环计数
	reg				[31:0]		g;
	reg		signed	[31:0]		x;
	reg		signed	[31:0]		y;
	reg		signed	[31:0]		angle;
	reg							is_done;

	reg		signed	[31:0]		atan	[15:0];

	initial begin
		$readmemh("C:/Documents/Xilinx_project/FPGA/Pose_Detection_With_Kalman_Filter/C_model/atan.data", atan, 0, 15);
	end

	assign	sigma	=	!k ? (y[31]==1'b1)^(g<=x) : sigma;

	assign	tx	=	x>>>(i-1);
	assign	ty	=	y>>>(i-1);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			i		<=	1'b0;
			k		<=	1'b0;
			g		<=	1'b0;
			angle	<=	1'b0;
			x		<=	1'b1 <<< 16;
			y		<=	1'b0;
			is_done	<=	1'b0;
		end
		else begin
			//if (data_in_rdy) begin
				case (i)
					0:	begin
						g		<=	data_in;
						angle	<=	1'b0;
						is_done	<=	1'b0;
						if (data_in_rdy)	i <= i + 1'b1;
						else i	<=	0;
					end
					1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16: begin
						if (sigma) begin
						//	x_new	<=	x - (y>>i);
						//	y_new	<=	y + (x>>i);
							x 	<= 	x - ty;
							y	<=	y + tx ;
							angle	<=	angle + atan[i-1];
						end
						else begin
							x 	<= 	x + ty;
							y	<=	y - tx ;
							angle	<=	angle - atan[i-1];
						end
						
						if (k == 1'b1) begin
							i	<=	i + 1'b1;
							k	<=	1'b0;
						end
						else begin
							k	<=	1'b1;
							g	<=	g + ((g>>>(i-1))>>>(i-1));
						end
					end
					17: begin
						x	<=	1'b1 <<< 16;
						y	<=	1'b0;
						g	<=	1'b0;
						is_done	<=	1'b1;
						i	<=	i + 1'b1;
					end
					18:	begin
						is_done	<=	1'b0;
						i	<=	1'b0;
					end
				endcase
			//end
		end
	end
	
	assign	data_out_rdy	=	is_done;
	assign	arccos_out		=	angle;
	assign	arcsin_out		=	32'd5_898_240 - angle;

endmodule
