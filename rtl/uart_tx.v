module uart_tx #(
		parameter	CLK_FREQUENCE   = 	50_000_000,
		parameter	BAUD_RATE		=	9600,
		parameter	DATA_WIDTH		=	8
	)
	(
		input						clk_in	,
		input						rst_n	,

		input	[DATA_WIDTH-1:0]	data_in,
		input						fifo_empty_in,

		output						tx	,
		output						tx_rd_en		// FIFO的读取使能
	);

	localparam		STATE_IDLE	=	4'b0001;
	localparam		STATE_START	=	4'b0010;
	localparam		STATE_DATA	=	4'b0100;
	localparam		STATE_STOP	=	4'b1000;


	reg		[3:0]				state_current;
	reg		[3:0]				state_next;

	reg		[DATA_WIDTH-1:0]	data_shift;

	wire							bps_clk;

	reg		[3:0]				bit_cnt;
	wire							add_cnt;
	wire							end_cnt;

	reg							tx_r;

	wire						bps_clk_en;

	// assign	bps_clk_en	=	state_current!=STATE_IDLE;
	reg		bps_en;
	assign	bps_clk_en	=	fifo_empty_in ? (state_current!=STATE_IDLE) : bps_en;	// ((!fifo_empty_in) & bps_en) | ((fifo_empty_in) & (state_current!=STATE_IDLE));

	baud_gen #(
		.CLK_FREQUENCE      ( CLK_FREQUENCE      ),
		.BAUD_RATE          ( BAUD_RATE          )
	)	
	U_BAUD_GEN_0 (
		.clk_in    	(clk_in     ),
		.rst_n     	(rst_n      ),
		.bps_clk_en	(bps_clk_en	),
		.bps_clk   	(bps_clk    ));


	// FSM-1 
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	STATE_IDLE;
		end
		else begin
			state_current	<=	state_next;
		end
	end

	// fsm-2
	always  @(*)begin
		case(state_current)
			STATE_IDLE	:	begin
				bps_en = 1'b1;
			//	if (!fifo_empty_in)	state_next	=	STATE_START;
				if (bps_clk)		state_next	=	STATE_START;
				else				state_next	=	STATE_IDLE;
			end
			STATE_START	:	begin
				bps_en = 1'b1;
				if (bps_clk)		state_next	=	STATE_DATA;	
				else				state_next	=	STATE_START;
			end
			STATE_DATA	:	begin
				bps_en = 1'b1;
				if (end_cnt)		state_next	=	STATE_STOP;
				else				state_next	=	STATE_DATA;
			end
			STATE_STOP	:	begin
				if (bps_clk) begin	bps_en	=	1'b0;		state_next	=	STATE_IDLE; end
				// else if (bps_clk && data_in_vld)	state_next	=	STATE_START;	// 连续发送
				else	begin		bps_en	=	1'b1;		state_next	=	STATE_STOP;	end
			end
			default	:		begin
				state_next	=	STATE_IDLE;
				bps_en	=	1'b1;
			end
		endcase
	end

	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			bit_cnt <= 0;
		end
		else if(add_cnt)begin
			if(end_cnt)
				bit_cnt <= 0;
			else
				bit_cnt <= bit_cnt + 1;
		end
	end
	
	assign add_cnt = (state_current == STATE_DATA) && bps_clk;       
	assign end_cnt = add_cnt && bit_cnt==(DATA_WIDTH-1) ;   

	// fsm-3
	assign	tx	=	tx_r;

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			tx_r	<=	1'b1;
		end
		else begin
			case (state_next)
				STATE_IDLE	:	begin
					tx_r	<=	1'b1;
				end
				STATE_START	:	begin
					tx_r	<=	1'b0;
				end
				STATE_DATA	:	begin
					tx_r	<=	data_shift[0];
				end
				STATE_STOP	:	begin
					tx_r	<=	1'b1;
				end
				default	:	begin
					tx_r	<=	1'b1;
				end
			endcase
		end
	end

	// 保存进来的数据，防止变化
	assign	tx_rd_en	=	bps_clk && (!fifo_empty_in) && (state_current == STATE_IDLE);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			data_shift	<=	1'b0;
		end
		else if (tx_rd_en)begin
			data_shift	<=	data_in;
		end
		else if (state_current==STATE_DATA && bps_clk) begin
			data_shift	<=	data_shift >> 1;
		end
		else begin
			data_shift	<=	data_shift;
		end
	end


endmodule
