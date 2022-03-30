// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Fri Dec 15 20:40:43 2017
//
// Verilog Description of module i2c_master
//

module i2c_master (sys_clk_12m, rst_n, scl, sda) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(2[8:18])
    input sys_clk_12m;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(9[10:21])
    input rst_n;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(10[10:15])
    output scl;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(11[11:14])
    inout sda;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(12[10:13])
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(9[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(14[7:19])
    
    wire rst_n_c, scl_c, VCC_net, GND_net;
    wire [7:0]i2c_config_adj_723;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(23[15:25])
    
    wire sda_r;
    wire [14:0]state_current;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(86[14:27])
    
    wire n1032;
    wire [14:0]state_next_14__N_363;
    
    wire n10177, n11777, n736, n3479, n973, n33, n3749, n2750, 
        n11216, n11212, n7, n11204, n11173, n11172, n2, n10165, 
        n4, n6, n11126;
    
    VHI i8720 (.Z(VCC_net));
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(10[10:15])
    IB sys_clk_12m_pad (.I(sys_clk_12m), .O(sys_clk_12m_c));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(9[10:21])
    OB scl_pad (.I(scl_c), .O(scl));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(11[11:14])
    BB sda_pad (.I(sda_r), .T(n3749), .B(sda), .O(state_next_14__N_363[9]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(49[10:13])
    LUT4 m1_lut (.Z(n11777)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    clk_div clk_div_inst (.GND_net(GND_net), .sys_clk_12m_c(sys_clk_12m_c), 
            .clk_div_100k(clk_div_100k)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(15[10] 19[4])
    LUT4 i14_4_lut (.A(n11212), .B(n11172), .C(n11126), .D(n736), .Z(n6)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i14_4_lut.init = 16'h05c5;
    LUT4 i8211_4_lut (.A(i2c_config_adj_723[0]), .B(n1032), .C(n973), 
         .D(n11204), .Z(n10177)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i8211_4_lut.init = 16'hf7ff;
    GSR GSR_INST (.GSR(rst_n_c));
    PFUMX i10 (.BLUT(n2750), .ALUT(n33), .C0(i2c_config_adj_723[0]), .Z(n7));
    LUT4 i11_4_lut (.A(n10165), .B(n7), .C(n11216), .D(n4), .Z(n3479)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(23[15:25])
    defparam i11_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_241 (.A(i2c_config_adj_723[2]), .B(i2c_config_adj_723[1]), 
         .Z(n11204)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_241.init = 16'h2222;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut (.A(state_next_14__N_363[9]), .B(n11173), .C(state_current[1]), 
         .D(n736), .Z(n2)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(86[14:27])
    defparam i1_4_lut.init = 16'h0100;
    i2c_master_config i2c_master_config_inst (.\i2c_config[0] (i2c_config_adj_723[0]), 
            .sys_clk_12m_c(sys_clk_12m_c), .\i2c_config[2] (i2c_config_adj_723[2]), 
            .\i2c_config[1] (i2c_config_adj_723[1]), .n11777(n11777), .clk_div_100k(clk_div_100k), 
            .scl_c(scl_c), .n10165(n10165), .n11216(n11216), .n973(n973), 
            .n10177(n10177), .n3479(n3479), .sda_r(sda_r), .\state_current[1] (state_current[1]), 
            .n1032(n1032), .\state_next_14__N_363[9] (state_next_14__N_363[9]), 
            .n11173(n11173), .n736(n736), .n11212(n11212), .n11172(n11172), 
            .n11126(n11126), .n6(n6), .n3749(n3749), .n4(n4), .n2750(n2750), 
            .n2(n2), .n33(n33)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(31[20] 45[3])
    
endmodule
//
// Verilog Description of module clk_div
//

module clk_div (GND_net, sys_clk_12m_c, clk_div_100k) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input sys_clk_12m_c;
    output clk_div_100k;
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(9[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(14[7:19])
    wire [31:0]cnt_p;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(28[19:24])
    
    wire n9389, n9388;
    wire [31:0]n101;
    
    wire n4927;
    wire [31:0]n200;
    
    wire n9387, n9381, n9382, n9386, n9376, n9377, n9385, n9384, 
        n9383, n9378, n9379, clkout_N_68, n9375, n9599, n10, n45, 
        n50, n39, n40, n29, n48, n42, n30, n44, n34, n9374, 
        n9380, n9402, n9401, n9400, n9399, n9373, n9398, n9397, 
        n9396, n9395, n9394, n9393, n9392, n9391, n9390;
    
    CCU2D add_6987_2 (.A0(cnt_p[3]), .B0(cnt_p[2]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n9389));
    defparam add_6987_2.INIT0 = 16'h7000;
    defparam add_6987_2.INIT1 = 16'h5aaa;
    defparam add_6987_2.INJECT1_0 = "NO";
    defparam add_6987_2.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9388), .S0(n101[31]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_1221_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_33.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1221__i30 (.D(n101[30]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i29 (.D(n101[29]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i28 (.D(n101[28]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i27 (.D(n101[27]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i26 (.D(n101[26]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i25 (.D(n101[25]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i24 (.D(n101[24]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i23 (.D(n101[23]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i22 (.D(n101[22]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i21 (.D(n101[21]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i20 (.D(n101[20]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i19 (.D(n101[19]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i18 (.D(n101[18]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i17 (.D(n101[17]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i16 (.D(n101[16]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i15 (.D(n101[15]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i14 (.D(n101[14]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i13 (.D(n101[13]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i12 (.D(n101[12]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i11 (.D(n101[11]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i10 (.D(n101[10]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i9 (.D(n101[9]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i8 (.D(n101[8]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i7 (.D(n101[7]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i6 (.D(n101[6]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i5 (.D(n101[5]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i4 (.D(n101[4]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i3 (.D(n101[3]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i2 (.D(n101[2]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_1221__i1 (.D(n101[1]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i1.GSR = "ENABLED";
    CCU2D cnt_p_1221_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9387), .COUT(n9388), .S0(n101[29]), .S1(n101[30]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9381), .COUT(n9382), .S0(n101[17]), .S1(n101[18]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9386), .COUT(n9387), .S0(n101[27]), .S1(n101[28]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9376), .COUT(n9377), .S0(n101[7]), .S1(n101[8]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9385), .COUT(n9386), .S0(n101[25]), .S1(n101[26]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9384), .COUT(n9385), .S0(n101[23]), .S1(n101[24]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_25.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1221__i31 (.D(n101[31]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i31.GSR = "ENABLED";
    CCU2D cnt_p_1221_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9383), .COUT(n9384), .S0(n101[21]), .S1(n101[22]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_23.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1221__i0 (.D(n101[0]), .CK(sys_clk_12m_c), .CD(n4927), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221__i0.GSR = "ENABLED";
    CCU2D cnt_p_1221_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9378), .COUT(n9379), .S0(n101[11]), .S1(n101[12]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_13.INJECT1_1 = "NO";
    FD1S3AX clk_p_29 (.D(clkout_N_68), .CK(sys_clk_12m_c), .Q(clk_div_100k)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=4, LSE_LLINE=15, LSE_RLINE=19 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(47[9] 50[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_1221_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9375), .COUT(n9376), .S0(n101[5]), .S1(n101[6]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_7.INJECT1_1 = "NO";
    LUT4 i8132_4_lut (.A(n9599), .B(cnt_p[4]), .C(n10), .D(n200[1]), 
         .Z(n4927)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i8132_4_lut.init = 16'h4000;
    LUT4 i25_4_lut (.A(n45), .B(n50), .C(n39), .D(n40), .Z(n9599)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(cnt_p[6]), .B(cnt_p[5]), .C(n200[0]), .D(cnt_p[2]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i19_4_lut (.A(cnt_p[30]), .B(cnt_p[13]), .C(cnt_p[7]), .D(cnt_p[22]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i24_4_lut (.A(n29), .B(n48), .C(n42), .D(n30), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut (.A(cnt_p[17]), .B(cnt_p[29]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i13_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(cnt_p[27]), .B(cnt_p[15]), .C(cnt_p[12]), .D(cnt_p[23]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(cnt_p[21]), .B(cnt_p[28]), .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i22_4_lut (.A(cnt_p[14]), .B(n44), .C(n34), .D(cnt_p[19]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(cnt_p[24]), .B(cnt_p[31]), .C(cnt_p[16]), .D(cnt_p[11]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(cnt_p[9]), .B(cnt_p[10]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(cnt_p[3]), .B(cnt_p[20]), .C(cnt_p[18]), .D(cnt_p[8]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(cnt_p[25]), .B(cnt_p[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam i8_2_lut.init = 16'heeee;
    CCU2D cnt_p_1221_add_4_5 (.A0(cnt_p[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9374), .COUT(n9375), .S0(n101[3]), .S1(n101[4]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9380), .COUT(n9381), .S0(n101[15]), .S1(n101[16]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9379), .COUT(n9380), .S0(n101[13]), .S1(n101[14]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_15.INJECT1_1 = "NO";
    CCU2D add_6987_30 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9402), 
          .S1(clkout_N_68));
    defparam add_6987_30.INIT0 = 16'h5555;
    defparam add_6987_30.INIT1 = 16'h0000;
    defparam add_6987_30.INJECT1_0 = "NO";
    defparam add_6987_30.INJECT1_1 = "NO";
    CCU2D add_6987_28 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9401), .COUT(n9402));
    defparam add_6987_28.INIT0 = 16'h5555;
    defparam add_6987_28.INIT1 = 16'h5555;
    defparam add_6987_28.INJECT1_0 = "NO";
    defparam add_6987_28.INJECT1_1 = "NO";
    CCU2D add_6987_26 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9400), .COUT(n9401));
    defparam add_6987_26.INIT0 = 16'h5555;
    defparam add_6987_26.INIT1 = 16'h5555;
    defparam add_6987_26.INJECT1_0 = "NO";
    defparam add_6987_26.INJECT1_1 = "NO";
    CCU2D add_6987_24 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9399), .COUT(n9400));
    defparam add_6987_24.INIT0 = 16'h5555;
    defparam add_6987_24.INIT1 = 16'h5555;
    defparam add_6987_24.INJECT1_0 = "NO";
    defparam add_6987_24.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9373), .COUT(n9374), .S0(n101[1]), .S1(n101[2]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_3.INJECT1_1 = "NO";
    CCU2D add_6987_22 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9398), .COUT(n9399));
    defparam add_6987_22.INIT0 = 16'h5555;
    defparam add_6987_22.INIT1 = 16'h5555;
    defparam add_6987_22.INJECT1_0 = "NO";
    defparam add_6987_22.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n9373), .S1(n101[0]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_1221_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_1221_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_1.INJECT1_1 = "NO";
    CCU2D add_6987_20 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9397), .COUT(n9398));
    defparam add_6987_20.INIT0 = 16'h5555;
    defparam add_6987_20.INIT1 = 16'h5555;
    defparam add_6987_20.INJECT1_0 = "NO";
    defparam add_6987_20.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9377), .COUT(n9378), .S0(n101[9]), .S1(n101[10]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_11.INJECT1_1 = "NO";
    CCU2D add_6987_18 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9396), .COUT(n9397));
    defparam add_6987_18.INIT0 = 16'h5555;
    defparam add_6987_18.INIT1 = 16'h5555;
    defparam add_6987_18.INJECT1_0 = "NO";
    defparam add_6987_18.INJECT1_1 = "NO";
    CCU2D cnt_p_1221_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9382), .COUT(n9383), .S0(n101[19]), .S1(n101[20]));   // c:/users/22822/desktop/2/i2c_master_sht20/clk_div.v(39[16:23])
    defparam cnt_p_1221_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_1221_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_1221_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_1221_add_4_21.INJECT1_1 = "NO";
    CCU2D add_6987_16 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9395), .COUT(n9396));
    defparam add_6987_16.INIT0 = 16'h5555;
    defparam add_6987_16.INIT1 = 16'h5555;
    defparam add_6987_16.INJECT1_0 = "NO";
    defparam add_6987_16.INJECT1_1 = "NO";
    CCU2D add_6987_14 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9394), .COUT(n9395));
    defparam add_6987_14.INIT0 = 16'h5555;
    defparam add_6987_14.INIT1 = 16'h5555;
    defparam add_6987_14.INJECT1_0 = "NO";
    defparam add_6987_14.INJECT1_1 = "NO";
    CCU2D add_6987_12 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9393), .COUT(n9394));
    defparam add_6987_12.INIT0 = 16'h5555;
    defparam add_6987_12.INIT1 = 16'h5555;
    defparam add_6987_12.INJECT1_0 = "NO";
    defparam add_6987_12.INJECT1_1 = "NO";
    CCU2D add_6987_10 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9392), .COUT(n9393));
    defparam add_6987_10.INIT0 = 16'h5555;
    defparam add_6987_10.INIT1 = 16'h5555;
    defparam add_6987_10.INJECT1_0 = "NO";
    defparam add_6987_10.INJECT1_1 = "NO";
    CCU2D add_6987_8 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9391), .COUT(n9392));
    defparam add_6987_8.INIT0 = 16'h5555;
    defparam add_6987_8.INIT1 = 16'h5555;
    defparam add_6987_8.INJECT1_0 = "NO";
    defparam add_6987_8.INJECT1_1 = "NO";
    CCU2D add_6987_6 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9390), 
          .COUT(n9391));
    defparam add_6987_6.INIT0 = 16'h5555;
    defparam add_6987_6.INIT1 = 16'h5555;
    defparam add_6987_6.INJECT1_0 = "NO";
    defparam add_6987_6.INJECT1_1 = "NO";
    CCU2D add_6987_4 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9389), 
          .COUT(n9390));
    defparam add_6987_4.INIT0 = 16'h5aaa;
    defparam add_6987_4.INIT1 = 16'h5555;
    defparam add_6987_4.INJECT1_0 = "NO";
    defparam add_6987_4.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module i2c_master_config
//

module i2c_master_config (\i2c_config[0] , sys_clk_12m_c, \i2c_config[2] , 
            \i2c_config[1] , n11777, clk_div_100k, scl_c, n10165, 
            n11216, n973, n10177, n3479, sda_r, \state_current[1] , 
            n1032, \state_next_14__N_363[9] , n11173, n736, n11212, 
            n11172, n11126, n6, n3749, n4, n2750, n2, n33) /* synthesis syn_module_defined=1 */ ;
    output \i2c_config[0] ;
    input sys_clk_12m_c;
    output \i2c_config[2] ;
    output \i2c_config[1] ;
    input n11777;
    input clk_div_100k;
    output scl_c;
    output n10165;
    output n11216;
    output n973;
    input n10177;
    input n3479;
    output sda_r;
    output \state_current[1] ;
    output n1032;
    input \state_next_14__N_363[9] ;
    output n11173;
    output n736;
    output n11212;
    output n11172;
    output n11126;
    input n6;
    output n3749;
    output n4;
    output n2750;
    input n2;
    output n33;
    
    wire i2c_done_N_108 /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=\i2c_master_config_inst/i2c_done_N_108 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(27[11:19])
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(9[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(14[7:19])
    
    wire i2c_config_7__N_104, i2c_config_7__N_106, n11198, i2c_config_7__N_105;
    wire [7:0]i2c_config_7__N_91;
    wire [7:0]i2c_reg_data;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(26[15:27])
    wire [6:0]i2c_dev_addr;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(24[15:27])
    
    wire write_done, read_done;
    
    FD1S3AY i2c_state_FSM_i1 (.D(i2c_config_7__N_106), .CK(i2c_done_N_108), 
            .Q(i2c_config_7__N_104));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(70[17:32])
    defparam i2c_state_FSM_i1.GSR = "ENABLED";
    FD1S3AX i2c_config_i1 (.D(i2c_config_7__N_104), .CK(sys_clk_12m_c), 
            .Q(\i2c_config[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=45 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(84[8] 95[6])
    defparam i2c_config_i1.GSR = "ENABLED";
    FD1S3AX i2c_config_i3 (.D(n11198), .CK(sys_clk_12m_c), .Q(\i2c_config[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=45 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(84[8] 95[6])
    defparam i2c_config_i3.GSR = "ENABLED";
    FD1S3IX i2c_state_FSM_i3 (.D(i2c_config_7__N_105), .CK(i2c_done_N_108), 
            .CD(i2c_config_7__N_106), .Q(i2c_config_7__N_106));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(70[17:32])
    defparam i2c_state_FSM_i3.GSR = "ENABLED";
    FD1S3IX i2c_state_FSM_i2 (.D(i2c_config_7__N_104), .CK(i2c_done_N_108), 
            .CD(i2c_config_7__N_106), .Q(i2c_config_7__N_105));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(70[17:32])
    defparam i2c_state_FSM_i2.GSR = "ENABLED";
    FD1S3AX i2c_config_i2 (.D(i2c_config_7__N_91[1]), .CK(sys_clk_12m_c), 
            .Q(\i2c_config[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=45 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(84[8] 95[6])
    defparam i2c_config_i2.GSR = "ENABLED";
    FD1P3AX i2c_reg_data_i1 (.D(n11777), .SP(i2c_config_7__N_104), .CK(sys_clk_12m_c), 
            .Q(i2c_reg_data[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=45 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(84[8] 95[6])
    defparam i2c_reg_data_i1.GSR = "ENABLED";
    FD1P3AX i2c_dev_addr_i6 (.D(n11777), .SP(i2c_config_7__N_91[1]), .CK(sys_clk_12m_c), 
            .Q(i2c_dev_addr[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=31, LSE_RLINE=45 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(84[8] 95[6])
    defparam i2c_dev_addr_i6.GSR = "ENABLED";
    LUT4 i8128_2_lut (.A(write_done), .B(read_done), .Z(i2c_done_N_108)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(49[21:46])
    defparam i8128_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_235 (.A(i2c_config_7__N_105), .B(i2c_config_7__N_106), 
         .Z(n11198)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(85[4] 94[11])
    defparam i1_2_lut_rep_235.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(i2c_config_7__N_105), .B(i2c_config_7__N_106), 
         .C(i2c_config_7__N_104), .Z(i2c_config_7__N_91[1])) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(85[4] 94[11])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    i2c_master_logic i2c_master_logic_inst (.\i2c_config[1] (\i2c_config[1] ), 
            .clk_div_100k(clk_div_100k), .\i2c_config[0] (\i2c_config[0] ), 
            .scl_c(scl_c), .write_done(write_done), .read_done(read_done), 
            .n10165(n10165), .n11216(n11216), .\i2c_dev_addr[6] (i2c_dev_addr[6]), 
            .n973(n973), .n10177(n10177), .n3479(n3479), .sda_r(sda_r), 
            .\state_current[1] (\state_current[1] ), .\i2c_config[2] (\i2c_config[2] ), 
            .n1032(n1032), .\state_next_14__N_363[9] (\state_next_14__N_363[9] ), 
            .n11173(n11173), .n736(n736), .n11212(n11212), .n11172(n11172), 
            .n11126(n11126), .n6(n6), .n3749(n3749), .n4(n4), .\i2c_reg_data[1] (i2c_reg_data[1]), 
            .n2750(n2750), .n2(n2), .n33(n33)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(33[19] 47[4])
    
endmodule
//
// Verilog Description of module i2c_master_logic
//

module i2c_master_logic (\i2c_config[1] , clk_div_100k, \i2c_config[0] , 
            scl_c, write_done, read_done, n10165, n11216, \i2c_dev_addr[6] , 
            n973, n10177, n3479, sda_r, \state_current[1] , \i2c_config[2] , 
            n1032, \state_next_14__N_363[9] , n11173, n736, n11212, 
            n11172, n11126, n6, n3749, n4, \i2c_reg_data[1] , n2750, 
            n2, n33) /* synthesis syn_module_defined=1 */ ;
    input \i2c_config[1] ;
    input clk_div_100k;
    input \i2c_config[0] ;
    output scl_c;
    output write_done;
    output read_done;
    output n10165;
    output n11216;
    input \i2c_dev_addr[6] ;
    output n973;
    input n10177;
    input n3479;
    output sda_r;
    output \state_current[1] ;
    input \i2c_config[2] ;
    output n1032;
    input \state_next_14__N_363[9] ;
    output n11173;
    output n736;
    output n11212;
    output n11172;
    output n11126;
    input n6;
    output n3749;
    output n4;
    input \i2c_reg_data[1] ;
    output n2750;
    input n2;
    output n33;
    
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master.v(14[7:19])
    wire [2:0]cnt_start_r;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(106[12:23])
    
    wire n11168;
    wire [14:0]state_current;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(86[14:27])
    
    wire n11208, n10377, n8, n26, n5246, n11185, n10341;
    wire [3:0]cnt_dev_addr;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(97[12:24])
    
    wire clk_div_100k_enable_33, n4916;
    wire [3:0]n3;
    
    wire clk_div_100k_enable_48, n78, n11108, n4962, n11191;
    wire [2:0]cnt_start;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(96[12:21])
    
    wire n4930;
    wire [2:0]n1718;
    
    wire n20, n4347, n29, cnt_start_2__N_419, n10110, write_done_N_631, 
        read_done_N_637, sda_ctl, n10106;
    wire [5:0]n2783;
    
    wire n6738, n11122, n10166, n6961, n1592, n11004, n10336, 
        n10337, n10338, n10339, n10340;
    wire [12:0]n3404;
    wire [13:0]n3439;
    
    wire n10334;
    wire [13:0]n3470;
    wire [10:0]n2869;
    wire [14:0]state_next_14__N_134;
    wire [10:0]n3418;
    
    wire n9419, n9653;
    wire [3:0]cnt_write_reg_data;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(101[12:30])
    
    wire clk_div_100k_enable_34, n4949;
    wire [3:0]n7;
    wire [3:0]cnt_reg_addr;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(99[12:24])
    
    wire clk_div_100k_enable_32, n4953;
    wire [3:0]n28;
    
    wire n4400, n11207, n11110, n11775, n4944;
    wire [7:0]n2747;
    wire [14:0]state_next_14__N_397;
    wire [7:0]n3395;
    
    wire n11206, n9655, n10145;
    wire [9:0]n2978;
    
    wire clk_div_100k_enable_41, n4936, n1;
    wire [2:0]cnt_s_nack;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(105[12:22])
    
    wire clk_div_100k_enable_38, n4938, n11205;
    wire [2:0]cnt_stop;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(104[12:20])
    
    wire clk_div_100k_enable_39, n4940, n1_adj_641, n10344, n10951, 
        n9541;
    wire [2:0]n2811;
    
    wire n4130;
    wire [2:0]cnt_ack_w_data;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(102[12:26])
    
    wire clk_div_100k_enable_36, n6211, n1_adj_642, clk_div_100k_enable_12, 
        n10104;
    wire [2:0]cnt_ack_r_addr;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(100[12:26])
    
    wire clk_div_100k_enable_30, n1_adj_643, n10343, n11221, n11137, 
        n4235, n11771, n6_c, n6830, n6901, n56, n7021, n603, 
        n6744, n11156, n4210, n10198, n11219, n11218, n11195, 
        n6878, n52, n11093, n10091, n10093, n6909, n6872, n11151, 
        n19, n11157, n6393, n6452;
    wire [2:0]cnt_s_ack;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(109[12:21])
    
    wire scl_N_576, n11158, n27, n15, n3211, n10219, scl_N_568, 
        n11178, n19_adj_644, n74, n11181, n11107, n15_adj_645, n11111, 
        n17, n15_adj_646, n16, n13, sda_ctl_N_609, n8_adj_647, n27_adj_648, 
        n11003, n11005, n10, n27_adj_649, n9471, n79, n12, n6_adj_650, 
        sda_ctl_N_607, n11774, n11116, n9521, n11130, n6_adj_651, 
        n2_c, n5;
    wire [3:0]cnt_read_reg_data;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(103[12:29])
    
    wire clk_div_100k_enable_22;
    wire [3:0]n30;
    wire [2:0]cnt_ack_addr;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(98[12:24])
    
    wire clk_div_100k_enable_24, n4960;
    wire [2:0]n1749;
    
    wire n11106, n4_c, n11177, n8_adj_655, n9501, n27_adj_656, n11203;
    wire [3:0]cnt_dev_addr_r;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(107[12:26])
    
    wire clk_div_100k_enable_23, n4957;
    wire [3:0]n31;
    
    wire n6050, n6758, n11171, n61, n9490, n10255, n4840, n11192, 
        n11127, n9682;
    wire [2:0]n1775;
    wire [2:0]n1801;
    wire [2:0]n1931;
    
    wire n10088, n6315;
    wire [0:0]n1865;
    wire [2:0]cnt_ack_addr_r;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(108[12:26])
    
    wire clk_div_100k_enable_47, n4934;
    wire [2:0]n1852;
    
    wire clk_div_100k_enable_46, n4932;
    wire [2:0]n1908;
    
    wire n11086, n4_adj_668;
    wire [7:0]n2799;
    
    wire n11148, n11085, n11125, n550, n11115, n10150, n4_adj_669, 
        n11149, n11174, scl_N_526, n11167, n11123, n11188, n11152, 
        n569, n10725, n11163, n1299, n9438, n11193, n11166, n6_adj_670, 
        n7007, n10204, n6419, n1_adj_671, n11213, n6446, n11184, 
        n6919, n11644;
    wire [7:0]n2848;
    
    wire n11114, n11160, n6925, n11147, n10715, n11224, n10321, 
        n11161, n11144, n11196, n11109, n115, n10094, n10950, 
        n10949, n11113, n9472;
    wire [5:0]n2724;
    
    wire n10289, n11105, n11180, n11200, n11124, n11146, n10133, 
        n9524, n10213, n11199, n11642, n921;
    wire [2:0]n2767;
    wire [4:0]n2913;
    
    wire n11103, n9605, n9445, n10770, n11643, sda_r_N_623, n11169, 
        n18, n11143, n10723, n10736, n4724, n9423, n131, n11187, 
        n26_adj_673, n11119, n6676, n10953;
    wire [3:0]n2677;
    wire [2:0]n2673;
    
    wire n11211, n6913, n6957, n11183, n10323, n6_adj_674, n8_adj_675, 
        n10309, n6_adj_676;
    wire [10:0]n2857;
    
    wire n11223, n10168, n6746, n11179, n11118, n11084, n11153, 
        n11772, n11112, n11139, n10222, n9543, n11164, n5_adj_677, 
        n11165;
    wire [6:0]n2956;
    
    wire n4846, n11, n10_adj_678, n6539, n11220, n10909, n11189, 
        n11129, n11150, n11136, n4208, n10716, n11095, scl_N_583, 
        n8_adj_679, n17_adj_680, n11128, n5_adj_681, n6_adj_682, n11121, 
        n4_adj_683, n9442, n10327, n18_adj_684, n11145, n11135, 
        n11120, n11186, n10171, n10142, n11104, n10195, n10223, 
        n9516, n6953, n11201, n7009, n9509, n6_adj_685, n11154, 
        n6955, n11197;
    wire [3:0]n2939;
    
    wire n11140, n6740, n11134, n9649, n11194, n11162, n11214;
    wire [1:0]n2756;
    
    wire n11202, n10_adj_687, n13_adj_688, n11_adj_689, n12_adj_690, 
        n10138, n9, n6_adj_691, sda_r_N_613, n6_adj_692, n8_adj_693, 
        n10_adj_694, n11117, sda_r_N_619, n11209;
    wire [4:0]n2926;
    
    wire n11210, n17_adj_695, n11175, n10714, n10332, n10737, n11215, 
        n10186, n11155, n11132, n11142, n6933, n10495, n10397, 
        n18_adj_696, n10229, n4_adj_697, n22_adj_698, n6780, n6923, 
        n10496, n6620, n6567, n11131, n11182, n4238, n10329, n10_adj_699, 
        n11190, n9411, n6547, n10250, scl_N_562, n4733, n47, n6891, 
        n10169, n10097, n6_adj_700, n6935, n10952, n11141, n9523, 
        n10163, n4214, n4217, n11102, n4_adj_701, n21, n26_adj_702, 
        n22_adj_703, n25_adj_704, scl_N_540, n23_adj_705, n9_adj_706, 
        n20_adj_707, n14, n16_adj_708, n11101, n10738, n18_adj_709, 
        n10_adj_710, scl_N_584, n10393, n11222, n9665;
    wire [2:0]n2827;
    
    wire n10116, n6756, n10148, n126, n122, n10127, n6_adj_711, 
        n11133, n4857, n9462, n11773, n10724, n10342, n9520, n4221, 
        n6907, n10254, n10122, n6_adj_713, n4_adj_714;
    
    LUT4 i8145_4_lut (.A(cnt_start_r[2]), .B(n11168), .C(state_current[4]), 
         .D(n11208), .Z(n10377)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i8145_4_lut.init = 16'h3a3f;
    PFUMX i3006 (.BLUT(n8), .ALUT(n26), .C0(\i2c_config[1] ), .Z(n5246));
    FD1S3IX state_current__i1 (.D(n10341), .CK(clk_div_100k), .CD(n11185), 
            .Q(state_current[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i1.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1222__i1 (.D(n3[1]), .SP(clk_div_100k_enable_33), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_dev_addr[1]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1222__i1.GSR = "ENABLED";
    LUT4 i2722_2_lut_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n78), 
         .C(n11108), .D(state_current[0]), .Z(n4962)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i2722_2_lut_3_lut_4_lut_4_lut.init = 16'h8088;
    LUT4 i2_3_lut_rep_228 (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[3]), .C(cnt_dev_addr[2]), 
         .Z(n11191)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(360[13] 378[20])
    defparam i2_3_lut_rep_228.init = 16'hfefe;
    FD1P3IX cnt_start_i0_i2 (.D(n1718[2]), .SP(clk_div_100k_enable_48), 
            .CD(n4930), .CK(clk_div_100k), .Q(cnt_start[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i2.GSR = "ENABLED";
    PFUMX i45 (.BLUT(n20), .ALUT(n4347), .C0(\i2c_config[0] ), .Z(n29));
    FD1P3AY scl_r_513 (.D(n10110), .SP(cnt_start_2__N_419), .CK(clk_div_100k), 
            .Q(scl_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam scl_r_513.GSR = "ENABLED";
    FD1S3AX write_done_530 (.D(write_done_N_631), .CK(clk_div_100k), .Q(write_done)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(597[8] 685[7])
    defparam write_done_530.GSR = "ENABLED";
    FD1S3AX read_done_531 (.D(read_done_N_637), .CK(clk_div_100k), .Q(read_done)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(597[8] 685[7])
    defparam read_done_531.GSR = "ENABLED";
    FD1P3AY sda_ctl_511 (.D(n10106), .SP(cnt_start_2__N_419), .CK(clk_div_100k), 
            .Q(sda_ctl)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam sda_ctl_511.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n2783[5]), .B(n10165), .C(n6738), .D(n11122), 
         .Z(n10166)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam i1_4_lut.init = 16'h0c88;
    LUT4 n569_bdd_2_lut (.A(n6961), .B(n1592), .Z(n11004)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n569_bdd_2_lut.init = 16'h1111;
    PFUMX i8069 (.BLUT(n10336), .ALUT(n10337), .C0(n11216), .Z(n10338));
    PFUMX i8072 (.BLUT(n10339), .ALUT(n10340), .C0(n11216), .Z(n10341));
    L6MUX21 mux_1276_i5 (.D0(n3404[4]), .D1(n3439[4]), .SD(n10334), .Z(n3470[4]));
    PFUMX mux_1249_i7 (.BLUT(n2869[6]), .ALUT(state_next_14__N_134[8]), 
          .C0(\i2c_config[1] ), .Z(n3418[6]));
    PFUMX mux_1259_i5 (.BLUT(n9419), .ALUT(n9653), .C0(n11216), .Z(n3439[4]));
    FD1P3IX cnt_write_reg_data_1224__i1 (.D(n7[1]), .SP(clk_div_100k_enable_34), 
            .CD(n4949), .CK(clk_div_100k), .Q(cnt_write_reg_data[1]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1224__i1.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1223__i1 (.D(n28[1]), .SP(clk_div_100k_enable_32), 
            .CD(n4953), .CK(clk_div_100k), .Q(cnt_reg_addr[1]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1223__i1.GSR = "ENABLED";
    LUT4 i4311_2_lut_4_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[3]), .C(cnt_dev_addr[2]), 
         .D(\i2c_dev_addr[6] ), .Z(n4400)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(360[13] 378[20])
    defparam i4311_2_lut_4_lut.init = 16'h0100;
    LUT4 i2703_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11207), 
         .C(n11110), .D(n11775), .Z(n4944)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2703_3_lut_4_lut_4_lut.init = 16'hac00;
    PFUMX mux_1247_i2 (.BLUT(n2747[1]), .ALUT(state_next_14__N_397[1]), 
          .C0(\i2c_config[0] ), .Z(n3395[1]));
    FD1P3IX cnt_start_i0_i0 (.D(n11206), .SP(clk_div_100k_enable_48), .CD(n4930), 
            .CK(clk_div_100k), .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i0.GSR = "ENABLED";
    PFUMX mux_990_i3 (.BLUT(n9655), .ALUT(n10145), .C0(n973), .Z(n2978[2]));
    FD1P3IX cnt_start_r_i0_i0 (.D(n1), .SP(clk_div_100k_enable_41), .CD(n4936), 
            .CK(clk_div_100k), .Q(cnt_start_r[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_r_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_s_nack_i0_i0 (.D(n11205), .SP(clk_div_100k_enable_38), .CD(n4938), 
            .CK(clk_div_100k), .Q(cnt_s_nack[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_nack_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i0 (.D(n1_adj_641), .SP(clk_div_100k_enable_39), 
            .CD(n4940), .CK(clk_div_100k), .Q(cnt_stop[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1222__i2 (.D(n3[2]), .SP(clk_div_100k_enable_33), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_dev_addr[2]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1222__i2.GSR = "ENABLED";
    FD1S3IX state_current__i14 (.D(n10344), .CK(clk_div_100k), .CD(n11185), 
            .Q(state_current[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i14.GSR = "ENABLED";
    FD1S3IX state_current__i13 (.D(n10951), .CK(clk_div_100k), .CD(n10177), 
            .Q(state_current[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i13.GSR = "ENABLED";
    FD1S3IX state_current__i12 (.D(n2811[1]), .CK(clk_div_100k), .CD(n9541), 
            .Q(state_current[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i12.GSR = "ENABLED";
    FD1S3IX state_current__i11 (.D(n3439[10]), .CK(clk_div_100k), .CD(n4130), 
            .Q(state_current[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i11.GSR = "ENABLED";
    FD1S3IX state_current__i10 (.D(n3439[9]), .CK(clk_div_100k), .CD(n4130), 
            .Q(state_current[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i10.GSR = "ENABLED";
    FD1S3IX state_current__i9 (.D(n3439[8]), .CK(clk_div_100k), .CD(n4130), 
            .Q(state_current[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i9.GSR = "ENABLED";
    FD1S3IX state_current__i8 (.D(n3439[7]), .CK(clk_div_100k), .CD(n4130), 
            .Q(state_current[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i8.GSR = "ENABLED";
    FD1P3IX cnt_ack_w_data_i0_i0 (.D(n1_adj_642), .SP(clk_div_100k_enable_36), 
            .CD(n6211), .CK(clk_div_100k), .Q(cnt_ack_w_data[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_w_data_i0_i0.GSR = "ENABLED";
    FD1S3IX state_current__i7 (.D(n3470[6]), .CK(clk_div_100k), .CD(n11185), 
            .Q(state_current[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i7.GSR = "ENABLED";
    FD1S3IX state_current__i6 (.D(n3479), .CK(clk_div_100k), .CD(n11185), 
            .Q(state_current[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i6.GSR = "ENABLED";
    FD1S3IX state_current__i5 (.D(n3470[4]), .CK(clk_div_100k), .CD(n11185), 
            .Q(state_current[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i5.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1222__i3 (.D(n3[3]), .SP(clk_div_100k_enable_33), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_dev_addr[3]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1222__i3.GSR = "ENABLED";
    FD1S3IX state_current__i3 (.D(n10338), .CK(clk_div_100k), .CD(n11185), 
            .Q(state_current[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i3.GSR = "ENABLED";
    FD1P3AY sda_r_512 (.D(n10104), .SP(clk_div_100k_enable_12), .CK(clk_div_100k), 
            .Q(sda_r)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam sda_r_512.GSR = "ENABLED";
    FD1S3IX state_current__i2 (.D(n3470[1]), .CK(clk_div_100k), .CD(n11185), 
            .Q(\state_current[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_r_addr_i0_i0 (.D(n1_adj_643), .SP(clk_div_100k_enable_30), 
            .CD(n4944), .CK(clk_div_100k), .Q(cnt_ack_r_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i0.GSR = "ENABLED";
    PFUMX i8074 (.BLUT(n2747[7]), .ALUT(state_next_14__N_397[13]), .C0(\i2c_config[0] ), 
          .Z(n10343));
    LUT4 i19_4_lut_4_lut (.A(\state_current[1] ), .B(state_current[2]), 
         .C(n11221), .D(n11137), .Z(n4235)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i19_4_lut_4_lut.init = 16'hf090;
    LUT4 i2_4_lut_4_lut (.A(n11771), .B(\i2c_config[0] ), .C(\i2c_config[2] ), 
         .D(\i2c_config[1] ), .Z(n6_c)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam i2_4_lut_4_lut.init = 16'h0208;
    LUT4 i4603_4_lut_4_lut_4_lut (.A(state_current[13]), .B(state_current[12]), 
         .C(state_current[11]), .D(state_current[10]), .Z(n6830)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i4603_4_lut_4_lut_4_lut.init = 16'hfee8;
    LUT4 i4671_4_lut_4_lut_4_lut (.A(state_current[12]), .B(state_current[8]), 
         .C(state_current[3]), .D(state_current[7]), .Z(n6901)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i4671_4_lut_4_lut_4_lut.init = 16'hfee8;
    LUT4 i1_4_lut_4_lut_4_lut (.A(\state_current[1] ), .B(state_current[2]), 
         .C(state_current[0]), .D(state_current[7]), .Z(n56)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0116;
    LUT4 i2165_3_lut_4_lut (.A(n7021), .B(n603), .C(\i2c_config[1] ), 
         .D(n1592), .Z(n6744)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i2165_3_lut_4_lut.init = 16'h1f10;
    LUT4 i2153_3_lut_4_lut_4_lut (.A(state_current[8]), .B(state_current[9]), 
         .C(state_current[7]), .D(n11156), .Z(n4210)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(478[5:18])
    defparam i2153_3_lut_4_lut_4_lut.init = 16'hffed;
    LUT4 i2_4_lut (.A(n10198), .B(n11219), .C(n11218), .D(n11195), .Z(n6878)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut (.A(state_current[2]), .B(state_current[3]), .C(state_current[4]), 
         .D(state_current[7]), .Z(n52)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_4_lut_adj_47 (.A(n11093), .B(n1592), .C(n10091), .D(n10093), 
         .Z(n8)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A ((C)+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_47.init = 16'h2e0c;
    LUT4 i4679_4_lut_4_lut (.A(state_current[13]), .B(state_current[5]), 
         .C(state_current[2]), .D(state_current[0]), .Z(n6909)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i4679_4_lut_4_lut.init = 16'hfee8;
    LUT4 i4644_4_lut_4_lut (.A(state_current[2]), .B(state_current[0]), 
         .C(state_current[4]), .D(state_current[8]), .Z(n6872)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam i4644_4_lut_4_lut.init = 16'hfef8;
    LUT4 i1_2_lut_rep_147_3_lut_4_lut (.A(n11151), .B(n11156), .C(n19), 
         .D(n11157), .Z(n11110)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_147_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4169_2_lut (.A(state_current[4]), .B(state_current[9]), .Z(n6393)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4169_2_lut.init = 16'heeee;
    LUT4 i4228_2_lut (.A(state_current[0]), .B(state_current[7]), .Z(n6452)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4228_2_lut.init = 16'heeee;
    LUT4 cnt_s_ack_2__bdd_4_lut_8289 (.A(cnt_s_ack[2]), .B(scl_c), .C(cnt_s_ack[0]), 
         .D(cnt_s_ack[1]), .Z(scl_N_576)) /* synthesis lut_function=(A (B)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam cnt_s_ack_2__bdd_4_lut_8289.init = 16'hc8d8;
    LUT4 equal_1512_i27_2_lut_3_lut_4_lut (.A(n11151), .B(n11156), .C(n11158), 
         .D(n11157), .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam equal_1512_i27_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8164_3_lut_rep_131_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11110), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_30)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8164_3_lut_rep_131_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i2_3_lut_4_lut (.A(n11151), .B(n11156), .C(n11137), .D(n15), 
         .Z(n3211)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(n973), .B(n1032), .C(\i2c_config[2] ), .Z(n10219)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(174[4] 204[11])
    defparam i1_2_lut_3_lut.init = 16'hbfbf;
    LUT4 cnt_s_nack_0__bdd_4_lut_8333 (.A(cnt_s_nack[0]), .B(scl_c), .C(cnt_s_nack[1]), 
         .D(cnt_s_nack[2]), .Z(scl_N_568)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (D))) */ ;
    defparam cnt_s_nack_0__bdd_4_lut_8333.init = 16'hcc8a;
    LUT4 i1_2_lut_rep_145_3_lut_4_lut (.A(n11151), .B(n11156), .C(n11178), 
         .D(n11158), .Z(n11108)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_145_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n11151), .B(n11156), .C(n19_adj_644), 
         .D(n11157), .Z(n74)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_144_3_lut_4_lut (.A(n11151), .B(n11156), .C(n11181), 
         .D(n11157), .Z(n11107)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_144_3_lut_4_lut.init = 16'hfffe;
    LUT4 equal_1515_i27_2_lut_rep_148_3_lut_4_lut (.A(n11151), .B(n11156), 
         .C(n11137), .D(n15_adj_645), .Z(n11111)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam equal_1515_i27_2_lut_rep_148_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_48 (.A(n27), .B(n17), .C(n15_adj_646), .D(n16), 
         .Z(n10106)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_48.init = 16'hfffd;
    LUT4 i7_4_lut (.A(n13), .B(sda_ctl_N_609), .C(n8_adj_647), .D(n27_adj_648), 
         .Z(n17)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i7_4_lut.init = 16'hfafe;
    PFUMX i8423 (.BLUT(n11004), .ALUT(n11003), .C0(\i2c_config[1] ), .Z(n11005));
    LUT4 i5_4_lut (.A(sda_ctl), .B(n10), .C(n27_adj_649), .D(n9471), 
         .Z(n15_adj_646)) /* synthesis lut_function=(A (B+!(C))+!A !(C+(D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i5_4_lut.init = 16'h8a8f;
    LUT4 i6_4_lut (.A(n79), .B(n12), .C(n6_adj_650), .D(sda_ctl_N_607), 
         .Z(n16)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i6_4_lut.init = 16'hfdfc;
    LUT4 i3_4_lut (.A(n11774), .B(sda_ctl), .C(n11116), .D(n9521), .Z(n13)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i3_4_lut.init = 16'haeaf;
    LUT4 i2_4_lut_adj_49 (.A(cnt_stop[2]), .B(sda_ctl), .C(cnt_stop[0]), 
         .D(cnt_stop[1]), .Z(sda_ctl_N_609)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;
    defparam i2_4_lut_adj_49.init = 16'hdddf;
    LUT4 i3_4_lut_adj_50 (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[2]), .C(cnt_reg_addr[3]), 
         .D(cnt_reg_addr[1]), .Z(n9521)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam i3_4_lut_adj_50.init = 16'hfffe;
    LUT4 i3_4_lut_adj_51 (.A(n11130), .B(n6_adj_651), .C(n2_c), .D(n5), 
         .Z(n10)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i3_4_lut_adj_51.init = 16'hfdfc;
    FD1P3IX cnt_read_reg_data_1226__i3 (.D(n30[3]), .SP(clk_div_100k_enable_22), 
            .CD(n4962), .CK(clk_div_100k), .Q(cnt_read_reg_data[3]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1226__i3.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i2 (.D(n1749[2]), .SP(clk_div_100k_enable_24), 
            .CD(n4960), .CK(clk_div_100k), .Q(cnt_ack_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_read_reg_data_1226__i2 (.D(n30[2]), .SP(clk_div_100k_enable_22), 
            .CD(n4962), .CK(clk_div_100k), .Q(cnt_read_reg_data[2]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1226__i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i1 (.D(n1749[1]), .SP(clk_div_100k_enable_24), 
            .CD(n4960), .CK(clk_div_100k), .Q(cnt_ack_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i1.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(cnt_start_r[1]), .B(cnt_start_r[0]), .C(cnt_start_r[2]), 
         .Z(n9471)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam i2_3_lut.init = 16'hfefe;
    FD1P3IX cnt_read_reg_data_1226__i1 (.D(n30[1]), .SP(clk_div_100k_enable_22), 
            .CD(n4962), .CK(clk_div_100k), .Q(cnt_read_reg_data[1]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1226__i1.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_52 (.A(n11106), .B(n4_c), .C(cnt_ack_w_data[0]), 
         .D(n11177), .Z(n6_adj_651)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i2_4_lut_adj_52.init = 16'hdddc;
    LUT4 i2_4_lut_adj_53 (.A(n74), .B(n8_adj_655), .C(sda_ctl), .D(n9501), 
         .Z(n12)) /* synthesis lut_function=(A (B)+!A (B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i2_4_lut_adj_53.init = 16'hdcdd;
    LUT4 i1_4_lut_adj_54 (.A(n27_adj_656), .B(sda_ctl), .C(cnt_s_nack[0]), 
         .D(n11203), .Z(n6_adj_650)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_54.init = 16'h4445;
    LUT4 i1_4_lut_adj_55 (.A(n3211), .B(sda_ctl), .C(cnt_dev_addr[0]), 
         .D(n11191), .Z(n8_adj_655)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_55.init = 16'h4445;
    FD1P3IX cnt_dev_addr_r_1225__i3 (.D(n31[3]), .SP(clk_div_100k_enable_23), 
            .CD(n4957), .CK(clk_div_100k), .Q(cnt_dev_addr_r[3]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1225__i3.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_56 (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[2]), 
         .C(cnt_write_reg_data[1]), .D(cnt_write_reg_data[3]), .Z(n9501)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(432[13] 450[20])
    defparam i3_4_lut_adj_56.init = 16'hfffe;
    LUT4 i3857_3_lut_4_lut (.A(\state_next_14__N_363[9] ), .B(n11173), .C(state_current[2]), 
         .D(n6050), .Z(n6758)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i3857_3_lut_4_lut.init = 16'h101f;
    LUT4 i77_3_lut_4_lut (.A(\state_next_14__N_363[9] ), .B(n11173), .C(state_current[2]), 
         .D(n11171), .Z(n61)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i77_3_lut_4_lut.init = 16'h1f10;
    LUT4 i3_4_lut_adj_57 (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[2]), 
         .C(cnt_dev_addr_r[1]), .D(cnt_dev_addr_r[3]), .Z(n9490)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(482[13] 500[20])
    defparam i3_4_lut_adj_57.init = 16'hfffe;
    LUT4 i8195_3_lut_rep_175 (.A(n10255), .B(state_current[6]), .C(n4840), 
         .Z(clk_div_100k_enable_48)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i8195_3_lut_rep_175.init = 16'h0101;
    FD1P3IX cnt_dev_addr_r_1225__i2 (.D(n31[2]), .SP(clk_div_100k_enable_23), 
            .CD(n4957), .CK(clk_div_100k), .Q(cnt_dev_addr_r[2]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1225__i2.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_58 (.A(n11192), .B(state_current[12]), .C(state_current[13]), 
         .D(n11127), .Z(n27_adj_648)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(566[5:9])
    defparam i3_4_lut_adj_58.init = 16'hffef;
    FD1P3IX cnt_dev_addr_r_1225__i1 (.D(n31[1]), .SP(clk_div_100k_enable_23), 
            .CD(n4957), .CK(clk_div_100k), .Q(cnt_dev_addr_r[1]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1225__i1.GSR = "ENABLED";
    FD1P3IX cnt_read_reg_data_1226__i0 (.D(n30[0]), .SP(clk_div_100k_enable_22), 
            .CD(n4962), .CK(clk_div_100k), .Q(cnt_read_reg_data[0]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1226__i0.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_r_1225__i0 (.D(n31[0]), .SP(clk_div_100k_enable_23), 
            .CD(n4957), .CK(clk_div_100k), .Q(cnt_dev_addr_r[0]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1225__i0.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i0 (.D(n1749[0]), .SP(clk_div_100k_enable_24), 
            .CD(n4960), .CK(clk_div_100k), .Q(cnt_ack_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1223__i2 (.D(n28[2]), .SP(clk_div_100k_enable_32), 
            .CD(n4953), .CK(clk_div_100k), .Q(cnt_reg_addr[2]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1223__i2.GSR = "ENABLED";
    FD1P3IX cnt_write_reg_data_1224__i2 (.D(n7[2]), .SP(clk_div_100k_enable_34), 
            .CD(n4949), .CK(clk_div_100k), .Q(cnt_write_reg_data[2]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1224__i2.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1223__i3 (.D(n28[3]), .SP(clk_div_100k_enable_32), 
            .CD(n4953), .CK(clk_div_100k), .Q(cnt_reg_addr[3]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1223__i3.GSR = "ENABLED";
    FD1P3IX cnt_write_reg_data_1224__i3 (.D(n7[3]), .SP(clk_div_100k_enable_34), 
            .CD(n4949), .CK(clk_div_100k), .Q(cnt_write_reg_data[3]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1224__i3.GSR = "ENABLED";
    FD1S3IX state_current__i4 (.D(n6758), .CK(clk_div_100k), .CD(n9682), 
            .Q(state_current[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam state_current__i4.GSR = "ENABLED";
    FD1P3IX cnt_ack_r_addr_i0_i2 (.D(n1775[2]), .SP(clk_div_100k_enable_30), 
            .CD(n4944), .CK(clk_div_100k), .Q(cnt_ack_r_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_r_addr_i0_i1 (.D(n1775[1]), .SP(clk_div_100k_enable_30), 
            .CD(n4944), .CK(clk_div_100k), .Q(cnt_ack_r_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_ack_w_data_i0_i1 (.D(n1801[1]), .SP(clk_div_100k_enable_36), 
            .CD(n6211), .CK(clk_div_100k), .Q(cnt_ack_w_data[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_w_data_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1223__i0 (.D(n28[0]), .SP(clk_div_100k_enable_32), 
            .CD(n4953), .CK(clk_div_100k), .Q(cnt_reg_addr[0]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1223__i0.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1222__i0 (.D(n3[0]), .SP(clk_div_100k_enable_33), 
            .CD(n4916), .CK(clk_div_100k), .Q(cnt_dev_addr[0]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1222__i0.GSR = "ENABLED";
    FD1P3IX cnt_write_reg_data_1224__i0 (.D(n7[0]), .SP(clk_div_100k_enable_34), 
            .CD(n4949), .CK(clk_div_100k), .Q(cnt_write_reg_data[0]));   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1224__i0.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i1 (.D(n1931[1]), .SP(clk_div_100k_enable_39), .CD(n4940), 
            .CK(clk_div_100k), .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_ack_w_data_i0_i2 (.D(n1801[2]), .SP(clk_div_100k_enable_36), 
            .CD(n6211), .CK(clk_div_100k), .Q(cnt_ack_w_data[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_w_data_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_s_nack_i0_i1 (.D(n10088), .SP(clk_div_100k_enable_38), .CD(n4938), 
            .CK(clk_div_100k), .Q(cnt_s_nack[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_nack_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_s_nack_i0_i2 (.D(n6315), .SP(clk_div_100k_enable_38), .CD(n4938), 
            .CK(clk_div_100k), .Q(cnt_s_nack[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_nack_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i2 (.D(n1931[2]), .SP(clk_div_100k_enable_39), .CD(n4940), 
            .CK(clk_div_100k), .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_start_r_i0_i1 (.D(n1865[0]), .SP(clk_div_100k_enable_41), 
            .CD(n4936), .CK(clk_div_100k), .Q(cnt_start_r[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_r_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_start_r_i0_i2 (.D(n11208), .SP(clk_div_100k_enable_41), 
            .CD(n4936), .CK(clk_div_100k), .Q(cnt_start_r[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_r_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_r_i0_i1 (.D(n1852[1]), .SP(clk_div_100k_enable_47), 
            .CD(n4934), .CK(clk_div_100k), .Q(cnt_ack_addr_r[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_r_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_r_i0_i2 (.D(n1852[2]), .SP(clk_div_100k_enable_47), 
            .CD(n4934), .CK(clk_div_100k), .Q(cnt_ack_addr_r[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_r_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_s_ack_i0_i2 (.D(n1908[2]), .SP(clk_div_100k_enable_46), 
            .CD(n4932), .CK(clk_div_100k), .Q(cnt_s_ack[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_ack_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_s_ack_i0_i1 (.D(n1908[1]), .SP(clk_div_100k_enable_46), 
            .CD(n4932), .CK(clk_div_100k), .Q(cnt_s_ack[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_ack_i0_i1.GSR = "ENABLED";
    LUT4 i8123_3_lut (.A(n3418[2]), .B(n3404[2]), .C(\i2c_config[0] ), 
         .Z(n10336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8123_3_lut.init = 16'hcaca;
    LUT4 i8118_4_lut (.A(n11086), .B(state_next_14__N_134[2]), .C(\i2c_config[1] ), 
         .D(n4_adj_668), .Z(n3418[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i8118_4_lut.init = 16'hc5c0;
    LUT4 mux_1248_i3_4_lut (.A(n2799[2]), .B(n2978[2]), .C(\i2c_config[2] ), 
         .D(n1032), .Z(n3404[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam mux_1248_i3_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_59 (.A(n11148), .B(n11085), .C(n11125), .D(n550), 
         .Z(state_next_14__N_134[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_59.init = 16'hc044;
    LUT4 i1_4_lut_adj_60 (.A(n11148), .B(n6961), .C(n11125), .D(n11115), 
         .Z(n4_adj_668)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_60.init = 16'hc044;
    LUT4 i8068_4_lut (.A(n2799[2]), .B(n10150), .C(\i2c_config[0] ), .D(n4_adj_669), 
         .Z(n10337)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i8068_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_61 (.A(n11149), .B(n736), .C(n11174), .D(\state_current[1] ), 
         .Z(n4_adj_669)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_61.init = 16'hc088;
    LUT4 scl_c_bdd_4_lut_8570 (.A(scl_c), .B(cnt_start[1]), .C(cnt_start[2]), 
         .D(cnt_start[0]), .Z(scl_N_526)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B+(C+(D)))) */ ;
    defparam scl_c_bdd_4_lut_8570.init = 16'haaa3;
    LUT4 i1_4_lut_adj_62 (.A(n11167), .B(n11123), .C(n11188), .D(state_current[0]), 
         .Z(n736)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_62.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_adj_63 (.A(state_current[8]), .B(n11152), .C(n569), 
         .Z(n10091)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_63.init = 16'hefef;
    LUT4 i4245_2_lut (.A(n10725), .B(n11771), .Z(n2799[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(236[4] 263[11])
    defparam i4245_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(n11163), .B(state_current[5]), .C(n1299), 
         .Z(n9438)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(150[4] 171[11])
    defparam i2_2_lut_3_lut.init = 16'h0404;
    LUT4 i4_4_lut (.A(n11193), .B(n11166), .C(state_current[11]), .D(n6_adj_670), 
         .Z(n7007)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_64 (.A(n11181), .B(n10204), .C(n6909), .D(n6419), 
         .Z(n6_adj_670)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_64.init = 16'heeea;
    FD1P3IX cnt_s_ack_i0_i0 (.D(n1_adj_671), .SP(clk_div_100k_enable_46), 
            .CD(n4932), .CK(clk_div_100k), .Q(cnt_s_ack[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_ack_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_65 (.A(n11212), .B(state_current[6]), .C(n11213), 
         .D(\state_current[1] ), .Z(n10204)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_65.init = 16'hfefa;
    LUT4 i4222_2_lut (.A(state_current[13]), .B(state_current[5]), .Z(n6446)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4222_2_lut.init = 16'h8888;
    LUT4 n11188_bdd_4_lut (.A(n11188), .B(n11157), .C(state_current[4]), 
         .D(state_current[3]), .Z(n11221)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam n11188_bdd_4_lut.init = 16'hfeef;
    LUT4 i2_3_lut_4_lut_adj_66 (.A(n11184), .B(n11166), .C(state_current[9]), 
         .D(state_current[5]), .Z(n6919)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_66.init = 16'hfffe;
    LUT4 i8116_3_lut (.A(n3418[0]), .B(n11644), .C(\i2c_config[0] ), .Z(n10339)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8116_3_lut.init = 16'hcaca;
    LUT4 i8104_4_lut (.A(n2848[0]), .B(state_next_14__N_134[0]), .C(\i2c_config[1] ), 
         .D(n11086), .Z(n3418[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i8104_4_lut.init = 16'hc0ca;
    LUT4 mux_973_i1_4_lut (.A(n11115), .B(n11114), .C(n6961), .D(n11172), 
         .Z(n2848[0])) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(266[4] 298[11])
    defparam mux_973_i1_4_lut.init = 16'h5303;
    LUT4 n6979_bdd_2_lut_3_lut_3_lut_4_lut (.A(state_current[0]), .B(n11160), 
         .C(n6925), .D(n11147), .Z(n10715)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n6979_bdd_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_rep_163_4_lut (.A(state_current[0]), .B(n11160), .C(n6446), 
         .D(n10198), .Z(n11126)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_163_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_4_lut (.A(n11185), .B(n11224), .C(n11216), .D(n6878), 
         .Z(n9541)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i4_4_lut_4_lut.init = 16'hfeff;
    LUT4 i4177_4_lut (.A(n10321), .B(n7021), .C(n11172), .D(n603), .Z(state_next_14__N_134[0])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(118[4] 147[11])
    defparam i4177_4_lut.init = 16'h3011;
    LUT4 i1_2_lut_rep_146_3_lut_4_lut (.A(n11181), .B(n11161), .C(n11144), 
         .D(n11196), .Z(n11109)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_146_3_lut_4_lut.init = 16'h0100;
    LUT4 i2_4_lut_rep_258 (.A(n11184), .B(n11166), .C(n115), .D(n10094), 
         .Z(n11771)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;
    defparam i2_4_lut_rep_258.init = 16'h3130;
    PFUMX i8404 (.BLUT(n10950), .ALUT(n10949), .C0(n11113), .Z(n10951));
    LUT4 i8071_4_lut (.A(n2747[0]), .B(n7007), .C(\i2c_config[0] ), .D(n6), 
         .Z(n10340)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i8071_4_lut.init = 16'h3a0a;
    LUT4 i4280_4_lut (.A(n9472), .B(n11771), .C(n2724[0]), .D(n11122), 
         .Z(n2747[0])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(207[4] 233[11])
    defparam i4280_4_lut.init = 16'hc044;
    LUT4 i8020_3_lut_4_lut (.A(n11188), .B(n11167), .C(n11160), .D(n6452), 
         .Z(n10289)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8020_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1719_2_lut_rep_142_3_lut_4_lut_4_lut (.A(n11184), .B(n11166), 
         .C(n115), .D(n10094), .Z(n11105)) /* synthesis lut_function=(A (B+!(C))+!A (B+((D)+!C))) */ ;
    defparam i1719_2_lut_rep_142_3_lut_4_lut_4_lut.init = 16'hdfcf;
    FD1P3IX cnt_ack_addr_r_i0_i0 (.D(n11180), .SP(clk_div_100k_enable_47), 
            .CD(n4934), .CK(clk_div_100k), .Q(cnt_ack_addr_r[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_r_i0_i0.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_67 (.A(n11200), .B(state_current[13]), .C(n11124), 
         .D(state_current[4]), .Z(n9472)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_67.init = 16'hffce;
    LUT4 i4203_4_lut (.A(n11146), .B(n1592), .C(n11147), .D(n569), .Z(n2869[6])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i4203_4_lut.init = 16'hc044;
    LUT4 i4372_4_lut (.A(n10133), .B(n7021), .C(n9524), .D(n603), .Z(state_next_14__N_134[8])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(118[4] 147[11])
    defparam i4372_4_lut.init = 16'h0322;
    LUT4 i2_3_lut_rep_161_4_lut (.A(n11188), .B(n11167), .C(n11161), .D(n11219), 
         .Z(n11124)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_161_4_lut.init = 16'hfffe;
    LUT4 i8114_4_lut (.A(n10213), .B(n550), .C(\i2c_config[1] ), .D(n11085), 
         .Z(n20)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i8114_4_lut.init = 16'h3505;
    LUT4 n1032_bdd_4_lut (.A(n2724[0]), .B(n973), .C(n11113), .D(n11199), 
         .Z(n11642)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+((D)+!C)))) */ ;
    defparam n1032_bdd_4_lut.init = 16'h0232;
    LUT4 mux_979_i3_3_lut_4_lut (.A(n11168), .B(state_current[4]), .C(n921), 
         .D(n2767[2]), .Z(n2913[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(266[4] 298[11])
    defparam mux_979_i3_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2126_3_lut (.A(n11103), .B(n9605), .C(\i2c_config[2] ), .Z(n4347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam i2126_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_3_lut_adj_68 (.A(n11168), .B(state_current[4]), .C(n569), 
         .Z(n9445)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(266[4] 298[11])
    defparam i2_2_lut_3_lut_adj_68.init = 16'h0808;
    LUT4 i1_2_lut (.A(state_current[2]), .B(n6050), .Z(n2767[2])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_adj_69 (.A(cnt_reg_addr[2]), .B(cnt_reg_addr[3]), .C(cnt_reg_addr[1]), 
         .D(cnt_reg_addr[0]), .Z(n6050)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam i3_4_lut_adj_69.init = 16'h8000;
    LUT4 i2c_dev_addr_6__bdd_4_lut_8322 (.A(\i2c_dev_addr[6] ), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[3]), .D(cnt_dev_addr_r[2]), .Z(n10770)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A (B (C (D)))) */ ;
    defparam i2c_dev_addr_6__bdd_4_lut_8322.init = 16'hc002;
    LUT4 equal_1514_i23_2_lut_rep_229 (.A(state_current[10]), .B(state_current[11]), 
         .Z(n11192)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(356[5:18])
    defparam equal_1514_i23_2_lut_rep_229.init = 16'heeee;
    LUT4 n157_bdd_2_lut_8687 (.A(n11642), .B(n1032), .Z(n11643)) /* synthesis lut_function=(A (B)) */ ;
    defparam n157_bdd_2_lut_8687.init = 16'h8888;
    LUT4 n10770_bdd_3_lut (.A(n10770), .B(sda_r), .C(cnt_dev_addr_r[0]), 
         .Z(sda_r_N_623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n10770_bdd_3_lut.init = 16'hcaca;
    PFUMX mux_1247_i7 (.BLUT(n2747[6]), .ALUT(state_next_14__N_397[6]), 
          .C0(\i2c_config[0] ), .Z(n3395[6]));
    LUT4 i1_2_lut_3_lut_adj_70 (.A(state_current[8]), .B(n11169), .C(n569), 
         .Z(n10133)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_70.init = 16'h2020;
    LUT4 i7056_2_lut (.A(cnt_write_reg_data[1]), .B(cnt_write_reg_data[0]), 
         .Z(n7[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(431[35:60])
    defparam i7056_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_71 (.A(state_current[2]), .B(n18), .C(n11144), .D(n11143), 
         .Z(n1299)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_71.init = 16'h0004;
    LUT4 n1503_bdd_2_lut_8304_3_lut (.A(n11174), .B(state_current[0]), .C(n1299), 
         .Z(n10723)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n1503_bdd_2_lut_8304_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_72 (.A(\state_next_14__N_363[9] ), .B(n11173), 
         .C(n921), .D(state_current[2]), .Z(n10145)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(275[17] 276[52])
    defparam i1_2_lut_3_lut_4_lut_adj_72.init = 16'h0600;
    LUT4 n10137_bdd_3_lut (.A(n1032), .B(n973), .C(n921), .Z(n10736)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n10137_bdd_3_lut.init = 16'h0808;
    LUT4 i2_4_lut_adj_73 (.A(state_current[11]), .B(n4724), .C(state_current[6]), 
         .D(n9423), .Z(n1032)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_73.init = 16'h0504;
    LUT4 i1_4_lut_adj_74 (.A(n131), .B(state_current[4]), .C(n11219), 
         .D(state_current[2]), .Z(n4724)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_74.init = 16'h0002;
    LUT4 i7027_2_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .Z(n28[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam i7027_2_lut.init = 16'h6666;
    LUT4 i11_2_lut_rep_156_4_lut (.A(state_current[9]), .B(n11187), .C(n11156), 
         .D(n26_adj_673), .Z(n11119)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(503[5:21])
    defparam i11_2_lut_rep_156_4_lut.init = 16'hfd00;
    LUT4 i2_4_lut_adj_75 (.A(n6676), .B(state_current[3]), .C(n10953), 
         .D(state_current[7]), .Z(n9423)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_75.init = 16'h0010;
    LUT4 i1_4_lut_adj_76 (.A(n2677[1]), .B(n10150), .C(n2673[0]), .D(n736), 
         .Z(state_next_14__N_397[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(150[4] 171[11])
    defparam i1_4_lut_adj_76.init = 16'hc088;
    LUT4 mux_957_i2_3_lut (.A(n11174), .B(n11211), .C(state_current[0]), 
         .Z(n6913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(236[4] 263[11])
    defparam mux_957_i2_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_77 (.A(n11174), .B(state_current[0]), .C(n6957), 
         .D(n1299), .Z(n9655)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_77.init = 16'h2000;
    LUT4 i4_4_lut_adj_78 (.A(n11183), .B(n10323), .C(state_current[3]), 
         .D(n6_adj_674), .Z(n921)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_4_lut_adj_78.init = 16'h0100;
    LUT4 i1_4_lut_adj_79 (.A(n11199), .B(n6901), .C(n8_adj_675), .D(n6676), 
         .Z(n131)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_79.init = 16'h5073;
    LUT4 i1509_1_lut (.A(cnt_start_r[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(473[14:15])
    defparam i1509_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_80 (.A(n10309), .B(state_current[9]), .C(state_current[3]), 
         .D(state_current[10]), .Z(n8_adj_675)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i3_4_lut_adj_80.init = 16'h0104;
    LUT4 i2697_4_lut (.A(clk_div_100k_enable_38), .B(n6_adj_676), .C(n27_adj_656), 
         .D(cnt_s_nack[2]), .Z(n4938)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam i2697_4_lut.init = 16'haaa8;
    LUT4 i1_2_lut_adj_81 (.A(cnt_s_nack[0]), .B(cnt_s_nack[1]), .Z(n6_adj_676)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(105[12:22])
    defparam i1_2_lut_adj_81.init = 16'h8888;
    LUT4 i1542_1_lut (.A(sda_ctl), .Z(n3749)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(49[10:13])
    defparam i1542_1_lut.init = 16'h5555;
    LUT4 i2699_4_lut (.A(clk_div_100k_enable_39), .B(cnt_stop[1]), .C(n27_adj_648), 
         .D(cnt_stop[2]), .Z(n4940)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam i2699_4_lut.init = 16'ha8a0;
    LUT4 i1505_1_lut (.A(cnt_stop[0]), .Z(n1_adj_641)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(295[24:37])
    defparam i1505_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_4_lut_adj_82 (.A(n11093), .B(n1592), .C(n2857[4]), .D(\i2c_config[1] ), 
         .Z(n9419)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_82.init = 16'h00e0;
    LUT4 i3_4_lut_adj_83 (.A(state_current[0]), .B(n6919), .C(n52), .D(n6419), 
         .Z(n973)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_83.init = 16'h0010;
    LUT4 i1_2_lut_then_4_lut (.A(\i2c_config[0] ), .B(n603), .C(n7021), 
         .D(n569), .Z(n11223)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam i1_2_lut_then_4_lut.init = 16'hfffe;
    LUT4 i32_2_lut (.A(state_current[0]), .B(\state_current[1] ), .Z(n18)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i32_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_84 (.A(state_current[12]), .B(state_current[8]), .Z(n10168)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_84.init = 16'h2222;
    LUT4 i8024_4_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[3]), .D(cnt_read_reg_data[2]), .Z(n6746)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8024_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_155_3_lut_4_lut (.A(state_current[7]), .B(n11179), 
         .C(n11157), .D(n11156), .Z(n11118)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_155_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_164_3_lut_4_lut (.A(state_current[7]), .B(n11179), 
         .C(n11158), .D(n11157), .Z(n11127)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_164_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4784_2_lut_rep_121 (.A(n7021), .B(n603), .Z(n11084)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4784_2_lut_rep_121.init = 16'heeee;
    LUT4 i1_2_lut_rep_122 (.A(n603), .B(n7021), .Z(n11085)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_122.init = 16'h2222;
    LUT4 n569_bdd_2_lut_8422_3_lut (.A(n7021), .B(n603), .C(n569), .Z(n11003)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam n569_bdd_2_lut_8422_3_lut.init = 16'h0101;
    LUT4 i4249_2_lut_rep_190_3_lut (.A(state_current[10]), .B(state_current[11]), 
         .C(state_current[12]), .Z(n11153)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(356[5:18])
    defparam i4249_2_lut_rep_190_3_lut.init = 16'hfefe;
    LUT4 select_601_Select_0_i16_4_lut_else_1_lut (.A(n11775), .B(cnt_start[2]), 
         .C(cnt_start[0]), .D(cnt_start[1]), .Z(n11772)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam select_601_Select_0_i16_4_lut_else_1_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_85 (.A(n11112), .B(n11084), .C(n11139), .D(n569), 
         .Z(n26)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_85.init = 16'h0322;
    LUT4 i2_4_lut_adj_86 (.A(n10222), .B(n6419), .C(n9543), .D(n11164), 
         .Z(n115)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!((D)+!C)))) */ ;
    defparam i2_4_lut_adj_86.init = 16'h1303;
    LUT4 i3_4_lut_adj_87 (.A(n5_adj_677), .B(state_current[4]), .C(n11165), 
         .D(state_current[13]), .Z(n9543)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i3_4_lut_adj_87.init = 16'hfefa;
    LUT4 i3007_4_lut (.A(n5246), .B(n2956[5]), .C(\i2c_config[0] ), .D(n10219), 
         .Z(n3439[10])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(23[15:25])
    defparam i3007_4_lut.init = 16'h0aca;
    LUT4 i2_3_lut_4_lut_adj_88 (.A(n11115), .B(n6961), .C(n4846), .D(n1592), 
         .Z(n10213)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2_3_lut_4_lut_adj_88.init = 16'hffbf;
    LUT4 i6_4_lut_adj_89 (.A(n11), .B(state_current[6]), .C(n10_adj_678), 
         .D(n6539), .Z(n6961)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_89.init = 16'hfffe;
    LUT4 i1_4_lut_adj_90 (.A(n11220), .B(state_current[3]), .C(n10909), 
         .D(n11193), .Z(n10094)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_90.init = 16'h0010;
    LUT4 i1_2_lut_rep_123_3_lut_4_lut (.A(n11115), .B(n6961), .C(n1592), 
         .D(n4846), .Z(n11086)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_123_3_lut_4_lut.init = 16'hf0f4;
    LUT4 i1_2_lut_rep_166_3_lut_4_lut (.A(n11192), .B(n11189), .C(n11158), 
         .D(n11157), .Z(n11129)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_166_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_187_4_lut (.A(n11192), .B(n11189), .C(n11187), .D(state_current[9]), 
         .Z(n11150)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i2_3_lut_rep_187_4_lut.init = 16'hfeff;
    LUT4 equal_1512_i26_2_lut_rep_173_3_lut_4_lut (.A(n11192), .B(n11189), 
         .C(n11179), .D(state_current[7]), .Z(n11136)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam equal_1512_i26_2_lut_rep_173_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4195_2_lut (.A(state_current[6]), .B(\state_current[1] ), .Z(n6419)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4195_2_lut.init = 16'heeee;
    LUT4 i2152_3_lut_4_lut (.A(state_current[0]), .B(n11178), .C(n19_adj_644), 
         .D(n19), .Z(n4208)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i2152_3_lut_4_lut.init = 16'hfeee;
    LUT4 mux_1259_i9_4_lut (.A(n3418[6]), .B(n10716), .C(\i2c_config[0] ), 
         .D(n11095), .Z(n3439[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam mux_1259_i9_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut_4_lut (.A(cnt_reg_addr[0]), .B(n11116), .C(scl_N_583), 
         .D(n79), .Z(n8_adj_679)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_3_lut_4_lut.init = 16'h22f2;
    LUT4 i1_2_lut_rep_165_3_lut_4_lut (.A(state_current[0]), .B(n11178), 
         .C(n17_adj_680), .D(n11188), .Z(n11128)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_165_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_1259_i8_4_lut (.A(n3418[5]), .B(n5_adj_681), .C(\i2c_config[0] ), 
         .D(n6_adj_682), .Z(n3439[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam mux_1259_i8_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_91 (.A(n921), .B(n11171), .C(n11168), .D(state_current[4]), 
         .Z(n5_adj_681)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(106[12:23])
    defparam i1_4_lut_adj_91.init = 16'h0a88;
    LUT4 i1_2_lut_4_lut (.A(n11771), .B(n11122), .C(n1299), .D(n11121), 
         .Z(n4_adj_683)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(207[4] 233[11])
    defparam i1_2_lut_4_lut.init = 16'h0800;
    LUT4 equal_1522_i27_2_lut_rep_167_3_lut_4_lut (.A(state_current[0]), .B(n11178), 
         .C(n11150), .D(n11158), .Z(n11130)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam equal_1522_i27_2_lut_rep_167_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_92 (.A(n11122), .B(n11771), .C(n1299), .D(n6913), 
         .Z(n2747[1])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_92.init = 16'h0080;
    LUT4 equal_1523_i27_2_lut_3_lut_4_lut (.A(state_current[0]), .B(n11178), 
         .C(n26_adj_673), .D(n11158), .Z(n78)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam equal_1523_i27_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_4_lut (.A(n11113), .B(n973), .C(n1032), .D(n1299), 
         .Z(n9605)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h1000;
    PFUMX mux_1248_i5 (.BLUT(n2799[4]), .ALUT(n9442), .C0(\i2c_config[2] ), 
          .Z(n3404[4]));
    LUT4 i4_4_lut_adj_93 (.A(n10327), .B(n10323), .C(state_current[0]), 
         .D(n18_adj_684), .Z(n550)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_4_lut_adj_93.init = 16'h0100;
    LUT4 i1508_1_lut (.A(cnt_ack_w_data[0]), .Z(n1_adj_642)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(459[14:15])
    defparam i1508_1_lut.init = 16'h5555;
    LUT4 i4409_2_lut_4_lut (.A(n11145), .B(n2767[2]), .C(n11115), .D(n11105), 
         .Z(n2799[4])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(236[4] 263[11])
    defparam i4409_2_lut_4_lut.init = 16'h00ca;
    LUT4 equal_1512_i25_2_lut_rep_193_3_lut_4_lut (.A(state_current[10]), 
         .B(state_current[11]), .C(state_current[12]), .D(state_current[13]), 
         .Z(n11156)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(356[5:18])
    defparam equal_1512_i25_2_lut_rep_193_3_lut_4_lut.init = 16'hfffe;
    LUT4 i32_2_lut_adj_94 (.A(state_current[2]), .B(state_current[7]), .Z(n18_adj_684)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i32_2_lut_adj_94.init = 16'h6666;
    LUT4 equal_1526_i20_2_lut_rep_172_3_lut_4_lut (.A(n11181), .B(n11188), 
         .C(n11178), .D(state_current[0]), .Z(n11135)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam equal_1526_i20_2_lut_rep_172_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_157_3_lut_4_lut (.A(n11181), .B(n11188), .C(n15_adj_645), 
         .D(state_current[0]), .Z(n11120)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(326[5:9])
    defparam i1_2_lut_rep_157_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8054_4_lut (.A(state_current[8]), .B(state_current[6]), .C(n11186), 
         .D(n11167), .Z(n10323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8054_4_lut.init = 16'hfffe;
    LUT4 mux_1276_i7_4_lut (.A(n10171), .B(n3395[6]), .C(n11216), .D(n4_adj_683), 
         .Z(n3470[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam mux_1276_i7_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_4_lut_adj_95 (.A(n603), .B(n7021), .C(n550), .D(n61), 
         .Z(n10142)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_95.init = 16'h2000;
    LUT4 i2_3_lut_4_lut_adj_96 (.A(n11122), .B(n11771), .C(\i2c_config[0] ), 
         .D(n11104), .Z(n9653)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(236[4] 263[11])
    defparam i2_3_lut_4_lut_adj_96.init = 16'h0400;
    LUT4 i3_4_lut_adj_97 (.A(state_current[6]), .B(n56), .C(n11181), .D(n6919), 
         .Z(n603)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_97.init = 16'h0004;
    LUT4 i2_4_lut_adj_98 (.A(n10195), .B(state_current[6]), .C(n10223), 
         .D(n9516), .Z(n7021)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_98.init = 16'hfeee;
    LUT4 i1_2_lut_adj_99 (.A(\i2c_config[0] ), .B(\i2c_config[2] ), .Z(n10171)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam i1_2_lut_adj_99.init = 16'h2222;
    LUT4 i8138_2_lut_rep_150_2_lut_3_lut_4_lut (.A(n11181), .B(n11178), 
         .C(n6925), .D(state_current[0]), .Z(n11113)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8138_2_lut_rep_150_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_4_lut_adj_100 (.A(state_current[13]), .B(n6953), .C(n11201), 
         .D(state_current[8]), .Z(n10223)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut_adj_100.init = 16'hfffe;
    LUT4 i3_4_lut_adj_101 (.A(state_current[10]), .B(\state_current[1] ), 
         .C(n7009), .D(state_current[7]), .Z(n9516)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_101.init = 16'hfffe;
    LUT4 i4770_4_lut (.A(state_current[8]), .B(n9509), .C(n6_adj_685), 
         .D(state_current[11]), .Z(n7009)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i4770_4_lut.init = 16'hccc8;
    LUT4 i4495_2_lut_4_lut (.A(state_current[5]), .B(n1299), .C(n11154), 
         .D(\state_next_14__N_363[9] ), .Z(n2724[5])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(207[4] 233[11])
    defparam i4495_2_lut_4_lut.init = 16'h0100;
    LUT4 i2_3_lut_adj_102 (.A(n6955), .B(state_current[9]), .C(state_current[13]), 
         .Z(n9509)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_102.init = 16'hfefe;
    LUT4 i1_2_lut_rep_160_3_lut_4_lut (.A(n11187), .B(n11186), .C(n11196), 
         .D(n11181), .Z(n11123)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_160_3_lut_4_lut.init = 16'h0010;
    LUT4 i4258_2_lut_4_lut (.A(n11197), .B(cnt_write_reg_data[2]), .C(cnt_write_reg_data[3]), 
         .D(state_current[5]), .Z(n2939[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4258_2_lut_4_lut.init = 16'h8000;
    LUT4 i4514_2_lut_4_lut (.A(state_current[5]), .B(n1299), .C(n11154), 
         .D(\state_next_14__N_363[9] ), .Z(n6738)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(207[4] 233[11])
    defparam i4514_2_lut_4_lut.init = 16'hfffe;
    LUT4 i4259_2_lut_rep_177_4_lut (.A(n11197), .B(cnt_write_reg_data[2]), 
         .C(cnt_write_reg_data[3]), .D(state_current[5]), .Z(n11140)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i4259_2_lut_rep_177_4_lut.init = 16'h7f00;
    LUT4 i1_4_lut_adj_103 (.A(n6740), .B(\i2c_config[0] ), .C(n9438), 
         .D(n11122), .Z(n4)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_103.init = 16'hc044;
    LUT4 i4_4_lut_adj_104 (.A(state_current[10]), .B(n10289), .C(state_current[8]), 
         .D(state_current[9]), .Z(n569)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i4_4_lut_adj_104.init = 16'h0110;
    LUT4 i2_3_lut_4_lut_adj_105 (.A(n11144), .B(n11123), .C(state_current[0]), 
         .D(n11134), .Z(n9649)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_105.init = 16'h0b00;
    LUT4 i1_3_lut_4_lut_adj_106 (.A(n19), .B(n11118), .C(n11207), .D(cnt_ack_r_addr[0]), 
         .Z(n2_c)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(417[5:19])
    defparam i1_3_lut_4_lut_adj_106.init = 16'h1110;
    LUT4 i1_2_lut_adj_107 (.A(n11771), .B(\i2c_config[2] ), .Z(n10165)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam i1_2_lut_adj_107.init = 16'h2222;
    LUT4 i3_4_lut_adj_108 (.A(n11194), .B(n11188), .C(n11193), .D(n11162), 
         .Z(n6925)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_108.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_109 (.A(n11120), .B(n11136), .C(n11214), .D(cnt_ack_addr[0]), 
         .Z(n4_c)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(381[5:19])
    defparam i1_3_lut_4_lut_adj_109.init = 16'h1110;
    LUT4 i2_3_lut_rep_149 (.A(n6878), .B(n6746), .C(state_current[10]), 
         .Z(n11112)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(266[4] 298[11])
    defparam i2_3_lut_rep_149.init = 16'h2020;
    LUT4 i1_2_lut_4_lut_adj_110 (.A(n6878), .B(n6746), .C(state_current[10]), 
         .D(n6961), .Z(n10093)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(266[4] 298[11])
    defparam i1_2_lut_4_lut_adj_110.init = 16'h0020;
    LUT4 i2_3_lut_4_lut_4_lut (.A(state_current[4]), .B(n11200), .C(n2756[1]), 
         .D(n11124), .Z(n2783[5])) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C)))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h5010;
    LUT4 i1_3_lut_4_lut_adj_111 (.A(state_current[0]), .B(n11202), .C(n11201), 
         .D(state_current[13]), .Z(n10222)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_111.init = 16'hfffe;
    LUT4 i4_4_lut_adj_112 (.A(n78), .B(n11106), .C(n11111), .D(n11110), 
         .Z(n10_adj_687)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_112.init = 16'h8000;
    LUT4 i1_4_lut_adj_113 (.A(n27), .B(n13_adj_688), .C(n11_adj_689), 
         .D(n12_adj_690), .Z(n10104)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_113.init = 16'hfffd;
    PFUMX mux_974_i5 (.BLUT(n10138), .ALUT(n9445), .C0(n1592), .Z(n2857[4]));
    LUT4 i1_2_lut_rep_159_3_lut_4_lut (.A(state_current[10]), .B(n11199), 
         .C(n10094), .D(n11184), .Z(n11122)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_159_3_lut_4_lut.init = 16'h0010;
    LUT4 i5_4_lut_adj_114 (.A(n9), .B(n11775), .C(n6_adj_691), .D(sda_r_N_613), 
         .Z(n13_adj_688)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i5_4_lut_adj_114.init = 16'hfbfa;
    LUT4 i3_4_lut_adj_115 (.A(n11203), .B(n6_adj_692), .C(n27_adj_656), 
         .D(n8_adj_693), .Z(n11_adj_689)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i3_4_lut_adj_115.init = 16'hcfcd;
    LUT4 i4_4_lut_adj_116 (.A(n10_adj_694), .B(sda_r), .C(n27_adj_648), 
         .D(n8_adj_679), .Z(n12_adj_690)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i4_4_lut_adj_116.init = 16'hcd05;
    LUT4 state_current_1__bdd_4_lut_8594 (.A(\state_current[1] ), .B(state_current[6]), 
         .C(state_current[0]), .D(state_current[5]), .Z(n10909)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam state_current_1__bdd_4_lut_8594.init = 16'h0116;
    LUT4 i1_4_lut_adj_117 (.A(n27_adj_649), .B(n11117), .C(sda_r_N_619), 
         .D(sda_r_N_623), .Z(n9)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_117.init = 16'h7350;
    LUT4 i1_4_lut_adj_118 (.A(n3211), .B(n4400), .C(sda_r), .D(cnt_dev_addr[0]), 
         .Z(n6_adj_691)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_118.init = 16'h5044;
    LUT4 i4681_2_lut_rep_151 (.A(state_current[13]), .B(n6878), .Z(n11114)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4681_2_lut_rep_151.init = 16'heeee;
    LUT4 i8052_2_lut_3_lut (.A(state_current[13]), .B(n6878), .C(n569), 
         .Z(n10321)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8052_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_961_i4_3_lut_rep_141_4_lut (.A(n11124), .B(n11164), .C(n2767[2]), 
         .D(n11145), .Z(n11104)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_961_i4_3_lut_rep_141_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_rep_182_4_lut (.A(\state_next_14__N_363[9] ), .B(cnt_ack_r_addr[0]), 
         .C(n11207), .D(state_current[4]), .Z(n11145)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;
    defparam i1_2_lut_rep_182_4_lut.init = 16'hfb00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_119 (.A(n11124), .B(n11164), .C(n2767[2]), 
         .D(n6961), .Z(n10138)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_119.init = 16'h4000;
    LUT4 i1_2_lut_rep_130_3_lut_4_lut (.A(n11124), .B(n11164), .C(n4846), 
         .D(n6961), .Z(n11093)) /* synthesis lut_function=(A (C+!(D))+!A (B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_130_3_lut_4_lut.init = 16'hf4ff;
    LUT4 i1_2_lut_4_lut_adj_120 (.A(\state_next_14__N_363[9] ), .B(cnt_ack_r_addr[0]), 
         .C(n11207), .D(state_current[4]), .Z(n6740)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_120.init = 16'hfbff;
    LUT4 i1_2_lut_rep_184_4_lut (.A(n11209), .B(cnt_dev_addr_r[2]), .C(cnt_dev_addr_r[3]), 
         .D(state_current[8]), .Z(n11147)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1_2_lut_rep_184_4_lut.init = 16'h7f00;
    FD1P3IX cnt_start_i0_i1 (.D(n1718[1]), .SP(clk_div_100k_enable_48), 
            .CD(n4930), .CK(clk_div_100k), .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i1.GSR = "ENABLED";
    LUT4 i4349_2_lut_4_lut (.A(n11209), .B(cnt_dev_addr_r[2]), .C(cnt_dev_addr_r[3]), 
         .D(state_current[8]), .Z(n2926[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4349_2_lut_4_lut.init = 16'h8000;
    LUT4 i2689_3_lut_4_lut (.A(n11210), .B(cnt_start[2]), .C(state_current[0]), 
         .D(clk_div_100k_enable_48), .Z(n4930)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i2689_3_lut_4_lut.init = 16'hef00;
    LUT4 i1_4_lut_adj_121 (.A(n11181), .B(n17_adj_695), .C(n11118), .D(n11175), 
         .Z(n6_adj_692)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_121.init = 16'h0004;
    LUT4 i2_3_lut_4_lut_adj_122 (.A(cnt_start_r[2]), .B(n11208), .C(state_current[2]), 
         .D(n550), .Z(n9524)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam i2_3_lut_4_lut_adj_122.init = 16'hfbff;
    LUT4 n6979_bdd_2_lut_8299_3_lut_4_lut (.A(cnt_start_r[2]), .B(n11208), 
         .C(n921), .D(state_current[4]), .Z(n10714)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam n6979_bdd_2_lut_8299_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_adj_123 (.A(state_current[0]), .B(n11211), .C(n1299), 
         .Z(n2724[0])) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(351[14:15])
    defparam i1_2_lut_3_lut_adj_123.init = 16'h8080;
    LUT4 i4248_2_lut_rep_162_3_lut_4_lut (.A(cnt_ack_addr[0]), .B(n11214), 
         .C(state_current[2]), .D(\state_next_14__N_363[9] ), .Z(n11125)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A ((D)+!C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(387[14:15])
    defparam i4248_2_lut_rep_162_3_lut_4_lut.init = 16'h20d0;
    LUT4 i33_4_lut (.A(n10332), .B(sda_r), .C(cnt_write_reg_data[0]), 
         .D(\i2c_reg_data[1] ), .Z(n17_adj_695)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i33_4_lut.init = 16'hcac0;
    LUT4 n10137_bdd_2_lut_3_lut_4_lut (.A(n11124), .B(n11164), .C(n1592), 
         .D(n6961), .Z(n10737)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n10137_bdd_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i4523_2_lut_rep_185_4_lut (.A(n11215), .B(cnt_dev_addr[2]), .C(cnt_dev_addr[3]), 
         .D(state_current[0]), .Z(n11148)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i4523_2_lut_rep_185_4_lut.init = 16'hff7f;
    LUT4 i4217_2_lut_4_lut (.A(n11215), .B(cnt_dev_addr[2]), .C(cnt_dev_addr[3]), 
         .D(\state_current[1] ), .Z(n2673[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i4217_2_lut_4_lut.init = 16'h7f00;
    LUT4 i2_3_lut_4_lut_adj_124 (.A(state_current[4]), .B(n11213), .C(state_current[9]), 
         .D(state_current[13]), .Z(n6_adj_685)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_124.init = 16'hfeee;
    LUT4 i1_3_lut_4_lut_adj_125 (.A(state_current[4]), .B(n11213), .C(\state_current[1] ), 
         .D(state_current[7]), .Z(n10186)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_125.init = 16'hfeee;
    LUT4 i8063_2_lut (.A(cnt_write_reg_data[3]), .B(cnt_write_reg_data[2]), 
         .Z(n10332)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i8063_2_lut.init = 16'hdddd;
    LUT4 equal_1518_i18_2_lut_rep_212 (.A(state_current[5]), .B(state_current[6]), 
         .Z(n11175)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(428[5:19])
    defparam equal_1518_i18_2_lut_rep_212.init = 16'hdddd;
    LUT4 select_601_Select_0_i8_3_lut_4_lut (.A(n11155), .B(n11129), .C(n9490), 
         .D(sda_ctl), .Z(n8_adj_647)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(465[5:12])
    defparam select_601_Select_0_i8_3_lut_4_lut.init = 16'h1101;
    LUT4 i25_4_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(sda_r), .D(cnt_stop[0]), 
         .Z(n10_adj_694)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+(C (D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(568[17] 580[15])
    defparam i25_4_lut.init = 16'h0b19;
    LUT4 i1262_2_lut_rep_214 (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[2]), 
         .Z(n11177)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(459[14:15])
    defparam i1262_2_lut_rep_214.init = 16'heeee;
    LUT4 i4546_2_lut_rep_171_3_lut_4_lut (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[2]), 
         .C(\state_next_14__N_363[9] ), .D(cnt_ack_w_data[0]), .Z(n11134)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(459[14:15])
    defparam i4546_2_lut_rep_171_3_lut_4_lut.init = 16'hfeff;
    LUT4 cnt_ack_w_data_2__I_0_577_i5_2_lut_rep_191_3_lut (.A(cnt_ack_w_data[1]), 
         .B(cnt_ack_w_data[2]), .C(cnt_ack_w_data[0]), .Z(n11154)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(459[14:15])
    defparam cnt_ack_w_data_2__I_0_577_i5_2_lut_rep_191_3_lut.init = 16'hefef;
    LUT4 i4178_2_lut_rep_215 (.A(state_current[2]), .B(\state_current[1] ), 
         .Z(n11178)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4178_2_lut_rep_215.init = 16'heeee;
    LUT4 i1_2_lut_rep_169_3_lut_4_lut (.A(state_current[2]), .B(\state_current[1] ), 
         .C(n11188), .D(state_current[0]), .Z(n11132)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_169_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_194_3_lut (.A(state_current[2]), .B(\state_current[1] ), 
         .C(state_current[0]), .Z(n11157)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_194_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_adj_126 (.A(state_current[2]), .B(\state_current[1] ), 
         .C(state_current[7]), .D(state_current[4]), .Z(n6_adj_674)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_126.init = 16'h0110;
    LUT4 i4564_2_lut_rep_179_3_lut_4_lut (.A(state_current[2]), .B(\state_current[1] ), 
         .C(state_current[0]), .D(n11181), .Z(n11142)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4564_2_lut_rep_179_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8165_4_lut (.A(n11192), .B(n6933), .C(n11189), .D(n10495), 
         .Z(n10397)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8165_4_lut.init = 16'h0001;
    LUT4 i4722_2_lut_3_lut_4_lut (.A(state_current[2]), .B(\state_current[1] ), 
         .C(n6925), .D(n11181), .Z(n6957)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4722_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(cnt_s_ack[0]), .B(cnt_s_ack[2]), .C(cnt_s_ack[1]), 
         .Z(scl_N_583)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(109[12:21])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i1_2_lut_rep_143_3_lut_4_lut (.A(n11136), .B(n11157), .C(n18_adj_696), 
         .D(n11181), .Z(n11106)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(453[5:18])
    defparam i1_2_lut_rep_143_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4208_2_lut_rep_216 (.A(state_current[9]), .B(state_current[8]), 
         .Z(n11179)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4208_2_lut_rep_216.init = 16'heeee;
    LUT4 i1_4_lut_adj_127 (.A(n11160), .B(n10229), .C(n6830), .D(n10495), 
         .Z(n4_adj_697)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_127.init = 16'heeea;
    LUT4 equal_1520_i22_2_lut_3_lut (.A(state_current[9]), .B(state_current[8]), 
         .C(state_current[7]), .Z(n22_adj_698)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam equal_1520_i22_2_lut_3_lut.init = 16'hefef;
    LUT4 i1_3_lut_4_lut_adj_128 (.A(state_current[9]), .B(state_current[8]), 
         .C(state_current[6]), .D(state_current[7]), .Z(n6780)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_128.init = 16'hfffe;
    LUT4 equal_1512_i22_2_lut_rep_188_3_lut (.A(state_current[9]), .B(state_current[8]), 
         .C(state_current[7]), .Z(n11151)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam equal_1512_i22_2_lut_rep_188_3_lut.init = 16'hfefe;
    LUT4 i4701_4_lut (.A(\state_current[1] ), .B(n6923), .C(n10496), .D(state_current[0]), 
         .Z(n6933)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i4701_4_lut.init = 16'hc8c0;
    LUT4 i3_4_lut_adj_129 (.A(n11151), .B(state_current[10]), .C(n11189), 
         .D(state_current[11]), .Z(n26_adj_673)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(514[5:18])
    defparam i3_4_lut_adj_129.init = 16'hfffb;
    LUT4 i4691_4_lut (.A(n6620), .B(\state_current[1] ), .C(n6567), .D(state_current[0]), 
         .Z(n6923)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i4691_4_lut.init = 16'hffec;
    LUT4 i8_4_lut (.A(n6913), .B(n3395[1]), .C(n11216), .D(n29), .Z(n3470[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_config.v(23[15:25])
    defparam i8_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_168_3_lut_4_lut (.A(state_current[10]), .B(state_current[11]), 
         .C(state_current[12]), .D(state_current[13]), .Z(n11131)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(356[5:18])
    defparam i1_2_lut_rep_168_3_lut_4_lut.init = 16'hffef;
    LUT4 i1510_1_lut_rep_217 (.A(cnt_ack_addr_r[0]), .Z(n11180)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(509[14:15])
    defparam i1510_1_lut_rep_217.init = 16'h5555;
    LUT4 i2_2_lut_rep_176_4_lut_4_lut (.A(cnt_ack_addr_r[0]), .B(state_current[8]), 
         .C(n11182), .D(\state_next_14__N_363[9] ), .Z(n11139)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(509[14:15])
    defparam i2_2_lut_rep_176_4_lut_4_lut.init = 16'hfffd;
    LUT4 equal_1518_i17_2_lut_rep_218 (.A(state_current[3]), .B(state_current[4]), 
         .Z(n11181)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(428[5:19])
    defparam equal_1518_i17_2_lut_rep_218.init = 16'heeee;
    LUT4 i1507_1_lut (.A(cnt_ack_r_addr[0]), .Z(n1_adj_643)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(423[14:15])
    defparam i1507_1_lut.init = 16'h5555;
    LUT4 i2017_3_lut_4_lut (.A(n11151), .B(n11131), .C(n11119), .D(n11135), 
         .Z(n4238)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(553[5:18])
    defparam i2017_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1_2_lut_rep_199_3_lut (.A(state_current[10]), .B(state_current[11]), 
         .C(state_current[13]), .Z(n11162)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(356[5:18])
    defparam i1_2_lut_rep_199_3_lut.init = 16'hfefe;
    LUT4 i4243_2_lut_rep_197_3_lut_4_lut (.A(state_current[3]), .B(state_current[4]), 
         .C(\state_current[1] ), .D(state_current[2]), .Z(n11160)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(428[5:19])
    defparam i4243_2_lut_rep_197_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4343_4_lut (.A(state_current[5]), .B(state_current[3]), .C(state_current[4]), 
         .D(state_current[2]), .Z(n6567)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i4343_4_lut.init = 16'hffec;
    LUT4 i7_4_lut_adj_130 (.A(state_current[6]), .B(n10329), .C(n10_adj_699), 
         .D(n11190), .Z(n1592)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i7_4_lut_adj_130.init = 16'h0010;
    LUT4 i4261_4_lut (.A(n2783[5]), .B(n11771), .C(n2724[5]), .D(n11122), 
         .Z(n2747[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(207[4] 233[11])
    defparam i4261_4_lut.init = 16'hc088;
    LUT4 equal_1518_i19_2_lut_3_lut_4_lut (.A(state_current[3]), .B(state_current[4]), 
         .C(state_current[6]), .D(state_current[5]), .Z(n19_adj_644)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(428[5:19])
    defparam equal_1518_i19_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 n6979_bdd_3_lut (.A(n6746), .B(n1299), .C(state_current[9]), 
         .Z(n10950)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n6979_bdd_3_lut.init = 16'h0202;
    LUT4 i2_3_lut_4_lut_adj_131 (.A(state_current[3]), .B(state_current[4]), 
         .C(n11213), .D(\state_current[1] ), .Z(n9411)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(428[5:19])
    defparam i2_3_lut_4_lut_adj_131.init = 16'h0100;
    LUT4 i1_4_lut_adj_132 (.A(n6547), .B(n11192), .C(n10250), .D(n11189), 
         .Z(n10229)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_132.init = 16'hffec;
    LUT4 i8060_4_lut (.A(state_current[12]), .B(n11183), .C(state_current[2]), 
         .D(state_current[10]), .Z(n10329)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8060_4_lut.init = 16'hfffe;
    LUT4 i4412_2_lut_rep_180_3_lut_4_lut (.A(state_current[3]), .B(state_current[4]), 
         .C(n11186), .D(n11187), .Z(n11143)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(428[5:19])
    defparam i4412_2_lut_rep_180_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_174_3_lut_4_lut (.A(state_current[3]), .B(state_current[4]), 
         .C(state_current[0]), .D(n11188), .Z(n11137)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(428[5:19])
    defparam i1_2_lut_rep_174_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1256_2_lut_rep_219 (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .Z(n11182)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(508[14:15])
    defparam i1256_2_lut_rep_219.init = 16'heeee;
    LUT4 i4183_3_lut_rep_189_3_lut_4_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .C(\state_next_14__N_363[9] ), .D(cnt_ack_addr_r[0]), .Z(n11152)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(508[14:15])
    defparam i4183_3_lut_rep_189_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1628_3_lut_4_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .C(scl_c), .D(cnt_ack_addr_r[0]), .Z(scl_N_562)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(508[14:15])
    defparam i1628_3_lut_4_lut.init = 16'hf1e0;
    LUT4 cnt_ack_addr_r_2__I_0_584_i5_2_lut_3_lut (.A(cnt_ack_addr_r[1]), 
         .B(cnt_ack_addr_r[2]), .C(cnt_ack_addr_r[0]), .Z(n5)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(508[14:15])
    defparam cnt_ack_addr_r_2__I_0_584_i5_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4394_2_lut_rep_220 (.A(state_current[0]), .B(state_current[5]), 
         .Z(n11183)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4394_2_lut_rep_220.init = 16'heeee;
    LUT4 i8167_3_lut_4_lut (.A(state_current[0]), .B(state_current[5]), 
         .C(n4_adj_697), .D(n10397), .Z(cnt_start_2__N_419)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i8167_3_lut_4_lut.init = 16'hff01;
    LUT4 i1_2_lut_rep_221 (.A(state_current[13]), .B(state_current[11]), 
         .Z(n11184)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_221.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_133 (.A(state_current[13]), .B(state_current[11]), 
         .C(n4733), .D(n47), .Z(n10_adj_699)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_133.init = 16'h1110;
    PFUMX mux_987_i6 (.BLUT(n6891), .ALUT(n10169), .C0(n11113), .Z(n2956[5]));
    LUT4 i2_3_lut_4_lut_adj_134 (.A(n11136), .B(n11158), .C(n10097), .D(n15), 
         .Z(n6_adj_700)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_134.init = 16'hf0e0;
    LUT4 i1_rep_46_4_lut (.A(state_current[9]), .B(state_current[7]), .C(state_current[8]), 
         .D(state_current[6]), .Z(n10495)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_rep_46_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_135 (.A(state_current[13]), .B(state_current[11]), 
         .C(n11187), .D(state_current[9]), .Z(n10255)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_135.init = 16'hfffe;
    LUT4 i1_2_lut_rep_204_3_lut (.A(state_current[13]), .B(state_current[11]), 
         .C(state_current[12]), .Z(n11167)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_204_3_lut.init = 16'hfefe;
    LUT4 i4703_2_lut_4_lut (.A(n11134), .B(n11163), .C(state_current[5]), 
         .D(n1299), .Z(n6935)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(236[4] 263[11])
    defparam i4703_2_lut_4_lut.init = 16'hffca;
    LUT4 state_current_4__bdd_4_lut_8599 (.A(state_current[4]), .B(state_current[2]), 
         .C(\state_current[1] ), .D(state_current[0]), .Z(n10952)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam state_current_4__bdd_4_lut_8599.init = 16'h0117;
    LUT4 i1_2_lut_rep_178_3_lut_4_lut (.A(state_current[13]), .B(state_current[11]), 
         .C(n11199), .D(state_current[10]), .Z(n11141)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_178_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_136 (.A(state_current[4]), .B(state_current[8]), .C(state_current[9]), 
         .D(state_current[7]), .Z(n47)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_136.init = 16'h0012;
    LUT4 i4613_2_lut_rep_181_3_lut_4_lut (.A(state_current[13]), .B(state_current[11]), 
         .C(n11188), .D(state_current[12]), .Z(n11144)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4613_2_lut_rep_181_3_lut_4_lut.init = 16'hfffe;
    LUT4 i7034_2_lut_3_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .C(cnt_reg_addr[2]), 
         .Z(n28[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam i7034_2_lut_3_lut.init = 16'h7878;
    LUT4 i4360_4_lut (.A(n9523), .B(n7007), .C(n10163), .D(n11126), 
         .Z(state_next_14__N_397[13])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(150[4] 171[11])
    defparam i4360_4_lut.init = 16'h1130;
    LUT4 i7041_3_lut_4_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .C(cnt_reg_addr[2]), 
         .D(cnt_reg_addr[3]), .Z(n28[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam i7041_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3_4_lut_adj_137 (.A(\state_next_14__N_363[9] ), .B(n11154), .C(state_current[0]), 
         .D(n11109), .Z(n9523)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_137.init = 16'hfffe;
    LUT4 i1_2_lut_adj_138 (.A(state_current[5]), .B(n2756[1]), .Z(n10163)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(150[4] 171[11])
    defparam i1_2_lut_adj_138.init = 16'h4444;
    LUT4 i4323_4_lut (.A(state_current[7]), .B(state_current[9]), .C(state_current[6]), 
         .D(state_current[8]), .Z(n6547)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i4323_4_lut.init = 16'hffec;
    LUT4 i37_4_lut_rep_222 (.A(\i2c_config[0] ), .B(\i2c_config[1] ), .C(\i2c_config[2] ), 
         .Z(n11185)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i37_4_lut_rep_222.init = 16'h8181;
    LUT4 i2004_3_lut_4_lut (.A(n11150), .B(n26_adj_673), .C(n4214), .D(n11135), 
         .Z(n4217)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i2004_3_lut_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_rep_223 (.A(state_current[9]), .B(state_current[10]), 
         .Z(n11186)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_223.init = 16'heeee;
    LUT4 i7128_3_lut_4_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[2]), .D(cnt_read_reg_data[3]), .Z(n30[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam i7128_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7121_2_lut_3_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[2]), .Z(n30[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam i7121_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_224 (.A(state_current[8]), .B(state_current[7]), .Z(n11187)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(503[5:21])
    defparam i1_2_lut_rep_224.init = 16'heeee;
    LUT4 i1_4_lut_adj_139 (.A(state_current[9]), .B(state_current[7]), .C(state_current[8]), 
         .D(state_current[6]), .Z(n10250)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_139.init = 16'hffec;
    LUT4 i1_2_lut_rep_198_3_lut_4_lut (.A(state_current[8]), .B(state_current[7]), 
         .C(state_current[10]), .D(state_current[9]), .Z(n11161)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(503[5:21])
    defparam i1_2_lut_rep_198_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2691_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(scl_N_583), 
         .C(n79), .D(n11775), .Z(n4932)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2691_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 i4185_2_lut_rep_225 (.A(state_current[6]), .B(state_current[5]), 
         .Z(n11188)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4185_2_lut_rep_225.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_4_lut_adj_140 (.A(clk_div_100k_enable_48), .B(n11775), 
         .C(n11177), .D(n11106), .Z(n6211)) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_140.init = 16'h88c0;
    LUT4 equal_1517_i19_2_lut_3_lut_4_lut (.A(state_current[6]), .B(state_current[5]), 
         .C(state_current[4]), .D(state_current[3]), .Z(n19)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam equal_1517_i19_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i8130_3_lut_rep_124_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n79), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_46)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8130_3_lut_rep_124_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i1_4_lut_adj_141 (.A(state_current[8]), .B(state_current[4]), .C(state_current[7]), 
         .D(state_current[9]), .Z(n4733)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_141.init = 16'h0012;
    LUT4 i2693_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11182), 
         .C(n11130), .D(n11775), .Z(n4934)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2693_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 i8151_3_lut_rep_125_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11130), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_47)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8151_3_lut_rep_125_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i4260_4_lut (.A(cnt_stop[1]), .B(state_current[13]), .C(cnt_stop[2]), 
         .D(cnt_stop[0]), .Z(n2756[1])) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(236[4] 263[11])
    defparam i4260_4_lut.init = 16'h8ccc;
    LUT4 i2717_2_lut_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11117), 
         .C(n11108), .D(state_current[0]), .Z(n4957)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i2717_2_lut_3_lut_4_lut_4_lut.init = 16'h8088;
    LUT4 equal_1512_i19_2_lut_rep_195_3_lut_4_lut (.A(state_current[6]), .B(state_current[5]), 
         .C(state_current[4]), .D(state_current[3]), .Z(n11158)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam equal_1512_i19_2_lut_rep_195_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4335_2_lut_rep_226 (.A(state_current[13]), .B(state_current[12]), 
         .Z(n11189)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4335_2_lut_rep_226.init = 16'heeee;
    LUT4 i8142_3_lut_rep_126_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11117), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_23)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8142_3_lut_rep_126_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i2704_2_lut_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n3211), 
         .C(n11108), .D(state_current[0]), .Z(n4916)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i2704_2_lut_3_lut_4_lut_4_lut.init = 16'h8088;
    LUT4 i1_2_lut_3_lut_4_lut_adj_142 (.A(state_current[10]), .B(state_current[11]), 
         .C(n6780), .D(state_current[12]), .Z(n10198)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(356[5:18])
    defparam i1_2_lut_3_lut_4_lut_adj_142.init = 16'hfffe;
    LUT4 i4_3_lut_4_lut (.A(state_current[3]), .B(\state_current[1] ), .C(n11213), 
         .D(n6393), .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8201_3_lut_rep_129_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n78), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_22)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8201_3_lut_rep_129_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i4293_2_lut_rep_230 (.A(state_current[9]), .B(state_current[7]), 
         .Z(n11193)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4293_2_lut_rep_230.init = 16'heeee;
    LUT4 i2_2_lut_rep_192_3_lut (.A(state_current[9]), .B(state_current[7]), 
         .C(state_current[8]), .Z(n11155)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_2_lut_rep_192_3_lut.init = 16'hefef;
    LUT4 i8208_2_lut_2_lut_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), 
         .B(n11106), .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_36)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8208_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i1_2_lut_3_lut_adj_143 (.A(cnt_s_nack[2]), .B(cnt_s_nack[0]), .C(sda_r), 
         .Z(n8_adj_693)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(542[17] 550[15])
    defparam i1_2_lut_3_lut_adj_143.init = 16'he0e0;
    LUT4 i4271_2_lut_rep_231 (.A(state_current[12]), .B(state_current[8]), 
         .Z(n11194)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4271_2_lut_rep_231.init = 16'h8888;
    LUT4 i2_3_lut_rep_139_4_lut (.A(n11141), .B(n10094), .C(n1299), .D(n11771), 
         .Z(n11102)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_3_lut_rep_139_4_lut.init = 16'hfbff;
    LUT4 i4379_2_lut_rep_227 (.A(state_current[3]), .B(\state_current[1] ), 
         .Z(n11190)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4379_2_lut_rep_227.init = 16'heeee;
    LUT4 i8140_3_lut_rep_128_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11111), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_24)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8140_3_lut_rep_128_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i1319_3_lut (.A(cnt_ack_addr[2]), .B(cnt_ack_addr[1]), .C(cnt_ack_addr[0]), 
         .Z(n1749[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(384[29:48])
    defparam i1319_3_lut.init = 16'h6a6a;
    LUT4 i1312_2_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[0]), .Z(n1749[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(384[29:48])
    defparam i1312_2_lut.init = 16'h6666;
    LUT4 i7114_2_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .Z(n30[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam i7114_2_lut.init = 16'h6666;
    LUT4 equal_1516_i17_2_lut (.A(state_current[3]), .B(state_current[4]), 
         .Z(n17_adj_680)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(392[5:20])
    defparam equal_1516_i17_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_132 (.A(\i2c_config[2] ), .B(n1032), .Z(n11095)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_132.init = 16'h8888;
    LUT4 i4253_2_lut_rep_232 (.A(state_current[5]), .B(state_current[4]), 
         .Z(n11195)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4253_2_lut_rep_232.init = 16'heeee;
    LUT4 i2_3_lut_rep_140_4_lut (.A(n11141), .B(n10094), .C(n1299), .D(n11771), 
         .Z(n11103)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_rep_140_4_lut.init = 16'h4000;
    LUT4 i8058_2_lut_3_lut_4_lut (.A(state_current[5]), .B(state_current[4]), 
         .C(\state_current[1] ), .D(state_current[3]), .Z(n10327)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8058_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_144 (.A(n11189), .B(state_current[11]), .C(n11188), 
         .D(n4_adj_701), .Z(n4846)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_4_lut_adj_144.init = 16'h0100;
    LUT4 i1_rep_47_3_lut_4_lut (.A(state_current[5]), .B(state_current[4]), 
         .C(state_current[2]), .D(state_current[3]), .Z(n10496)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_rep_47_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8159_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n27_adj_648), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_39)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8159_3_lut_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i1_4_lut_adj_145 (.A(n27), .B(n21), .C(n26_adj_702), .D(n22_adj_703), 
         .Z(n10110)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_145.init = 16'hfffd;
    LUT4 i8177_3_lut_rep_127_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n3211), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_33)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8177_3_lut_rep_127_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i4396_3_lut_4_lut (.A(state_current[5]), .B(state_current[4]), 
         .C(state_current[2]), .D(state_current[3]), .Z(n6620)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i4396_3_lut_4_lut.init = 16'hfeee;
    LUT4 i2719_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11214), 
         .C(n11111), .D(n11775), .Z(n4960)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2719_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 i6998_2_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), .Z(n3[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam i6998_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_146 (.A(state_current[13]), .B(state_current[12]), 
         .C(state_current[10]), .D(state_current[11]), .Z(n25_adj_704)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_146.init = 16'hfeff;
    LUT4 i7_4_lut_adj_147 (.A(scl_N_576), .B(scl_N_540), .C(n79), .D(n11110), 
         .Z(n21)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i7_4_lut_adj_147.init = 16'h0ace;
    LUT4 i12_4_lut (.A(n23_adj_705), .B(n9_adj_706), .C(n20_adj_707), 
         .D(n14), .Z(n26_adj_702)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i8157_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n27_adj_656), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_38)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8157_3_lut_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i1_4_lut_adj_148 (.A(n11161), .B(state_current[0]), .C(n9411), 
         .D(n11160), .Z(n4_adj_701)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_148.init = 16'h5054;
    LUT4 i8_4_lut_adj_149 (.A(cnt_dev_addr_r[0]), .B(n16_adj_708), .C(n11101), 
         .D(n11117), .Z(n22_adj_703)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i8_4_lut_adj_149.init = 16'hfcfe;
    LUT4 i7085_2_lut (.A(cnt_dev_addr_r[1]), .B(cnt_dev_addr_r[0]), .Z(n31[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(481[31:52])
    defparam i7085_2_lut.init = 16'h6666;
    LUT4 i32_2_lut_rep_233 (.A(\state_current[1] ), .B(state_current[2]), 
         .Z(n11196)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i32_2_lut_rep_233.init = 16'h6666;
    LUT4 i1_2_lut_rep_234 (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[1]), 
         .Z(n11197)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_234.init = 16'h8888;
    LUT4 i3_3_lut_rep_200_4_lut (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[1]), 
         .C(cnt_write_reg_data[3]), .D(cnt_write_reg_data[2]), .Z(n11163)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_rep_200_4_lut.init = 16'h8000;
    LUT4 i2695_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(cnt_start_r[2]), 
         .C(n27_adj_649), .D(n11775), .Z(n4936)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2695_3_lut_4_lut_4_lut.init = 16'hac00;
    PFUMX i8307 (.BLUT(n10737), .ALUT(n10736), .C0(\i2c_config[0] ), .Z(n10738));
    LUT4 i8155_3_lut_rep_133_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n27_adj_649), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_41)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8155_3_lut_rep_133_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i7112_1_lut (.A(cnt_read_reg_data[0]), .Z(n30[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(518[34:58])
    defparam i7112_1_lut.init = 16'h5555;
    LUT4 i2713_2_lut_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11116), 
         .C(n11108), .D(state_current[0]), .Z(n4953)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i2713_2_lut_3_lut_4_lut_4_lut.init = 16'h8088;
    LUT4 i7083_1_lut (.A(cnt_dev_addr_r[0]), .Z(n31[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(481[31:52])
    defparam i7083_1_lut.init = 16'h5555;
    LUT4 i1310_1_lut (.A(cnt_ack_addr[0]), .Z(n1749[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(384[29:48])
    defparam i1310_1_lut.init = 16'h5555;
    LUT4 i9_4_lut (.A(cnt_read_reg_data[0]), .B(n18_adj_709), .C(n10_adj_710), 
         .D(n78), .Z(n23_adj_705)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i9_4_lut.init = 16'hfcfe;
    LUT4 select_693_Select_0_i9_4_lut (.A(n1865[0]), .B(n27_adj_649), .C(scl_c), 
         .D(cnt_start_r[2]), .Z(n9_adj_706)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam select_693_Select_0_i9_4_lut.init = 16'h3022;
    LUT4 i6_4_lut_adj_150 (.A(cnt_dev_addr[0]), .B(scl_N_562), .C(n3211), 
         .D(n11130), .Z(n20_adj_707)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i6_4_lut_adj_150.init = 16'h0ace;
    LUT4 i3_4_lut_adj_151 (.A(state_current[4]), .B(n11178), .C(state_current[10]), 
         .D(n10195), .Z(n4840)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i3_4_lut_adj_151.init = 16'hfffe;
    LUT4 select_693_Select_0_i14_4_lut (.A(cnt_ack_addr[0]), .B(n11111), 
         .C(scl_c), .D(n11214), .Z(n14)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam select_693_Select_0_i14_4_lut.init = 16'h3022;
    LUT4 i7063_2_lut_3_lut (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[1]), 
         .C(cnt_write_reg_data[2]), .Z(n7[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i7063_2_lut_3_lut.init = 16'h7878;
    LUT4 i7070_3_lut_4_lut (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[1]), 
         .C(cnt_write_reg_data[2]), .D(cnt_write_reg_data[3]), .Z(n7[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i7070_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4_4_lut_adj_152 (.A(cnt_write_reg_data[0]), .B(scl_N_568), .C(n74), 
         .D(n27_adj_656), .Z(n18_adj_709)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i4_4_lut_adj_152.init = 16'h0ace;
    LUT4 select_693_Select_0_i10_4_lut (.A(cnt_ack_w_data[0]), .B(n11106), 
         .C(scl_c), .D(n11177), .Z(n10_adj_710)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam select_693_Select_0_i10_4_lut.init = 16'h3022;
    LUT4 i4548_2_lut_rep_236 (.A(state_current[12]), .B(state_current[8]), 
         .Z(n11199)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4548_2_lut_rep_236.init = 16'heeee;
    PFUMX i8671 (.BLUT(n2747[0]), .ALUT(n11643), .C0(\i2c_config[2] ), 
          .Z(n11644));
    LUT4 n10952_bdd_2_lut_3_lut (.A(state_current[12]), .B(state_current[8]), 
         .C(n10952), .Z(n10953)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n10952_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i8172_3_lut_rep_134_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n11116), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_32)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8172_3_lut_rep_134_4_lut_4_lut.init = 16'hb0bb;
    LUT4 i2_4_lut_adj_153 (.A(scl_N_584), .B(scl_N_526), .C(n27_adj_648), 
         .D(n11775), .Z(n16_adj_708)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(325[4] 585[11])
    defparam i2_4_lut_adj_153.init = 16'h0ace;
    LUT4 select_693_Select_0_i13_2_lut_rep_138_3_lut_4_lut (.A(n17_adj_680), 
         .B(n11132), .C(cnt_reg_addr[0]), .D(n11136), .Z(n11101)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(392[5:20])
    defparam select_693_Select_0_i13_2_lut_rep_138_3_lut_4_lut.init = 16'h0010;
    LUT4 i8034_2_lut_rep_203_3_lut (.A(state_current[12]), .B(state_current[8]), 
         .C(state_current[10]), .Z(n11166)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8034_2_lut_rep_203_3_lut.init = 16'hfefe;
    LUT4 i32_2_lut_rep_237 (.A(state_current[2]), .B(state_current[3]), 
         .Z(n11200)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i32_2_lut_rep_237.init = 16'h6666;
    LUT4 i8162_4_lut (.A(n11122), .B(n10393), .C(n6_c), .D(n11115), 
         .Z(n9682)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam i8162_4_lut.init = 16'h8ccc;
    LUT4 i1_2_lut_rep_201_3_lut (.A(state_current[2]), .B(state_current[3]), 
         .C(state_current[4]), .Z(n11164)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam i1_2_lut_rep_201_3_lut.init = 16'h0606;
    LUT4 i4234_2_lut_rep_238 (.A(state_current[11]), .B(state_current[9]), 
         .Z(n11201)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4234_2_lut_rep_238.init = 16'heeee;
    LUT4 i1638_4_lut (.A(cnt_stop[0]), .B(scl_c), .C(cnt_stop[1]), .D(cnt_stop[2]), 
         .Z(scl_N_584)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(568[17] 580[15])
    defparam i1638_4_lut.init = 16'hccca;
    LUT4 i4282_2_lut_rep_239 (.A(state_current[7]), .B(state_current[5]), 
         .Z(n11202)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4282_2_lut_rep_239.init = 16'heeee;
    LUT4 i4410_2_lut_rep_202_3_lut (.A(state_current[7]), .B(state_current[5]), 
         .C(state_current[0]), .Z(n11165)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4410_2_lut_rep_202_3_lut.init = 16'hfefe;
    LUT4 i3_2_lut_3_lut_4_lut (.A(state_current[7]), .B(state_current[5]), 
         .C(state_current[8]), .D(state_current[12]), .Z(n10_adj_678)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8040_2_lut_3_lut (.A(state_current[7]), .B(state_current[5]), 
         .C(state_current[13]), .Z(n10309)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8040_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2711_2_lut_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n74), 
         .C(n11108), .D(state_current[0]), .Z(n4949)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i2711_2_lut_3_lut_4_lut_4_lut.init = 16'h8088;
    LUT4 i1_2_lut_rep_240 (.A(cnt_s_nack[2]), .B(cnt_s_nack[1]), .Z(n11203)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(324[8] 586[6])
    defparam i1_2_lut_rep_240.init = 16'heeee;
    LUT4 i8149_3_lut_rep_135_4_lut_4_lut (.A(clk_div_100k_enable_48), .B(n74), 
         .C(n11108), .D(state_current[0]), .Z(clk_div_100k_enable_34)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam i8149_3_lut_rep_135_4_lut_4_lut.init = 16'hb0bb;
    LUT4 n6979_bdd_3_lut_8403_4_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[2]), 
         .C(cnt_s_ack[0]), .D(n10168), .Z(n10949)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam n6979_bdd_3_lut_8403_4_lut.init = 16'hef00;
    LUT4 equal_1515_i15_2_lut (.A(\state_current[1] ), .B(state_current[2]), 
         .Z(n15_adj_645)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(381[5:19])
    defparam equal_1515_i15_2_lut.init = 16'hbbbb;
    LUT4 i4330_3_lut_4_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[2]), .C(cnt_s_ack[0]), 
         .D(sda_ctl), .Z(sda_ctl_N_607)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i4330_3_lut_4_lut.init = 16'hff01;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[2]), .C(n10168), 
         .D(cnt_s_ack[0]), .Z(n10169)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_else_4_lut (.A(\i2c_config[0] ), .B(n6961), .C(n1592), 
         .Z(n11222)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(93[4:32])
    defparam i1_2_lut_else_4_lut.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_154 (.A(n10198), .B(n6446), .C(n11142), .D(n7007), 
         .Z(n10150)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1_2_lut_4_lut_adj_154.init = 16'h00fe;
    PFUMX i8300 (.BLUT(n10715), .ALUT(n10714), .C0(n973), .Z(n10716));
    LUT4 i8147_3_lut (.A(n10377), .B(n569), .C(n1592), .Z(n9665)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i8147_3_lut.init = 16'h2020;
    LUT4 i1511_1_lut_rep_242 (.A(cnt_s_nack[0]), .Z(n11205)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(546[14:15])
    defparam i1511_1_lut_rep_242.init = 16'h5555;
    LUT4 i3926_3_lut_4_lut_4_lut (.A(cnt_s_nack[0]), .B(n6746), .C(state_current[10]), 
         .D(n11203), .Z(n2811[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(546[14:15])
    defparam i3926_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 i2_3_lut_adj_155 (.A(state_current[3]), .B(state_current[5]), .C(state_current[12]), 
         .Z(n10195)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_155.init = 16'hfefe;
    LUT4 i1_3_lut_adj_156 (.A(n569), .B(n2827[1]), .C(n6744), .Z(n10116)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam i1_3_lut_adj_156.init = 16'h8080;
    LUT4 i1341_3_lut (.A(cnt_ack_r_addr[2]), .B(cnt_ack_r_addr[1]), .C(cnt_ack_r_addr[0]), 
         .Z(n1775[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(420[31:52])
    defparam i1341_3_lut.init = 16'h6a6a;
    LUT4 i1334_2_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[0]), .Z(n1775[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(420[31:52])
    defparam i1334_2_lut.init = 16'h6666;
    LUT4 i4531_2_lut_3_lut_4_lut_4_lut (.A(cnt_s_nack[0]), .B(state_current[10]), 
         .C(cnt_s_nack[1]), .D(cnt_s_nack[2]), .Z(n6756)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(546[14:15])
    defparam i4531_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i12_2_lut (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[0]), .Z(n1801[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(102[12:26])
    defparam i12_2_lut.init = 16'h6666;
    LUT4 equal_1514_i15_2_lut (.A(\state_current[1] ), .B(state_current[2]), 
         .Z(n15)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(356[5:18])
    defparam equal_1514_i15_2_lut.init = 16'hdddd;
    LUT4 i1288_1_lut_rep_243 (.A(cnt_start[0]), .Z(n11206)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(347[26:41])
    defparam i1288_1_lut_rep_243.init = 16'h5555;
    LUT4 i7025_1_lut (.A(cnt_reg_addr[0]), .Z(n28[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(395[29:48])
    defparam i7025_1_lut.init = 16'h5555;
    LUT4 i6996_1_lut (.A(cnt_dev_addr[0]), .Z(n3[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam i6996_1_lut.init = 16'h5555;
    LUT4 i1265_2_lut_rep_244 (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .Z(n11207)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(423[14:15])
    defparam i1265_2_lut_rep_244.init = 16'heeee;
    LUT4 i4204_3_lut_rep_205_4_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .C(cnt_ack_r_addr[0]), .D(\state_next_14__N_363[9] ), .Z(n11168)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(423[14:15])
    defparam i4204_3_lut_rep_205_4_lut.init = 16'hffef;
    LUT4 i1607_3_lut_4_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .C(scl_c), .D(cnt_ack_r_addr[0]), .Z(scl_N_540)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(423[14:15])
    defparam i1607_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_245 (.A(cnt_start_r[1]), .B(cnt_start_r[0]), .Z(n11208)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(106[12:23])
    defparam i1_2_lut_rep_245.init = 16'h8888;
    LUT4 i7054_1_lut (.A(cnt_write_reg_data[0]), .Z(n7[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(431[35:60])
    defparam i7054_1_lut.init = 16'h5555;
    LUT4 i8170_4_lut (.A(n10148), .B(state_current[6]), .C(n126), .D(n122), 
         .Z(write_done_N_631)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i8170_4_lut.init = 16'h0405;
    LUT4 mux_969_i2_3_lut (.A(n11152), .B(n11169), .C(state_current[8]), 
         .Z(n2827[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(266[4] 298[11])
    defparam mux_969_i2_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut_adj_157 (.A(n10097), .B(n10309), .C(n10127), .D(n6_adj_711), 
         .Z(n10148)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut_adj_157.init = 16'h2000;
    LUT4 i1_2_lut_rep_208_3_lut (.A(cnt_start_r[1]), .B(cnt_start_r[0]), 
         .C(cnt_start_r[2]), .Z(n11171)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(106[12:23])
    defparam i1_2_lut_rep_208_3_lut.init = 16'hf7f7;
    LUT4 i1618_4_lut_4_lut (.A(cnt_start_r[1]), .B(cnt_start_r[0]), .C(cnt_start_r[2]), 
         .D(sda_r), .Z(sda_r_N_619)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(106[12:23])
    defparam i1618_4_lut_4_lut.init = 16'hfd05;
    LUT4 i1_4_lut_adj_158 (.A(write_done), .B(n10255), .C(n11134), .D(n11133), 
         .Z(n126)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i1_4_lut_adj_158.init = 16'h5554;
    LUT4 i1466_2_lut (.A(cnt_stop[1]), .B(cnt_stop[0]), .Z(n1931[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(569[25:39])
    defparam i1466_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_159 (.A(n11165), .B(write_done), .C(n6_adj_700), 
         .D(n4857), .Z(n122)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i1_4_lut_adj_159.init = 16'h7333;
    LUT4 i3989_3_lut (.A(cnt_ack_w_data[2]), .B(cnt_ack_w_data[1]), .C(cnt_ack_w_data[0]), 
         .Z(n1801[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(102[12:26])
    defparam i3989_3_lut.init = 16'h6a6a;
    LUT4 i15_2_lut (.A(cnt_s_nack[0]), .B(cnt_s_nack[1]), .Z(n10088)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i4296_2_lut_rep_183_3_lut_4_lut (.A(cnt_start_r[1]), .B(cnt_start_r[0]), 
         .C(state_current[4]), .D(cnt_start_r[2]), .Z(n11146)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(106[12:23])
    defparam i4296_2_lut_rep_183_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut_adj_160 (.A(n4217), .B(state_current[0]), .C(state_current[6]), 
         .D(n11134), .Z(n10127)) /* synthesis lut_function=(!((B (C)+!B !((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_160.init = 16'h2a0a;
    LUT4 i4089_3_lut (.A(cnt_s_nack[2]), .B(cnt_s_nack[1]), .C(cnt_s_nack[0]), 
         .Z(n6315)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(105[12:22])
    defparam i4089_3_lut.init = 16'h6a6a;
    LUT4 i1473_3_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[0]), 
         .Z(n1931[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(569[25:39])
    defparam i1473_3_lut.init = 16'h6a6a;
    LUT4 i1_2_lut_rep_246 (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .Z(n11209)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_246.init = 16'h8888;
    LUT4 i1551_2_lut (.A(cnt_start_r[0]), .B(cnt_start_r[1]), .Z(n1865[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(469[13] 475[20])
    defparam i1551_2_lut.init = 16'h6666;
    LUT4 i3_3_lut_rep_206_4_lut (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[3]), .D(cnt_dev_addr_r[2]), .Z(n11169)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_rep_206_4_lut.init = 16'h8000;
    LUT4 i4387_4_lut (.A(n9462), .B(n10219), .C(n2926[2]), .D(n11113), 
         .Z(n3404[9])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i4387_4_lut.init = 16'h3022;
    LUT4 i5_3_lut_4_lut (.A(n11135), .B(n11150), .C(cnt_start_2__N_419), 
         .D(n10_adj_687), .Z(clk_div_100k_enable_12)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(503[5:21])
    defparam i5_3_lut_4_lut.init = 16'he000;
    LUT4 i7099_3_lut_4_lut (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[2]), .D(cnt_dev_addr_r[3]), .Z(n31[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i7099_3_lut_4_lut.init = 16'h7f80;
    PFUMX i8718 (.BLUT(n11772), .ALUT(n11773), .C0(sda_ctl), .Z(n11774));
    LUT4 i7092_2_lut_3_lut (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[2]), .Z(n31[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i7092_2_lut_3_lut.init = 16'h7878;
    LUT4 equal_1525_i27_2_lut_3_lut_4_lut (.A(state_current[12]), .B(n11162), 
         .C(n11135), .D(n11151), .Z(n79)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(553[5:18])
    defparam equal_1525_i27_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i2_3_lut_adj_161 (.A(n1299), .B(n11152), .C(state_current[9]), 
         .Z(n9462)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(174[4] 204[11])
    defparam i2_3_lut_adj_161.init = 16'h4040;
    LUT4 i1292_2_lut_rep_247 (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n11210)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(347[26:41])
    defparam i1292_2_lut_rep_247.init = 16'h8888;
    LUT4 i1297_2_lut_3_lut (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .Z(n1718[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(347[26:41])
    defparam i1297_2_lut_3_lut.init = 16'h7878;
    LUT4 i1400_2_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[0]), .Z(n1852[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(506[31:52])
    defparam i1400_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_259 (.A(n11136), .B(n11158), .C(state_current[0]), 
         .D(n11178), .Z(n11775)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_259.init = 16'hffef;
    LUT4 i2154_3_lut_4_lut (.A(state_current[12]), .B(n11162), .C(n25_adj_704), 
         .D(n11151), .Z(n4214)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(553[5:18])
    defparam i2154_3_lut_4_lut.init = 16'hffd0;
    LUT4 i2_3_lut_rep_248 (.A(cnt_start[1]), .B(cnt_start[2]), .C(cnt_start[0]), 
         .Z(n11211)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(351[14:15])
    defparam i2_3_lut_rep_248.init = 16'hfdfd;
    PFUMX i8305 (.BLUT(n10724), .ALUT(n10723), .C0(n11122), .Z(n10725));
    LUT4 i1407_3_lut (.A(cnt_ack_addr_r[2]), .B(cnt_ack_addr_r[1]), .C(cnt_ack_addr_r[0]), 
         .Z(n1852[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(506[31:52])
    defparam i1407_3_lut.init = 16'h6a6a;
    LUT4 i1_2_lut_rep_209_4_lut (.A(cnt_start[1]), .B(cnt_start[2]), .C(cnt_start[0]), 
         .D(state_current[0]), .Z(n11172)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(351[14:15])
    defparam i1_2_lut_rep_209_4_lut.init = 16'hfd00;
    LUT4 i4285_2_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[2]), .C(cnt_start[0]), 
         .D(state_current[0]), .Z(n2677[1])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(351[14:15])
    defparam i4285_2_lut_4_lut.init = 16'h0200;
    L6MUX21 i8075 (.D0(n10342), .D1(n10343), .SD(n11216), .Z(n10344));
    PFUMX i8073 (.BLUT(n3418[10]), .ALUT(n10166), .C0(\i2c_config[0] ), 
          .Z(n10342));
    PFUMX mux_1259_i10 (.BLUT(n10116), .ALUT(n3404[9]), .C0(\i2c_config[0] ), 
          .Z(n3439[9]));
    LUT4 i1_2_lut_rep_152_4_lut (.A(n11219), .B(n11144), .C(n11161), .D(n11164), 
         .Z(n11115)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_152_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_249 (.A(state_current[13]), .B(state_current[5]), 
         .Z(n11212)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_249.init = 16'heeee;
    PFUMX i78 (.BLUT(n9665), .ALUT(n10142), .C0(\i2c_config[1] ), .Z(n3418[5]));
    LUT4 i3934_3_lut (.A(cnt_s_ack[2]), .B(cnt_s_ack[1]), .C(cnt_s_ack[0]), 
         .Z(n1908[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(109[12:21])
    defparam i3934_3_lut.init = 16'h6a6a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.A(state_current[13]), .B(state_current[5]), 
         .C(state_current[10]), .D(state_current[9]), .Z(n6676)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_162.init = 16'hfffe;
    LUT4 i4232_2_lut_rep_250 (.A(state_current[2]), .B(state_current[0]), 
         .Z(n11213)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4232_2_lut_rep_250.init = 16'heeee;
    LUT4 i23_2_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[0]), .Z(n1908[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(109[12:21])
    defparam i23_2_lut.init = 16'h6666;
    PFUMX i2406 (.BLUT(n6872), .ALUT(n9520), .C0(state_current[11]), .Z(n6955));
    LUT4 i1268_2_lut_rep_251 (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), 
         .Z(n11214)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(386[14:15])
    defparam i1268_2_lut_rep_251.init = 16'heeee;
    LUT4 i1_4_lut_adj_163 (.A(n11135), .B(n11119), .C(n4210), .D(n4214), 
         .Z(n4857)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i1_4_lut_adj_163.init = 16'heaaa;
    LUT4 i3_4_lut_adj_164 (.A(n11179), .B(n4221), .C(n11153), .D(n11160), 
         .Z(n10097)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_164.init = 16'h0004;
    LUT4 i2_2_lut_3_lut_adj_165 (.A(\i2c_config[2] ), .B(n1032), .C(n973), 
         .Z(n6_adj_682)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut_adj_165.init = 16'h8080;
    LUT4 i2007_4_lut (.A(n11136), .B(n11128), .C(n4208), .D(n11120), 
         .Z(n4221)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i2007_4_lut.init = 16'heaaa;
    LUT4 i1554_2_lut_rep_186_3_lut_4_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), 
         .C(\state_next_14__N_363[9] ), .D(cnt_ack_addr[0]), .Z(n11149)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(386[14:15])
    defparam i1554_2_lut_rep_186_3_lut_4_lut.init = 16'h1e0f;
    LUT4 cnt_ack_addr_2__I_0_573_i5_2_lut_rep_210_3_lut (.A(cnt_ack_addr[1]), 
         .B(cnt_ack_addr[2]), .C(cnt_ack_addr[0]), .Z(n11173)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(386[14:15])
    defparam cnt_ack_addr_2__I_0_573_i5_2_lut_rep_210_3_lut.init = 16'hefef;
    LUT4 i7001_2_lut_rep_252 (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), 
         .Z(n11215)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam i7001_2_lut_rep_252.init = 16'h8888;
    LUT4 i3_3_lut_rep_211_4_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), 
         .C(cnt_dev_addr[3]), .D(cnt_dev_addr[2]), .Z(n11174)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam i3_3_lut_rep_211_4_lut.init = 16'h8000;
    LUT4 i7005_2_lut_3_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), .C(cnt_dev_addr[2]), 
         .Z(n3[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam i7005_2_lut_3_lut.init = 16'h7878;
    LUT4 i7012_3_lut_4_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), .C(cnt_dev_addr[2]), 
         .D(cnt_dev_addr[3]), .Z(n3[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(359[29:48])
    defparam i7012_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6_2_lut_rep_253 (.A(\i2c_config[1] ), .B(\i2c_config[2] ), .Z(n11216)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i6_2_lut_rep_253.init = 16'h2222;
    LUT4 i1512_1_lut (.A(cnt_s_ack[0]), .Z(n1_adj_671)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(559[14:15])
    defparam i1512_1_lut.init = 16'h5555;
    LUT4 i8219_2_lut_3_lut (.A(\i2c_config[1] ), .B(\i2c_config[2] ), .C(\i2c_config[0] ), 
         .Z(n10334)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;
    defparam i8219_2_lut_3_lut.init = 16'h2f2f;
    LUT4 equal_1516_i27_2_lut_rep_153_3_lut_4_lut (.A(n11188), .B(n11157), 
         .C(n11136), .D(n17_adj_680), .Z(n11116)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(392[5:20])
    defparam equal_1516_i27_2_lut_rep_153_3_lut_4_lut.init = 16'hfffe;
    LUT4 equal_1519_i18_2_lut (.A(state_current[5]), .B(state_current[6]), 
         .Z(n18_adj_696)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(453[5:18])
    defparam equal_1519_i18_2_lut.init = 16'hbbbb;
    LUT4 i4494_4_lut (.A(n11154), .B(n11102), .C(n11163), .D(state_current[5]), 
         .Z(n2747[6])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i4494_4_lut.init = 16'h3022;
    LUT4 i2_2_lut_4_lut_3_lut (.A(\i2c_config[1] ), .B(\i2c_config[2] ), 
         .C(\i2c_config[0] ), .Z(n4130)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;
    defparam i2_2_lut_4_lut_3_lut.init = 16'ha3a3;
    LUT4 i8161_3_lut_4_lut_3_lut (.A(\i2c_config[1] ), .B(\i2c_config[2] ), 
         .C(n10738), .Z(n10393)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i8161_3_lut_4_lut_3_lut.init = 16'hbfbf;
    PFUMX i2402 (.BLUT(n10186), .ALUT(n6907), .C0(state_current[10]), 
          .Z(n6953));
    LUT4 i1595_3_lut_3_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[2]), .C(sda_r), 
         .D(cnt_start[0]), .Z(sda_r_N_613)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(349[14:15])
    defparam i1595_3_lut_3_lut_4_lut.init = 16'he0f1;
    LUT4 select_601_Select_0_i16_4_lut_then_1_lut_4_lut (.A(n11136), .B(n11158), 
         .C(state_current[0]), .D(n11178), .Z(n11773)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam select_601_Select_0_i16_4_lut_then_1_lut_4_lut.init = 16'h0010;
    LUT4 i4367_4_lut (.A(n9649), .B(n7007), .C(n2939[2]), .D(n11126), 
         .Z(state_next_14__N_397[6])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(150[4] 171[11])
    defparam i4367_4_lut.init = 16'h2230;
    LUT4 i4315_3_lut_4_lut_3_lut (.A(state_current[11]), .B(state_current[10]), 
         .C(state_current[13]), .Z(n6539)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i4315_3_lut_4_lut_3_lut.init = 16'he8e8;
    LUT4 i4197_2_lut_rep_255 (.A(state_current[3]), .B(state_current[2]), 
         .Z(n11218)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4197_2_lut_rep_255.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_166 (.A(state_current[3]), .B(state_current[2]), 
         .C(state_current[9]), .D(state_current[11]), .Z(n5_adj_677)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_166.init = 16'hfffe;
    LUT4 i4251_2_lut_rep_256 (.A(\state_current[1] ), .B(state_current[0]), 
         .Z(n11219)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4251_2_lut_rep_256.init = 16'heeee;
    LUT4 i4677_3_lut_4_lut (.A(\state_current[1] ), .B(state_current[0]), 
         .C(n11220), .D(state_current[7]), .Z(n6907)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4677_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_170 (.A(state_current[0]), .B(n4840), .Z(n11133)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(150[4] 171[11])
    defparam i1_2_lut_rep_170.init = 16'heeee;
    LUT4 i2_3_lut_adj_167 (.A(n1032), .B(n2913[2]), .C(n973), .Z(n9442)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_167.init = 16'h8080;
    LUT4 i4288_2_lut_rep_257 (.A(state_current[4]), .B(state_current[2]), 
         .Z(n11220)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4288_2_lut_rep_257.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_168 (.A(state_current[0]), .B(n4840), .C(n6780), 
         .D(state_current[11]), .Z(n10254)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(150[4] 171[11])
    defparam i2_3_lut_4_lut_adj_168.init = 16'hfeff;
    LUT4 i4264_4_lut (.A(n6740), .B(n11771), .C(n6935), .D(n11122), 
         .Z(n2750)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(207[4] 233[11])
    defparam i4264_4_lut.init = 16'h0c44;
    LUT4 mux_956_i2_3_lut_rep_158_4_lut (.A(\state_next_14__N_363[9] ), .B(n11154), 
         .C(state_current[5]), .D(n11163), .Z(n11121)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_956_i2_3_lut_rep_158_4_lut.init = 16'hfe0e;
    LUT4 i2_3_lut_4_lut_adj_169 (.A(state_current[4]), .B(state_current[2]), 
         .C(state_current[0]), .D(state_current[8]), .Z(n9520)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_169.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(n11157), .B(n11158), .C(n22_adj_698), 
         .D(n11156), .Z(n27_adj_649)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'hfffe;
    LUT4 i1_4_lut_adj_171 (.A(n7007), .B(n11140), .C(n2), .D(n11126), 
         .Z(n33)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_171.init = 16'h5044;
    LUT4 i1290_2_lut (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n1718[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(347[26:41])
    defparam i1290_2_lut.init = 16'h6666;
    LUT4 n1503_bdd_2_lut_8411_3_lut_4_lut (.A(n11149), .B(state_current[2]), 
         .C(n11164), .D(n11124), .Z(n10724)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(118[4] 147[11])
    defparam n1503_bdd_2_lut_8411_3_lut_4_lut.init = 16'h0080;
    LUT4 i8204_4_lut (.A(n6746), .B(n1299), .C(n11152), .D(state_current[9]), 
         .Z(n6891)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i8204_4_lut.init = 16'h0311;
    LUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(n11157), .B(n11158), .C(n25_adj_704), 
         .D(n11151), .Z(n27_adj_656)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_173 (.A(n11157), .B(n11158), .C(n4210), .D(n3211), 
         .Z(n6_adj_711)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(566[5:9])
    defparam i1_3_lut_4_lut_adj_173.init = 16'hfe00;
    LUT4 i8175_4_lut (.A(state_current[13]), .B(read_done), .C(n10122), 
         .D(n10254), .Z(read_done_N_637)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+!(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(598[4] 684[11])
    defparam i8175_4_lut.init = 16'h4c5d;
    LUT4 i3_4_lut_adj_174 (.A(n11135), .B(n6_adj_713), .C(n6878), .D(n4210), 
         .Z(n10122)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_174.init = 16'h0c08;
    LUT4 i4171_4_lut (.A(n6756), .B(n11005), .C(n2756[1]), .D(n6878), 
         .Z(n3418[10])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C+(D))))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(149[8] 301[29])
    defparam i4171_4_lut.init = 16'h44c0;
    LUT4 i2_4_lut_adj_175 (.A(n11108), .B(n11136), .C(n4_adj_714), .D(n4235), 
         .Z(n6_adj_713)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_175.init = 16'ha080;
    LUT4 i1_4_lut_adj_176 (.A(n4238), .B(n11175), .C(n11107), .D(n18_adj_696), 
         .Z(n4_adj_714)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_176.init = 16'ha8a0;
    LUT4 i1_2_lut_rep_154_3_lut_4_lut (.A(n11157), .B(n11158), .C(n11155), 
         .D(n11156), .Z(n11117)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/i2c_master_sht20/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_rep_154_3_lut_4_lut.init = 16'hfffe;
    PFUMX i8465 (.BLUT(n11222), .ALUT(n11223), .C0(\i2c_config[1] ), .Z(n11224));
    
endmodule
