`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/12 10:38:37
// Design Name: 
// Module Name: uart_tb
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


module uart_tb();

parameter CLK_FREQUENCE = 50_000_000;
parameter BAUD_RATE     = 115200;
parameter DATA_WIDTH    = 8;

reg                    clk_in;
reg                    rst_n;
reg                    rx;
reg   [DATA_WIDTH-1:0] s_axis_tdata;
reg                    s_axis_tvalid;
reg                    m_axis_tready;

wire                    tx;
wire                    s_axis_tready;
wire   [DATA_WIDTH-1:0] m_axis_tdata;
wire                    m_axis_tvalid;
wire                    tx_busy;
wire                    rx_busy;


always #1 clk_in = ~clk_in;
initial begin
  clk_in = 0;
  rx = 1;
  s_axis_tdata = 0;
  s_axis_tvalid = 0;
  m_axis_tready = 0;
  rst_n = 1;
  #4 rst_n = 0; #2 rst_n = 1;
end

uart #(  .CLK_FREQUENCE ( CLK_FREQUENCE ),
         .BAUD_RATE     ( BAUD_RATE     ),
         .DATA_WIDTH    ( DATA_WIDTH    ))
U_UART_0
(  .clk_in        ( clk_in        ),
   .rst_n         ( rst_n         ),
   .rx            ( rx            ),
   .s_axis_tdata  ( s_axis_tdata  ),
   .s_axis_tvalid ( s_axis_tvalid ),
   .m_axis_tready ( m_axis_tready ),
   .tx            ( tx            ),
   .s_axis_tready ( s_axis_tready ),
   .m_axis_tdata  ( m_axis_tdata  ),
   .m_axis_tvalid ( m_axis_tvalid ),
   .tx_busy       ( tx_busy       ),
   .rx_busy       ( rx_busy       ));

integer	i;

initial begin

	#100
	// s_axis_tvalid= 1;

	for (i=0; i<4; i=i+1) begin
		s_axis_tdata = {$random}%256;
	 	s_axis_tvalid= 1;
	 	#3
	 	s_axis_tvalid= 0;

		@(posedge s_axis_tready);
	// 	#8000;
	end

	s_axis_tvalid = 0;
	#8000
	$finish;

end

endmodule
