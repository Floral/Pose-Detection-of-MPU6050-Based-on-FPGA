`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/23 16:59:20
// Design Name: 
// Module Name: test_uart_with_fifo_tb
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


module test_uart_with_fifo_tb();
	reg     clk_in;
	reg     rst_n;
	reg     rx;
	
	wire         tx1;
	wire         tx2;
	wire   [7:0] frame_data;
	wire         data_vld;
	
	
	always #1 clk_in = ~clk_in;
	initial begin
	  clk_in = 0;
	  rx = 0;
	  rst_n = 1;
	  #4 rst_n = 0; #2 rst_n = 1;
	end
	
	test_uart_with_fifo U_TEST_UART_WITH_FIFO_0
	(  .clk_in     ( clk_in     ),
	   .rst_n      ( rst_n      ),
	   .rx         ( rx         ),
	   .tx1        ( tx1        ),
	   .tx2        ( tx2        ),
	   .frame_data ( frame_data ),
	   .data_vld   ( data_vld   ));
	
	
	initial begin

	end
	
	
	
	
endmodule
