`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 14:31:29
// Design Name: 
// Module Name: data_packing_tb
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


module data_packing_tb();


reg          clk_in;
reg          rst_n;
reg   [31:0] angle_opt_in;
reg          roll_opt_vld_in;
reg          pitch_opt_vld_in;
reg          tx_rdy_in;

wire   [7:0] frame_data_out;
wire         data_out_vld;


always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  angle_opt_in = 0;
  roll_opt_vld_in = 0;
  pitch_opt_vld_in = 0;
  tx_rdy_in = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
end

data_packing U_DATA_PACKING_0
(  .clk_in           ( clk_in           ),
   .rst_n            ( rst_n            ),
   .angle_opt_in     ( angle_opt_in     ),
   .roll_opt_vld_in  ( roll_opt_vld_in  ),
   .pitch_opt_vld_in ( pitch_opt_vld_in ),
   .tx_rdy_in        ( tx_rdy_in        ),
   .frame_data_out   ( frame_data_out   ),
   .data_out_vld     ( data_out_vld     ));


initial begin
	
	#100
	tx_rdy_in	=	1'b1;
	angle_opt_in	=	32'd42043311;
	roll_opt_vld_in	=	1'b1;
	#3
	roll_opt_vld_in	=	1'b0;

	#100
	angle_opt_in	=	32'd41218868;
	pitch_opt_vld_in	=	1'b1;
	#3
	pitch_opt_vld_in	=	1'b0;


	@(negedge data_out_vld);
	#100
	$finish;

end

endmodule

