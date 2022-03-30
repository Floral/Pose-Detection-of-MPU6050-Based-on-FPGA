`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/12 21:29:17
// Design Name: 
// Module Name: clk_div
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


module clk_div #(
        parameter   P_MS_COUNT      =   'd50_000,
        parameter   P_20MS_COUNT    =   'd20
    )
    (
        input   clk_in,
        input   rst_n,
        output  clk_ms_out,
        output  clk_20ms_out
    );

    wire                add_cnt0;
    wire                add_cnt1;
    wire                end_cnt0;
    wire                end_cnt1;

    reg     [15:0]      cnt0;
    reg     [4:0]       cnt1;
    reg                 clk_ms;
    reg                 clk_20ms;

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
    assign end_cnt0 = add_cnt0 && cnt0==((P_MS_COUNT/2)-1) ;

    assign  clk_ms_out    =   clk_ms;

    always  @(posedge clk_in or negedge rst_n)begin
        if(rst_n==1'b0)begin
            clk_ms  <=  1'b0;
        end
        else if (end_cnt0)begin
            clk_ms  <=  ~clk_ms;
        end
    end

    
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
    assign end_cnt1 = add_cnt1 && cnt1==((P_20MS_COUNT/2)-1) ;

    assign  clk_20ms_out    =   clk_20ms;

    always  @(posedge clk_in or negedge rst_n)begin
        if(rst_n==1'b0)begin
            clk_20ms    <=  1'b0;
        end
        else if (end_cnt1)begin
            clk_20ms    <=  ~clk_20ms;
        end
    end
    

endmodule
