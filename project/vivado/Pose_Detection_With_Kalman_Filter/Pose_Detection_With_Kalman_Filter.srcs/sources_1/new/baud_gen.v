`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 12:53:06
// Design Name: 
// Module Name: tx_baud_gen
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

module baud_gen
#(
	parameter	CLK_FREQUENCE	= 64'd50_000_000,		//hz
	parameter	BAUD_RATE		= 64'd9600		, 		//9600、19200 、38400 、57600 、115200、230400、460800、921600
	parameter	OVERSAMPLING	=	1
)
(
	input					clk_in		,	//system_clk
	input					rst_n		,	//system_reset
	// input					tx_done		,	//once_tx_done
	// input					tx_start	,	//once_tx_start
	input					bps_clk_en	,
	output					bps_clk		 	//baud_rate_clk
);
	localparam	BAUD_GEN_ACC_WIDTH	=	'd32;	//log2(CLK_FREQUENCE/BAUD_RATE) + 8;	// +/- 2% max timing error over a byte

	localparam	SHIFT_LIMITER		=	log2(BAUD_RATE*OVERSAMPLING >> (31-BAUD_GEN_ACC_WIDTH));	// this make sure INC_K calculation doesn't overflow
	// 其实好像也可以直接指定param的位数为64位，这样就不会溢出了
	localparam	BAUD_GEN_INC_K		=	33'd9895605;//((BAUD_RATE<<(BAUD_GEN_ACC_WIDTH-16))+(CLK_FREQUENCE>>17))/(CLK_FREQUENCE>>16);// ((BAUD_RATE<<(BAUD_GEN_ACC_WIDTH-SHIFT_LIMITER))+(CLK_FREQUENCE>>(SHIFT_LIMITER+1)))/(CLK_FREQUENCE>>SHIFT_LIMITER);

	reg		[BAUD_GEN_ACC_WIDTH:0] 	acc;

	initial begin
		$display("inc k: %d", BAUD_GEN_INC_K);
	end

always  @(posedge clk_in or negedge rst_n)begin
	if(rst_n==1'b0)begin
		acc	<=	1'b0;
	end
	else if (bps_clk_en) begin
		acc	<=	acc[BAUD_GEN_ACC_WIDTH-1:0] + BAUD_GEN_INC_K[BAUD_GEN_ACC_WIDTH:0];
	end
	else begin
		acc	<=	BAUD_GEN_INC_K[BAUD_GEN_ACC_WIDTH:0];
	end
end

assign	bps_clk	=	acc[BAUD_GEN_ACC_WIDTH];

//get_the_width_of_
function integer log2(input integer v);
  begin
	log2=0;
	while(v>>log2) 
	  log2=log2+1;
  end
endfunction

endmodule

