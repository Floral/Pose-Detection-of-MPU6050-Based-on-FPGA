`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/13 17:32:34
// Design Name: 
// Module Name: uart_with_fifo_tb
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


module uart_with_fifo_tb();

parameter CLK_FREQUENCE = 50_000_000;
parameter BAUD_RATE     = 9600;
parameter DATA_WIDTH    = 8;

reg                    clk_in;
reg                    rst_n;
reg                    rx;
reg   [DATA_WIDTH-1:0] tx_data_in;
reg                    tx_data_vld;
reg                    rx_rdy;

wire                    tx;
wire                    tx_rdy;
wire   [DATA_WIDTH-1:0] rx_data_out;
wire                    rx_data_vld;


always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  rx = 0;
  tx_data_in = 0;
  tx_data_vld = 0;
  rx_rdy = 0;
  rst_n = 1;
  #4 rst_n = 0; #20 rst_n = 1;
end

uart_with_fifo #(  .CLK_FREQUENCE ( CLK_FREQUENCE ),
                   .BAUD_RATE     ( BAUD_RATE     ),
                   .DATA_WIDTH    ( DATA_WIDTH    ))
U_UART_WITH_FIFO_0
(  .clk_in      ( clk_in      ),
   .rst_n       ( rst_n       ),
   .rx          ( rx          ),
   .tx_data_in  ( tx_data_in  ),
   .tx_data_vld ( tx_data_vld ),
   .rx_rdy      ( rx_rdy      ),
   .tx          ( tx          ),
   .tx_rdy      ( tx_rdy      ),
   .rx_data_out ( rx_data_out ),
   .rx_data_vld ( rx_data_vld ));

integer		i;

initial begin

	#100

	tx_data_vld	=	1'b1;

	for (i = 1; i< 65; i = i+1) begin
		@(posedge clk_in);

		tx_data_in	=	i;

	end
	
	#8
	tx_data_vld = 1'b0;

	#100000;

	$finish;

end

endmodule
