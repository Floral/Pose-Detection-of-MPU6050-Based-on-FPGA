`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/27 17:24:41
// Design Name: 
// Module Name: cordic_tb
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

`timescale 1ns/1ps

module cordic_arcsin_arccos_tb();


reg               clk_in;
reg               rst_n;
reg               data_in_rdy;
reg signed [31:0] data_in;

wire               data_out_rdy;
wire signed [31:0] arcsin_out;
wire signed [31:0] arccos_out;

always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  data_in_rdy = 0;
  data_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #5 rst_n = 1;
end

cordic_arcsin_arccos U_CORDIC_ARCSIN_ARCCOS_0
(  .clk_in       ( clk_in       ),
   .rst_n        ( rst_n        ),
   .data_in_rdy  ( data_in_rdy  ),
   .data_in      ( data_in      ),
   .data_out_rdy ( data_out_rdy ),
   .arcsin_out   ( arcsin_out   ),
   .arccos_out   ( arccos_out   ));

reg	[4:0]	i;

always  @(posedge clk_in or negedge rst_n)begin
	if(rst_n==1'b0)begin
		i			<=	1'b0;
		data_in_rdy	<=	1'b0;
		data_in		<=	1'b0;
	end
	else begin
		case (i)
			0:	begin
				if (data_out_rdy) begin
					data_in_rdy	<=	1'b0;
					i			<=	i+1;
				end
				else begin
					data_in_rdy	<=	1'b1;
					data_in		<=	0.3*65536;
				end
			end
			1:	begin
				if (data_out_rdy) begin
					data_in_rdy	<=	1'b0;
					i			<=	i+1;
				end
				else begin
					data_in_rdy	<=	1'b1;
					data_in		<=	0.5*65536;
				end
			end
			2:	begin
				if (data_out_rdy) begin
					data_in_rdy	<=	1'b0;
					i			<=	i+1;
				end
				else begin
					data_in_rdy	<=	1'b1;
					data_in		<=	0.7*65536;
				end
			end
			3:	begin
				if (data_out_rdy) begin
					data_in_rdy	<=	1'b0;
					i			<=	i+1;
				end
				else begin
					data_in_rdy	<=	1'b1;
					data_in		<=	1*65536;
				end
			end
			4:	begin
				if (data_out_rdy) begin
					data_in_rdy	<=	1'b0;
					i			<=	i+1;
				end
				else begin
					data_in_rdy	<=	1'b1;
					data_in		<=	-1*65536;
				end
			end
			5:	i	<=	i;
		endcase
	end
end


initial begin
end

endmodule
