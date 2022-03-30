// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sat Dec 16 18:05:16 2017
//
// Verilog Description of module i2c_master
//

module i2c_master (sys_clk_12m, rst_n, scl, sda, at24c02_00_data) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(2[8:18])
    input sys_clk_12m;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(10[10:21])
    input rst_n;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(11[10:15])
    output scl;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(12[11:14])
    inout sda;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(13[10:13])
    output [7:0]at24c02_00_data;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(10[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(17[7:19])
    
    wire rst_n_c, scl_c, at24c02_00_data_c_7, at24c02_00_data_c_6, at24c02_00_data_c_5, 
        at24c02_00_data_c_4, at24c02_00_data_c_3, at24c02_00_data_c_2, 
        at24c02_00_data_c_1, at24c02_00_data_c_0, VCC_net, GND_net, 
        sda_r;
    wire [14:0]state_next_14__N_378;
    
    wire n3731, n10715, n10716;
    
    VHI i7837 (.Z(VCC_net));
    OB at24c02_00_data_pad_4 (.I(at24c02_00_data_c_4), .O(at24c02_00_data[4]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    OB at24c02_00_data_pad_5 (.I(at24c02_00_data_c_5), .O(at24c02_00_data[5]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    OB at24c02_00_data_pad_6 (.I(at24c02_00_data_c_6), .O(at24c02_00_data[6]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    OB at24c02_00_data_pad_7 (.I(at24c02_00_data_c_7), .O(at24c02_00_data[7]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    OB scl_pad (.I(scl_c), .O(scl));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(12[11:14])
    BB sda_pad (.I(sda_r), .T(n3731), .B(sda), .O(state_next_14__N_378[9]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(48[10:13])
    OB at24c02_00_data_pad_3 (.I(at24c02_00_data_c_3), .O(at24c02_00_data[3]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    OB at24c02_00_data_pad_2 (.I(at24c02_00_data_c_2), .O(at24c02_00_data[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    OB at24c02_00_data_pad_1 (.I(at24c02_00_data_c_1), .O(at24c02_00_data[1]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    OB at24c02_00_data_pad_0 (.I(at24c02_00_data_c_0), .O(at24c02_00_data[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(14[15:30])
    IB sys_clk_12m_pad (.I(sys_clk_12m), .O(sys_clk_12m_c));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(10[10:21])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(11[10:15])
    LUT4 m1_lut (.Z(n10716)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 m0_lut (.Z(n10715)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    clk_div clk_div_inst (.GND_net(GND_net), .sys_clk_12m_c(sys_clk_12m_c), 
            .clk_div_100k(clk_div_100k)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(18[10] 22[4])
    i2c_master_config i2c_master_config_inst (.sys_clk_12m_c(sys_clk_12m_c), 
            .at24c02_00_data_c_0(at24c02_00_data_c_0), .at24c02_00_data_c_7(at24c02_00_data_c_7), 
            .at24c02_00_data_c_3(at24c02_00_data_c_3), .n10715(n10715), 
            .at24c02_00_data_c_2(at24c02_00_data_c_2), .at24c02_00_data_c_6(at24c02_00_data_c_6), 
            .at24c02_00_data_c_1(at24c02_00_data_c_1), .at24c02_00_data_c_5(at24c02_00_data_c_5), 
            .at24c02_00_data_c_4(at24c02_00_data_c_4), .n10716(n10716), 
            .rst_n_c(rst_n_c), .clk_div_100k(clk_div_100k), .scl_c(scl_c), 
            .\state_next_14__N_378[9] (state_next_14__N_378[9]), .sda_r(sda_r), 
            .n3731(n3731)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(32[20] 46[3])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clk_div
//

module clk_div (GND_net, sys_clk_12m_c, clk_div_100k) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_12m_c;
    output clk_div_100k;
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(10[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(17[7:19])
    
    wire n8896;
    wire [31:0]cnt_p;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(28[19:24])
    
    wire n8897, n8895, n8894, n8880;
    wire [31:0]n101;
    
    wire n8881, n8893, n8892, n8891;
    wire [31:0]n200;
    
    wire n4871, n8890, n8889, n8888, n8879, n8887, clkout_N_68, 
        n8886, n8885, n8884, n8874, n8875, n8873, n8883, n8882, 
        n8876, n8877, n8872, n9073, n10, n45, n50, n39, n40, 
        n29, n48, n42, n30, n44, n34, n8878, n8871, n8900, 
        n8899, n8898;
    
    CCU2D add_6448_22 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8896), .COUT(n8897));
    defparam add_6448_22.INIT0 = 16'h5555;
    defparam add_6448_22.INIT1 = 16'h5555;
    defparam add_6448_22.INJECT1_0 = "NO";
    defparam add_6448_22.INJECT1_1 = "NO";
    CCU2D add_6448_20 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8895), .COUT(n8896));
    defparam add_6448_20.INIT0 = 16'h5555;
    defparam add_6448_20.INIT1 = 16'h5555;
    defparam add_6448_20.INJECT1_0 = "NO";
    defparam add_6448_20.INJECT1_1 = "NO";
    CCU2D add_6448_18 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8894), .COUT(n8895));
    defparam add_6448_18.INIT0 = 16'h5555;
    defparam add_6448_18.INIT1 = 16'h5555;
    defparam add_6448_18.INJECT1_0 = "NO";
    defparam add_6448_18.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8880), .COUT(n8881), .S0(n101[19]), .S1(n101[20]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_21.INJECT1_1 = "NO";
    CCU2D add_6448_16 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8893), .COUT(n8894));
    defparam add_6448_16.INIT0 = 16'h5555;
    defparam add_6448_16.INIT1 = 16'h5555;
    defparam add_6448_16.INJECT1_0 = "NO";
    defparam add_6448_16.INJECT1_1 = "NO";
    CCU2D add_6448_14 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8892), .COUT(n8893));
    defparam add_6448_14.INIT0 = 16'h5555;
    defparam add_6448_14.INIT1 = 16'h5555;
    defparam add_6448_14.INJECT1_0 = "NO";
    defparam add_6448_14.INJECT1_1 = "NO";
    CCU2D add_6448_12 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8891), .COUT(n8892));
    defparam add_6448_12.INIT0 = 16'h5555;
    defparam add_6448_12.INIT1 = 16'h5555;
    defparam add_6448_12.INJECT1_0 = "NO";
    defparam add_6448_12.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1193__i0 (.D(n101[0]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i0.GSR = "ENABLED";
    CCU2D add_6448_10 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8890), .COUT(n8891));
    defparam add_6448_10.INIT0 = 16'h5555;
    defparam add_6448_10.INIT1 = 16'h5555;
    defparam add_6448_10.INJECT1_0 = "NO";
    defparam add_6448_10.INJECT1_1 = "NO";
    CCU2D add_6448_8 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8889), .COUT(n8890));
    defparam add_6448_8.INIT0 = 16'h5555;
    defparam add_6448_8.INIT1 = 16'h5555;
    defparam add_6448_8.INJECT1_0 = "NO";
    defparam add_6448_8.INJECT1_1 = "NO";
    CCU2D add_6448_6 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8888), 
          .COUT(n8889));
    defparam add_6448_6.INIT0 = 16'h5555;
    defparam add_6448_6.INIT1 = 16'h5555;
    defparam add_6448_6.INJECT1_0 = "NO";
    defparam add_6448_6.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8879), .COUT(n8880), .S0(n101[17]), .S1(n101[18]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_19.INJECT1_1 = "NO";
    CCU2D add_6448_4 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8887), 
          .COUT(n8888));
    defparam add_6448_4.INIT0 = 16'h5aaa;
    defparam add_6448_4.INIT1 = 16'h5555;
    defparam add_6448_4.INJECT1_0 = "NO";
    defparam add_6448_4.INJECT1_1 = "NO";
    FD1S3AX clk_p_29 (.D(clkout_N_68), .CK(sys_clk_12m_c), .Q(clk_div_100k)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=4, LSE_LLINE=18, LSE_RLINE=22 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(47[9] 50[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D add_6448_2 (.A0(cnt_p[3]), .B0(cnt_p[2]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n8887));
    defparam add_6448_2.INIT0 = 16'h7000;
    defparam add_6448_2.INIT1 = 16'h5aaa;
    defparam add_6448_2.INJECT1_0 = "NO";
    defparam add_6448_2.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8886), .S0(n101[31]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_1193_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8885), .COUT(n8886), .S0(n101[29]), .S1(n101[30]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8884), .COUT(n8885), .S0(n101[27]), .S1(n101[28]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8874), .COUT(n8875), .S0(n101[7]), .S1(n101[8]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8873), .COUT(n8874), .S0(n101[5]), .S1(n101[6]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8883), .COUT(n8884), .S0(n101[25]), .S1(n101[26]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_27.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1193__i31 (.D(n101[31]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i31.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i30 (.D(n101[30]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i29 (.D(n101[29]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i28 (.D(n101[28]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i27 (.D(n101[27]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i26 (.D(n101[26]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i25 (.D(n101[25]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i24 (.D(n101[24]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i23 (.D(n101[23]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i22 (.D(n101[22]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i21 (.D(n101[21]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i20 (.D(n101[20]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i19 (.D(n101[19]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i18 (.D(n101[18]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i17 (.D(n101[17]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i16 (.D(n101[16]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i15 (.D(n101[15]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i14 (.D(n101[14]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i13 (.D(n101[13]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i12 (.D(n101[12]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i11 (.D(n101[11]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i10 (.D(n101[10]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i9 (.D(n101[9]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i8 (.D(n101[8]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i7 (.D(n101[7]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i6 (.D(n101[6]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i5 (.D(n101[5]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i4 (.D(n101[4]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i3 (.D(n101[3]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i2 (.D(n101[2]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(cnt_p[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_1193__i1 (.D(n101[1]), .CK(sys_clk_12m_c), .CD(n4871), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193__i1.GSR = "ENABLED";
    CCU2D cnt_p_1193_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8882), .COUT(n8883), .S0(n101[23]), .S1(n101[24]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8881), .COUT(n8882), .S0(n101[21]), .S1(n101[22]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8876), .COUT(n8877), .S0(n101[11]), .S1(n101[12]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_5 (.A0(cnt_p[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8872), .COUT(n8873), .S0(n101[3]), .S1(n101[4]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_5.INJECT1_1 = "NO";
    LUT4 i7422_4_lut (.A(n9073), .B(cnt_p[4]), .C(n10), .D(n200[1]), 
         .Z(n4871)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i7422_4_lut.init = 16'h4000;
    LUT4 i25_4_lut (.A(n45), .B(n50), .C(n39), .D(n40), .Z(n9073)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(cnt_p[6]), .B(cnt_p[5]), .C(n200[0]), .D(cnt_p[2]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i19_4_lut (.A(cnt_p[30]), .B(cnt_p[13]), .C(cnt_p[7]), .D(cnt_p[22]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i24_4_lut (.A(n29), .B(n48), .C(n42), .D(n30), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut (.A(cnt_p[17]), .B(cnt_p[29]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i13_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(cnt_p[27]), .B(cnt_p[15]), .C(cnt_p[12]), .D(cnt_p[23]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(cnt_p[21]), .B(cnt_p[28]), .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i22_4_lut (.A(cnt_p[14]), .B(n44), .C(n34), .D(cnt_p[19]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(cnt_p[24]), .B(cnt_p[31]), .C(cnt_p[16]), .D(cnt_p[11]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(cnt_p[9]), .B(cnt_p[10]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(cnt_p[3]), .B(cnt_p[20]), .C(cnt_p[18]), .D(cnt_p[8]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(cnt_p[25]), .B(cnt_p[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam i8_2_lut.init = 16'heeee;
    CCU2D cnt_p_1193_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8878), .COUT(n8879), .S0(n101[15]), .S1(n101[16]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8871), .COUT(n8872), .S0(n101[1]), .S1(n101[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8877), .COUT(n8878), .S0(n101[13]), .S1(n101[14]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8871), .S1(n101[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_1193_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_1193_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_p_1193_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8875), .COUT(n8876), .S0(n101[9]), .S1(n101[10]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/clk_div.v(39[16:23])
    defparam cnt_p_1193_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_1193_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_1193_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_1193_add_4_11.INJECT1_1 = "NO";
    CCU2D add_6448_30 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8900), 
          .S1(clkout_N_68));
    defparam add_6448_30.INIT0 = 16'h5555;
    defparam add_6448_30.INIT1 = 16'h0000;
    defparam add_6448_30.INJECT1_0 = "NO";
    defparam add_6448_30.INJECT1_1 = "NO";
    CCU2D add_6448_28 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8899), .COUT(n8900));
    defparam add_6448_28.INIT0 = 16'h5555;
    defparam add_6448_28.INIT1 = 16'h5555;
    defparam add_6448_28.INJECT1_0 = "NO";
    defparam add_6448_28.INJECT1_1 = "NO";
    CCU2D add_6448_26 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8898), .COUT(n8899));
    defparam add_6448_26.INIT0 = 16'h5555;
    defparam add_6448_26.INIT1 = 16'h5555;
    defparam add_6448_26.INJECT1_0 = "NO";
    defparam add_6448_26.INJECT1_1 = "NO";
    CCU2D add_6448_24 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8897), .COUT(n8898));
    defparam add_6448_24.INIT0 = 16'h5555;
    defparam add_6448_24.INIT1 = 16'h5555;
    defparam add_6448_24.INJECT1_0 = "NO";
    defparam add_6448_24.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module i2c_master_config
//

module i2c_master_config (sys_clk_12m_c, at24c02_00_data_c_0, at24c02_00_data_c_7, 
            at24c02_00_data_c_3, n10715, at24c02_00_data_c_2, at24c02_00_data_c_6, 
            at24c02_00_data_c_1, at24c02_00_data_c_5, at24c02_00_data_c_4, 
            n10716, rst_n_c, clk_div_100k, scl_c, \state_next_14__N_378[9] , 
            sda_r, n3731) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_12m_c;
    output at24c02_00_data_c_0;
    output at24c02_00_data_c_7;
    output at24c02_00_data_c_3;
    input n10715;
    output at24c02_00_data_c_2;
    output at24c02_00_data_c_6;
    output at24c02_00_data_c_1;
    output at24c02_00_data_c_5;
    output at24c02_00_data_c_4;
    input n10716;
    input rst_n_c;
    input clk_div_100k;
    output scl_c;
    input \state_next_14__N_378[9] ;
    output sda_r;
    output n3731;
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(10[10:21])
    wire i2c_flag /* synthesis is_clock=1, SET_AS_NETWORK=\i2c_master_config_inst/i2c_flag */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(60[7:15])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(17[7:19])
    wire [7:0]i2c_config;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(23[15:25])
    wire [7:0]i2c_config_7__N_105;
    wire [3:0]n87;
    
    wire sys_clk_12m_c_enable_8;
    wire [7:0]i2c_read_data;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(22[15:28])
    
    wire i2c_state_1__N_115;
    wire [3:0]n92;
    wire [6:0]i2c_dev_addr;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(24[15:27])
    
    wire sys_clk_12m_c_enable_9;
    wire [7:0]i2c_reg_data;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(26[15:27])
    wire [7:0]i2c_ack;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(28[15:22])
    
    wire n3942;
    
    FD1S3IX i2c_config_i1 (.D(n87[0]), .CK(sys_clk_12m_c), .CD(i2c_config_7__N_105[2]), 
            .Q(i2c_config[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam i2c_config_i1.GSR = "ENABLED";
    FD1P3AX at24c02_00_data_i0_i1 (.D(i2c_read_data[0]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i1.GSR = "DISABLED";
    FD1P3AX at24c02_00_data_i0_i8 (.D(i2c_read_data[7]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_7)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i8.GSR = "DISABLED";
    FD1P3AX at24c02_00_data_i0_i4 (.D(i2c_read_data[3]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i4.GSR = "DISABLED";
    FD1S3AY i2c_state_FSM_i0 (.D(n10715), .CK(i2c_flag), .Q(n87[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(70[17:32])
    defparam i2c_state_FSM_i0.GSR = "ENABLED";
    FD1P3AX at24c02_00_data_i0_i3 (.D(i2c_read_data[2]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i3.GSR = "DISABLED";
    FD1P3AX at24c02_00_data_i0_i7 (.D(i2c_read_data[6]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_6)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i7.GSR = "DISABLED";
    FD1P3AX at24c02_00_data_i0_i2 (.D(i2c_read_data[1]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i2.GSR = "DISABLED";
    FD1S3AX i2c_state_FSM_i2 (.D(n92[2]), .CK(i2c_flag), .Q(i2c_state_1__N_115));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(70[17:32])
    defparam i2c_state_FSM_i2.GSR = "ENABLED";
    FD1S3IX i2c_state_FSM_i1 (.D(n87[0]), .CK(i2c_flag), .CD(i2c_state_1__N_115), 
            .Q(i2c_config_7__N_105[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(70[17:32])
    defparam i2c_state_FSM_i1.GSR = "ENABLED";
    FD1P3AX at24c02_00_data_i0_i6 (.D(i2c_read_data[5]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i6.GSR = "DISABLED";
    FD1P3AX at24c02_00_data_i0_i5 (.D(i2c_read_data[4]), .SP(sys_clk_12m_c_enable_8), 
            .CK(sys_clk_12m_c), .Q(at24c02_00_data_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam at24c02_00_data_i0_i5.GSR = "DISABLED";
    FD1P3AX i2c_dev_addr__i1 (.D(n10716), .SP(sys_clk_12m_c_enable_9), .CK(sys_clk_12m_c), 
            .Q(i2c_dev_addr[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam i2c_dev_addr__i1.GSR = "ENABLED";
    FD1S3AX i2c_config_i2 (.D(i2c_config_7__N_105[2]), .CK(sys_clk_12m_c), 
            .Q(i2c_config[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam i2c_config_i2.GSR = "ENABLED";
    FD1P3AX i2c_reg_data__i1 (.D(n10716), .SP(n87[0]), .CK(sys_clk_12m_c), 
            .Q(i2c_reg_data[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=32, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam i2c_reg_data__i1.GSR = "ENABLED";
    LUT4 i2c_ack_2__I_0_2_lut (.A(i2c_ack[2]), .B(i2c_ack[5]), .Z(i2c_flag)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(61[20:43])
    defparam i2c_ack_2__I_0_2_lut.init = 16'heeee;
    LUT4 i4233_2_lut (.A(i2c_config_7__N_105[2]), .B(i2c_state_1__N_115), 
         .Z(n92[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(70[17:32])
    defparam i4233_2_lut.init = 16'heeee;
    LUT4 i93_2_lut (.A(i2c_config_7__N_105[2]), .B(rst_n_c), .Z(sys_clk_12m_c_enable_8)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam i93_2_lut.init = 16'h8888;
    LUT4 i1669_1_lut (.A(i2c_config[2]), .Z(n3942)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(87[8] 103[6])
    defparam i1669_1_lut.init = 16'h5555;
    LUT4 i2604_1_lut (.A(i2c_state_1__N_115), .Z(sys_clk_12m_c_enable_9)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(70[17:32])
    defparam i2604_1_lut.init = 16'h5555;
    i2c_master_logic i2c_master_logic_inst (.clk_div_100k(clk_div_100k), .scl_c(scl_c), 
            .i2c_read_data({i2c_read_data}), .\state_next_14__N_378[9] (\state_next_14__N_378[9] ), 
            .\i2c_ack[5] (i2c_ack[5]), .n3942(n3942), .\i2c_config[0] (i2c_config[0]), 
            .\i2c_config[2] (i2c_config[2]), .sda_r(sda_r), .\i2c_ack[2] (i2c_ack[2]), 
            .\i2c_reg_data[7] (i2c_reg_data[7]), .\i2c_dev_addr[6] (i2c_dev_addr[6]), 
            .n3731(n3731), .rst_n_c(rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_config.v(31[19] 43[4])
    
endmodule
//
// Verilog Description of module i2c_master_logic
//

module i2c_master_logic (clk_div_100k, scl_c, i2c_read_data, \state_next_14__N_378[9] , 
            \i2c_ack[5] , n3942, \i2c_config[0] , \i2c_config[2] , sda_r, 
            \i2c_ack[2] , \i2c_reg_data[7] , \i2c_dev_addr[6] , n3731, 
            rst_n_c) /* synthesis syn_module_defined=1 */ ;
    input clk_div_100k;
    output scl_c;
    output [7:0]i2c_read_data;
    input \state_next_14__N_378[9] ;
    output \i2c_ack[5] ;
    input n3942;
    input \i2c_config[0] ;
    input \i2c_config[2] ;
    output sda_r;
    output \i2c_ack[2] ;
    input \i2c_reg_data[7] ;
    input \i2c_dev_addr[6] ;
    output n3731;
    input rst_n_c;
    
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master.v(17[7:19])
    
    wire scl_N_591, scl_N_567, n29, n29_adj_646, n17;
    wire [2:0]cnt_start_r;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(105[12:23])
    
    wire clk_div_100k_enable_43, n4897, n10322;
    wire [14:0]state_current;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(85[14:27])
    
    wire n10252, n29_adj_647, clk_div_100k_enable_53, clk_div_100k_enable_4, 
        n9523, clk_div_100k_enable_3;
    wire [14:0]state_next;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(86[14:24])
    
    wire sda_ctl, n9521;
    wire [3:0]cnt_read_reg_data;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(102[12:29])
    wire [14:0]state_next_14__N_329;
    wire [3:0]cnt_reg_addr;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(98[12:24])
    
    wire clk_div_100k_enable_18, state_next_14__N_228;
    wire [3:0]n5;
    wire [3:0]cnt_dev_addr_r;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(106[12:26])
    
    wire clk_div_100k_enable_17, n4922;
    wire [3:0]n19;
    
    wire clk_div_100k_enable_34, n4916;
    wire [3:0]n26;
    
    wire n10317;
    wire [3:0]cnt_write_reg_data;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(100[12:30])
    
    wire clk_div_100k_enable_27, n4919;
    wire [3:0]n27;
    
    wire n9508;
    wire [7:0]i2c_ack_7__N_531;
    wire [2:0]cnt_stop;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(103[12:20])
    
    wire clk_div_100k_enable_54, n4901;
    wire [2:0]n1931;
    wire [2:0]cnt_s_nack;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(104[12:22])
    
    wire n4899;
    wire [2:0]n1885;
    wire [2:0]cnt_ack_addr_r;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(107[12:26])
    
    wire clk_div_100k_enable_38, n4895;
    wire [2:0]n1852;
    wire [3:0]cnt_dev_addr;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(96[12:24])
    
    wire clk_div_100k_enable_44, n4886;
    wire [3:0]n28;
    wire [2:0]cnt_start;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(95[12:21])
    
    wire clk_div_100k_enable_55, n4906;
    wire [2:0]n1718;
    wire [2:0]cnt_ack_r_addr;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(99[12:26])
    
    wire clk_div_100k_enable_58, n4905;
    wire [2:0]n1775;
    
    wire n3972;
    wire [7:0]n2839;
    wire [2:0]cnt_ack_addr;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(97[12:24])
    
    wire clk_div_100k_enable_52, n4885;
    wire [2:0]n1749;
    wire [2:0]cnt_ack_w_data;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(101[12:26])
    
    wire clk_div_100k_enable_56, n4903;
    wire [2:0]n1801;
    wire [2:0]cnt_s_ack;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(108[12:21])
    
    wire clk_div_100k_enable_42, n4893, n10320, n10319;
    wire [2:0]n1908;
    
    wire n10318, n10225, n6731, n4376, n6715, n9103;
    wire [6:0]n3031;
    
    wire n9105;
    wire [2:0]n2860;
    
    wire n9144;
    wire [14:0]n3413;
    
    wire n10339;
    wire [2:0]n2706;
    
    wire n9120;
    wire [2:0]n2808;
    
    wire clk_div_100k_enable_45, clk_div_100k_enable_46, clk_div_100k_enable_47, 
        clk_div_100k_enable_48, clk_div_100k_enable_49, clk_div_100k_enable_50, 
        clk_div_100k_enable_51, n10224, n10223, n10136, n10137, n10221, 
        n10220, n10222, sda_r_N_634, n10148, n10147, n10149, n3, 
        n9011, n1837, n14, n1, n1_adj_665, n10315, n1_adj_666, 
        clk_div_100k_enable_57, n9525, n1_adj_667, n10276, sda_r_N_639, 
        n9509, n10273, n6737, n29_adj_668, n10246, n10321, n10335;
    wire [10:0]n2918;
    
    wire n9572, n10334, n4797, n1166, n1218, n8907, n10338, n1786, 
        n10337, n10714, n10341, n10340, n10343, n10304, n10345, 
        n10344, n6755, n10235, n10253, n8946;
    wire [9:0]n3101;
    
    wire n6673, n10314, n6747, n9512, n10259, n10311, n8952, n4, 
        n9507, n10306, n10293, n310, n280, n10279, n9556, n29_adj_669, 
        n4672, scl_N_598, n10266, n11, n10278, n8960, n10256, 
        n10255, n3_adj_670, n10291, n10309, n9504, n10288, n10264, 
        n10010;
    wire [2:0]n2876;
    
    wire n8944, n10263, n4_adj_671, n9510, n10290, n10274, n10299, 
        n10296, n10250, n10316, n29_adj_672, n10300, n9946, n10307, 
        n10346, n7879, n9630, n9012, n8955, n6362, n257, n238, 
        n8971, n8, n8929, n10328, n9574, n29_adj_673, n8_adj_674, 
        n10258, n10275, n10261, n6, n10277, n6589, n10323, n10180, 
        n9656, n10294, n9684, n1854, n17_adj_675, n10245, n10287, 
        n10286, n10281, n151, n9007, n10284, n1128, n8940, n10283, 
        n6753, n9575, n9544, n29_adj_676, n10325, n10285, n6695, 
        n10262, n10257, n10295, n10260, n10254, scl_N_590, n10012, 
        n6_adj_677, n9531, n10310, n9577, n9101, n10302, n10331, 
        n4817, n22_adj_678;
    wire [5:0]n2990;
    
    wire n7868, n10272, n10251, n10313, n4_adj_679, n10327;
    wire [4:0]n2997;
    
    wire n9004, n9676, n9538, n8_adj_680, n10298, n10324, n6607, 
        n6_adj_681, n29_adj_682, n13, n11_adj_683, n12, n9, n6_adj_684, 
        sda_r_N_628, n10326, sda_r_N_633, n10, n8_adj_685, sda_r_N_638, 
        n29_adj_686, n4397, n4402, n4391, n10297, n10265, n5777, 
        n12_adj_687, n10233, n8995, scl_N_599, scl_N_549, n15, n7, 
        n6_adj_688, n10244, n10267, n10330, n10329, n276, n9694, 
        n18, n9901, n10301, n6611, n10268, n10226, n10227, n10271, 
        n10303, n10270, n10305, n10011, n10269, n9003;
    wire [7:0]n2848;
    
    wire n9536, n9537, n10342, n313, n33, n6593, n8_adj_689, n9696, 
        n21, n10332, n10282, n9087, n9805, n9721, n6723, n4_adj_690, 
        n10292, n9528, n7_adj_691, n6_adj_692, n4_adj_693, n6464, 
        n6423, n6657, scl_N_561, n9809, n9581, n2, n9552, n15_adj_694, 
        n20, n16, n3_adj_695, n18_adj_696, n12_adj_697, n9_adj_698, 
        n15_adj_699, n8975, n23_adj_700, n24_adj_701, n20_adj_702, 
        n6_adj_703, n10336, sda_ctl_N_615, n4_adj_704, n4_adj_705, 
        n4_adj_706, n8974, n9690, n8_adj_707, n10333;
    
    LUT4 i4_4_lut (.A(scl_N_591), .B(scl_N_567), .C(n29), .D(n29_adj_646), 
         .Z(n17)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i4_4_lut.init = 16'h0ace;
    FD1P3IX cnt_start_r_i0_i0 (.D(n10322), .SP(clk_div_100k_enable_43), 
            .CD(n4897), .CK(clk_div_100k), .Q(cnt_start_r[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_start_r_i0_i0.GSR = "ENABLED";
    LUT4 i7458_3_lut_rep_91_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_647), .Z(clk_div_100k_enable_53)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7458_3_lut_rep_91_4_lut_3_lut_4_lut.init = 16'h01ef;
    FD1P3AY scl_r_513 (.D(n9523), .SP(clk_div_100k_enable_4), .CK(clk_div_100k), 
            .Q(scl_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam scl_r_513.GSR = "ENABLED";
    FD1P3AX i2c_read_data_i0_i0 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_3), 
            .CK(clk_div_100k), .Q(i2c_read_data[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i0.GSR = "DISABLED";
    FD1S3AX state_current_i1 (.D(state_next[0]), .CK(clk_div_100k), .Q(state_current[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i1.GSR = "ENABLED";
    FD1P3AY sda_ctl_511 (.D(n9521), .SP(clk_div_100k_enable_4), .CK(clk_div_100k), 
            .Q(sda_ctl)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam sda_ctl_511.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[3]), 
         .C(cnt_read_reg_data[2]), .D(cnt_read_reg_data[0]), .Z(state_next_14__N_329[11])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    FD1P3IX cnt_reg_addr_1195__i2 (.D(n5[2]), .SP(clk_div_100k_enable_18), 
            .CD(state_next_14__N_228), .CK(clk_div_100k), .Q(cnt_reg_addr[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam cnt_reg_addr_1195__i2.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_r_1197__i2 (.D(n19[2]), .SP(clk_div_100k_enable_17), 
            .CD(n4922), .CK(clk_div_100k), .Q(cnt_dev_addr_r[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(480[31:52])
    defparam cnt_dev_addr_r_1197__i2.GSR = "ENABLED";
    FD1P3IX cnt_read_reg_data_1198__i3 (.D(n26[3]), .SP(clk_div_100k_enable_34), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_read_reg_data[3]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam cnt_read_reg_data_1198__i3.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1195__i3 (.D(n5[3]), .SP(clk_div_100k_enable_18), 
            .CD(state_next_14__N_228), .CK(clk_div_100k), .Q(cnt_reg_addr[3]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam cnt_reg_addr_1195__i3.GSR = "ENABLED";
    LUT4 i1352_2_lut_rep_168 (.A(cnt_start_r[1]), .B(cnt_start_r[0]), .Z(n10317)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(467[28:45])
    defparam i1352_2_lut_rep_168.init = 16'h8888;
    FD1P3IX cnt_read_reg_data_1198__i2 (.D(n26[2]), .SP(clk_div_100k_enable_34), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_read_reg_data[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam cnt_read_reg_data_1198__i2.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_r_1197__i1 (.D(n19[1]), .SP(clk_div_100k_enable_17), 
            .CD(n4922), .CK(clk_div_100k), .Q(cnt_dev_addr_r[1]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(480[31:52])
    defparam cnt_dev_addr_r_1197__i1.GSR = "ENABLED";
    FD1P3IX cnt_read_reg_data_1198__i1 (.D(n26[1]), .SP(clk_div_100k_enable_34), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_read_reg_data[1]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam cnt_read_reg_data_1198__i1.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1195__i1 (.D(n5[1]), .SP(clk_div_100k_enable_18), 
            .CD(state_next_14__N_228), .CK(clk_div_100k), .Q(cnt_reg_addr[1]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam cnt_reg_addr_1195__i1.GSR = "ENABLED";
    FD1P3IX cnt_write_reg_data_1196__i3 (.D(n27[3]), .SP(clk_div_100k_enable_27), 
            .CD(n4919), .CK(clk_div_100k), .Q(cnt_write_reg_data[3]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(430[35:60])
    defparam cnt_write_reg_data_1196__i3.GSR = "ENABLED";
    FD1S3IX i2c_ack__i2 (.D(i2c_ack_7__N_531[5]), .CK(clk_div_100k), .CD(n9508), 
            .Q(\i2c_ack[5] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(596[8] 684[7])
    defparam i2c_ack__i2.GSR = "ENABLED";
    FD1P3IX cnt_write_reg_data_1196__i2 (.D(n27[2]), .SP(clk_div_100k_enable_27), 
            .CD(n4919), .CK(clk_div_100k), .Q(cnt_write_reg_data[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(430[35:60])
    defparam cnt_write_reg_data_1196__i2.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_r_1197__i3 (.D(n19[3]), .SP(clk_div_100k_enable_17), 
            .CD(n4922), .CK(clk_div_100k), .Q(cnt_dev_addr_r[3]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(480[31:52])
    defparam cnt_dev_addr_r_1197__i3.GSR = "ENABLED";
    FD1P3IX cnt_write_reg_data_1196__i1 (.D(n27[1]), .SP(clk_div_100k_enable_27), 
            .CD(n4919), .CK(clk_div_100k), .Q(cnt_write_reg_data[1]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(430[35:60])
    defparam cnt_write_reg_data_1196__i1.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_r_1197__i0 (.D(n19[0]), .SP(clk_div_100k_enable_17), 
            .CD(n4922), .CK(clk_div_100k), .Q(cnt_dev_addr_r[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(480[31:52])
    defparam cnt_dev_addr_r_1197__i0.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1195__i0 (.D(n5[0]), .SP(clk_div_100k_enable_18), 
            .CD(state_next_14__N_228), .CK(clk_div_100k), .Q(cnt_reg_addr[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam cnt_reg_addr_1195__i0.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i1 (.D(n1931[1]), .SP(clk_div_100k_enable_54), .CD(n4901), 
            .CK(clk_div_100k), .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_stop_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_s_nack_i0_i2 (.D(n1885[2]), .SP(clk_div_100k_enable_53), 
            .CD(n4899), .CK(clk_div_100k), .Q(cnt_s_nack[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_s_nack_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_r_i0_i1 (.D(n1852[1]), .SP(clk_div_100k_enable_38), 
            .CD(n4895), .CK(clk_div_100k), .Q(cnt_ack_addr_r[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_addr_r_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1194__i2 (.D(n28[2]), .SP(clk_div_100k_enable_44), 
            .CD(n4886), .CK(clk_div_100k), .Q(cnt_dev_addr[2]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(358[29:48])
    defparam cnt_dev_addr_1194__i2.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i2 (.D(n1931[2]), .SP(clk_div_100k_enable_54), .CD(n4901), 
            .CK(clk_div_100k), .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_stop_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_start_i0_i1 (.D(n1718[1]), .SP(clk_div_100k_enable_55), 
            .CD(n4906), .CK(clk_div_100k), .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_start_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_s_nack_i0_i1 (.D(n1885[1]), .SP(clk_div_100k_enable_53), 
            .CD(n4899), .CK(clk_div_100k), .Q(cnt_s_nack[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_s_nack_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_ack_r_addr_i0_i1 (.D(n1775[1]), .SP(clk_div_100k_enable_58), 
            .CD(n4905), .CK(clk_div_100k), .Q(cnt_ack_r_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_r_addr_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_reg_data_1196__i0 (.D(n27[0]), .SP(clk_div_100k_enable_27), 
            .CD(n4919), .CK(clk_div_100k), .Q(cnt_write_reg_data[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(430[35:60])
    defparam cnt_write_reg_data_1196__i0.GSR = "ENABLED";
    FD1S3IX state_current_i6 (.D(n2839[5]), .CK(clk_div_100k), .CD(n3972), 
            .Q(state_current[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i6.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i1 (.D(n1749[1]), .SP(clk_div_100k_enable_52), 
            .CD(n4885), .CK(clk_div_100k), .Q(cnt_ack_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_addr_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i2 (.D(n1749[2]), .SP(clk_div_100k_enable_52), 
            .CD(n4885), .CK(clk_div_100k), .Q(cnt_ack_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_addr_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_r_addr_i0_i2 (.D(n1775[2]), .SP(clk_div_100k_enable_58), 
            .CD(n4905), .CK(clk_div_100k), .Q(cnt_ack_r_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_r_addr_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_w_data_i0_i1 (.D(n1801[1]), .SP(clk_div_100k_enable_56), 
            .CD(n4903), .CK(clk_div_100k), .Q(cnt_ack_w_data[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_w_data_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1194__i1 (.D(n28[1]), .SP(clk_div_100k_enable_44), 
            .CD(n4886), .CK(clk_div_100k), .Q(cnt_dev_addr[1]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(358[29:48])
    defparam cnt_dev_addr_1194__i1.GSR = "ENABLED";
    FD1P3IX cnt_s_ack_i0_i0 (.D(n10320), .SP(clk_div_100k_enable_42), .CD(n4893), 
            .CK(clk_div_100k), .Q(cnt_s_ack[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_s_ack_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_read_reg_data_1198__i0 (.D(n26[0]), .SP(clk_div_100k_enable_34), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_read_reg_data[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam cnt_read_reg_data_1198__i0.GSR = "ENABLED";
    FD1P3IX cnt_ack_w_data_i0_i2 (.D(n1801[2]), .SP(clk_div_100k_enable_56), 
            .CD(n4903), .CK(clk_div_100k), .Q(cnt_ack_w_data[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_w_data_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_r_i0_i2 (.D(n1852[2]), .SP(clk_div_100k_enable_38), 
            .CD(n4895), .CK(clk_div_100k), .Q(cnt_ack_addr_r[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_addr_r_i0_i2.GSR = "ENABLED";
    FD1S3AX state_current_i14 (.D(state_next[13]), .CK(clk_div_100k), .Q(state_current[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i14.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1194__i3 (.D(n28[3]), .SP(clk_div_100k_enable_44), 
            .CD(n4886), .CK(clk_div_100k), .Q(cnt_dev_addr[3]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(358[29:48])
    defparam cnt_dev_addr_1194__i3.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_r_i0_i0 (.D(n10319), .SP(clk_div_100k_enable_38), 
            .CD(n4895), .CK(clk_div_100k), .Q(cnt_ack_addr_r[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_addr_r_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_start_i0_i2 (.D(n1718[2]), .SP(clk_div_100k_enable_55), 
            .CD(n4906), .CK(clk_div_100k), .Q(cnt_start[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_start_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_s_ack_i0_i1 (.D(n1908[1]), .SP(clk_div_100k_enable_42), 
            .CD(n4893), .CK(clk_div_100k), .Q(cnt_s_ack[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_s_ack_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_start_r_i0_i1 (.D(n10318), .SP(clk_div_100k_enable_43), 
            .CD(n4897), .CK(clk_div_100k), .Q(cnt_start_r[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_start_r_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_s_ack_i0_i2 (.D(n1908[2]), .SP(clk_div_100k_enable_42), 
            .CD(n4893), .CK(clk_div_100k), .Q(cnt_s_ack[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_s_ack_i0_i2.GSR = "ENABLED";
    FD1S3IX state_current_i2 (.D(n6731), .CK(clk_div_100k), .CD(n10225), 
            .Q(state_current[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i2.GSR = "ENABLED";
    FD1P3IX cnt_start_r_i0_i2 (.D(n10317), .SP(clk_div_100k_enable_43), 
            .CD(n4897), .CK(clk_div_100k), .Q(cnt_start_r[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_start_r_i0_i2.GSR = "ENABLED";
    FD1S3IX state_current_i4 (.D(n6715), .CK(clk_div_100k), .CD(n4376), 
            .Q(state_current[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i4.GSR = "ENABLED";
    FD1S3IX state_current_i13 (.D(n3031[6]), .CK(clk_div_100k), .CD(n9103), 
            .Q(state_current[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i13.GSR = "ENABLED";
    FD1S3IX state_current_i12 (.D(n2860[1]), .CK(clk_div_100k), .CD(n9105), 
            .Q(state_current[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i12.GSR = "ENABLED";
    FD1S3IX state_current_i11 (.D(n9144), .CK(clk_div_100k), .CD(n3942), 
            .Q(state_current[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i11.GSR = "ENABLED";
    FD1S3IX state_current_i10 (.D(n3413[9]), .CK(clk_div_100k), .CD(n3942), 
            .Q(state_current[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i10.GSR = "ENABLED";
    FD1S3IX state_current_i9 (.D(n3413[8]), .CK(clk_div_100k), .CD(n3942), 
            .Q(state_current[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i9.GSR = "ENABLED";
    FD1S3IX state_current_i8 (.D(n2706[1]), .CK(clk_div_100k), .CD(n10339), 
            .Q(state_current[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i8.GSR = "ENABLED";
    FD1S3IX state_current_i7 (.D(n2808[1]), .CK(clk_div_100k), .CD(n9120), 
            .Q(state_current[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i7.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1194__i0 (.D(n28[0]), .SP(clk_div_100k_enable_44), 
            .CD(n4886), .CK(clk_div_100k), .Q(cnt_dev_addr[0]));   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(358[29:48])
    defparam cnt_dev_addr_1194__i0.GSR = "ENABLED";
    FD1S3AX state_current_i5 (.D(state_next[4]), .CK(clk_div_100k), .Q(state_current[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i5.GSR = "ENABLED";
    FD1S3AX state_current_i3 (.D(state_next[2]), .CK(clk_div_100k), .Q(state_current[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam state_current_i3.GSR = "ENABLED";
    FD1P3AX i2c_read_data_i0_i7 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_45), 
            .CK(clk_div_100k), .Q(i2c_read_data[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i7.GSR = "DISABLED";
    FD1P3AX i2c_read_data_i0_i6 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_46), 
            .CK(clk_div_100k), .Q(i2c_read_data[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i6.GSR = "DISABLED";
    FD1P3AX i2c_read_data_i0_i5 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_47), 
            .CK(clk_div_100k), .Q(i2c_read_data[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i5.GSR = "DISABLED";
    FD1P3AX i2c_read_data_i0_i4 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_48), 
            .CK(clk_div_100k), .Q(i2c_read_data[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i4.GSR = "DISABLED";
    FD1P3AX i2c_read_data_i0_i3 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_49), 
            .CK(clk_div_100k), .Q(i2c_read_data[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i3.GSR = "DISABLED";
    FD1P3AX i2c_read_data_i0_i2 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_50), 
            .CK(clk_div_100k), .Q(i2c_read_data[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i2.GSR = "DISABLED";
    FD1P3AX i2c_read_data_i0_i1 (.D(\state_next_14__N_378[9] ), .SP(clk_div_100k_enable_51), 
            .CK(clk_div_100k), .Q(i2c_read_data[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2c_read_data_i0_i1.GSR = "DISABLED";
    PFUMX i7666 (.BLUT(n10224), .ALUT(n10223), .C0(\i2c_config[0] ), .Z(n10225));
    LUT4 n10136_bdd_2_lut (.A(n10136), .B(state_current[5]), .Z(n10137)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n10136_bdd_2_lut.init = 16'h2222;
    PFUMX i7664 (.BLUT(n10221), .ALUT(n10220), .C0(\i2c_config[2] ), .Z(n10222));
    FD1P3IX cnt_ack_addr_i0_i0 (.D(n1749[0]), .SP(clk_div_100k_enable_52), 
            .CD(n4885), .CK(clk_div_100k), .Q(cnt_ack_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_addr_i0_i0.GSR = "ENABLED";
    LUT4 i1587_4_lut_4_lut (.A(cnt_start_r[1]), .B(cnt_start_r[0]), .C(cnt_start_r[2]), 
         .D(sda_r), .Z(sda_r_N_634)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(467[28:45])
    defparam i1587_4_lut_4_lut.init = 16'hfd05;
    LUT4 i1510_2_lut_rep_169 (.A(cnt_start_r[0]), .B(cnt_start_r[1]), .Z(n10318)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(468[13] 474[20])
    defparam i1510_2_lut_rep_169.init = 16'h6666;
    LUT4 i1584_3_lut_4_lut (.A(cnt_start_r[0]), .B(cnt_start_r[1]), .C(cnt_start_r[2]), 
         .D(scl_c), .Z(scl_N_567)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(468[13] 474[20])
    defparam i1584_3_lut_4_lut.init = 16'hf606;
    PFUMX i7643 (.BLUT(n10148), .ALUT(n10147), .C0(\i2c_config[0] ), .Z(n10149));
    PFUMX i34 (.BLUT(n3), .ALUT(n9011), .C0(n1837), .Z(n14));
    FD1P3IX cnt_s_nack_i0_i0 (.D(n1), .SP(clk_div_100k_enable_53), .CD(n4899), 
            .CK(clk_div_100k), .Q(cnt_s_nack[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_s_nack_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i0 (.D(n1_adj_665), .SP(clk_div_100k_enable_54), 
            .CD(n4901), .CK(clk_div_100k), .Q(cnt_stop[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_stop_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_start_i0_i0 (.D(n10315), .SP(clk_div_100k_enable_55), .CD(n4906), 
            .CK(clk_div_100k), .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_start_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_ack_w_data_i0_i0 (.D(n1_adj_666), .SP(clk_div_100k_enable_56), 
            .CD(n4903), .CK(clk_div_100k), .Q(cnt_ack_w_data[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_w_data_i0_i0.GSR = "ENABLED";
    FD1P3AY sda_r_512 (.D(n9525), .SP(clk_div_100k_enable_57), .CK(clk_div_100k), 
            .Q(sda_r)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam sda_r_512.GSR = "ENABLED";
    FD1P3IX cnt_ack_r_addr_i0_i0 (.D(n1_adj_667), .SP(clk_div_100k_enable_58), 
            .CD(n4905), .CK(clk_div_100k), .Q(cnt_ack_r_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam cnt_ack_r_addr_i0_i0.GSR = "ENABLED";
    LUT4 state_current_5__bdd_4_lut_7656 (.A(state_current[0]), .B(n10276), 
         .C(state_current[1]), .D(state_current[6]), .Z(n10136)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam state_current_5__bdd_4_lut_7656.init = 16'h0012;
    LUT4 sda_r_I_43_3_lut_4_lut_4_lut (.A(cnt_s_nack[1]), .B(cnt_s_nack[2]), 
         .C(cnt_s_nack[0]), .D(sda_r), .Z(sda_r_N_639)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A ((D)+!B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(544[14:15])
    defparam sda_r_I_43_3_lut_4_lut_4_lut.init = 16'hfd11;
    FD1S3IX i2c_ack__i1 (.D(n10273), .CK(clk_div_100k), .CD(n9509), .Q(\i2c_ack[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=31, LSE_RLINE=43 */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(596[8] 684[7])
    defparam i2c_ack__i1.GSR = "ENABLED";
    LUT4 i4470_4_lut_4_lut_4_lut (.A(state_current[13]), .B(state_current[11]), 
         .C(state_current[10]), .D(state_current[12]), .Z(n6737)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i4470_4_lut_4_lut_4_lut.init = 16'hfee8;
    LUT4 i3_4_lut_then_4_lut (.A(cnt_ack_w_data[0]), .B(n29_adj_668), .C(n10246), 
         .D(n10321), .Z(n10335)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i3_4_lut_then_4_lut.init = 16'h3f2f;
    PFUMX mux_1192_Mux_4_i1 (.BLUT(n2918[4]), .ALUT(n9572), .C0(\i2c_config[0] ), 
          .Z(n3413[4]));
    LUT4 i3_4_lut_else_4_lut (.A(n10246), .B(cnt_start[2]), .C(cnt_start[0]), 
         .D(cnt_start[1]), .Z(n10334)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i3_4_lut_else_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(state_current[8]), .B(state_current[5]), .Z(n4797)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(539[5:13])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 pwr_bdd_2_lut_7651_then_4_lut (.A(\i2c_config[2] ), .B(n1166), 
         .C(n1218), .D(n8907), .Z(n10338)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam pwr_bdd_2_lut_7651_then_4_lut.init = 16'hff7f;
    LUT4 pwr_bdd_2_lut_7651_else_4_lut (.A(n1837), .B(\i2c_config[2] ), 
         .C(n1786), .Z(n10337)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam pwr_bdd_2_lut_7651_else_4_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_rep_182 (.A(state_current[8]), .B(state_current[12]), 
         .Z(n10714)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_182.init = 16'heeee;
    LUT4 state_next_14__N_344_11__bdd_4_lut_then_4_lut (.A(cnt_s_nack[1]), 
         .B(state_current[10]), .C(cnt_s_nack[2]), .D(cnt_s_nack[0]), 
         .Z(n10341)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam state_next_14__N_344_11__bdd_4_lut_then_4_lut.init = 16'h0100;
    LUT4 state_next_14__N_344_11__bdd_4_lut_else_4_lut (.A(cnt_stop[0]), .B(cnt_stop[2]), 
         .C(cnt_stop[1]), .D(state_current[13]), .Z(n10340)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam state_next_14__N_344_11__bdd_4_lut_else_4_lut.init = 16'hf700;
    LUT4 scl_c_bdd_4_lut (.A(scl_c), .B(cnt_start[0]), .C(cnt_start[2]), 
         .D(cnt_start[1]), .Z(n10343)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B+(C+(D)))) */ ;
    defparam scl_c_bdd_4_lut.init = 16'ha8ab;
    LUT4 i1_4_lut_then_4_lut (.A(n10304), .B(state_current[2]), .C(state_current[7]), 
         .D(state_current[3]), .Z(n10345)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_else_4_lut (.A(n10304), .B(state_current[2]), .C(state_current[7]), 
         .D(state_current[3]), .Z(n10344)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0114;
    LUT4 n1598_bdd_3_lut_4_lut (.A(n6755), .B(n10235), .C(n10253), .D(\i2c_config[2] ), 
         .Z(n10224)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam n1598_bdd_3_lut_4_lut.init = 16'hfdff;
    PFUMX mux_1192_Mux_9_i1 (.BLUT(n8946), .ALUT(n3101[7]), .C0(\i2c_config[0] ), 
          .Z(n3413[9]));
    LUT4 i4480_2_lut_4_lut (.A(n6673), .B(n10314), .C(state_current[12]), 
         .D(state_current[13]), .Z(n6747)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4480_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_110 (.A(state_current[13]), .B(n9512), .Z(n10259)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_110.init = 16'h4444;
    LUT4 i1_2_lut_rep_104_3_lut (.A(state_current[13]), .B(n9512), .C(state_current[4]), 
         .Z(n10253)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_rep_104_3_lut.init = 16'h0404;
    LUT4 i3_4_lut_4_lut_3_lut (.A(state_current[13]), .B(n10311), .C(state_current[4]), 
         .Z(n8952)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i3_4_lut_4_lut_3_lut.init = 16'h0808;
    LUT4 i6575_2_lut (.A(cnt_dev_addr_r[1]), .B(cnt_dev_addr_r[0]), .Z(n19[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(480[31:52])
    defparam i6575_2_lut.init = 16'h6666;
    LUT4 i6517_2_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .Z(n26[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam i6517_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state_current[13]), .B(n9512), .C(n6755), 
         .D(state_current[4]), .Z(n4)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0f4f;
    LUT4 i6488_2_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .Z(n5[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam i6488_2_lut.init = 16'h6666;
    LUT4 i2_3_lut (.A(n9507), .B(state_current[11]), .C(state_current[6]), 
         .Z(n9508)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut.init = 16'hfbfb;
    LUT4 i3_4_lut (.A(n10306), .B(n10714), .C(n10293), .D(n310), .Z(n9507)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1482_1_lut_rep_170 (.A(cnt_ack_addr_r[0]), .Z(n10319)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(508[14:15])
    defparam i1482_1_lut_rep_170.init = 16'h5555;
    LUT4 i1_2_lut_adj_47 (.A(state_current[9]), .B(state_current[4]), .Z(n280)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_47.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_48 (.A(state_current[13]), .B(n9512), 
         .C(n10279), .D(state_current[4]), .Z(n9556)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_48.init = 16'hf0b0;
    LUT4 i6546_2_lut (.A(cnt_write_reg_data[1]), .B(cnt_write_reg_data[0]), 
         .Z(n27[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(430[35:60])
    defparam i6546_2_lut.init = 16'h6666;
    LUT4 i6573_1_lut (.A(cnt_dev_addr_r[0]), .Z(n19[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(480[31:52])
    defparam i6573_1_lut.init = 16'h5555;
    LUT4 i6486_1_lut (.A(cnt_reg_addr[0]), .Z(n5[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam i6486_1_lut.init = 16'h5555;
    LUT4 i2624_4_lut (.A(clk_div_100k_enable_54), .B(cnt_stop[1]), .C(n29_adj_669), 
         .D(cnt_stop[2]), .Z(n4901)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(323[8] 585[6])
    defparam i2624_4_lut.init = 16'ha8a0;
    LUT4 i1438_2_lut (.A(cnt_stop[1]), .B(cnt_stop[0]), .Z(n1931[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(568[25:39])
    defparam i1438_2_lut.init = 16'h6666;
    LUT4 i1372_2_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[0]), .Z(n1852[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(505[31:52])
    defparam i1372_2_lut.init = 16'h6666;
    LUT4 n1598_bdd_2_lut_4_lut_2_lut_3_lut_4_lut (.A(state_current[8]), .B(state_current[12]), 
         .C(n4672), .D(state_current[10]), .Z(n10221)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam n1598_bdd_2_lut_4_lut_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1445_3_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[0]), 
         .Z(n1931[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(568[25:39])
    defparam i1445_3_lut.init = 16'h6a6a;
    LUT4 i1262_2_lut (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n1718[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(346[26:41])
    defparam i1262_2_lut.init = 16'h6666;
    LUT4 i2616_3_lut_4_lut_4_lut_4_lut (.A(state_current[0]), .B(clk_div_100k_enable_55), 
         .C(n29), .D(scl_N_598), .Z(n4893)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2616_3_lut_4_lut_4_lut_4_lut.init = 16'h4740;
    LUT4 i1394_2_lut (.A(cnt_s_nack[1]), .B(cnt_s_nack[0]), .Z(n1885[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(542[27:43])
    defparam i1394_2_lut.init = 16'h6666;
    LUT4 i1306_2_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[0]), .Z(n1775[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(419[31:52])
    defparam i1306_2_lut.init = 16'h6666;
    LUT4 select_774_Select_0_i11_2_lut_4_lut (.A(n10266), .B(state_current[8]), 
         .C(state_current[5]), .D(cnt_write_reg_data[0]), .Z(n11)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(477[5:18])
    defparam select_774_Select_0_i11_2_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_107_4_lut (.A(n4672), .B(n10278), .C(n8960), .D(\i2c_config[0] ), 
         .Z(n10256)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_107_4_lut.init = 16'h2300;
    LUT4 i6544_1_lut (.A(cnt_write_reg_data[0]), .Z(n27[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(430[35:60])
    defparam i6544_1_lut.init = 16'h5555;
    LUT4 i7501_3_lut_rep_94_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n10255), .Z(clk_div_100k_enable_17)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7501_3_lut_rep_94_4_lut_3_lut_4_lut.init = 16'h01ef;
    LUT4 equal_967_i3_2_lut (.A(\i2c_config[0] ), .B(\i2c_config[2] ), .Z(n3_adj_670)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(234[11:46])
    defparam equal_967_i3_2_lut.init = 16'hdddd;
    LUT4 i1484_1_lut_rep_171 (.A(cnt_s_ack[0]), .Z(n10320)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(558[14:15])
    defparam i1484_1_lut_rep_171.init = 16'h5555;
    LUT4 i1284_2_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[0]), .Z(n1749[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(383[29:48])
    defparam i1284_2_lut.init = 16'h6666;
    LUT4 i1291_3_lut (.A(cnt_ack_addr[2]), .B(cnt_ack_addr[1]), .C(cnt_ack_addr[0]), 
         .Z(n1749[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(383[29:48])
    defparam i1291_3_lut.init = 16'h6a6a;
    LUT4 i1313_3_lut (.A(cnt_ack_r_addr[2]), .B(cnt_ack_r_addr[1]), .C(cnt_ack_r_addr[0]), 
         .Z(n1775[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(419[31:52])
    defparam i1313_3_lut.init = 16'h6a6a;
    LUT4 i1328_2_lut (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[0]), .Z(n1801[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(455[31:52])
    defparam i1328_2_lut.init = 16'h6666;
    LUT4 i7441_2_lut_2_lut_4_lut (.A(n4672), .B(n10278), .C(n8960), .D(n3_adj_670), 
         .Z(n3972)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;
    defparam i7441_2_lut_2_lut_4_lut.init = 16'hffdc;
    LUT4 i6459_2_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), .Z(n28[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(358[29:48])
    defparam i6459_2_lut.init = 16'h6666;
    LUT4 i1_3_lut (.A(cnt_s_ack[0]), .B(cnt_s_ack[2]), .C(cnt_s_ack[1]), 
         .Z(scl_N_598)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(108[12:21])
    defparam i1_3_lut.init = 16'hecec;
    PFUMX mux_1192_Mux_0_i1 (.BLUT(n2918[0]), .ALUT(n3101[0]), .C0(\i2c_config[0] ), 
          .Z(n3413[0]));
    PFUMX mux_1192_Mux_2_i1 (.BLUT(n2918[2]), .ALUT(n3101[2]), .C0(\i2c_config[0] ), 
          .Z(n3413[2]));
    LUT4 i6515_1_lut (.A(cnt_read_reg_data[0]), .Z(n26[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam i6515_1_lut.init = 16'h5555;
    LUT4 i1335_3_lut (.A(cnt_ack_w_data[2]), .B(cnt_ack_w_data[1]), .C(cnt_ack_w_data[0]), 
         .Z(n1801[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(455[31:52])
    defparam i1335_3_lut.init = 16'h6a6a;
    LUT4 i1379_3_lut (.A(cnt_ack_addr_r[2]), .B(cnt_ack_addr_r[1]), .C(cnt_ack_addr_r[0]), 
         .Z(n1852[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(505[31:52])
    defparam i1379_3_lut.init = 16'h6a6a;
    LUT4 i16_2_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[0]), .Z(n1908[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(108[12:21])
    defparam i16_2_lut.init = 16'h6666;
    LUT4 i3878_3_lut (.A(cnt_s_ack[2]), .B(cnt_s_ack[1]), .C(cnt_s_ack[0]), 
         .Z(n1908[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(108[12:21])
    defparam i3878_3_lut.init = 16'h6a6a;
    LUT4 mux_908_i2_3_lut (.A(n10291), .B(n10309), .C(state_current[0]), 
         .Z(n6731)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam mux_908_i2_3_lut.init = 16'h3535;
    LUT4 i7466_3_lut_rep_115 (.A(n9504), .B(n10288), .C(state_current[4]), 
         .Z(n10264)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i7466_3_lut_rep_115.init = 16'h0101;
    LUT4 state_current_1__bdd_4_lut_7824 (.A(state_current[1]), .B(state_current[0]), 
         .C(state_current[6]), .D(state_current[5]), .Z(n10010)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam state_current_1__bdd_4_lut_7824.init = 16'h0116;
    LUT4 i2626_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_55), .B(n10321), 
         .C(n29_adj_668), .D(n10246), .Z(n4903)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2626_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 i2_2_lut_4_lut (.A(n9504), .B(n10288), .C(state_current[4]), 
         .D(n2876[0]), .Z(n8944)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_2_lut_4_lut.init = 16'h0100;
    LUT4 i2103_4_lut (.A(n10263), .B(n10149), .C(\i2c_config[2] ), .D(n4_adj_671), 
         .Z(n4376)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i2103_4_lut.init = 16'h3a3f;
    LUT4 i3833_4_lut (.A(n9510), .B(\state_next_14__N_378[9] ), .C(state_current[2]), 
         .D(n10290), .Z(n6715)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C)+!B (C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(85[14:27])
    defparam i3833_4_lut.init = 16'h0535;
    LUT4 i3_4_lut_adj_49 (.A(cnt_reg_addr[3]), .B(cnt_reg_addr[1]), .C(cnt_reg_addr[0]), 
         .D(cnt_reg_addr[2]), .Z(n9510)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_49.init = 16'h8000;
    LUT4 i1_2_lut_rep_101_3_lut_4_lut (.A(n4797), .B(n10274), .C(n10299), 
         .D(n10296), .Z(n10250)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(513[5:18])
    defparam i1_2_lut_rep_101_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_103_3_lut_4_lut (.A(n4797), .B(n10274), .C(n10316), 
         .D(n10296), .Z(n10252)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(513[5:18])
    defparam i1_2_lut_rep_103_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2608_3_lut_4_lut (.A(state_current[0]), .B(n29_adj_672), .C(clk_div_100k_enable_55), 
         .D(n10300), .Z(n4885)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B (D)))) */ ;
    defparam i2608_3_lut_4_lut.init = 16'h5340;
    LUT4 cnt_s_nack_1__bdd_3_lut_7786 (.A(cnt_s_nack[1]), .B(cnt_s_nack[0]), 
         .C(cnt_s_nack[2]), .Z(n9946)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam cnt_s_nack_1__bdd_3_lut_7786.init = 16'hfefe;
    LUT4 i3_4_lut_adj_50 (.A(n10307), .B(n10346), .C(n7879), .D(n9630), 
         .Z(n1218)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_50.init = 16'h0004;
    LUT4 i2_4_lut (.A(state_current[11]), .B(n9012), .C(state_current[6]), 
         .D(n8955), .Z(n8907)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i3_4_lut_adj_51 (.A(n6362), .B(n257), .C(state_current[13]), 
         .D(n238), .Z(n9012)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_51.init = 16'hfffe;
    LUT4 i7456_3_lut_rep_85_3_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(n29_adj_646), .D(state_current[0]), .Z(clk_div_100k_enable_43)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7456_3_lut_rep_85_3_lut_3_lut_4_lut.init = 16'h0e1f;
    LUT4 i4_4_lut_adj_52 (.A(n8971), .B(n8), .C(state_current[9]), .D(n8929), 
         .Z(n8955)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut_adj_52.init = 16'hfcfe;
    LUT4 i3_4_lut_adj_53 (.A(n10714), .B(state_current[4]), .C(n6362), 
         .D(state_current[2]), .Z(n8971)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i3_4_lut_adj_53.init = 16'hfefa;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_s_ack[0]), .B(n10328), .C(state_current[8]), 
         .D(state_current[12]), .Z(n9574)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(558[14:15])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0d00;
    LUT4 i1_2_lut_adj_54 (.A(state_current[5]), .B(state_current[0]), .Z(n7879)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_adj_54.init = 16'heeee;
    LUT4 i1235_2_lut_rep_172 (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[2]), 
         .Z(n10321)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(458[14:15])
    defparam i1235_2_lut_rep_172.init = 16'heeee;
    LUT4 i7468_3_lut_rep_89_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_673), .Z(clk_div_100k_enable_58)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7468_3_lut_rep_89_4_lut_3_lut_4_lut.init = 16'h01ef;
    LUT4 i5_4_lut (.A(\i2c_config[0] ), .B(\i2c_config[2] ), .C(n8_adj_674), 
         .D(n10258), .Z(n9105)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i5_4_lut.init = 16'hfbff;
    LUT4 i2_3_lut_rep_106_4_lut (.A(n10275), .B(n10274), .C(state_current[5]), 
         .D(state_current[8]), .Z(n10255)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(477[5:18])
    defparam i2_3_lut_rep_106_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_rep_112_4_lut (.A(n10275), .B(n10274), .C(state_current[5]), 
         .D(state_current[8]), .Z(n10261)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(477[5:18])
    defparam i2_3_lut_rep_112_4_lut.init = 16'hffef;
    LUT4 i3_4_lut_adj_55 (.A(n10314), .B(n6), .C(n10277), .D(n6589), 
         .Z(n6755)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i3_4_lut_adj_55.init = 16'hfefc;
    LUT4 i2628_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_55), .B(n10323), 
         .C(n29_adj_673), .D(n10246), .Z(n4905)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2628_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 i4_4_lut_adj_56 (.A(n10180), .B(state_current[12]), .C(n10307), 
         .D(n9656), .Z(n1837)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_56.init = 16'h0002;
    LUT4 i2_3_lut_4_lut_adj_57 (.A(n10275), .B(n4797), .C(n10294), .D(state_current[11]), 
         .Z(n29_adj_647)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(539[5:13])
    defparam i2_3_lut_4_lut_adj_57.init = 16'hfeff;
    LUT4 i2_4_lut_adj_58 (.A(state_current[10]), .B(n4), .C(n9684), .D(n10137), 
         .Z(n1854)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i2_4_lut_adj_58.init = 16'hcdcc;
    LUT4 i32_4_lut (.A(n14), .B(n17_adj_675), .C(\i2c_config[0] ), .D(n10245), 
         .Z(n9144)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i32_4_lut.init = 16'h0aca;
    LUT4 mux_906_i2_3_lut (.A(n10287), .B(n10286), .C(state_current[4]), 
         .Z(n2706[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam mux_906_i2_3_lut.init = 16'h3a3a;
    LUT4 i5675_3_lut_4_lut (.A(state_current[3]), .B(n10281), .C(state_current[8]), 
         .D(state_current[9]), .Z(n151)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i5675_3_lut_4_lut.init = 16'hfeee;
    LUT4 i2_2_lut_3_lut (.A(n10287), .B(state_current[4]), .C(n1166), 
         .Z(n9007)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hefef;
    LUT4 i2_3_lut_4_lut_adj_59 (.A(\state_next_14__N_378[9] ), .B(n10284), 
         .C(state_current[9]), .D(n1128), .Z(n8940)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_59.init = 16'h00e0;
    LUT4 mux_941_i2_3_lut_4_lut (.A(\state_next_14__N_378[9] ), .B(n10284), 
         .C(state_current[8]), .D(n10283), .Z(n2876[1])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_941_i2_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i33 (.BLUT(n6753), .ALUT(n9575), .C0(n10264), .Z(n17_adj_675));
    LUT4 i1_2_lut_4_lut (.A(\state_next_14__N_378[9] ), .B(state_current[2]), 
         .C(n10290), .D(n1166), .Z(n9544)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i1_2_lut_4_lut.init = 16'h0048;
    LUT4 i2618_3_lut_4_lut (.A(state_current[0]), .B(n29_adj_676), .C(clk_div_100k_enable_55), 
         .D(n10325), .Z(n4895)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B (D)))) */ ;
    defparam i2618_3_lut_4_lut.init = 16'h5340;
    LUT4 mux_928_i2_3_lut_4_lut (.A(\state_next_14__N_378[9] ), .B(n10285), 
         .C(state_current[5]), .D(n6695), .Z(n2808[1])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_928_i2_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i3_4_lut_adj_60 (.A(n1128), .B(n3_adj_670), .C(n10263), .D(n10262), 
         .Z(n9120)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3_4_lut_adj_60.init = 16'hefff;
    LUT4 i1_2_lut_rep_108_3_lut_4_lut (.A(state_current[11]), .B(n10294), 
         .C(n10296), .D(n4797), .Z(n10257)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(539[5:13])
    defparam i1_2_lut_rep_108_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6457_1_lut (.A(cnt_dev_addr[0]), .Z(n28[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(358[29:48])
    defparam i6457_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_111_3_lut_4_lut (.A(state_current[11]), .B(n10294), 
         .C(n10295), .D(n4797), .Z(n10260)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(539[5:13])
    defparam i1_2_lut_rep_111_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_117_3_lut_4_lut (.A(n10296), .B(n10295), .C(n10294), 
         .D(state_current[11]), .Z(n10266)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i1_2_lut_rep_117_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_105_3_lut_4_lut (.A(n10296), .B(n10295), .C(state_current[11]), 
         .D(n4797), .Z(n10254)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i1_2_lut_rep_105_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2622_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_55), .B(scl_N_590), 
         .C(n29_adj_647), .D(n10246), .Z(n4899)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2622_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 state_current_9__bdd_4_lut (.A(state_current[9]), .B(state_current[8]), 
         .C(state_current[7]), .D(state_current[6]), .Z(n10012)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam state_current_9__bdd_4_lut.init = 16'hfee8;
    LUT4 i4248_4_lut_4_lut (.A(n1854), .B(n1837), .C(n6_adj_677), .D(n9531), 
         .Z(n2918[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;
    defparam i4248_4_lut_4_lut.init = 16'he2c0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_61 (.A(state_current[4]), .B(n10310), 
         .C(state_current[6]), .D(state_current[5]), .Z(n9577)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_61.init = 16'hfffe;
    LUT4 i1702_3_lut (.A(n9101), .B(n3413[4]), .C(\i2c_config[2] ), .Z(state_next[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i1702_3_lut.init = 16'hcaca;
    LUT4 i7377_2_lut_3_lut_4_lut (.A(state_current[7]), .B(n10714), .C(n10302), 
         .D(state_current[13]), .Z(n9684)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7377_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 select_774_Select_0_i5_4_lut_else_4_lut (.A(n29_adj_647), .B(scl_c), 
         .C(cnt_s_nack[2]), .D(cnt_s_nack[0]), .Z(n10331)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam select_774_Select_0_i5_4_lut_else_4_lut.init = 16'h4540;
    LUT4 i3_4_lut_adj_62 (.A(n4817), .B(n10263), .C(n10262), .D(\i2c_config[0] ), 
         .Z(n9101)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_62.init = 16'h2000;
    LUT4 i2_3_lut_rep_113_4_lut (.A(state_current[10]), .B(n10714), .C(n8960), 
         .D(n4672), .Z(n10262)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut_rep_113_4_lut.init = 16'h1101;
    LUT4 i3830_4_lut (.A(n10259), .B(n10286), .C(state_current[4]), .D(n22_adj_678), 
         .Z(n4817)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(85[14:27])
    defparam i3830_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_adj_63 (.A(n9510), .B(state_current[2]), .Z(n22_adj_678)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_63.init = 16'hdddd;
    LUT4 i1708_4_lut (.A(n2839[2]), .B(n3413[2]), .C(\i2c_config[2] ), 
         .D(n10256), .Z(state_next[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i1708_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut (.A(state_current[0]), .B(n10309), .C(n1128), 
         .Z(n2990[0])) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(265[4] 297[11])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_934_i3_4_lut (.A(n10253), .B(n7868), .C(n10263), .D(n10272), 
         .Z(n2839[2])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(235[4] 262[11])
    defparam mux_934_i3_4_lut.init = 16'h3a30;
    LUT4 i2_3_lut_adj_64 (.A(n10291), .B(state_current[0]), .C(n1128), 
         .Z(n7868)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_adj_64.init = 16'hdfdf;
    LUT4 i1_2_lut_3_lut_4_lut_adj_65 (.A(cnt_read_reg_data[2]), .B(n10251), 
         .C(cnt_read_reg_data[3]), .D(cnt_read_reg_data[1]), .Z(clk_div_100k_enable_48)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_65.init = 16'h0800;
    LUT4 cnt_ack_w_data_2__I_0_577_i5_2_lut_rep_136_3_lut (.A(cnt_ack_w_data[1]), 
         .B(cnt_ack_w_data[2]), .C(cnt_ack_w_data[0]), .Z(n10285)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(458[14:15])
    defparam cnt_ack_w_data_2__I_0_577_i5_2_lut_rep_136_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_66 (.A(cnt_read_reg_data[2]), .B(n10251), 
         .C(cnt_read_reg_data[3]), .D(cnt_read_reg_data[1]), .Z(clk_div_100k_enable_3)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_66.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_67 (.A(state_current[9]), .B(n10313), .C(state_current[8]), 
         .D(n6362), .Z(n4_adj_679)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_67.init = 16'hfffe;
    LUT4 i4109_2_lut_4_lut (.A(n10327), .B(cnt_dev_addr_r[2]), .C(cnt_dev_addr_r[3]), 
         .D(state_current[8]), .Z(n2997[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4109_2_lut_4_lut.init = 16'h8000;
    LUT4 i4145_2_lut_4_lut (.A(n10327), .B(cnt_dev_addr_r[2]), .C(cnt_dev_addr_r[3]), 
         .D(state_current[8]), .Z(n2876[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i4145_2_lut_4_lut.init = 16'h7f00;
    LUT4 i1_2_lut_rep_86 (.A(n1837), .B(n1854), .Z(n10235)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i1_2_lut_rep_86.init = 16'hbbbb;
    LUT4 i1_2_lut_4_lut_adj_68 (.A(\state_next_14__N_378[9] ), .B(cnt_ack_r_addr[0]), 
         .C(n10323), .D(state_current[4]), .Z(n6_adj_677)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(281[24:52])
    defparam i1_2_lut_4_lut_adj_68.init = 16'hfb00;
    LUT4 i7428_2_lut_4_lut (.A(\state_next_14__N_378[9] ), .B(cnt_ack_r_addr[0]), 
         .C(n10323), .D(state_current[4]), .Z(n9004)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(281[24:52])
    defparam i7428_2_lut_4_lut.init = 16'h0400;
    LUT4 i1282_1_lut (.A(cnt_ack_addr[0]), .Z(n1749[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(383[29:48])
    defparam i1282_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_69 (.A(state_next_14__N_329[11]), .B(state_current[10]), 
         .C(n10258), .D(n6755), .Z(n3)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i3_4_lut_adj_69.init = 16'h0040;
    LUT4 i7510_4_lut (.A(\state_next_14__N_378[9] ), .B(n10284), .C(state_current[8]), 
         .D(n1786), .Z(n9011)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i7510_4_lut.init = 16'h0100;
    LUT4 i3_4_lut_adj_70 (.A(state_current[11]), .B(n9676), .C(state_current[4]), 
         .D(n9538), .Z(n1786)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_4_lut_adj_70.init = 16'h0100;
    LUT4 i1_4_lut (.A(state_current[3]), .B(n10293), .C(n8_adj_680), .D(state_current[1]), 
         .Z(n9538)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut.init = 16'h0010;
    LUT4 i22_2_lut (.A(state_current[9]), .B(state_current[8]), .Z(n8_adj_680)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(85[14:27])
    defparam i22_2_lut.init = 16'h6666;
    LUT4 i7350_2_lut_4_lut (.A(n7879), .B(n10304), .C(n10310), .D(state_current[10]), 
         .Z(n9656)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i7350_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1483_1_lut (.A(cnt_s_nack[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(545[14:15])
    defparam i1483_1_lut.init = 16'h5555;
    LUT4 mux_937_i2_3_lut_4_lut (.A(cnt_s_nack[0]), .B(n10298), .C(state_current[10]), 
         .D(state_next_14__N_329[11]), .Z(n2860[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(545[14:15])
    defparam mux_937_i2_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i4087_3_lut_rep_123_4_lut (.A(cnt_ack_addr[0]), .B(n10300), .C(state_current[2]), 
         .D(\state_next_14__N_378[9] ), .Z(n10272)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A ((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(386[14:15])
    defparam i4087_3_lut_rep_123_4_lut.init = 16'h20d0;
    LUT4 i1477_1_lut (.A(cnt_stop[0]), .Z(n1_adj_665)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(294[24:37])
    defparam i1477_1_lut.init = 16'h5555;
    LUT4 i1480_1_lut (.A(cnt_ack_w_data[0]), .Z(n1_adj_666)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(458[14:15])
    defparam i1480_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_adj_71 (.A(n10324), .B(cnt_dev_addr[2]), .C(cnt_dev_addr[3]), 
         .D(state_current[0]), .Z(n6607)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_4_lut_adj_71.init = 16'hff7f;
    LUT4 i4_4_lut_adj_72 (.A(n29_adj_668), .B(clk_div_100k_enable_4), .C(n29_adj_673), 
         .D(n6_adj_681), .Z(clk_div_100k_enable_57)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_72.init = 16'h8000;
    LUT4 i1_4_lut_adj_73 (.A(n29_adj_682), .B(n10250), .C(state_current[2]), 
         .D(state_current[9]), .Z(n6_adj_681)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_73.init = 16'ha88a;
    LUT4 i1_4_lut_adj_74 (.A(state_next_14__N_228), .B(n13), .C(n11_adj_683), 
         .D(n12), .Z(n9525)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_4_lut_adj_74.init = 16'hfffe;
    LUT4 i5_4_lut_adj_75 (.A(n9), .B(n10246), .C(n6_adj_684), .D(sda_r_N_628), 
         .Z(n13)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i5_4_lut_adj_75.init = 16'hfbfa;
    LUT4 i3_3_lut_4_lut (.A(state_current[13]), .B(n10326), .C(state_current[5]), 
         .D(state_current[3]), .Z(n8)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_76 (.A(sda_r_N_639), .B(sda_r_N_633), .C(n29_adj_647), 
         .D(n10261), .Z(n11_adj_683)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i3_4_lut_adj_76.init = 16'h0ace;
    LUT4 i4_4_lut_adj_77 (.A(n10), .B(sda_r), .C(n29_adj_669), .D(n8_adj_685), 
         .Z(n12)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i4_4_lut_adj_77.init = 16'hcd05;
    LUT4 i1_4_lut_adj_78 (.A(n29_adj_646), .B(n10255), .C(sda_r_N_634), 
         .D(sda_r_N_638), .Z(n9)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_4_lut_adj_78.init = 16'h7350;
    LUT4 i1_4_lut_adj_79 (.A(n29_adj_686), .B(n4397), .C(sda_r), .D(cnt_dev_addr[0]), 
         .Z(n6_adj_684)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_4_lut_adj_79.init = 16'h5044;
    LUT4 i2130_3_lut (.A(n4402), .B(sda_r), .C(cnt_dev_addr_r[0]), .Z(sda_r_N_638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(481[13] 499[20])
    defparam i2130_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_80 (.A(n10253), .B(n6755), .C(state_current[2]), 
         .D(n9510), .Z(n9531)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i2_3_lut_4_lut_adj_80.init = 16'h0800;
    LUT4 i2121_4_lut (.A(\i2c_reg_data[7] ), .B(sda_r), .C(cnt_write_reg_data[0]), 
         .D(n4391), .Z(sda_r_N_633)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(431[13] 449[20])
    defparam i2121_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_rep_116_3_lut_4_lut (.A(state_current[13]), .B(n10297), 
         .C(n4797), .D(state_current[11]), .Z(n10265)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(539[5:13])
    defparam i1_2_lut_rep_116_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2118_2_lut (.A(cnt_write_reg_data[1]), .B(cnt_write_reg_data[2]), 
         .Z(n4391)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(431[13] 449[20])
    defparam i2118_2_lut.init = 16'h2222;
    LUT4 i25_4_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(sda_r), .D(cnt_stop[0]), 
         .Z(n10)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+(C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(567[17] 579[15])
    defparam i25_4_lut.init = 16'h0b19;
    LUT4 i1_3_lut_adj_81 (.A(n5777), .B(n29), .C(scl_N_598), .Z(n8_adj_685)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_3_lut_adj_81.init = 16'hbaba;
    LUT4 i2129_4_lut (.A(\i2c_dev_addr[6] ), .B(cnt_dev_addr_r[1]), .C(cnt_dev_addr_r[3]), 
         .D(cnt_dev_addr_r[2]), .Z(n4402)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(481[13] 499[20])
    defparam i2129_4_lut.init = 16'hc202;
    LUT4 i2_3_lut_4_lut_adj_82 (.A(cnt_read_reg_data[2]), .B(n10251), .C(cnt_read_reg_data[1]), 
         .D(cnt_read_reg_data[3]), .Z(clk_div_100k_enable_46)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_82.init = 16'h0040;
    LUT4 i1479_1_lut (.A(cnt_ack_r_addr[0]), .Z(n1_adj_667)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(422[14:15])
    defparam i1479_1_lut.init = 16'h5555;
    LUT4 select_774_Select_0_i12_4_lut (.A(cnt_ack_r_addr[0]), .B(n29_adj_673), 
         .C(scl_c), .D(n10323), .Z(n12_adj_687)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam select_774_Select_0_i12_4_lut.init = 16'h3022;
    LUT4 i1485_1_lut (.A(sda_ctl), .Z(n3731)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(48[10:13])
    defparam i1485_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_3_lut_adj_83 (.A(n1837), .B(n1854), .C(n6755), .Z(n8_adj_674)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i2_2_lut_3_lut_adj_83.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_84_3_lut (.A(n1837), .B(n1854), .C(n6755), .Z(n10233)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i1_2_lut_rep_84_3_lut.init = 16'hbfbf;
    LUT4 cnt_s_ack_2__bdd_4_lut (.A(cnt_s_ack[2]), .B(scl_c), .C(cnt_s_ack[0]), 
         .D(cnt_s_ack[1]), .Z(scl_N_591)) /* synthesis lut_function=(A (B)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam cnt_s_ack_2__bdd_4_lut.init = 16'hc8d8;
    PFUMX mux_969_i7 (.BLUT(n8995), .ALUT(n9574), .C0(n10264), .Z(n3031[6]));
    LUT4 i2_4_lut_adj_84 (.A(scl_N_599), .B(scl_N_549), .C(n29_adj_669), 
         .D(n29_adj_672), .Z(n15)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i2_4_lut_adj_84.init = 16'h0ace;
    PFUMX mux_1192_Mux_8_i1 (.BLUT(n2918[6]), .ALUT(n3101[6]), .C0(\i2c_config[0] ), 
          .Z(n3413[8]));
    LUT4 select_774_Select_0_i7_4_lut (.A(cnt_ack_addr_r[0]), .B(n29_adj_676), 
         .C(scl_c), .D(n10325), .Z(n7)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam select_774_Select_0_i7_4_lut.init = 16'h3022;
    LUT4 i3_4_lut_adj_85 (.A(state_current[8]), .B(n6_adj_688), .C(state_current[13]), 
         .D(state_current[12]), .Z(n9504)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_85.init = 16'hfefc;
    LUT4 i2_3_lut_adj_86 (.A(n9507), .B(state_current[11]), .C(state_current[6]), 
         .Z(n9509)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut_adj_86.init = 16'hefef;
    LUT4 i1_4_lut_adj_87 (.A(n22_adj_678), .B(n10244), .C(n6_adj_677), 
         .D(n1166), .Z(n9572)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_87.init = 16'hc044;
    LUT4 i1_2_lut_rep_118_3_lut_4_lut (.A(n10299), .B(n10316), .C(n4797), 
         .D(n10296), .Z(n10267)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i1_2_lut_rep_118_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_126_3_lut_4_lut (.A(n10330), .B(n10329), .C(n10316), 
         .D(n10299), .Z(n10275)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(502[5:21])
    defparam i1_2_lut_rep_126_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(n276), .B(n9694), .C(state_current[1]), .D(n18), 
         .Z(n1166)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i6_4_lut.init = 16'h0100;
    LUT4 i7363_2_lut_rep_148 (.A(state_current[6]), .B(state_current[12]), 
         .Z(n10297)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7363_2_lut_rep_148.init = 16'heeee;
    LUT4 i7450_3_lut_rep_92_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n10261), .Z(clk_div_100k_enable_27)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7450_3_lut_rep_92_4_lut_3_lut_4_lut.init = 16'h01ef;
    LUT4 i1_2_lut_rep_145_3_lut (.A(state_current[6]), .B(state_current[12]), 
         .C(state_current[13]), .Z(n10294)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_145_3_lut.init = 16'hfefe;
    LUT4 i7387_4_lut (.A(state_current[8]), .B(state_current[13]), .C(state_current[3]), 
         .D(n9676), .Z(n9694)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7387_4_lut.init = 16'hfffe;
    LUT4 i7369_3_lut_4_lut (.A(state_current[6]), .B(state_current[12]), 
         .C(n7879), .D(state_current[2]), .Z(n9676)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7369_3_lut_4_lut.init = 16'hfffe;
    LUT4 i32_2_lut (.A(state_current[4]), .B(state_current[7]), .Z(n18)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i32_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_adj_88 (.A(n1837), .B(n2876[1]), .C(n1786), .Z(n8946)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_88.init = 16'h8080;
    LUT4 i1_2_lut_rep_125_3_lut_4_lut (.A(state_current[6]), .B(state_current[12]), 
         .C(state_current[11]), .D(state_current[13]), .Z(n10274)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_125_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1230_2_lut_3_lut (.A(cnt_s_nack[0]), .B(cnt_s_nack[1]), .C(cnt_s_nack[2]), 
         .Z(scl_N_590)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1230_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1401_2_lut_3_lut (.A(cnt_s_nack[0]), .B(cnt_s_nack[1]), .C(cnt_s_nack[2]), 
         .Z(n1885[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1401_2_lut_3_lut.init = 16'h7878;
    LUT4 i4058_4_lut (.A(n8940), .B(n10245), .C(n2997[2]), .D(n10264), 
         .Z(n3101[7])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i4058_4_lut.init = 16'h3022;
    LUT4 n9900_bdd_2_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(n10343), .D(state_current[0]), .Z(n9901)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam n9900_bdd_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 equal_662_i3_2_lut_rep_149 (.A(cnt_s_nack[1]), .B(cnt_s_nack[2]), 
         .Z(n10298)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(544[14:15])
    defparam equal_662_i3_2_lut_rep_149.init = 16'heeee;
    LUT4 i12_3_lut_rep_99_4_lut (.A(state_current[3]), .B(n10252), .C(n29_adj_676), 
         .D(state_current[0]), .Z(clk_div_100k_enable_38)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i12_3_lut_rep_99_4_lut.init = 16'h0e1f;
    LUT4 i1_2_lut_rep_150 (.A(state_current[3]), .B(state_current[0]), .Z(n10299)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_150.init = 16'heeee;
    LUT4 i4273_4_lut (.A(n9556), .B(n10235), .C(n6747), .D(n6755), .Z(n2918[0])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(265[4] 297[11])
    defparam i4273_4_lut.init = 16'h2203;
    LUT4 i4252_4_lut (.A(n2990[0]), .B(n10245), .C(n10714), .D(n10264), 
         .Z(n3101[0])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i4252_4_lut.init = 16'h0322;
    LUT4 i4298_4_lut (.A(n6607), .B(n10233), .C(n10272), .D(n10253), 
         .Z(n2918[2])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(265[4] 297[11])
    defparam i4298_4_lut.init = 16'h3011;
    LUT4 i1241_2_lut_rep_151 (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), 
         .Z(n10300)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(386[14:15])
    defparam i1241_2_lut_rep_151.init = 16'heeee;
    LUT4 cnt_ack_addr_2__I_0_573_i5_2_lut_rep_141_3_lut (.A(cnt_ack_addr[1]), 
         .B(cnt_ack_addr[2]), .C(cnt_ack_addr[0]), .Z(n10290)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(386[14:15])
    defparam cnt_ack_addr_2__I_0_573_i5_2_lut_rep_141_3_lut.init = 16'hefef;
    LUT4 i1569_3_lut_4_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), .C(scl_c), 
         .D(cnt_ack_addr[0]), .Z(scl_N_549)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(386[14:15])
    defparam i1569_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_3_lut_rep_152 (.A(state_current[11]), .B(state_current[7]), 
         .C(state_current[5]), .Z(n10301)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_152.init = 16'hfefe;
    LUT4 i4091_4_lut (.A(n6611), .B(n8907), .C(n9544), .D(n1218), .Z(n3101[2])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i4091_4_lut.init = 16'h3011;
    LUT4 i1_4_lut_adj_89 (.A(n10268), .B(n7868), .C(n10304), .D(n9504), 
         .Z(n6611)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_4_lut_adj_89.init = 16'hcccd;
    LUT4 n10226_bdd_2_lut_4_lut (.A(state_current[11]), .B(state_current[7]), 
         .C(state_current[5]), .D(n10226), .Z(n10227)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n10226_bdd_2_lut_4_lut.init = 16'hfffe;
    LUT4 i7507_4_lut (.A(state_next_14__N_329[11]), .B(n1128), .C(n10271), 
         .D(state_current[9]), .Z(n6753)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i7507_4_lut.init = 16'h0311;
    LUT4 i7359_2_lut_rep_153 (.A(state_current[11]), .B(state_current[9]), 
         .Z(n10302)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7359_2_lut_rep_153.init = 16'heeee;
    LUT4 i7448_3_lut (.A(n1128), .B(state_next_14__N_329[11]), .C(state_current[9]), 
         .Z(n8995)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i7448_3_lut.init = 16'h0404;
    LUT4 i2_2_lut_3_lut_adj_90 (.A(state_current[11]), .B(state_current[9]), 
         .C(state_current[10]), .Z(n276)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut_adj_90.init = 16'hfefe;
    LUT4 i32_2_lut_rep_154 (.A(state_current[0]), .B(state_current[1]), 
         .Z(n10303)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i32_2_lut_rep_154.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_91 (.A(state_current[0]), .B(state_current[1]), 
         .C(n10714), .D(n257), .Z(n8929)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_91.init = 16'h0006;
    LUT4 i7460_3_lut_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_669), .Z(clk_div_100k_enable_54)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7460_3_lut_4_lut_3_lut_4_lut.init = 16'h01ef;
    LUT4 i4299_4_lut (.A(n10270), .B(n1837), .C(n2876[0]), .D(n1786), 
         .Z(n2918[6])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i4299_4_lut.init = 16'hc044;
    LUT4 i4088_4_lut (.A(n8944), .B(n8907), .C(n9007), .D(n1218), .Z(n3101[6])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i4088_4_lut.init = 16'h0322;
    LUT4 i1855_4_lut (.A(cnt_stop[0]), .B(scl_c), .C(cnt_stop[1]), .D(cnt_stop[2]), 
         .Z(scl_N_599)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(567[17] 579[15])
    defparam i1855_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_rep_155 (.A(state_current[6]), .B(state_current[1]), .Z(n10304)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_155.init = 16'heeee;
    LUT4 i2_3_lut_rep_139_4_lut (.A(state_current[6]), .B(state_current[1]), 
         .C(n10310), .D(n7879), .Z(n10288)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut_rep_139_4_lut.init = 16'hfffe;
    LUT4 i4079_2_lut_rep_156 (.A(state_current[9]), .B(state_current[7]), 
         .Z(n10305)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4079_2_lut_rep_156.init = 16'heeee;
    LUT4 i2640_2_lut_3_lut_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_682), .Z(n4916)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2640_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_95 (.A(n8907), .B(n1218), .Z(n10244)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i1_2_lut_rep_95.init = 16'h4444;
    LUT4 i1_2_lut_rep_157 (.A(state_current[5]), .B(state_current[1]), .Z(n10306)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_157.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(state_current[5]), .B(state_current[1]), 
         .C(n310), .D(state_current[6]), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i7424_3_lut_rep_87_3_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(n29), .D(state_current[0]), .Z(clk_div_100k_enable_42)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7424_3_lut_rep_87_3_lut_3_lut_4_lut.init = 16'h0e1f;
    LUT4 i4069_2_lut_rep_158 (.A(state_current[13]), .B(state_current[11]), 
         .Z(n10307)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4069_2_lut_rep_158.init = 16'heeee;
    LUT4 n10010_bdd_2_lut_3_lut (.A(state_current[13]), .B(state_current[11]), 
         .C(n10010), .Z(n10011)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n10010_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1657_2_lut_rep_96 (.A(n1218), .B(n8907), .Z(n10245)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i1657_2_lut_rep_96.init = 16'heeee;
    LUT4 i1_2_lut_rep_129_3_lut (.A(state_current[8]), .B(state_current[12]), 
         .C(state_current[10]), .Z(n10278)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_129_3_lut.init = 16'hfefe;
    LUT4 i2611_2_lut_3_lut_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_686), .Z(n4886)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2611_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i3_3_lut_4_lut_adj_92 (.A(n1218), .B(n8907), .C(\i2c_config[2] ), 
         .D(\i2c_config[0] ), .Z(n9103)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam i3_3_lut_4_lut_adj_92.init = 16'hefff;
    LUT4 i7361_2_lut_rep_120_3_lut_4_lut (.A(state_current[8]), .B(state_current[12]), 
         .C(state_current[13]), .D(state_current[7]), .Z(n10269)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7361_2_lut_rep_120_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_128_3_lut (.A(state_current[8]), .B(state_current[12]), 
         .C(state_current[7]), .Z(n10277)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_128_3_lut.init = 16'hfefe;
    LUT4 n1598_bdd_2_lut_7663_3_lut (.A(n1218), .B(n8907), .C(n10264), 
         .Z(n10220)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(173[4] 203[11])
    defparam n1598_bdd_2_lut_7663_3_lut.init = 16'hfefe;
    LUT4 i7324_2_lut_3_lut_4_lut (.A(state_current[8]), .B(state_current[12]), 
         .C(state_current[9]), .D(state_current[10]), .Z(n9630)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7324_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_114_3_lut_4_lut (.A(state_current[8]), .B(state_current[12]), 
         .C(n4672), .D(state_current[10]), .Z(n10263)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_114_3_lut_4_lut.init = 16'h0010;
    LUT4 i4055_4_lut (.A(n8952), .B(n10262), .C(n9003), .D(n10263), 
         .Z(n2848[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(235[4] 262[11])
    defparam i4055_4_lut.init = 16'h0c88;
    LUT4 i3_4_lut_adj_93 (.A(\state_next_14__N_378[9] ), .B(n10285), .C(n1128), 
         .D(state_current[5]), .Z(n9003)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_93.init = 16'hfffe;
    LUT4 i2_3_lut_rep_160 (.A(cnt_start[1]), .B(cnt_start[2]), .C(cnt_start[0]), 
         .Z(n10309)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(350[14:15])
    defparam i2_3_lut_rep_160.init = 16'hfdfd;
    LUT4 i3_4_lut_adj_94 (.A(\i2c_config[2] ), .B(n1837), .C(n1854), .D(n9536), 
         .Z(n9537)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(265[4] 297[11])
    defparam i3_4_lut_adj_94.init = 16'h2000;
    LUT4 i1_2_lut_rep_130_4_lut (.A(cnt_start[1]), .B(cnt_start[2]), .C(cnt_start[0]), 
         .D(state_current[0]), .Z(n10279)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(350[14:15])
    defparam i1_2_lut_rep_130_4_lut.init = 16'hfd00;
    LUT4 i1_2_lut_rep_161 (.A(state_current[3]), .B(state_current[2]), .Z(n10310)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_161.init = 16'heeee;
    LUT4 i1_3_lut_adj_95 (.A(n10342), .B(n6755), .C(\i2c_config[0] ), 
         .Z(n9536)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(265[4] 297[11])
    defparam i1_3_lut_adj_95.init = 16'h0202;
    LUT4 i2_3_lut_4_lut_adj_96 (.A(state_current[3]), .B(state_current[2]), 
         .C(state_current[0]), .D(n280), .Z(n310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut_4_lut_adj_96.init = 16'hfffe;
    LUT4 i1_2_lut_rep_127_3_lut (.A(state_current[3]), .B(state_current[2]), 
         .C(state_current[4]), .Z(n10276)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_127_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_119_3_lut_4_lut (.A(state_current[3]), .B(state_current[2]), 
         .C(state_current[5]), .D(state_current[4]), .Z(n10268)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_119_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_162 (.A(cnt_stop[1]), .B(cnt_stop[2]), .C(cnt_stop[0]), 
         .Z(n10311)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(294[24:37])
    defparam i2_3_lut_rep_162.init = 16'hbfbf;
    LUT4 i2646_2_lut_3_lut_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n10255), .Z(n4922)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2646_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i5669_4_lut (.A(state_current[5]), .B(n10281), .C(state_current[3]), 
         .D(n313), .Z(n33)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(85[14:27])
    defparam i5669_4_lut.init = 16'hcfca;
    PFUMX mux_1510_i14 (.BLUT(n2848[7]), .ALUT(n9537), .C0(n3_adj_670), 
          .Z(state_next[13]));
    LUT4 i3_4_lut_adj_97 (.A(n6593), .B(cnt_read_reg_data[0]), .C(n6673), 
         .D(state_current[10]), .Z(n8_adj_689)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i3_4_lut_adj_97.init = 16'h0400;
    LUT4 i7511_2_lut (.A(state_current[8]), .B(state_current[9]), .Z(n9696)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(85[14:27])
    defparam i7511_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_98 (.A(state_current[4]), .B(state_current[2]), .Z(n257)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_98.init = 16'heeee;
    LUT4 i8_4_lut (.A(n15), .B(cnt_read_reg_data[0]), .C(n7), .D(n29_adj_682), 
         .Z(n21)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i8_4_lut.init = 16'hfafe;
    LUT4 select_774_Select_0_i5_4_lut_then_4_lut (.A(n29_adj_647), .B(scl_c), 
         .C(cnt_s_nack[2]), .D(cnt_s_nack[0]), .Z(n10332)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam select_774_Select_0_i5_4_lut_then_4_lut.init = 16'h4440;
    LUT4 i4330_2_lut (.A(state_current[12]), .B(state_current[13]), .Z(n6593)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4330_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_99 (.A(n10310), .B(n4_adj_679), .C(state_current[5]), 
         .D(state_current[4]), .Z(n6673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut_adj_99.init = 16'hfffe;
    LUT4 i4326_2_lut_3_lut (.A(state_current[11]), .B(state_current[10]), 
         .C(state_current[13]), .Z(n6589)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i4326_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_rep_164 (.A(state_current[7]), .B(state_current[6]), .Z(n10313)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_164.init = 16'heeee;
    LUT4 i2643_2_lut_3_lut_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n10261), .Z(n4919)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2643_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_rep_133_4_lut (.A(state_current[7]), .B(state_current[6]), 
         .C(state_current[8]), .D(state_current[9]), .Z(n10282)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_133_4_lut.init = 16'hfffe;
    LUT4 i7454_3_lut_rep_90_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_686), .Z(clk_div_100k_enable_44)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7454_3_lut_rep_90_4_lut_3_lut_4_lut.init = 16'h01ef;
    LUT4 i4149_2_lut_rep_165 (.A(state_current[11]), .B(state_current[10]), 
         .Z(n10314)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4149_2_lut_rep_165.init = 16'heeee;
    LUT4 i4100_2_lut (.A(state_current[1]), .B(state_current[0]), .Z(n6362)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4100_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut_adj_100 (.A(state_current[11]), .B(state_current[10]), 
         .C(state_current[7]), .D(state_current[9]), .Z(n6_adj_688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_100.init = 16'hfffe;
    LUT4 i2_3_lut_adj_101 (.A(n6695), .B(state_current[5]), .C(n1128), 
         .Z(n9087)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_101.init = 16'h0404;
    LUT4 i7437_4_lut (.A(n9805), .B(n9721), .C(n6723), .D(n10282), .Z(clk_div_100k_enable_4)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i7437_4_lut.init = 16'hcccd;
    LUT4 i2_3_lut_rep_109_4_lut (.A(state_current[11]), .B(state_current[10]), 
         .C(state_current[12]), .D(n6673), .Z(n10258)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_109_4_lut.init = 16'hfffe;
    PFUMX i233 (.BLUT(n33), .ALUT(n151), .C0(n9696), .Z(n238));
    LUT4 i1675_4_lut (.A(n2839[0]), .B(n3413[0]), .C(\i2c_config[2] ), 
         .D(n10256), .Z(state_next[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i1675_4_lut.init = 16'hcac0;
    LUT4 mux_934_i1_4_lut (.A(n9512), .B(n2990[0]), .C(n10263), .D(n4_adj_690), 
         .Z(n2839[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(235[4] 262[11])
    defparam mux_934_i1_4_lut.init = 16'hc0c5;
    LUT4 i1_2_lut_adj_102 (.A(state_current[13]), .B(state_current[4]), 
         .Z(n4_adj_690)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_102.init = 16'heeee;
    LUT4 i1_rep_4_3_lut_4_lut (.A(state_current[11]), .B(state_current[10]), 
         .C(state_current[13]), .D(state_current[12]), .Z(n9805)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_rep_4_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2629_3_lut_4_lut (.A(state_current[3]), .B(n10252), .C(state_current[0]), 
         .D(n10292), .Z(n4906)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2629_3_lut_4_lut.init = 16'h1101;
    LUT4 i4_4_lut_adj_103 (.A(state_current[0]), .B(n9630), .C(n9528), 
         .D(n10304), .Z(n9512)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i4_4_lut_adj_103.init = 16'h0010;
    LUT4 i1_3_lut_adj_104 (.A(state_current[3]), .B(n10301), .C(state_current[2]), 
         .Z(n9528)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_3_lut_adj_104.init = 16'h1212;
    LUT4 n8907_bdd_3_lut_7659 (.A(n8907), .B(n1218), .C(n1166), .Z(n10147)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n8907_bdd_3_lut_7659.init = 16'h0404;
    LUT4 i2_2_lut_3_lut_4_lut_adj_105 (.A(state_current[12]), .B(state_current[8]), 
         .C(n10328), .D(cnt_s_ack[0]), .Z(n9575)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(477[5:18])
    defparam i2_2_lut_3_lut_4_lut_adj_105.init = 16'h0200;
    LUT4 i3_4_lut_adj_106 (.A(n10303), .B(n276), .C(n9577), .D(n10269), 
         .Z(n1128)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_106.init = 16'h0002;
    LUT4 i7436_4_lut (.A(n7_adj_691), .B(state_current[5]), .C(n6_adj_692), 
         .D(state_current[0]), .Z(n9721)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i7436_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_adj_107 (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[3]), 
         .C(cnt_dev_addr[0]), .Z(n4_adj_693)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(359[13] 377[20])
    defparam i1_2_lut_3_lut_adj_107.init = 16'hfefe;
    LUT4 i4210_2_lut_3_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[3]), .C(\i2c_dev_addr[6] ), 
         .Z(n4397)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(359[13] 377[20])
    defparam i4210_2_lut_3_lut.init = 16'h1010;
    LUT4 i1260_1_lut_rep_166 (.A(cnt_start[0]), .Z(n10315)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(346[26:41])
    defparam i1260_1_lut_rep_166.init = 16'h5555;
    LUT4 i1564_3_lut_4_lut_4_lut (.A(cnt_start[0]), .B(sda_r), .C(cnt_start[2]), 
         .D(cnt_start[1]), .Z(sda_r_N_628)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(346[26:41])
    defparam i1564_3_lut_4_lut_4_lut.init = 16'hccc5;
    LUT4 i1_2_lut_3_lut_4_lut_adj_108 (.A(cnt_read_reg_data[3]), .B(cnt_read_reg_data[1]), 
         .C(n10251), .D(cnt_read_reg_data[2]), .Z(clk_div_100k_enable_51)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_108.init = 16'h2000;
    LUT4 i4394_4_lut (.A(n6464), .B(state_current[1]), .C(n6423), .D(state_current[0]), 
         .Z(n6657)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i4394_4_lut.init = 16'hffec;
    LUT4 i1581_3_lut_4_lut (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[2]), 
         .C(scl_c), .D(cnt_ack_w_data[0]), .Z(scl_N_561)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(458[14:15])
    defparam i1581_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7434_2_lut_rep_124_3_lut_4_lut (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[2]), 
         .C(\state_next_14__N_378[9] ), .D(cnt_ack_w_data[0]), .Z(n10273)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(458[14:15])
    defparam i7434_2_lut_rep_124_3_lut_4_lut.init = 16'h0100;
    LUT4 i1481_1_lut_rep_173 (.A(cnt_start_r[0]), .Z(n10322)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(472[14:15])
    defparam i1481_1_lut_rep_173.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_109 (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[3]), 
         .C(n10251), .D(cnt_read_reg_data[2]), .Z(clk_div_100k_enable_50)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_109.init = 16'h0080;
    LUT4 i12_3_lut_rep_98_4_lut (.A(state_current[3]), .B(n10252), .C(n29_adj_672), 
         .D(state_current[0]), .Z(clk_div_100k_enable_52)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i12_3_lut_rep_98_4_lut.init = 16'h0e1f;
    LUT4 i1_rep_8_4_lut (.A(state_current[3]), .B(state_current[5]), .C(state_current[2]), 
         .D(state_current[4]), .Z(n9809)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_rep_8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_146_3_lut_4_lut (.A(state_current[2]), .B(state_current[9]), 
         .C(state_current[0]), .D(state_current[3]), .Z(n10295)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i1_2_lut_rep_146_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_110 (.A(cnt_read_reg_data[3]), .B(cnt_read_reg_data[1]), 
         .C(n10251), .D(cnt_read_reg_data[2]), .Z(clk_div_100k_enable_49)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_110.init = 16'h0020;
    LUT4 i2_3_lut_rep_138_3_lut (.A(cnt_start_r[0]), .B(cnt_start_r[2]), 
         .C(cnt_start_r[1]), .Z(n10287)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(472[14:15])
    defparam i2_3_lut_rep_138_3_lut.init = 16'hdfdf;
    LUT4 i4202_4_lut (.A(state_current[3]), .B(state_current[5]), .C(state_current[2]), 
         .D(state_current[4]), .Z(n6464)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i4202_4_lut.init = 16'hffec;
    LUT4 i4_4_lut_adj_111 (.A(n10011), .B(n10305), .C(n257), .D(state_current[3]), 
         .Z(n4672)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_111.init = 16'h0002;
    LUT4 i1_2_lut_rep_121_4_lut_4_lut (.A(cnt_start_r[0]), .B(state_current[4]), 
         .C(cnt_start_r[2]), .D(cnt_start_r[1]), .Z(n10270)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(472[14:15])
    defparam i1_2_lut_rep_121_4_lut_4_lut.init = 16'hfdff;
    LUT4 pwr_bdd_2_lut_7707 (.A(n10222), .B(n1128), .Z(n10223)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam pwr_bdd_2_lut_7707.init = 16'hbbbb;
    LUT4 i2_4_lut_adj_112 (.A(n9581), .B(state_current[2]), .C(n6737), 
         .D(n10282), .Z(n7_adj_691)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_4_lut_adj_112.init = 16'heeec;
    LUT4 i7452_3_lut_rep_93_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_682), .Z(clk_div_100k_enable_34)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7452_3_lut_rep_93_4_lut_3_lut_4_lut.init = 16'h01ef;
    LUT4 i1238_2_lut_rep_174 (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .Z(n10323)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(421[14:15])
    defparam i1238_2_lut_rep_174.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_113 (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[3]), 
         .C(n10251), .D(cnt_read_reg_data[2]), .Z(clk_div_100k_enable_47)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_113.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[3]), 
         .C(n10251), .D(cnt_read_reg_data[2]), .Z(clk_div_100k_enable_45)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'h0010;
    LUT4 state_current_7__bdd_4_lut_7652 (.A(state_current[7]), .B(state_current[8]), 
         .C(state_current[4]), .D(state_current[9]), .Z(n10180)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam state_current_7__bdd_4_lut_7652.init = 16'h0116;
    LUT4 i1_3_lut_4_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), .C(cnt_ack_r_addr[0]), 
         .D(n29_adj_673), .Z(n2)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(421[14:15])
    defparam i1_3_lut_4_lut.init = 16'h00fe;
    LUT4 i4061_3_lut_rep_137_4_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .C(cnt_ack_r_addr[0]), .D(\state_next_14__N_378[9] ), .Z(n10286)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(421[14:15])
    defparam i4061_3_lut_rep_137_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_115 (.A(n10012), .B(n10314), .C(state_current[12]), 
         .D(state_current[13]), .Z(n9581)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_115.init = 16'hfffe;
    LUT4 i4161_4_lut (.A(state_current[5]), .B(state_current[3]), .C(state_current[4]), 
         .D(state_current[2]), .Z(n6423)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i4161_4_lut.init = 16'hffec;
    LUT4 i2_3_lut_4_lut_adj_116 (.A(n10299), .B(n10257), .C(state_current[2]), 
         .D(state_current[9]), .Z(n29_adj_672)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut_4_lut_adj_116.init = 16'hffef;
    LUT4 i2_3_lut_4_lut_adj_117 (.A(n10299), .B(n10257), .C(state_current[2]), 
         .D(state_current[9]), .Z(n29_adj_676)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut_4_lut_adj_117.init = 16'hfeff;
    LUT4 i1225_2_lut_rep_143_3_lut (.A(cnt_start[1]), .B(cnt_start[0]), 
         .C(cnt_start[2]), .Z(n10292)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(346[26:41])
    defparam i1225_2_lut_rep_143_3_lut.init = 16'hf8f8;
    LUT4 i1269_2_lut_3_lut (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .Z(n1718[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(346[26:41])
    defparam i1269_2_lut_3_lut.init = 16'h7878;
    LUT4 i7462_3_lut_rep_88_4_lut_3_lut_4_lut (.A(state_current[3]), .B(n10252), 
         .C(state_current[0]), .D(n29_adj_668), .Z(clk_div_100k_enable_56)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7462_3_lut_rep_88_4_lut_3_lut_4_lut.init = 16'h01ef;
    LUT4 i1_2_lut_rep_167 (.A(state_current[2]), .B(state_current[9]), .Z(n10316)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i1_2_lut_rep_167.init = 16'heeee;
    LUT4 i4_3_lut_rep_102 (.A(rst_n_c), .B(n8_adj_689), .C(state_current[11]), 
         .Z(n10251)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(148[8] 300[29])
    defparam i4_3_lut_rep_102.init = 16'h0808;
    LUT4 i4458_4_lut (.A(state_current[1]), .B(n6657), .C(n9809), .D(state_current[0]), 
         .Z(n6723)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i4458_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut_rep_175 (.A(cnt_dev_addr[0]), .B(cnt_dev_addr[1]), .Z(n10324)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_175.init = 16'h8888;
    LUT4 i3_3_lut_rep_142_4_lut (.A(cnt_dev_addr[0]), .B(cnt_dev_addr[1]), 
         .C(cnt_dev_addr[3]), .D(cnt_dev_addr[2]), .Z(n10291)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_rep_142_4_lut.init = 16'h8000;
    LUT4 i6466_2_lut_3_lut (.A(cnt_dev_addr[0]), .B(cnt_dev_addr[1]), .C(cnt_dev_addr[2]), 
         .Z(n28[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i6466_2_lut_3_lut.init = 16'h7878;
    LUT4 i6473_3_lut_4_lut (.A(cnt_dev_addr[0]), .B(cnt_dev_addr[1]), .C(cnt_dev_addr[2]), 
         .D(cnt_dev_addr[3]), .Z(n28[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i6473_3_lut_4_lut.init = 16'h7f80;
    LUT4 state_current_3__bdd_4_lut (.A(state_current[3]), .B(state_current[4]), 
         .C(state_current[2]), .D(state_current[13]), .Z(n10226)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam state_current_3__bdd_4_lut.init = 16'hfee8;
    LUT4 i1229_2_lut_rep_176 (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .Z(n10325)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(508[14:15])
    defparam i1229_2_lut_rep_176.init = 16'heeee;
    LUT4 cnt_ack_addr_r_2__I_0_585_i5_2_lut_rep_135_2_lut_3_lut (.A(cnt_ack_addr_r[1]), 
         .B(cnt_ack_addr_r[2]), .C(cnt_ack_addr_r[0]), .Z(n10284)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(508[14:15])
    defparam cnt_ack_addr_r_2__I_0_585_i5_2_lut_rep_135_2_lut_3_lut.init = 16'hefef;
    LUT4 i4255_2_lut_rep_122_3_lut_3_lut_4_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .C(\state_next_14__N_378[9] ), .D(cnt_ack_addr_r[0]), .Z(n10271)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(508[14:15])
    defparam i4255_2_lut_rep_122_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_177 (.A(state_current[7]), .B(state_current[10]), 
         .Z(n10326)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_177.init = 16'heeee;
    LUT4 i3_4_lut_adj_118 (.A(state_current[0]), .B(state_current[9]), .C(n10304), 
         .D(n10227), .Z(n8960)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_118.init = 16'hfffe;
    LUT4 i2_3_lut_rep_132_4_lut (.A(state_current[7]), .B(state_current[10]), 
         .C(state_current[5]), .D(state_current[12]), .Z(n10281)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i2_3_lut_rep_132_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_144_3_lut (.A(state_current[7]), .B(state_current[10]), 
         .C(state_current[13]), .Z(n10293)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_2_lut_rep_144_3_lut.init = 16'hfefe;
    LUT4 i5666_4_lut_3_lut (.A(state_current[7]), .B(state_current[10]), 
         .C(state_current[12]), .Z(n313)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i5666_4_lut_3_lut.init = 16'he8e8;
    LUT4 i2_3_lut_4_lut_adj_119 (.A(n10316), .B(n10257), .C(cnt_reg_addr[0]), 
         .D(n9552), .Z(n5777)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2_3_lut_4_lut_adj_119.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_adj_120 (.A(cnt_s_nack[0]), .B(cnt_s_nack[2]), .C(cnt_s_nack[1]), 
         .Z(i2c_ack_7__N_531[5])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(546[14:15])
    defparam i1_2_lut_3_lut_adj_120.init = 16'hfefe;
    LUT4 i6560_3_lut_4_lut (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[1]), 
         .C(cnt_write_reg_data[2]), .D(cnt_write_reg_data[3]), .Z(n27[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i6560_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_3_lut_adj_121 (.A(state_current[1]), .B(state_current[4]), .C(state_current[3]), 
         .Z(n6_adj_692)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i1_3_lut_adj_121.init = 16'hfefe;
    LUT4 i6553_2_lut_3_lut (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[1]), 
         .C(cnt_write_reg_data[2]), .Z(n27[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i6553_2_lut_3_lut.init = 16'h7878;
    LUT4 i3_3_lut_4_lut_adj_122 (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[1]), 
         .C(cnt_write_reg_data[3]), .D(cnt_write_reg_data[2]), .Z(n6695)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_4_lut_adj_122.init = 16'h8000;
    LUT4 i6531_3_lut_4_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[2]), .D(cnt_read_reg_data[3]), .Z(n26[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam i6531_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6524_2_lut_3_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[2]), .Z(n26[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(517[34:58])
    defparam i6524_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_178 (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .Z(n10327)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_178.init = 16'h8888;
    LUT4 i1_4_lut_adj_123 (.A(state_next_14__N_228), .B(n15_adj_694), .C(n20), 
         .D(n16), .Z(n9521)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_4_lut_adj_123.init = 16'hfffe;
    LUT4 i3_3_lut_rep_134_4_lut (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[3]), .D(cnt_dev_addr_r[2]), .Z(n10283)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_rep_134_4_lut.init = 16'h8000;
    LUT4 i6582_2_lut_3_lut (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[2]), .Z(n19[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i6582_2_lut_3_lut.init = 16'h7878;
    LUT4 i4_4_lut_adj_124 (.A(n3_adj_695), .B(sda_ctl), .C(n29_adj_647), 
         .D(n9946), .Z(n15_adj_694)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i4_4_lut_adj_124.init = 16'haeaf;
    LUT4 i6589_3_lut_4_lut (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[2]), .D(cnt_dev_addr_r[3]), .Z(n19[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i6589_3_lut_4_lut.init = 16'h7f80;
    LUT4 i9_4_lut (.A(sda_ctl), .B(n18_adj_696), .C(n12_adj_697), .D(n9_adj_698), 
         .Z(n20)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i9_4_lut.init = 16'hfefc;
    LUT4 i6495_2_lut_3_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .C(cnt_reg_addr[2]), 
         .Z(n5[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam i6495_2_lut_3_lut.init = 16'h7878;
    LUT4 i5_4_lut_adj_125 (.A(sda_ctl), .B(n15_adj_699), .C(n10261), .D(n8975), 
         .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i5_4_lut_adj_125.init = 16'hcecf;
    LUT4 select_682_Select_0_i3_4_lut (.A(sda_ctl), .B(n29), .C(cnt_s_ack[0]), 
         .D(n10328), .Z(n3_adj_695)) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam select_682_Select_0_i3_4_lut.init = 16'h2223;
    LUT4 i2_4_lut_adj_126 (.A(n23_adj_700), .B(state_next_14__N_228), .C(n24_adj_701), 
         .D(n5777), .Z(n9523)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i2_4_lut_adj_126.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_dev_addr[0]), .B(n20_adj_702), .C(n11), .D(n29_adj_686), 
         .Z(n23_adj_700)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i10_4_lut.init = 16'hfcfe;
    LUT4 i1_2_lut_rep_97_3_lut_4_lut (.A(n10316), .B(n10257), .C(state_current[0]), 
         .D(state_current[3]), .Z(n10246)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i1_2_lut_rep_97_3_lut_4_lut.init = 16'hffef;
    LUT4 i7_4_lut (.A(n6_adj_703), .B(n10336), .C(n29_adj_646), .D(sda_ctl_N_615), 
         .Z(n18_adj_696)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i7_4_lut.init = 16'hefee;
    LUT4 i6502_3_lut_4_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .C(cnt_reg_addr[2]), 
         .D(cnt_reg_addr[3]), .Z(n5[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(394[29:48])
    defparam i6502_3_lut_4_lut.init = 16'h7f80;
    LUT4 i68_2_lut_rep_179 (.A(cnt_s_ack[2]), .B(cnt_s_ack[1]), .Z(n10328)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i68_2_lut_rep_179.init = 16'heeee;
    LUT4 i1_4_lut_adj_127 (.A(n4_adj_704), .B(n29_adj_669), .C(cnt_stop[2]), 
         .D(n4_adj_705), .Z(n12_adj_697)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_4_lut_adj_127.init = 16'hbbab;
    LUT4 i2_4_lut_adj_128 (.A(n29_adj_672), .B(n4_adj_706), .C(cnt_ack_addr[0]), 
         .D(n10300), .Z(n9_adj_698)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i2_4_lut_adj_128.init = 16'hdddc;
    LUT4 i1_2_lut_rep_180 (.A(state_current[4]), .B(state_current[10]), 
         .Z(n10329)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(464[5:12])
    defparam i1_2_lut_rep_180.init = 16'heeee;
    LUT4 n8907_bdd_2_lut_3_lut_4_lut (.A(state_current[4]), .B(n10259), 
         .C(n1837), .D(n6755), .Z(n10148)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n8907_bdd_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_3_lut_adj_129 (.A(n10255), .B(sda_ctl), .C(n8974), .Z(n6_adj_703)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_3_lut_adj_129.init = 16'h4545;
    LUT4 i1_2_lut_rep_181 (.A(state_current[1]), .B(state_current[7]), .Z(n10330)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(513[5:18])
    defparam i1_2_lut_rep_181.init = 16'heeee;
    LUT4 i1_2_lut_rep_147_3_lut_4_lut (.A(state_current[1]), .B(state_current[7]), 
         .C(state_current[10]), .D(state_current[4]), .Z(n10296)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(513[5:18])
    defparam i1_2_lut_rep_147_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4238_4_lut (.A(sda_ctl), .B(cnt_start_r[2]), .C(cnt_start_r[1]), 
         .D(cnt_start_r[0]), .Z(sda_ctl_N_615)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(466[17] 475[15])
    defparam i4238_4_lut.init = 16'haaab;
    LUT4 i1_4_lut_adj_130 (.A(n10252), .B(n9552), .C(n9690), .D(sda_ctl), 
         .Z(n4_adj_704)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_4_lut_adj_130.init = 16'h4404;
    LUT4 i1_3_lut_adj_131 (.A(sda_ctl), .B(cnt_stop[0]), .C(cnt_stop[1]), 
         .Z(n4_adj_705)) /* synthesis lut_function=(A+!(B+(C))) */ ;
    defparam i1_3_lut_adj_131.init = 16'habab;
    LUT4 i7383_4_lut (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[1]), .C(cnt_reg_addr[2]), 
         .D(cnt_reg_addr[3]), .Z(n9690)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7383_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_132 (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[2]), 
         .C(cnt_dev_addr_r[1]), .D(cnt_dev_addr_r[3]), .Z(n8974)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(481[13] 499[20])
    defparam i3_4_lut_adj_132.init = 16'hfffe;
    LUT4 select_682_Select_0_i15_4_lut (.A(sda_ctl), .B(n29_adj_686), .C(cnt_dev_addr[2]), 
         .D(n4_adj_693), .Z(n15_adj_699)) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam select_682_Select_0_i15_4_lut.init = 16'h2223;
    LUT4 i3_4_lut_adj_133 (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[2]), 
         .C(cnt_write_reg_data[1]), .D(cnt_write_reg_data[3]), .Z(n8975)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(431[13] 449[20])
    defparam i3_4_lut_adj_133.init = 16'hfffe;
    LUT4 i1_4_lut_adj_134 (.A(n29_adj_676), .B(n2), .C(cnt_ack_addr_r[0]), 
         .D(n10325), .Z(n4_adj_706)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_4_lut_adj_134.init = 16'hdddc;
    LUT4 i11_4_lut (.A(n21), .B(n17), .C(n8_adj_707), .D(n12_adj_687), 
         .Z(n24_adj_701)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_135 (.A(n10260), .B(n10329), .C(state_current[1]), 
         .D(state_current[7]), .Z(n29_adj_646)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(464[5:12])
    defparam i2_3_lut_4_lut_adj_135.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_136 (.A(n10260), .B(n10329), .C(state_current[1]), 
         .D(state_current[7]), .Z(n29_adj_686)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(464[5:12])
    defparam i2_3_lut_4_lut_adj_136.init = 16'hffef;
    LUT4 i2_3_lut_4_lut_adj_137 (.A(n10260), .B(n10330), .C(state_current[10]), 
         .D(state_current[4]), .Z(n29_adj_682)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(513[5:18])
    defparam i2_3_lut_4_lut_adj_137.init = 16'hffef;
    LUT4 i2_3_lut_4_lut_adj_138 (.A(n10260), .B(n10330), .C(state_current[10]), 
         .D(state_current[4]), .Z(n29_adj_673)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(513[5:18])
    defparam i2_3_lut_4_lut_adj_138.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_139 (.A(state_current[13]), .B(n10254), .C(state_current[6]), 
         .D(state_current[12]), .Z(n29)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(452[5:18])
    defparam i2_3_lut_4_lut_adj_139.init = 16'hfeff;
    LUT4 i7_4_lut_adj_140 (.A(n9901), .B(scl_N_561), .C(n10333), .D(n29_adj_668), 
         .Z(n20_adj_702)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i7_4_lut_adj_140.init = 16'hfafe;
    LUT4 i1_2_lut_adj_141 (.A(state_current[3]), .B(state_current[0]), .Z(n9552)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(324[4] 584[11])
    defparam i1_2_lut_adj_141.init = 16'h2222;
    LUT4 i2_3_lut_4_lut_adj_142 (.A(state_current[13]), .B(n10254), .C(state_current[12]), 
         .D(state_current[6]), .Z(n29_adj_668)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(452[5:18])
    defparam i2_3_lut_4_lut_adj_142.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_143 (.A(state_current[11]), .B(n10267), .C(state_current[13]), 
         .D(n10297), .Z(n29_adj_669)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(539[5:13])
    defparam i2_3_lut_4_lut_adj_143.init = 16'hffef;
    LUT4 select_774_Select_0_i8_2_lut_4_lut (.A(n10266), .B(state_current[8]), 
         .C(state_current[5]), .D(cnt_dev_addr_r[0]), .Z(n8_adj_707)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(477[5:18])
    defparam select_774_Select_0_i8_2_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_144 (.A(\i2c_config[0] ), .B(n10262), 
         .C(n10259), .D(state_current[4]), .Z(n4_adj_671)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_144.init = 16'h0080;
    LUT4 i7477_2_lut_3_lut_4_lut (.A(n10316), .B(n10257), .C(state_current[0]), 
         .D(state_current[3]), .Z(state_next_14__N_228)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i7477_2_lut_3_lut_4_lut.init = 16'h0001;
    PFUMX i7678 (.BLUT(n10344), .ALUT(n10345), .C0(state_current[4]), 
          .Z(n10346));
    LUT4 i7496_2_lut_rep_100_3_lut_4_lut (.A(n10296), .B(n10265), .C(state_current[3]), 
         .D(n10316), .Z(clk_div_100k_enable_55)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i7496_2_lut_rep_100_3_lut_4_lut.init = 16'h0001;
    PFUMX i7676 (.BLUT(n10340), .ALUT(n10341), .C0(n10258), .Z(n10342));
    LUT4 i7514_2_lut_3_lut_4_lut (.A(n10296), .B(n10265), .C(state_current[0]), 
         .D(n10316), .Z(clk_div_100k_enable_18)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(92[4:32])
    defparam i7514_2_lut_3_lut_4_lut.init = 16'h0001;
    PFUMX i7674 (.BLUT(n10337), .ALUT(n10338), .C0(\i2c_config[0] ), .Z(n10339));
    PFUMX mux_934_i6 (.BLUT(n9004), .ALUT(n9087), .C0(n10263), .Z(n2839[5]));
    PFUMX i7672 (.BLUT(n10334), .ALUT(n10335), .C0(sda_ctl), .Z(n10336));
    LUT4 i2620_3_lut_4_lut_4_lut_4_lut (.A(state_current[0]), .B(clk_div_100k_enable_55), 
         .C(n29_adj_646), .D(cnt_start_r[2]), .Z(n4897)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/i2c_master_at24c02/i2c_master_at24c02/source/i2c_master_logic.v(343[5:10])
    defparam i2620_3_lut_4_lut_4_lut_4_lut.init = 16'h4740;
    PFUMX i7670 (.BLUT(n10331), .ALUT(n10332), .C0(cnt_s_nack[1]), .Z(n10333));
    
endmodule
