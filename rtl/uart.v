module uart#(
		parameter	CLK_FREQUENCE   = 	50_000_000,
		parameter	BAUD_RATE		= 	9600,
		parameter	DATA_WIDTH		=	8
	)(
		input							clk_in,
		input							rst_n,

		input							rx,
		output							tx,
		// tx部分axis
		input		[DATA_WIDTH-1:0]	s_axis_tdata,
		input							s_axis_tvalid,
		output							s_axis_tready,
		// rx部分axis
		input							m_axis_tready,
		output		[DATA_WIDTH-1:0]	m_axis_tdata,
		output							m_axis_tvalid,

		output							tx_busy,
		output							rx_busy
	);

	wire				tx_busy_out;
	wire				rx_busy_out;

	assign	tx_busy	=	tx_busy_out;
	assign	rx_busy	=	rx_busy_out;


	uart_tx #(
		.CLK_FREQUENCE	(CLK_FREQUENCE	),
		.BAUD_RATE		(BAUD_RATE		),
		.DATA_WIDTH		(DATA_WIDTH		) 
	)
	u_uart_tx_0(
		.clk_in			(clk_in			),
		.rst_n			(rst_n			),
                                        
		.s_axis_tdata	(s_axis_tdata	),
		.s_axis_tvalid	(s_axis_tvalid	),
		.s_axis_tready	(s_axis_tready	),
                                        
		.tx				(tx				),
                                        
		.tx_busy_out	(tx_busy_out	)
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



endmodule
