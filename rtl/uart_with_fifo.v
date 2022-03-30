`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/13 17:04:40
// Design Name: 
// Module Name: uart_with_fifo
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


module uart_with_fifo#(
		parameter	CLK_FREQUENCE   = 	50_000_000,
		parameter	BAUD_RATE		= 	9600,
		parameter	DATA_WIDTH		=	8
	)(
		input							clk_in,
		input							rst_n,

		input							rx,
		output							tx,

		input		[DATA_WIDTH-1:0]	tx_data_in,
		input							tx_data_vld,
		output							tx_rdy,

		input							rx_rdy,
		output		[DATA_WIDTH-1:0]	rx_data_out,
		output							rx_data_vld
	);

	// wire				tx_busy_out;
	// wire				rx_busy_out;

	// assign	tx_busy	=	tx_busy_out;
	// assign	rx_busy	=	rx_busy_out;
	//
	wire						tx_rd_en;
	wire	[DATA_WIDTH-1:0]	tx_data;
	wire						tx_fifo_full;
	wire						tx_fifo_empty;

	assign	tx_rdy	=	!tx_fifo_full;

	fifo_sync_0
	u_fifo_sync_0_tx(
		.clk 			(clk_in			),
    	.rst 			(~rst_n			),
    	.din 			(tx_data_in		),
    	.wr_en			(tx_data_vld	), 
    	.rd_en			(tx_rd_en		), 
    	.dout			(tx_data 		), 
    	.full			(tx_fifo_full	), 
    	.empty 			(tx_fifo_empty 	)
    	// .wr_rst_busy	(wr_rst_busy	), 
    	// .rd_rst_busy	(rd_rst_busy	)
	);

	uart_tx #(
		.CLK_FREQUENCE	(CLK_FREQUENCE	),
		.BAUD_RATE		(BAUD_RATE		),
		.DATA_WIDTH		(DATA_WIDTH		) 
	)
	u_uart_tx_0(
		.clk_in			(clk_in			),
		.rst_n			(rst_n			),
                                        
		.data_in		(tx_data		),
		.fifo_empty_in	(tx_fifo_empty	),
                                        
		.tx				(tx				),
		.tx_rd_en		(tx_rd_en		)
	);

/*
	fifo_sync_0
	u_fifo_sync_0_rx(
		.clk 			(clk_in			),
    	.rst 			(rst_n 			),
    	.din 			(tx_data_in		),
    	.wr_en			(tx_data_vld	), 
    	.rd_en			(tx_rd_en		), 
    	.dout			(tx_data 		), 
    	.full			(tx_fifo_full	), 
    	.empty 			(tx_fifo_empty 	)
    	// .wr_rst_busy	(wr_rst_busy	), 
    	// .rd_rst_busy	(rd_rst_busy	)
	);

	uart_rx #(
		.CLK_FREQUENCE	(CLK_FREQUENCE	),
		.BAUD_RATE		(BAUD_RATE		),
		.DATA_WIDTH		(DATA_WIDTH		) 
	)
	u_uart_rx_0(
		.clk_in			(clk_in			),
		.rst_n			(rst_n			),
                                        
		.m_axis_tdata	(m_axis_tdata	),
		.m_axis_tvalid	(m_axis_tvalid	),
		.m_axis_tready	(m_axis_tready	),
                                        
		.rx				(rx				),
                                        
		.rx_busy_out	(rx_busy_out	)
	);
*/


endmodule
