`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/12 21:29:17
// Design Name: 
// Module Name: top
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


module keyboard_top(
    input           clk_in,
    input           rst_n,
    input   [3:0]   col_in,
    output  [3:0]   row_out,
    output  [3:0]   key_id_out,
    output          key_data_vld_out
    );

    wire                clk_ms_out;
    wire                clk_20ms_out;
    wire    [15:0]      key_data;
    wire    [15:0]      key_data_out;
    wire    [23:0]      data_in;

    reg     [ 3:0]      key_id;
    reg     [15:0]      key_data_ff;


    clk_div #(
        .P_MS_COUNT  ('d50_000  ),
        .P_20MS_COUNT('d20      )
    )
    u_clk_div_0
    (
        .clk_in         (clk_in      ),
        .rst_n          (rst_n       ),
        .clk_ms_out     (clk_ms_out  ),
        .clk_20ms_out   (clk_20ms_out)
    );


    key_scan
    u_key_scan_0
    (
        .clk_ms_in      (clk_ms_out  ),
        .rst_n          (rst_n       ),
        .col_in         (col_in      ),
        .row_out        (row_out     ),
        .key_data_out   (key_data    )
    );

    debounce
    u_debounce_0
    (
        .clk_20ms_in    (clk_20ms_out),
        .key_data_in    (key_data    ),
        .key_data_out   (key_data_out)
    );

    always  @(posedge clk_in or negedge rst_n)begin
        if(rst_n==1'b0)begin
            key_data_ff <=  16'b0;
        end
        else begin
            key_data_ff <=  key_data_out;
        end
    end

    assign  key_data_vld_out    =   ((key_data_ff)&(~key_data_out))!=16'b0;


    always  @(posedge clk_ms_out or negedge rst_n)begin
        // casex(key_data_out)
        //     16'b1111_1111_1111_1110:    key_id  =   24'h0;
        //     16'b1111_1111_1111_110x:    key_id  =   24'h1;
        //     16'b1111_1111_1111_10xx:    key_id  =   24'h2;
        //     16'b1111_1111_1111_0xxx:    key_id  =   24'h3;

        //     16'b1111_1111_1110_xxxx:    key_id  =   24'h4;
        //     16'b1111_1111_110x_xxxx:    key_id  =   24'h5;
        //     16'b1111_1111_10xx_xxxx:    key_id  =   24'h6;
        //     16'b1111_1111_0xxx_xxxx:    key_id  =   24'h7;

        //     16'b1111_1110_xxxx_xxxx:    key_id  =   24'h8;
        //     16'b1111_110x_xxxx_xxxx:    key_id  =   24'h9;
        //     16'b1111_10xx_xxxx_xxxx:    key_id  =   24'ha;
        //     16'b1111_0xxx_xxxx_xxxx:    key_id  =   24'hb;

        //     16'b1110_xxxx_xxxx_xxxx:    key_id  =   24'hc;
        //     16'b110x_xxxx_xxxx_xxxx:    key_id  =   24'hd;
        //     16'b10xx_xxxx_xxxx_xxxx:    key_id  =   24'he;
        //     16'b0xxx_xxxx_xxxx_xxxx:    key_id  =   24'hf;

        //     default:                    key_id  =   24'h0;
        // endcase
        if (!rst_n)                             key_id  <=  24'h0;
        else if (key_data_out[15] == 1'b0)      key_id  <=  24'hf;
        else if (key_data_out[14] == 1'b0)      key_id  <=  24'he;
        else if (key_data_out[13] == 1'b0)      key_id  <=  24'hd;
        else if (key_data_out[12] == 1'b0)      key_id  <=  24'hc;
        else if (key_data_out[11] == 1'b0)      key_id  <=  24'hb;
        else if (key_data_out[10] == 1'b0)      key_id  <=  24'ha;
        else if (key_data_out[9] == 1'b0)       key_id  <=  24'h9;
        else if (key_data_out[8] == 1'b0)       key_id  <=  24'h8;
        else if (key_data_out[7] == 1'b0)       key_id  <=  24'h7;
        else if (key_data_out[6] == 1'b0)       key_id  <=  24'h6;
        else if (key_data_out[5] == 1'b0)       key_id  <=  24'h5;
        else if (key_data_out[4] == 1'b0)       key_id  <=  24'h4;
        else if (key_data_out[3] == 1'b0)       key_id  <=  24'h3;
        else if (key_data_out[2] == 1'b0)       key_id  <=  24'h2;
        else if (key_data_out[1] == 1'b0)       key_id  <=  24'h1;
        else if (key_data_out[0] == 1'b0)       key_id  <=  24'h0;
        else                                    key_id  <=  key_id;
    end
    
    assign  key_id_out = key_id;

    //always  @(posedge clk_ms_out or negedge rst_n)begin
    //    if(rst_n==1'b0)begin
    //        data_in     <=  24'h0;
    //    end
    //    else begin
    //        data_in     <=  key_id;
    //    end
    //end



endmodule
