`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/10 22:52:05
// Design Name: 
// Module Name: dynamic_digital
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


module dynamic_digital #(
        parameter   ms_count_num    =   'd50_000,
        parameter   dig_count_num   =   'd6
    )
    (
        input               clk_in,
        input               rst_n,
        input  [23:0]       data_in,
        output [7:0]        seg_out,
        output [5:0]        dig_out
    );

    parameter disp_0 =  8'h3f;
    parameter disp_1 =  8'h06;
    parameter disp_2 =  8'h5b;
    parameter disp_3 =  8'h4f;
    parameter disp_4 =  8'h66;
    parameter disp_5 =  8'h6d;
    parameter disp_6 =  8'h7d;
    parameter disp_7 =  8'h07;
    parameter disp_8 =  8'h7f;
    parameter disp_9 =  8'h6f;
    parameter disp_a =  8'h77;
    parameter disp_b =  8'h7c;
    parameter disp_c =  8'h39;
    parameter disp_d =  8'h5e;
    parameter disp_e =  8'h79;
    parameter disp_f =  8'h71;

    wire                add_cnt0;
    wire                add_cnt1;
    wire                end_cnt0;
    wire                end_cnt1;

    reg     [15:0]      cnt0;
    reg     [2:0]       cnt1;
    reg     [3:0]       data_sel;
    reg     [5:0]       dig;
    reg     [7:0]       seg;

    assign  dig_out =   dig;
    assign  seg_out =   seg;

    always @(posedge clk_in or negedge rst_n)begin
        if(!rst_n)begin
            cnt0 <= 0;
        end
        else if(add_cnt0)begin
            if(end_cnt0)
                cnt0 <= 0;
            else
                cnt0 <= cnt0 + 1;
        end
    end
    
    assign add_cnt0 = 1;
    assign end_cnt0 = add_cnt0 && cnt0==(ms_count_num-1);
    
    always @(posedge clk_in or negedge rst_n)begin 
        if(!rst_n)begin
            cnt1 <= 0;
        end
        else if(add_cnt1)begin
            if(end_cnt1)
                cnt1 <= 0;
            else
                cnt1 <= cnt1 + 1;
        end
    end
    
    assign add_cnt1 = end_cnt0;
    assign end_cnt1 = add_cnt1 && cnt1==(dig_count_num-1) ;

    
    always  @(*)begin
        case (cnt1)
            3'd0:   dig      =   6'b111110;
            3'd1:   dig      =   6'b111101;
            3'd2:   dig      =   6'b111011;
            3'd3:   dig      =   6'b110111;
            3'd4:   dig      =   6'b101111;
            3'd5:   dig      =   6'b011111;
            default:dig      =   6'b111111;
        endcase
    end


    always  @(*)begin
        case (cnt1)
            3'd0:   data_sel =   data_in[3:0];
            3'd1:   data_sel =   data_in[7:4];
            3'd2:   data_sel =   data_in[11:8];
            3'd3:   data_sel =   data_in[15:12];
            3'd4:   data_sel =   data_in[19:16];
            3'd5:   data_sel =   data_in[23:20];
            default:data_sel =   data_in[3:0];
        endcase
    end

    always  @(*)begin
        case (data_sel)
            4'h0:   seg      =  disp_0; 
            4'h1:   seg      =  disp_1; 
            4'h2:   seg      =  disp_2; 
            4'h3:   seg      =  disp_3; 
            4'h4:   seg      =  disp_4; 
            4'h5:   seg      =  disp_5; 
            4'h6:   seg      =  disp_6; 
            4'h7:   seg      =  disp_7; 
            4'h8:   seg      =  disp_8; 
            4'h9:   seg      =  disp_9; 
            4'ha:   seg      =  disp_a; 
            4'hb:   seg      =  disp_b; 
            4'hc:   seg      =  disp_c; 
            4'hd:   seg      =  disp_d; 
            4'he:   seg      =  disp_e; 
            4'hf:   seg      =  disp_f; 
            default:seg      =  8'b00000000; 
        endcase
    end

endmodule
