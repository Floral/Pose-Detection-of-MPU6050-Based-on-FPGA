`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/12 21:29:17
// Design Name: 
// Module Name: key_scan
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


module key_scan(
    input           clk_ms_in,
    input           rst_n,
    input   [3:0]   col_in,
    output  [3:0]   row_out,
    output  [15:0]  key_data_out
    );
    
    reg     [3:0]   row;
    reg     [15:0]  key_data;

    assign  row_out =   row;

    always  @(posedge clk_ms_in or negedge rst_n)begin
        if(rst_n==1'b0)begin
            row     <=  4'b1110;    // 低电平有效
        end
        else begin
            row     <=  {row_out[2:0], row_out[3]};
        end
    end

    assign  key_data_out    =   key_data;

    always  @(negedge clk_ms_in)begin
        case (row)
            4'b1110:    key_data[3:0]   <=  col_in;
            4'b1101:    key_data[7:4]   <=  col_in;
            4'b1011:    key_data[11:8]  <=  col_in;
            4'b0111:    key_data[15:12] <=  col_in;
            default:    key_data        <=  16'hffff;
        endcase
    end

endmodule
