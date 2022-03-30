`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/12 21:29:17
// Design Name: 
// Module Name: debounce
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


module debounce(
    input               clk_20ms_in,
    input   [15:0]      key_data_in,
    output  [15:0]      key_data_out
    );

    reg     [15:0]      key_current;
    reg     [15:0]      key_buffer0;
    reg     [15:0]      key_buffer1;

    always  @(posedge clk_20ms_in) begin
        key_current     <=  key_data_in;
        key_buffer0     <=  key_current;
        key_buffer1     <=  key_buffer0;
    end

    // 低电平有效
    assign  key_data_out    =   (key_current|key_buffer0);
    
    // ila_1 u_ila_1(
    //     .clk(clk_20ms_in),

    //     .probe0(key_current),
    //     .probe1(key_buffer0),
    //     .probe2(key_buffer1)
    // );

endmodule
