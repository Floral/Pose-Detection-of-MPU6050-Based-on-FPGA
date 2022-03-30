`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 10:27:55
// Design Name: 
// Module Name: baud_gen_tb
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

module baud_gen_tb();

parameter CLK_FREQUENCE = 50_000_000;
parameter BAUD_RATE     = 115200;
parameter OVERSAMPLING  = 1;

reg     clk_in;
reg     rst_n;
reg     bps_clk_en;
reg     integerv;

wire     bps_clk;


always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  bps_clk_en = 0;
  integerv = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
  #10 bps_clk_en	=	1;
end

baud_gen #(  .CLK_FREQUENCE ( CLK_FREQUENCE ),
             .BAUD_RATE     ( BAUD_RATE     ),
             .OVERSAMPLING  ( OVERSAMPLING  ))
U_BAUD_GEN_0
(  .clk_in     ( clk_in     ),
   .rst_n      ( rst_n      ),
   .bps_clk_en ( bps_clk_en ),
   .bps_clk    ( bps_clk    ));


initial begin
end

endmodule
