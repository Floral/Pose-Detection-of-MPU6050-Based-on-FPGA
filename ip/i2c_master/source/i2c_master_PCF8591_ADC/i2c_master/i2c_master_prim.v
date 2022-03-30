// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Dec 18 08:37:09 2017
//
// Verilog Description of module i2c_master
//

module i2c_master (sys_clk_12m, rst_n, scl, sda, i2c_ack) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(2[8:18])
    input sys_clk_12m;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(10[10:21])
    input rst_n;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(11[10:15])
    output scl;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(12[11:14])
    inout sda;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(13[10:13])
    output [7:0]i2c_ack;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(10[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(16[7:19])
    
    wire rst_n_c, scl_c, i2c_ack_c_4, i2c_ack_c_3, i2c_ack_c_1, i2c_ack_c_0, 
        VCC_net, GND_net, sda_r;
    wire [14:0]state_next_14__N_352;
    
    wire n3606, n8101;
    
    VHI i5 (.Z(VCC_net));
    OB i2c_ack_pad_4 (.I(i2c_ack_c_4), .O(i2c_ack[4]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(11[10:15])
    IB sys_clk_12m_pad (.I(sys_clk_12m), .O(sys_clk_12m_c));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(10[10:21])
    OB i2c_ack_pad_0 (.I(i2c_ack_c_0), .O(i2c_ack[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    OB i2c_ack_pad_1 (.I(i2c_ack_c_1), .O(i2c_ack[1]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    OB i2c_ack_pad_2 (.I(GND_net), .O(i2c_ack[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    OB i2c_ack_pad_3 (.I(i2c_ack_c_3), .O(i2c_ack[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    OB i2c_ack_pad_5 (.I(GND_net), .O(i2c_ack[5]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    OB i2c_ack_pad_6 (.I(GND_net), .O(i2c_ack[6]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    OB i2c_ack_pad_7 (.I(GND_net), .O(i2c_ack[7]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(14[15:22])
    OB scl_pad (.I(scl_c), .O(scl));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(12[11:14])
    BB sda_pad (.I(sda_r), .T(n3606), .B(sda), .O(state_next_14__N_352[9]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(49[10:13])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n8101)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    clk_div clk_div_inst (.sys_clk_12m_c(sys_clk_12m_c), .GND_net(GND_net), 
            .clk_div_100k(clk_div_100k)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(17[10] 21[4])
    GSR GSR_INST (.GSR(rst_n_c));
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    i2c_master_config i2c_master_config_inst (.sys_clk_12m_c(sys_clk_12m_c), 
            .n8101(n8101), .clk_div_100k(clk_div_100k), .\state_next_14__N_352[9] (state_next_14__N_352[9]), 
            .scl_c(scl_c), .sda_r(sda_r), .VCC_net(VCC_net), .i2c_ack_c_4(i2c_ack_c_4), 
            .i2c_ack_c_3(i2c_ack_c_3), .i2c_ack_c_1(i2c_ack_c_1), .n3606(n3606), 
            .i2c_ack_c_0(i2c_ack_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(33[20] 47[3])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clk_div
//

module clk_div (sys_clk_12m_c, GND_net, clk_div_100k) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_12m_c;
    input GND_net;
    output clk_div_100k;
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(10[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(16[7:19])
    wire [31:0]n200;
    
    wire n4591;
    wire [31:0]n101;
    
    wire n6944;
    wire [31:0]cnt_p;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(28[19:24])
    
    wire n6945, n6952, n6940, n6941, n6946, n6947, n6943, n6951, 
        clkout_N_68, n6950, n6949, n6948, n6942, n7092, n10, n45, 
        n50, n39, n40, n6967, n29, n48, n42, n30, n44, n34, 
        n6966, n6965, n6964, n6963, n6962, n6961, n6960, n6959, 
        n6939, n6938, n6958, n6957, n6956, n6955, n6954, n6953;
    
    FD1S3IX cnt_p_1103__i0 (.D(n101[0]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i0.GSR = "ENABLED";
    CCU2D add_4614_16 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6944), .COUT(n6945));
    defparam add_4614_16.INIT0 = 16'h5555;
    defparam add_4614_16.INIT1 = 16'h5555;
    defparam add_4614_16.INJECT1_0 = "NO";
    defparam add_4614_16.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n6952), .S1(n101[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_1103_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_1103_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_1.INJECT1_1 = "NO";
    CCU2D add_4614_8 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6940), .COUT(n6941));
    defparam add_4614_8.INIT0 = 16'h5555;
    defparam add_4614_8.INIT1 = 16'h5555;
    defparam add_4614_8.INJECT1_0 = "NO";
    defparam add_4614_8.INJECT1_1 = "NO";
    CCU2D add_4614_20 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6946), .COUT(n6947));
    defparam add_4614_20.INIT0 = 16'h5555;
    defparam add_4614_20.INIT1 = 16'h5555;
    defparam add_4614_20.INJECT1_0 = "NO";
    defparam add_4614_20.INJECT1_1 = "NO";
    CCU2D add_4614_14 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6943), .COUT(n6944));
    defparam add_4614_14.INIT0 = 16'h5555;
    defparam add_4614_14.INIT1 = 16'h5555;
    defparam add_4614_14.INJECT1_0 = "NO";
    defparam add_4614_14.INJECT1_1 = "NO";
    CCU2D add_4614_30 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6951), 
          .S1(clkout_N_68));
    defparam add_4614_30.INIT0 = 16'h5555;
    defparam add_4614_30.INIT1 = 16'h0000;
    defparam add_4614_30.INJECT1_0 = "NO";
    defparam add_4614_30.INJECT1_1 = "NO";
    CCU2D add_4614_28 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6950), .COUT(n6951));
    defparam add_4614_28.INIT0 = 16'h5555;
    defparam add_4614_28.INIT1 = 16'h5555;
    defparam add_4614_28.INJECT1_0 = "NO";
    defparam add_4614_28.INJECT1_1 = "NO";
    CCU2D add_4614_26 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6949), .COUT(n6950));
    defparam add_4614_26.INIT0 = 16'h5555;
    defparam add_4614_26.INIT1 = 16'h5555;
    defparam add_4614_26.INJECT1_0 = "NO";
    defparam add_4614_26.INJECT1_1 = "NO";
    CCU2D add_4614_24 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6948), .COUT(n6949));
    defparam add_4614_24.INIT0 = 16'h5555;
    defparam add_4614_24.INIT1 = 16'h5555;
    defparam add_4614_24.INJECT1_0 = "NO";
    defparam add_4614_24.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1103__i31 (.D(n101[31]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i31.GSR = "ENABLED";
    CCU2D add_4614_22 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6947), .COUT(n6948));
    defparam add_4614_22.INIT0 = 16'h5555;
    defparam add_4614_22.INIT1 = 16'h5555;
    defparam add_4614_22.INJECT1_0 = "NO";
    defparam add_4614_22.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1103__i30 (.D(n101[30]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i29 (.D(n101[29]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i28 (.D(n101[28]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i27 (.D(n101[27]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i26 (.D(n101[26]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i25 (.D(n101[25]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i24 (.D(n101[24]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i23 (.D(n101[23]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i22 (.D(n101[22]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i21 (.D(n101[21]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i20 (.D(n101[20]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i19 (.D(n101[19]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i18 (.D(n101[18]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i17 (.D(n101[17]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i16 (.D(n101[16]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i15 (.D(n101[15]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i14 (.D(n101[14]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i13 (.D(n101[13]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i12 (.D(n101[12]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i11 (.D(n101[11]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i10 (.D(n101[10]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i9 (.D(n101[9]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i8 (.D(n101[8]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i7 (.D(n101[7]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i6 (.D(n101[6]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i5 (.D(n101[5]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i4 (.D(n101[4]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i3 (.D(n101[3]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_1103__i2 (.D(n101[2]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(cnt_p[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i2.GSR = "ENABLED";
    CCU2D add_4614_10 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6941), .COUT(n6942));
    defparam add_4614_10.INIT0 = 16'h5555;
    defparam add_4614_10.INIT1 = 16'h5555;
    defparam add_4614_10.INJECT1_0 = "NO";
    defparam add_4614_10.INJECT1_1 = "NO";
    CCU2D add_4614_18 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6945), .COUT(n6946));
    defparam add_4614_18.INIT0 = 16'h5555;
    defparam add_4614_18.INIT1 = 16'h5555;
    defparam add_4614_18.INJECT1_0 = "NO";
    defparam add_4614_18.INJECT1_1 = "NO";
    CCU2D add_4614_12 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6942), .COUT(n6943));
    defparam add_4614_12.INIT0 = 16'h5555;
    defparam add_4614_12.INIT1 = 16'h5555;
    defparam add_4614_12.INJECT1_0 = "NO";
    defparam add_4614_12.INJECT1_1 = "NO";
    LUT4 i5279_4_lut (.A(n7092), .B(cnt_p[4]), .C(n10), .D(n200[1]), 
         .Z(n4591)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i5279_4_lut.init = 16'h4000;
    LUT4 i25_4_lut (.A(n45), .B(n50), .C(n39), .D(n40), .Z(n7092)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(cnt_p[6]), .B(cnt_p[5]), .C(n200[0]), .D(cnt_p[2]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    CCU2D cnt_p_1103_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6967), .S0(n101[31]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_1103_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_33.INJECT1_1 = "NO";
    LUT4 i19_4_lut (.A(cnt_p[30]), .B(cnt_p[13]), .C(cnt_p[7]), .D(cnt_p[22]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i24_4_lut (.A(n29), .B(n48), .C(n42), .D(n30), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut (.A(cnt_p[17]), .B(cnt_p[29]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i13_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(cnt_p[27]), .B(cnt_p[15]), .C(cnt_p[12]), .D(cnt_p[23]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(cnt_p[21]), .B(cnt_p[28]), .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i22_4_lut (.A(cnt_p[14]), .B(n44), .C(n34), .D(cnt_p[19]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(cnt_p[24]), .B(cnt_p[31]), .C(cnt_p[16]), .D(cnt_p[11]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(cnt_p[9]), .B(cnt_p[10]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(cnt_p[3]), .B(cnt_p[20]), .C(cnt_p[18]), .D(cnt_p[8]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(cnt_p[25]), .B(cnt_p[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam i8_2_lut.init = 16'heeee;
    CCU2D cnt_p_1103_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6966), .COUT(n6967), .S0(n101[29]), .S1(n101[30]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6965), .COUT(n6966), .S0(n101[27]), .S1(n101[28]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6964), .COUT(n6965), .S0(n101[25]), .S1(n101[26]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6963), .COUT(n6964), .S0(n101[23]), .S1(n101[24]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6962), .COUT(n6963), .S0(n101[21]), .S1(n101[22]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6961), .COUT(n6962), .S0(n101[19]), .S1(n101[20]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6960), .COUT(n6961), .S0(n101[17]), .S1(n101[18]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6959), .COUT(n6960), .S0(n101[15]), .S1(n101[16]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_17.INJECT1_1 = "NO";
    CCU2D add_4614_6 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6939), 
          .COUT(n6940));
    defparam add_4614_6.INIT0 = 16'h5555;
    defparam add_4614_6.INIT1 = 16'h5555;
    defparam add_4614_6.INJECT1_0 = "NO";
    defparam add_4614_6.INJECT1_1 = "NO";
    CCU2D add_4614_4 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6938), 
          .COUT(n6939));
    defparam add_4614_4.INIT0 = 16'h5aaa;
    defparam add_4614_4.INIT1 = 16'h5555;
    defparam add_4614_4.INJECT1_0 = "NO";
    defparam add_4614_4.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6958), .COUT(n6959), .S0(n101[13]), .S1(n101[14]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_15.INJECT1_1 = "NO";
    CCU2D add_4614_2 (.A0(cnt_p[3]), .B0(cnt_p[2]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n6938));
    defparam add_4614_2.INIT0 = 16'h7000;
    defparam add_4614_2.INIT1 = 16'h5aaa;
    defparam add_4614_2.INJECT1_0 = "NO";
    defparam add_4614_2.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6957), .COUT(n6958), .S0(n101[11]), .S1(n101[12]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6956), .COUT(n6957), .S0(n101[9]), .S1(n101[10]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6955), .COUT(n6956), .S0(n101[7]), .S1(n101[8]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_9.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1103__i1 (.D(n101[1]), .CK(sys_clk_12m_c), .CD(n4591), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103__i1.GSR = "ENABLED";
    CCU2D cnt_p_1103_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6954), .COUT(n6955), .S0(n101[5]), .S1(n101[6]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_1103_add_4_5 (.A0(cnt_p[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6953), .COUT(n6954), .S0(n101[3]), .S1(n101[4]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_5.INJECT1_1 = "NO";
    FD1S3AX clk_p_29 (.D(clkout_N_68), .CK(sys_clk_12m_c), .Q(clk_div_100k)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=4, LSE_LLINE=17, LSE_RLINE=21 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(47[9] 50[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_1103_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6952), .COUT(n6953), .S0(n101[1]), .S1(n101[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/clk_div.v(39[16:23])
    defparam cnt_p_1103_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_1103_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_1103_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_1103_add_4_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module i2c_master_config
//

module i2c_master_config (sys_clk_12m_c, n8101, clk_div_100k, \state_next_14__N_352[9] , 
            scl_c, sda_r, VCC_net, i2c_ack_c_4, i2c_ack_c_3, i2c_ack_c_1, 
            n3606, i2c_ack_c_0) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_12m_c;
    input n8101;
    input clk_div_100k;
    input \state_next_14__N_352[9] ;
    output scl_c;
    output sda_r;
    input VCC_net;
    output i2c_ack_c_4;
    output i2c_ack_c_3;
    output i2c_ack_c_1;
    output n3606;
    output i2c_ack_c_0;
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(10[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(16[7:19])
    wire [3:0]cnt_dev_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(97[12:24])
    wire [7:0]i2c_config;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_config.v(23[15:25])
    
    wire n71;
    
    LUT4 i1_4_lut (.A(cnt_dev_addr[3]), .B(i2c_config[2]), .C(cnt_dev_addr[2]), 
         .D(cnt_dev_addr[1]), .Z(n71)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_config.v(83[8] 90[6])
    defparam i1_4_lut.init = 16'h4004;
    FD1S3AX i2c_config_i1 (.D(n8101), .CK(sys_clk_12m_c), .Q(i2c_config[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_config.v(83[8] 90[6])
    defparam i2c_config_i1.GSR = "ENABLED";
    i2c_master_logic i2c_master_logic_inst (.clk_div_100k(clk_div_100k), .cnt_dev_addr({cnt_dev_addr[3], 
            Open_0, Open_1, Open_2}), .\state_next_14__N_352[9] (\state_next_14__N_352[9] ), 
            .scl_c(scl_c), .sda_r(sda_r), .\cnt_dev_addr[2] (cnt_dev_addr[2]), 
            .\cnt_dev_addr[1] (cnt_dev_addr[1]), .\i2c_config[2] (i2c_config[2]), 
            .VCC_net(VCC_net), .n71(n71), .i2c_ack_c_4(i2c_ack_c_4), .i2c_ack_c_3(i2c_ack_c_3), 
            .i2c_ack_c_1(i2c_ack_c_1), .n3606(n3606), .i2c_ack_c_0(i2c_ack_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_config.v(33[19] 47[4])
    
endmodule
//
// Verilog Description of module i2c_master_logic
//

module i2c_master_logic (clk_div_100k, cnt_dev_addr, \state_next_14__N_352[9] , 
            scl_c, sda_r, \cnt_dev_addr[2] , \cnt_dev_addr[1] , \i2c_config[2] , 
            VCC_net, n71, i2c_ack_c_4, i2c_ack_c_3, i2c_ack_c_1, n3606, 
            i2c_ack_c_0) /* synthesis syn_module_defined=1 */ ;
    input clk_div_100k;
    output [3:0]cnt_dev_addr;
    input \state_next_14__N_352[9] ;
    output scl_c;
    output sda_r;
    output \cnt_dev_addr[2] ;
    output \cnt_dev_addr[1] ;
    input \i2c_config[2] ;
    input VCC_net;
    input n71;
    output i2c_ack_c_4;
    output i2c_ack_c_3;
    output i2c_ack_c_1;
    output n3606;
    output i2c_ack_c_0;
    
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(16[7:19])
    wire [14:0]state_current;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(86[14:27])
    
    wire n7841, n7838, n7827;
    wire [2:0]cnt_start_r;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(106[12:23])
    
    wire clk_div_100k_enable_18, n6556, n1;
    wire [3:0]cnt_read_reg_data;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(103[12:29])
    
    wire clk_div_100k_enable_25, n4618;
    wire [3:0]n21;
    
    wire clk_div_100k_enable_35, n6171;
    wire [3:0]n21_adj_654;
    
    wire n7339;
    wire [6:0]n2818;
    
    wire n6981;
    wire [2:0]n2508;
    wire [2:0]cnt_ack_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(98[12:24])
    
    wire clk_div_100k_enable_29, n4632;
    wire [2:0]n1749;
    wire [2:0]cnt_ack_addr_r;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(108[12:26])
    wire [14:0]state_next_14__N_288;
    
    wire n7340;
    wire [2:0]n2621;
    
    wire scl_N_551, clk_div_100k_enable_7, n7028;
    wire [2:0]cnt_stop;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(104[12:20])
    
    wire clk_div_100k_enable_34, n6553;
    wire [2:0]n1931;
    
    wire sda_ctl, n97, n7823, n6994;
    wire [2:0]cnt_start;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(96[12:21])
    
    wire clk_div_100k_enable_36, n4612;
    wire [2:0]n1718;
    
    wire n7816, n7682, n7863;
    wire [14:0]state_next_14__N_273;
    wire [4:0]n2784;
    
    wire n7859, n7805, n7752, n7836;
    wire [2:0]cnt_ack_r_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(100[12:26])
    
    wire n7840;
    wire [2:0]n1775;
    
    wire n7347, n5523, n7811;
    wire [4:0]n2771;
    
    wire n7;
    wire [9:0]n2847;
    wire [2:0]cnt_s_ack;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(109[12:21])
    
    wire clk_div_100k_enable_22, n4611, n7861, n52, n86, n5361, 
        n7819, n4, n7829, n7873, n7872, n7826, n8099, n7875, 
        n7815, n6, n894, n7822, n7844, n7832, n7835, clk_div_100k_enable_37, 
        clk_div_100k_enable_14, n7349, clk_div_100k_enable_24, n4616, 
        n1_adj_629, n7821, n7681, n7679, n7834, n7833, n31, clk_div_100k_enable_20, 
        n4610, n7857, n4625;
    wire [3:0]cnt_dev_addr_c;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(97[12:24])
    
    wire n7748, n9, n7813, n7848, n7847, n27, n45, n7354, n7570, 
        n7432, n8, n120, n7820, n7812, n2, n7846, n27_adj_630, 
        n6983, n7024, n9_adj_631, n7005, n7029, n7424, n111, n122, 
        n131, n7376, n7462;
    wire [2:0]n1818;
    
    wire n3742;
    wire [3:0]cnt_reg_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(99[12:24])
    
    wire n7817, n7818, n58;
    wire [3:0]cnt_dev_addr_r;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(107[12:26])
    
    wire n7837, n114, n7865, n27_adj_632, n7858, n4621, clk_div_100k_enable_40, 
        n27_adj_633, n7831, n7866, n7867, n7842, n7860, n7849, 
        n7864, n7830, n7850;
    wire [14:0]state_next_14__N_333;
    wire [2:0]n1852;
    
    wire n44, n7855, n7839, n7845;
    wire [7:0]i2c_ack_7__N_465;
    wire [2:0]n1908;
    
    wire n7482, n10, n7851, n7502, n7491, n7680, n328, n362, 
        n316, n7411, n7410, n16, n7874, n10_adj_634, n8_adj_635, 
        scl_N_565, n8_adj_636, n4_adj_637, n10_adj_638, scl_N_572, 
        sda_r_N_608, sda_r_N_612, n7862, n5411, n7824;
    wire [14:0]state_next_14__N_228;
    
    wire n7466;
    wire [7:0]i2c_ack_7__N_497;
    
    wire n7856, n7344, n5413, n77, n7450, n7464, n7870, n5348, 
        n7686, n7506;
    wire [14:0]state_next_14__N_303;
    
    wire n5589, n7368, n7369, n6998, n7852, n7402, n5545, n7555;
    wire [3:0]n21_adj_655;
    
    wire n3910, n3, n7869;
    wire [3:0]n21_adj_656;
    
    wire n7033, n1_adj_641, n7871, n7370, n7868, n7416, n7480, 
        n5519, n53, n17, n22_adj_651, n14, n9_adj_652, n20, n14_adj_653, 
        n7843;
    
    LUT4 equal_1405_i27_2_lut_rep_64_4_lut (.A(state_current[4]), .B(state_current[3]), 
         .C(n7841), .D(n7838), .Z(n7827)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(417[5:19])
    defparam equal_1405_i27_2_lut_rep_64_4_lut.init = 16'hfffd;
    FD1P3IX cnt_start_r_i0_i0 (.D(n1), .SP(clk_div_100k_enable_18), .CD(n6556), 
            .CK(clk_div_100k), .Q(cnt_start_r[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_r_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_read_reg_data_1108__i1 (.D(n21[1]), .SP(clk_div_100k_enable_25), 
            .CD(n4618), .CK(clk_div_100k), .Q(cnt_read_reg_data[1]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1108__i1.GSR = "ENABLED";
    FD1P3IX cnt_dev_addr_1104__i3 (.D(n21_adj_654[3]), .SP(clk_div_100k_enable_35), 
            .CD(n6171), .CK(clk_div_100k), .Q(cnt_dev_addr[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1104__i3.GSR = "ENABLED";
    FD1S3IX state_current__i13 (.D(n2818[6]), .CK(clk_div_100k), .CD(n7339), 
            .Q(state_current[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i13.GSR = "ENABLED";
    FD1S3IX state_current__i11 (.D(n2818[5]), .CK(clk_div_100k), .CD(n7339), 
            .Q(state_current[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i11.GSR = "ENABLED";
    FD1S3IX state_current__i10 (.D(n2818[4]), .CK(clk_div_100k), .CD(n7339), 
            .Q(state_current[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i10.GSR = "ENABLED";
    FD1S3IX state_current__i8 (.D(n2508[1]), .CK(clk_div_100k), .CD(n6981), 
            .Q(state_current[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i8.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i1 (.D(n1749[1]), .SP(clk_div_100k_enable_29), 
            .CD(n4632), .CK(clk_div_100k), .Q(cnt_ack_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i1.GSR = "ENABLED";
    LUT4 i5321_3_lut_3_lut_4_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .C(\state_next_14__N_352[9] ), .D(cnt_ack_addr_r[0]), .Z(state_next_14__N_288[9])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(508[14:15])
    defparam i5321_3_lut_3_lut_4_lut.init = 16'h0100;
    FD1S3IX state_current__i2 (.D(n2621[1]), .CK(clk_div_100k), .CD(n7340), 
            .Q(state_current[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i2.GSR = "ENABLED";
    LUT4 i1493_3_lut_4_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .C(scl_c), .D(cnt_ack_addr_r[0]), .Z(scl_N_551)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(508[14:15])
    defparam i1493_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AY scl_r_513 (.D(n7028), .SP(clk_div_100k_enable_7), .CK(clk_div_100k), 
            .Q(scl_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam scl_r_513.GSR = "ENABLED";
    FD1S3IX state_current__i1 (.D(n2818[0]), .CK(clk_div_100k), .CD(n7339), 
            .Q(state_current[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i1.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i2 (.D(n1931[2]), .SP(clk_div_100k_enable_34), .CD(n6553), 
            .CK(clk_div_100k), .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i2.GSR = "ENABLED";
    FD1P3AY sda_ctl_511 (.D(n97), .SP(clk_div_100k_enable_7), .CK(clk_div_100k), 
            .Q(sda_ctl)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam sda_ctl_511.GSR = "ENABLED";
    FD1P3IX cnt_read_reg_data_1108__i2 (.D(n21[2]), .SP(clk_div_100k_enable_25), 
            .CD(n4618), .CK(clk_div_100k), .Q(cnt_read_reg_data[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1108__i2.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(n7823), .B(state_next_14__N_288[9]), .C(state_current[9]), 
         .Z(n6994)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(174[4] 204[11])
    defparam i2_3_lut.init = 16'h1010;
    FD1P3IX cnt_start_i0_i2 (.D(n1718[2]), .SP(clk_div_100k_enable_36), 
            .CD(n4612), .CK(clk_div_100k), .Q(cnt_start[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i2.GSR = "ENABLED";
    FD1S3IX state_current__i3 (.D(n7682), .CK(clk_div_100k), .CD(n7816), 
            .Q(state_current[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i3.GSR = "ENABLED";
    FD1P3IX cnt_start_i0_i0 (.D(n7863), .SP(clk_div_100k_enable_36), .CD(n4612), 
            .CK(clk_div_100k), .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i0.GSR = "ENABLED";
    LUT4 i3146_2_lut (.A(state_next_14__N_273[9]), .B(state_current[8]), 
         .Z(n2784[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(174[4] 204[11])
    defparam i3146_2_lut.init = 16'h8888;
    LUT4 n7751_bdd_2_lut_3_lut_4_lut (.A(n7841), .B(n7859), .C(n7838), 
         .D(n7805), .Z(n7752)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam n7751_bdd_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(state_current[2]), .B(state_current[1]), 
         .C(state_current[0]), .D(n7859), .Z(n7836)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hffef;
    FD1P3IX cnt_stop_i0_i0 (.D(n1931[0]), .SP(clk_div_100k_enable_34), .CD(n6553), 
            .CK(clk_div_100k), .Q(cnt_stop[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i0.GSR = "ENABLED";
    LUT4 i5316_3_lut_rep_77_4_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .C(cnt_ack_r_addr[0]), .D(\state_next_14__N_352[9] ), .Z(n7840)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(422[14:15])
    defparam i5316_3_lut_rep_77_4_lut.init = 16'h0010;
    LUT4 i1221_2_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[0]), .Z(n1775[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(420[31:52])
    defparam i1221_2_lut.init = 16'h6666;
    FD1S3IX state_current__i4 (.D(n5523), .CK(clk_div_100k), .CD(n7347), 
            .Q(state_current[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i4.GSR = "ENABLED";
    FD1S3IX state_current__i5 (.D(n2771[2]), .CK(clk_div_100k), .CD(n7811), 
            .Q(state_current[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i5.GSR = "ENABLED";
    LUT4 i18_3_lut_4_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .C(scl_c), .D(cnt_ack_r_addr[0]), .Z(n7)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(422[14:15])
    defparam i18_3_lut_4_lut.init = 16'hf1e0;
    FD1S3IX state_current__i9 (.D(n2847[6]), .CK(clk_div_100k), .CD(n7816), 
            .Q(state_current[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i9.GSR = "ENABLED";
    FD1P3IX cnt_s_ack_i0_i0 (.D(n7861), .SP(clk_div_100k_enable_22), .CD(n4611), 
            .CK(clk_div_100k), .Q(cnt_s_ack[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_ack_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(state_current[2]), .B(state_current[3]), .C(state_current[4]), 
         .D(state_current[7]), .Z(n52)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_4_lut_adj_47 (.A(state_current[2]), .B(state_current[4]), 
         .C(state_current[9]), .D(state_current[12]), .Z(n86)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_47.init = 16'h0116;
    LUT4 mux_869_i1_4_lut (.A(n7823), .B(n5361), .C(n7819), .D(n4), 
         .Z(n2818[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(174[4] 204[11])
    defparam mux_869_i1_4_lut.init = 16'h3a30;
    LUT4 i1_4_lut_then_2_lut (.A(n7829), .B(sda_r), .Z(n7873)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_4_lut_then_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_else_2_lut (.A(n7829), .B(cnt_start[2]), .C(cnt_start[0]), 
         .D(sda_r), .Z(n7872)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_4_lut_else_2_lut.init = 16'h4501;
    LUT4 i1_2_lut_rep_63_4_lut (.A(state_current[3]), .B(n7841), .C(state_current[4]), 
         .D(n7838), .Z(n7826)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(392[5:20])
    defparam i1_2_lut_rep_63_4_lut.init = 16'hfffd;
    LUT4 i3177_2_lut (.A(state_current[12]), .B(state_current[8]), .Z(n5361)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3177_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_else_1_lut (.A(n8099), .B(cnt_s_ack[0]), .C(cnt_s_ack[2]), 
         .D(cnt_s_ack[1]), .Z(n7875)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_else_1_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n7815), .B(state_current[9]), .C(state_current[8]), 
         .D(n7827), .Z(n6)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(503[5:21])
    defparam i1_2_lut_4_lut.init = 16'hfb00;
    LUT4 i5336_3_lut_3_lut (.A(n7816), .B(n894), .C(n7822), .Z(n6981)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam i5336_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i5327_3_lut_3_lut_4_lut_4_lut (.A(state_current[0]), .B(n7844), 
         .C(n7832), .D(n7838), .Z(clk_div_100k_enable_29)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i5327_3_lut_3_lut_4_lut_4_lut.init = 16'h001d;
    LUT4 i5346_3_lut_rep_47_3_lut_4_lut_4_lut (.A(state_current[0]), .B(n7844), 
         .C(n7835), .D(n7838), .Z(clk_div_100k_enable_37)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i5346_3_lut_rep_47_3_lut_4_lut_4_lut.init = 16'h001d;
    FD1P3IX cnt_read_reg_data_1108__i3 (.D(n21[3]), .SP(clk_div_100k_enable_25), 
            .CD(n4618), .CK(clk_div_100k), .Q(cnt_read_reg_data[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1108__i3.GSR = "ENABLED";
    FD1P3AY sda_r_512 (.D(n7349), .SP(clk_div_100k_enable_14), .CK(clk_div_100k), 
            .Q(sda_r)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam sda_r_512.GSR = "ENABLED";
    FD1P3IX cnt_ack_r_addr_i0_i0 (.D(n1_adj_629), .SP(clk_div_100k_enable_24), 
            .CD(n4616), .CK(clk_div_100k), .Q(cnt_ack_r_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_then_1_lut_4_lut (.A(state_current[10]), .B(n7821), .C(state_current[12]), 
         .D(state_current[13]), .Z(n8099)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(236[4] 263[11])
    defparam i1_4_lut_then_1_lut_4_lut.init = 16'hffef;
    PFUMX i5369 (.BLUT(n7681), .ALUT(n7679), .C0(n7822), .Z(n7682));
    LUT4 i5297_3_lut_3_lut_4_lut_4_lut (.A(state_current[0]), .B(n7844), 
         .C(n7834), .D(n7838), .Z(clk_div_100k_enable_24)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i5297_3_lut_3_lut_4_lut_4_lut.init = 16'h001d;
    LUT4 i1_3_lut_4_lut_4_lut (.A(state_current[0]), .B(n7844), .C(n7833), 
         .D(n7838), .Z(clk_div_100k_enable_35)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h001d;
    LUT4 i1_2_lut (.A(cnt_stop[1]), .B(cnt_stop[2]), .Z(n31)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(104[12:20])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1360_3_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[0]), 
         .Z(n1931[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(569[25:39])
    defparam i1360_3_lut.init = 16'h6a6a;
    FD1P3IX cnt_ack_addr_r_i0_i0 (.D(n7857), .SP(clk_div_100k_enable_20), 
            .CD(n4610), .CK(clk_div_100k), .Q(cnt_ack_addr_r[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_r_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_4_lut (.A(state_current[0]), .B(n7844), .C(n7833), 
         .D(n7838), .Z(n6171)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i2441_2_lut_4_lut_4_lut_4_lut_4_lut (.A(state_current[0]), .B(n7844), 
         .C(n7838), .D(n7835), .Z(n4625)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2441_2_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 cnt_dev_addr_0__bdd_4_lut_5419 (.A(cnt_dev_addr_c[0]), .B(cnt_dev_addr[3]), 
         .C(\cnt_dev_addr[2] ), .D(\cnt_dev_addr[1] ), .Z(n7748)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam cnt_dev_addr_0__bdd_4_lut_5419.init = 16'hfffe;
    FD1P3IX cnt_start_r_i0_i1 (.D(n9), .SP(clk_div_100k_enable_18), .CD(n6556), 
            .CK(clk_div_100k), .Q(cnt_start_r[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_r_i0_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_50_4_lut (.A(state_current[10]), .B(n7821), .C(state_current[13]), 
         .D(state_current[12]), .Z(n7813)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(236[4] 263[11])
    defparam i2_3_lut_rep_50_4_lut.init = 16'hffef;
    LUT4 equal_1400_i27_2_lut_3_lut_4_lut (.A(n7848), .B(n7847), .C(n7859), 
         .D(n7841), .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam equal_1400_i27_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n7848), .B(n7847), .C(cnt_dev_addr_c[0]), 
         .D(n7833), .Z(n45)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_rep_60_4_lut (.A(n7848), .B(n7847), .C(n7859), .D(n7354), 
         .Z(n7823)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i2_3_lut_rep_60_4_lut.init = 16'h0100;
    LUT4 i5340_4_lut (.A(n7570), .B(n7432), .C(n8), .D(n120), .Z(n97)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i5340_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_rep_49_4_lut (.A(state_current[7]), .B(n7820), .C(state_current[8]), 
         .D(state_current[9]), .Z(n7812)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(503[5:21])
    defparam i2_3_lut_rep_49_4_lut.init = 16'hfeff;
    LUT4 i5338_4_lut (.A(n7752), .B(n2), .C(n7829), .D(n7846), .Z(n7570)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i5338_4_lut.init = 16'hdddf;
    LUT4 i2_3_lut_4_lut (.A(state_current[7]), .B(n7820), .C(state_current[8]), 
         .D(state_current[9]), .Z(n27_adj_630)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(503[5:21])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    PFUMX mux_873_i7 (.BLUT(n6983), .ALUT(n7024), .C0(n7822), .Z(n2847[6]));
    LUT4 i5196_4_lut (.A(sda_ctl), .B(n9_adj_631), .C(n7826), .D(n7005), 
         .Z(n7432)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;
    defparam i5196_4_lut.init = 16'hcecf;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(n7848), .B(n7847), .C(n7844), 
         .D(state_current[0]), .Z(n7829)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'hfeff;
    LUT4 select_603_Select_0_i8_3_lut (.A(sda_ctl), .B(n27_adj_630), .C(n7029), 
         .Z(n8)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam select_603_Select_0_i8_3_lut.init = 16'h2323;
    LUT4 i1_4_lut (.A(sda_ctl), .B(n7424), .C(n111), .D(n122), .Z(n120)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut.init = 16'hdc50;
    LUT4 i5308_4_lut_rep_53 (.A(\i2c_config[2] ), .B(n131), .C(n7376), 
         .D(n7462), .Z(n7816)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam i5308_4_lut_rep_53.init = 16'h5f57;
    FD1P3IX cnt_start_r_i0_i2 (.D(n1818[2]), .SP(clk_div_100k_enable_18), 
            .CD(n6556), .CK(clk_div_100k), .Q(cnt_start_r[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_r_i0_i2.GSR = "ENABLED";
    LUT4 select_603_Select_0_i2_4_lut (.A(cnt_stop[2]), .B(n7813), .C(sda_ctl), 
         .D(n3742), .Z(n2)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam select_603_Select_0_i2_4_lut.init = 16'h3133;
    LUT4 i1_2_lut_rep_54_3_lut_4_lut (.A(n7848), .B(n7847), .C(cnt_reg_addr[0]), 
         .D(n7835), .Z(n7817)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_rep_54_3_lut_4_lut.init = 16'h0010;
    LUT4 select_603_Select_0_i9_4_lut (.A(sda_ctl), .B(n7818), .C(cnt_start_r[0]), 
         .D(n58), .Z(n9_adj_631)) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam select_603_Select_0_i9_4_lut.init = 16'h2223;
    LUT4 i3_4_lut (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[2]), .C(cnt_reg_addr[1]), 
         .D(cnt_reg_addr[3]), .Z(n7005)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(396[13] 414[20])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_48 (.A(cnt_dev_addr_r[0]), .B(cnt_dev_addr_r[2]), 
         .C(cnt_dev_addr_r[1]), .D(cnt_dev_addr_r[3]), .Z(n7029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(482[13] 500[20])
    defparam i3_4_lut_adj_48.init = 16'hfffe;
    LUT4 i5237_2_lut_rep_74_4_lut (.A(n7848), .B(n7847), .C(n7844), .D(state_current[0]), 
         .Z(n7837)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i5237_2_lut_rep_74_4_lut.init = 16'hefee;
    LUT4 i1_4_lut_adj_49 (.A(n114), .B(cnt_ack_addr_r[0]), .C(n7812), 
         .D(n7865), .Z(n122)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_49.init = 16'ha0a2;
    LUT4 i1_4_lut_adj_50 (.A(cnt_ack_addr[0]), .B(n111), .C(n27_adj_632), 
         .D(n7858), .Z(n114)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_50.init = 16'hc0c4;
    LUT4 i1560_2_lut (.A(cnt_stop[0]), .B(cnt_stop[1]), .Z(n3742)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(570[13] 578[20])
    defparam i1560_2_lut.init = 16'heeee;
    LUT4 i2430_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(n7844), .B(n27_adj_630), 
         .C(n7836), .D(n7838), .Z(n4621)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2430_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_3_lut_rep_43_3_lut_4_lut_4_lut_4_lut (.A(n7844), .B(n27_adj_630), 
         .C(n7836), .D(n7838), .Z(clk_div_100k_enable_40)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_3_lut_rep_43_3_lut_4_lut_4_lut_4_lut.init = 16'h3370;
    LUT4 i1_3_lut_rep_44_3_lut_4_lut_4_lut_4_lut (.A(n7844), .B(n7812), 
         .C(n7836), .D(n7838), .Z(clk_div_100k_enable_20)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_3_lut_rep_44_3_lut_4_lut_4_lut_4_lut.init = 16'h3370;
    LUT4 i1_3_lut_rep_45_3_lut_4_lut_4_lut_4_lut (.A(n7844), .B(n8099), 
         .C(n7836), .D(n7838), .Z(clk_div_100k_enable_22)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_3_lut_rep_45_3_lut_4_lut_4_lut_4_lut.init = 16'h3370;
    LUT4 i2_4_lut_4_lut_4_lut (.A(clk_div_100k_enable_36), .B(n7829), .C(cnt_start_r[2]), 
         .D(n7818), .Z(n6556)) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'h88c0;
    LUT4 i1_3_lut_rep_46_3_lut_4_lut_4_lut_4_lut (.A(n7844), .B(n27_adj_633), 
         .C(n7836), .D(n7838), .Z(clk_div_100k_enable_25)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_3_lut_rep_46_3_lut_4_lut_4_lut_4_lut.init = 16'h3370;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(n7844), .B(n7813), .C(n7836), 
         .D(n7838), .Z(clk_div_100k_enable_34)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h3370;
    LUT4 i1_2_lut_adj_51 (.A(cnt_start_r[2]), .B(cnt_start_r[1]), .Z(n58)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_51.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_52 (.A(n7831), .B(n7847), .C(state_current[10]), 
         .D(n7866), .Z(n27_adj_633)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i2_3_lut_4_lut_adj_52.init = 16'hffef;
    LUT4 i2427_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(n7844), .B(n27_adj_633), 
         .C(n7836), .D(n7838), .Z(n4618)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2427_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut_adj_53 (.A(n7844), .B(n7818), 
         .C(n7836), .D(n7838), .Z(clk_div_100k_enable_18)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut_adj_53.init = 16'h3370;
    LUT4 i5343_2_lut_rep_56_2_lut_3_lut_4_lut (.A(n7867), .B(n7842), .C(n7844), 
         .D(state_current[0]), .Z(n7819)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5343_2_lut_rep_56_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i3155_2_lut_4_lut (.A(\state_next_14__N_352[9] ), .B(cnt_ack_r_addr[0]), 
         .C(n7860), .D(state_current[4]), .Z(n2508[0])) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;
    defparam i3155_2_lut_4_lut.init = 16'hfb00;
    LUT4 mux_814_i2_3_lut_4_lut (.A(cnt_start_r[2]), .B(n7849), .C(state_current[4]), 
         .D(n7840), .Z(n2508[1])) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam mux_814_i2_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i5350_3_lut_4_lut (.A(cnt_start_r[2]), .B(n7849), .C(state_current[4]), 
         .D(n894), .Z(n7024)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam i5350_3_lut_4_lut.init = 16'h0400;
    LUT4 i2_3_lut_rep_55_4_lut (.A(n7831), .B(n7848), .C(state_current[7]), 
         .D(n7864), .Z(n7818)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(381[5:19])
    defparam i2_3_lut_rep_55_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_67_3_lut_4_lut (.A(state_current[2]), .B(state_current[1]), 
         .C(state_current[0]), .D(n7859), .Z(n7830)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_67_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_57_3_lut_4_lut (.A(state_current[0]), .B(n7850), .C(n7848), 
         .D(n7859), .Z(n7820)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(356[5:18])
    defparam i1_2_lut_rep_57_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_58_3_lut_4_lut (.A(state_current[0]), .B(n7850), .C(n7847), 
         .D(n7859), .Z(n7821)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(356[5:18])
    defparam i1_2_lut_rep_58_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX state_current__i14 (.D(state_next_14__N_333[13]), .CK(clk_div_100k), 
            .CD(VCC_net), .Q(state_current[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam state_current__i14.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_71_4_lut (.A(state_current[0]), .B(n7850), .C(state_current[3]), 
         .D(state_current[4]), .Z(n7834)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(356[5:18])
    defparam i2_3_lut_rep_71_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_rep_72_4_lut (.A(state_current[0]), .B(n7850), .C(state_current[4]), 
         .D(state_current[3]), .Z(n7835)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(356[5:18])
    defparam i2_3_lut_rep_72_4_lut.init = 16'hfeff;
    FD1P3IX cnt_ack_addr_r_i0_i1 (.D(n1852[1]), .SP(clk_div_100k_enable_20), 
            .CD(n4610), .CK(clk_div_100k), .Q(cnt_ack_addr_r[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_r_i0_i1.GSR = "ENABLED";
    LUT4 i2420_4_lut (.A(clk_div_100k_enable_36), .B(cnt_start[2]), .C(n44), 
         .D(state_current[0]), .Z(n4612)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam i2420_4_lut.init = 16'ha8aa;
    LUT4 i1_2_lut_adj_54 (.A(cnt_start[0]), .B(cnt_start[1]), .Z(n44)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(96[12:21])
    defparam i1_2_lut_adj_54.init = 16'h8888;
    LUT4 i3023_3_lut (.A(cnt_start[2]), .B(cnt_start[1]), .C(cnt_start[0]), 
         .Z(n1718[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(96[12:21])
    defparam i3023_3_lut.init = 16'h6a6a;
    LUT4 i2_2_lut_rep_76_4_lut (.A(state_current[9]), .B(n7855), .C(state_current[7]), 
         .D(n7867), .Z(n7839)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_rep_76_4_lut.init = 16'hfffe;
    LUT4 i1351_1_lut (.A(cnt_stop[0]), .Z(n1931[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(569[25:39])
    defparam i1351_1_lut.init = 16'h5555;
    LUT4 i2418_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_36), .B(n7865), 
         .C(n7812), .D(n7829), .Z(n4610)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2418_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 mux_840_i2_3_lut (.A(n7845), .B(i2c_ack_7__N_465[0]), .C(state_current[2]), 
         .Z(n5523)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(236[4] 263[11])
    defparam mux_840_i2_3_lut.init = 16'hc5c5;
    FD1P3IX cnt_ack_addr_r_i0_i2 (.D(n1852[2]), .SP(clk_div_100k_enable_20), 
            .CD(n4610), .CK(clk_div_100k), .Q(cnt_ack_addr_r[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_r_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_s_ack_i0_i1 (.D(n1908[1]), .SP(clk_div_100k_enable_22), 
            .CD(n4611), .CK(clk_div_100k), .Q(cnt_s_ack[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_ack_i0_i1.GSR = "ENABLED";
    LUT4 i5244_2_lut_4_lut (.A(state_current[9]), .B(n7855), .C(state_current[7]), 
         .D(n7844), .Z(n7482)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5244_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_55 (.A(state_current[9]), .B(n10), .C(n7851), 
         .D(n7816), .Z(n7339)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_55.init = 16'hff04;
    LUT4 i5301_2_lut_rep_48_2_lut_4_lut (.A(state_current[9]), .B(n10), 
         .C(n7851), .D(n7816), .Z(n7811)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i5301_2_lut_rep_48_2_lut_4_lut.init = 16'hfffb;
    LUT4 i2_4_lut (.A(state_current[9]), .B(state_current[4]), .C(n7502), 
         .D(state_current[7]), .Z(n894)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0104;
    LUT4 i2_3_lut_rep_69_4_lut (.A(state_current[0]), .B(n7859), .C(state_current[2]), 
         .D(state_current[1]), .Z(n7832)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(381[5:19])
    defparam i2_3_lut_rep_69_4_lut.init = 16'hffef;
    LUT4 i5263_4_lut (.A(state_current[10]), .B(n7491), .C(n7866), .D(state_current[1]), 
         .Z(n7502)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5263_4_lut.init = 16'hfffe;
    LUT4 i2c_ack_c_bdd_2_lut_5373_4_lut (.A(n7354), .B(n7838), .C(n7859), 
         .D(n7680), .Z(n7681)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2c_ack_c_bdd_2_lut_5373_4_lut.init = 16'h0200;
    LUT4 i5253_4_lut (.A(state_current[2]), .B(state_current[3]), .C(state_current[8]), 
         .D(state_current[0]), .Z(n7491)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5253_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(n328), .B(n362), .C(n316), .Z(n7411)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(597[8] 685[7])
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i2_3_lut_4_lut_adj_56 (.A(n328), .B(n362), .C(n316), .D(state_current[2]), 
         .Z(n7410)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(597[8] 685[7])
    defparam i2_3_lut_4_lut_adj_56.init = 16'hffbf;
    LUT4 i2_3_lut_rep_70_4_lut (.A(state_current[0]), .B(n7859), .C(state_current[1]), 
         .D(state_current[2]), .Z(n7833)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(381[5:19])
    defparam i2_3_lut_rep_70_4_lut.init = 16'hffef;
    LUT4 i4_4_lut (.A(n27_adj_632), .B(clk_div_100k_enable_7), .C(n27_adj_633), 
         .D(n6), .Z(clk_div_100k_enable_14)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(381[5:19])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i4_3_lut_4_lut (.A(n7826), .B(cnt_reg_addr[0]), .C(scl_N_551), 
         .D(n7812), .Z(n16)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i4_3_lut_4_lut.init = 16'h44f4;
    LUT4 i1_4_lut_adj_57 (.A(n27), .B(n7874), .C(n10_adj_634), .D(n8_adj_635), 
         .Z(n7349)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_57.init = 16'hfffd;
    LUT4 i5294_2_lut_rep_65_3_lut_3_lut_4_lut (.A(n7859), .B(n7850), .C(n7848), 
         .D(n7847), .Z(clk_div_100k_enable_36)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5294_2_lut_rep_65_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 cnt_s_ack_0__bdd_4_lut (.A(cnt_s_ack[0]), .B(scl_c), .C(cnt_s_ack[1]), 
         .D(cnt_s_ack[2]), .Z(scl_N_565)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (D))) */ ;
    defparam cnt_s_ack_0__bdd_4_lut.init = 16'hcc8a;
    LUT4 i4_4_lut_adj_58 (.A(n7813), .B(n8_adj_636), .C(n4_adj_637), .D(n10_adj_638), 
         .Z(n10_adj_634)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i4_4_lut_adj_58.init = 16'hfcfd;
    LUT4 i1_4_lut_adj_59 (.A(sda_r), .B(n7817), .C(n8099), .D(scl_N_572), 
         .Z(n8_adj_635)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_59.init = 16'h8a88;
    LUT4 i2_4_lut_adj_60 (.A(n7858), .B(n7837), .C(n7844), .D(n7832), 
         .Z(n4632)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam i2_4_lut_adj_60.init = 16'h0322;
    LUT4 i1199_2_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[0]), .Z(n1749[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(384[29:48])
    defparam i1199_2_lut.init = 16'h6666;
    LUT4 i2_4_lut_adj_61 (.A(n27_adj_630), .B(sda_r_N_608), .C(sda_r_N_612), 
         .D(n7818), .Z(n8_adj_636)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i2_4_lut_adj_61.init = 16'h50dc;
    LUT4 i5332_2_lut_4_lut (.A(n7862), .B(cnt_reg_addr[2]), .C(cnt_reg_addr[3]), 
         .D(state_current[2]), .Z(n5411)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i5332_2_lut_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_62 (.A(n7824), .B(cnt_dev_addr_c[0]), .C(sda_r), 
         .D(n71), .Z(n4_adj_637)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_62.init = 16'h5140;
    LUT4 i25_4_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(sda_r), .D(cnt_stop[0]), 
         .Z(n10_adj_638)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+(C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(568[17] 580[15])
    defparam i25_4_lut.init = 16'h0b19;
    LUT4 n1083_bdd_4_lut_5371 (.A(n7839), .B(n7844), .C(state_next_14__N_228[2]), 
         .D(state_current[0]), .Z(n7680)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam n1083_bdd_4_lut_5371.init = 16'h00e0;
    LUT4 i1395_1_lut (.A(cnt_ack_r_addr[0]), .Z(n1_adj_629)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(423[14:15])
    defparam i1395_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_adj_63 (.A(n7339), .B(n7823), .C(n7466), .D(n7482), 
         .Z(n7340)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i2_4_lut_adj_63.init = 16'hbbbf;
    LUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(state_current[10]), .B(n7866), 
         .C(n7864), .D(state_current[7]), .Z(n7838)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'hfffe;
    LUT4 i26_2_lut (.A(cnt_start_r[0]), .B(cnt_start_r[1]), .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master.v(12[11:14])
    defparam i26_2_lut.init = 16'h6666;
    LUT4 n7341_bdd_4_lut_4_lut (.A(n7748), .B(sda_ctl), .C(n7833), .D(n7836), 
         .Z(n7805)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam n7341_bdd_4_lut_4_lut.init = 16'hf232;
    LUT4 i1_2_lut_rep_86 (.A(cnt_start_r[1]), .B(cnt_start_r[0]), .Z(n7849)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_86.init = 16'h8888;
    FD1S3IX i2c_ack__i5 (.D(i2c_ack_7__N_497[4]), .CK(clk_div_100k), .CD(n7411), 
            .Q(i2c_ack_c_4)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(597[8] 685[7])
    defparam i2c_ack__i5.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_64 (.A(cnt_dev_addr_r[3]), .B(cnt_dev_addr_r[0]), 
         .C(cnt_dev_addr_r[1]), .D(cnt_dev_addr_r[2]), .Z(state_next_14__N_273[9])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_64.init = 16'h8000;
    LUT4 i2996_4_lut (.A(state_next_14__N_228[2]), .B(cnt_start[1]), .C(state_current[0]), 
         .D(n7856), .Z(n2621[1])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(86[14:27])
    defparam i2996_4_lut.init = 16'h05c5;
    LUT4 i2_3_lut_adj_65 (.A(cnt_stop[1]), .B(cnt_stop[2]), .C(cnt_stop[0]), 
         .Z(state_next_14__N_333[13])) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(295[24:37])
    defparam i2_3_lut_adj_65.init = 16'hbfbf;
    LUT4 i1287_2_lut (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[0]), .Z(n1852[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(506[31:52])
    defparam i1287_2_lut.init = 16'h6666;
    FD1S3IX i2c_ack__i4 (.D(state_next_14__N_288[9]), .CK(clk_div_100k), 
            .CD(n7344), .Q(i2c_ack_c_3)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(597[8] 685[7])
    defparam i2c_ack__i4.GSR = "ENABLED";
    FD1S3IX i2c_ack__i2 (.D(n7840), .CK(clk_div_100k), .CD(n7410), .Q(i2c_ack_c_1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(597[8] 685[7])
    defparam i2c_ack__i2.GSR = "ENABLED";
    LUT4 i1430_1_lut (.A(sda_ctl), .Z(n3606)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(49[10:13])
    defparam i1430_1_lut.init = 16'h5555;
    LUT4 cnt_start_r_0__bdd_4_lut_5374 (.A(cnt_start_r[0]), .B(cnt_start_r[1]), 
         .C(sda_r), .D(cnt_start_r[2]), .Z(sda_r_N_608)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam cnt_start_r_0__bdd_4_lut_5374.init = 16'hf0b3;
    LUT4 i3_4_lut_adj_66 (.A(cnt_dev_addr_c[0]), .B(\cnt_dev_addr[1] ), 
         .C(\cnt_dev_addr[2] ), .D(cnt_dev_addr[3]), .Z(state_next_14__N_228[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_66.init = 16'h8000;
    LUT4 i1294_3_lut (.A(cnt_ack_addr_r[2]), .B(cnt_ack_addr_r[1]), .C(cnt_ack_addr_r[0]), 
         .Z(n1852[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(506[31:52])
    defparam i1294_3_lut.init = 16'h6a6a;
    LUT4 i1331_2_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[0]), .Z(n1908[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(556[26:41])
    defparam i1331_2_lut.init = 16'h6666;
    LUT4 i25_2_lut_3_lut (.A(cnt_start_r[1]), .B(cnt_start_r[0]), .C(cnt_start_r[2]), 
         .Z(n1818[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i25_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_3_lut_adj_67 (.A(cnt_s_ack[2]), .B(cnt_s_ack[0]), .C(cnt_s_ack[1]), 
         .Z(i2c_ack_7__N_497[4])) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_67.init = 16'h0404;
    LUT4 i1_2_lut_rep_87 (.A(state_current[2]), .B(state_current[1]), .Z(n7850)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_87.init = 16'heeee;
    LUT4 i2_4_lut_adj_68 (.A(n5413), .B(n7838), .C(n77), .D(state_current[0]), 
         .Z(n316)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_68.init = 16'h0010;
    LUT4 i3229_2_lut (.A(state_current[3]), .B(state_current[1]), .Z(n5413)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3229_2_lut.init = 16'heeee;
    LUT4 i111_2_lut (.A(state_current[2]), .B(state_current[4]), .Z(n77)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i111_2_lut.init = 16'h6666;
    LUT4 i2419_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_36), .B(scl_N_572), 
         .C(n8099), .D(n7829), .Z(n4611)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2419_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 i4_4_lut_adj_69 (.A(state_current[9]), .B(n7844), .C(n7866), 
         .D(n7450), .Z(n328)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_69.init = 16'h0002;
    LUT4 equal_1414_i20_2_lut_rep_68_3_lut_4_lut (.A(state_current[2]), .B(state_current[1]), 
         .C(n7859), .D(state_current[0]), .Z(n7831)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam equal_1414_i20_2_lut_rep_68_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(state_current[2]), .B(state_current[0]), .C(state_current[1]), 
         .Z(n7354)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut.init = 16'h1414;
    LUT4 i1_2_lut_rep_78_3_lut (.A(state_current[2]), .B(state_current[1]), 
         .C(state_current[0]), .Z(n7841)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_78_3_lut.init = 16'hfefe;
    PFUMX mux_869_i5 (.BLUT(n6994), .ALUT(n2784[2]), .C0(n7819), .Z(n2818[4]));
    LUT4 i3_4_lut_adj_70 (.A(n86), .B(n7464), .C(n5413), .D(n7466), 
         .Z(n362)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_70.init = 16'h0002;
    LUT4 i3392_4_lut_then_4_lut (.A(state_current[2]), .B(state_current[3]), 
         .C(state_current[0]), .D(state_current[1]), .Z(n7870)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3392_4_lut_then_4_lut.init = 16'hfffe;
    LUT4 i3164_2_lut (.A(state_current[2]), .B(state_current[4]), .Z(n5348)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3164_2_lut.init = 16'heeee;
    FD1P3IX cnt_s_ack_i0_i2 (.D(n1908[2]), .SP(clk_div_100k_enable_22), 
            .CD(n4611), .CK(clk_div_100k), .Q(cnt_s_ack[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_s_ack_i0_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n7834), .B(n7838), .C(n7860), .D(cnt_ack_r_addr[0]), 
         .Z(n7424)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(417[5:19])
    defparam i1_3_lut_4_lut.init = 16'heeef;
    LUT4 i5227_2_lut (.A(state_current[8]), .B(state_current[7]), .Z(n7464)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5227_2_lut.init = 16'heeee;
    FD1P3IX cnt_ack_r_addr_i0_i1 (.D(n1775[1]), .SP(clk_div_100k_enable_24), 
            .CD(n4616), .CK(clk_div_100k), .Q(cnt_ack_r_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i1.GSR = "ENABLED";
    LUT4 n1083_bdd_4_lut_5368 (.A(n7858), .B(state_current[2]), .C(cnt_ack_addr[0]), 
         .D(\state_next_14__N_352[9] ), .Z(n7679)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam n1083_bdd_4_lut_5368.init = 16'h408c;
    LUT4 n7686_bdd_3_lut (.A(n7686), .B(sda_r), .C(cnt_dev_addr_r[0]), 
         .Z(sda_r_N_612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n7686_bdd_3_lut.init = 16'hcaca;
    LUT4 i5348_4_lut (.A(state_current[12]), .B(n7506), .C(state_current[9]), 
         .D(state_current[13]), .Z(n7344)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i5348_4_lut.init = 16'hffef;
    LUT4 i5267_4_lut (.A(n5348), .B(n7859), .C(state_current[7]), .D(n7502), 
         .Z(n7506)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5267_4_lut.init = 16'hfffe;
    LUT4 i2424_3_lut_4_lut (.A(n7834), .B(n7838), .C(n7860), .D(clk_div_100k_enable_24), 
         .Z(n4616)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(417[5:19])
    defparam i2424_3_lut_4_lut.init = 16'hfe00;
    LUT4 i5215_2_lut_rep_88 (.A(state_current[0]), .B(state_current[13]), 
         .Z(n7851)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5215_2_lut_rep_88.init = 16'heeee;
    LUT4 i5285_4_lut (.A(state_next_14__N_303[11]), .B(n7823), .C(state_next_14__N_288[9]), 
         .D(state_current[9]), .Z(n5589)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;
    defparam i5285_4_lut.init = 16'h3011;
    LUT4 i1_2_lut_adj_71 (.A(state_current[12]), .B(state_current[8]), .Z(n7368)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(174[4] 204[11])
    defparam i1_2_lut_adj_71.init = 16'h2222;
    LUT4 i5302_2_lut_3_lut_3_lut (.A(n7822), .B(n894), .C(n7816), .Z(n7347)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(93[4:32])
    defparam i5302_2_lut_3_lut_3_lut.init = 16'hfdfd;
    PFUMX mux_869_i6 (.BLUT(n5589), .ALUT(n7369), .C0(n7819), .Z(n2818[5]));
    FD1S3IX i2c_ack__i1 (.D(i2c_ack_7__N_465[0]), .CK(clk_div_100k), .CD(n6998), 
            .Q(i2c_ack_c_0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(597[8] 685[7])
    defparam i2c_ack__i1.GSR = "ENABLED";
    LUT4 i5_3_lut_rep_59_4_lut (.A(state_current[0]), .B(state_current[13]), 
         .C(n10), .D(state_current[9]), .Z(n7822)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i5_3_lut_rep_59_4_lut.init = 16'h0010;
    LUT4 i4_4_lut_adj_72 (.A(n7852), .B(n52), .C(state_current[1]), .D(state_current[12]), 
         .Z(n10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i4_4_lut_adj_72.init = 16'h0004;
    LUT4 i5282_4_lut (.A(state_current[2]), .B(n328), .C(n316), .D(n362), 
         .Z(n6998)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i5282_4_lut.init = 16'hdfff;
    LUT4 i2c_config_2__bdd_4_lut_5475 (.A(\i2c_config[2] ), .B(cnt_dev_addr_r[1]), 
         .C(cnt_dev_addr_r[3]), .D(cnt_dev_addr_r[2]), .Z(n7686)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)))) */ ;
    defparam i2c_config_2__bdd_4_lut_5475.init = 16'hc802;
    LUT4 i5229_2_lut_3_lut (.A(state_current[0]), .B(state_current[13]), 
         .C(state_current[10]), .Z(n7466)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5229_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1228_3_lut (.A(cnt_ack_r_addr[2]), .B(cnt_ack_r_addr[1]), .C(cnt_ack_r_addr[0]), 
         .Z(n1775[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(420[31:52])
    defparam i1228_3_lut.init = 16'h6a6a;
    LUT4 i5323_4_lut (.A(n7402), .B(n7830), .C(n5545), .D(n7847), .Z(n7555)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B))) */ ;
    defparam i5323_4_lut.init = 16'h1113;
    LUT4 i4710_1_lut (.A(cnt_read_reg_data[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam i4710_1_lut.init = 16'h5555;
    LUT4 i4681_1_lut (.A(cnt_dev_addr_r[0]), .Z(n21_adj_655[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam i4681_1_lut.init = 16'h5555;
    LUT4 i5208_2_lut_3_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[0]), .C(cnt_s_ack[2]), 
         .Z(scl_N_572)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(555[17] 563[15])
    defparam i5208_2_lut_3_lut.init = 16'hf8f8;
    LUT4 select_695_Select_0_i3_4_lut (.A(cnt_stop[0]), .B(n7813), .C(scl_c), 
         .D(n3910), .Z(n3)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam select_695_Select_0_i3_4_lut.init = 16'h3022;
    LUT4 i3392_4_lut_else_4_lut (.A(state_current[2]), .B(state_current[3]), 
         .C(state_current[0]), .D(state_current[1]), .Z(n7869)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i3392_4_lut_else_4_lut.init = 16'hfee8;
    FD1P3IX cnt_ack_r_addr_i0_i2 (.D(n1775[2]), .SP(clk_div_100k_enable_24), 
            .CD(n4616), .CK(clk_div_100k), .Q(cnt_ack_r_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i2.GSR = "ENABLED";
    LUT4 i3150_2_lut_rep_89 (.A(state_current[10]), .B(state_current[8]), 
         .Z(n7852)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3150_2_lut_rep_89.init = 16'heeee;
    LUT4 i5213_3_lut_4_lut (.A(state_current[10]), .B(state_current[8]), 
         .C(state_current[7]), .D(state_current[0]), .Z(n7450)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5213_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX cnt_read_reg_data_1108__i0 (.D(n21[0]), .SP(clk_div_100k_enable_25), 
            .CD(n4618), .CK(clk_div_100k), .Q(cnt_read_reg_data[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam cnt_read_reg_data_1108__i0.GSR = "ENABLED";
    LUT4 i4652_1_lut (.A(cnt_reg_addr[0]), .Z(n21_adj_656[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(395[29:48])
    defparam i4652_1_lut.init = 16'h5555;
    FD1P3IX cnt_dev_addr_r_1107__i0 (.D(n21_adj_655[0]), .SP(clk_div_100k_enable_40), 
            .CD(n4621), .CK(clk_div_100k), .Q(cnt_dev_addr_r[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1107__i0.GSR = "ENABLED";
    LUT4 i5330_3_lut (.A(n7823), .B(state_next_14__N_303[11]), .C(state_current[9]), 
         .Z(n7033)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i5330_3_lut.init = 16'h0404;
    LUT4 i1206_3_lut (.A(cnt_ack_addr[2]), .B(cnt_ack_addr[1]), .C(cnt_ack_addr[0]), 
         .Z(n1749[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(384[29:48])
    defparam i1206_3_lut.init = 16'h6a6a;
    LUT4 i1394_1_lut (.A(cnt_ack_addr[0]), .Z(n1_adj_641)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(387[14:15])
    defparam i1394_1_lut.init = 16'h5555;
    LUT4 i4623_1_lut (.A(cnt_dev_addr_c[0]), .Z(n21_adj_654[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam i4623_1_lut.init = 16'h5555;
    LUT4 i4625_2_lut (.A(\cnt_dev_addr[1] ), .B(cnt_dev_addr_c[0]), .Z(n21_adj_654[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam i4625_2_lut.init = 16'h6666;
    LUT4 i1400_1_lut_rep_98 (.A(cnt_s_ack[0]), .Z(n7861)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(559[14:15])
    defparam i1400_1_lut_rep_98.init = 16'h5555;
    FD1P3IX cnt_reg_addr_1105__i0 (.D(n21_adj_656[0]), .SP(clk_div_100k_enable_37), 
            .CD(n4625), .CK(clk_div_100k), .Q(cnt_reg_addr[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1105__i0.GSR = "ENABLED";
    LUT4 i5324_4_lut (.A(n7847), .B(n7555), .C(n7871), .D(n7848), .Z(clk_div_100k_enable_7)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i5324_4_lut.init = 16'hcccd;
    LUT4 i4654_2_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .Z(n21_adj_656[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(395[29:48])
    defparam i4654_2_lut.init = 16'h6666;
    LUT4 i1353_2_lut (.A(cnt_stop[1]), .B(cnt_stop[0]), .Z(n1931[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(569[25:39])
    defparam i1353_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(cnt_s_ack[0]), .B(n7368), .C(cnt_s_ack[2]), 
         .D(cnt_s_ack[1]), .Z(n7370)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(559[14:15])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hccc4;
    LUT4 i1338_2_lut_3_lut (.A(cnt_s_ack[1]), .B(cnt_s_ack[0]), .C(cnt_s_ack[2]), 
         .Z(n1908[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(555[17] 563[15])
    defparam i1338_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_73 (.A(cnt_s_ack[0]), .B(n7368), 
         .C(cnt_s_ack[2]), .D(cnt_s_ack[1]), .Z(n7369)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(559[14:15])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_73.init = 16'h0008;
    LUT4 state_current_4__bdd_4_lut (.A(state_current[4]), .B(state_current[1]), 
         .C(state_current[0]), .D(state_current[2]), .Z(n7868)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam state_current_4__bdd_4_lut.init = 16'h0117;
    LUT4 i37_2_lut (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n1718[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(96[12:21])
    defparam i37_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_99 (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[1]), .Z(n7862)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_99.init = 16'h8888;
    LUT4 i3152_2_lut_rep_103 (.A(state_current[13]), .B(state_current[12]), 
         .Z(n7866)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3152_2_lut_rep_103.init = 16'heeee;
    LUT4 i5225_3_lut_4_lut (.A(state_current[0]), .B(state_current[1]), 
         .C(state_current[4]), .D(state_current[2]), .Z(n7462)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5225_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4683_2_lut (.A(cnt_dev_addr_r[1]), .B(cnt_dev_addr_r[0]), .Z(n21_adj_655[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam i4683_2_lut.init = 16'h6666;
    LUT4 i3_3_lut_rep_82_4_lut (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[1]), 
         .C(cnt_reg_addr[3]), .D(cnt_reg_addr[2]), .Z(n7845)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_rep_82_4_lut.init = 16'h8000;
    PFUMX mux_869_i7 (.BLUT(n7033), .ALUT(n7370), .C0(n7819), .Z(n2818[6]));
    LUT4 i4690_2_lut_3_lut (.A(cnt_dev_addr_r[1]), .B(cnt_dev_addr_r[0]), 
         .C(cnt_dev_addr_r[2]), .Z(n21_adj_655[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam i4690_2_lut_3_lut.init = 16'h7878;
    LUT4 i4697_3_lut_4_lut (.A(cnt_dev_addr_r[1]), .B(cnt_dev_addr_r[0]), 
         .C(cnt_dev_addr_r[2]), .D(cnt_dev_addr_r[3]), .Z(n21_adj_655[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam i4697_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3359_4_lut_3_lut (.A(state_current[13]), .B(state_current[12]), 
         .C(state_current[10]), .Z(n5545)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;
    defparam i3359_4_lut_3_lut.init = 16'he8e8;
    LUT4 i4639_3_lut_4_lut (.A(\cnt_dev_addr[1] ), .B(cnt_dev_addr_c[0]), 
         .C(\cnt_dev_addr[2] ), .D(cnt_dev_addr[3]), .Z(n21_adj_654[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam i4639_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4632_2_lut_3_lut (.A(\cnt_dev_addr[1] ), .B(cnt_dev_addr_c[0]), 
         .C(\cnt_dev_addr[2] ), .Z(n21_adj_654[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam i4632_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_4_lut_adj_74 (.A(state_current[9]), .B(state_current[7]), 
         .C(state_current[8]), .D(n7848), .Z(n7402)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_74.init = 16'hffe8;
    FD1P3IX cnt_ack_addr_i0_i2 (.D(n1749[2]), .SP(clk_div_100k_enable_29), 
            .CD(n4632), .CK(clk_div_100k), .Q(cnt_ack_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i0 (.D(n1_adj_641), .SP(clk_div_100k_enable_29), 
            .CD(n4632), .CK(clk_div_100k), .Q(cnt_ack_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i0.GSR = "ENABLED";
    LUT4 i1397_1_lut (.A(cnt_start_r[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(473[14:15])
    defparam i1397_1_lut.init = 16'h5555;
    FD1P3IX cnt_dev_addr_1104__i0 (.D(n21_adj_654[0]), .SP(clk_div_100k_enable_35), 
            .CD(n6171), .CK(clk_div_100k), .Q(cnt_dev_addr_c[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1104__i0.GSR = "ENABLED";
    LUT4 i3139_2_lut_rep_92 (.A(state_current[12]), .B(state_current[8]), 
         .Z(n7855)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3139_2_lut_rep_92.init = 16'h8888;
    LUT4 i1_3_lut_rep_79_4_lut (.A(state_current[12]), .B(state_current[8]), 
         .C(state_current[7]), .D(state_current[9]), .Z(n7842)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_rep_79_4_lut.init = 16'hfff8;
    LUT4 i4661_2_lut_3_lut (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[1]), .C(cnt_reg_addr[2]), 
         .Z(n21_adj_656[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i4661_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_adj_75 (.A(state_current[9]), .B(n7416), .C(n7480), 
         .D(state_current[10]), .Z(n131)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_75.init = 16'h373b;
    LUT4 i4668_3_lut_4_lut (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[1]), .C(cnt_reg_addr[2]), 
         .D(cnt_reg_addr[3]), .Z(n21_adj_656[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i4668_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3334_4_lut_4_lut (.A(state_current[7]), .B(state_current[12]), 
         .C(state_current[8]), .D(state_current[3]), .Z(n5519)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i3334_4_lut_4_lut.init = 16'hfee8;
    LUT4 i2_4_lut_4_lut_4_lut_adj_76 (.A(clk_div_100k_enable_36), .B(n31), 
         .C(n7829), .D(n7813), .Z(n6553)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;
    defparam i2_4_lut_4_lut_4_lut_adj_76.init = 16'ha0c0;
    LUT4 i5211_2_lut_rep_93 (.A(cnt_start[2]), .B(cnt_start[0]), .Z(n7856)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5211_2_lut_rep_93.init = 16'heeee;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_start[2]), .B(cnt_start[0]), .C(scl_c), 
         .D(cnt_start[1]), .Z(n53)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'he0f1;
    LUT4 i1_2_lut_rep_83_3_lut (.A(cnt_start[2]), .B(cnt_start[0]), .C(cnt_start[1]), 
         .Z(n7846)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_83_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_adj_77 (.A(cnt_start[2]), .B(cnt_start[0]), .C(state_current[0]), 
         .D(cnt_start[1]), .Z(n4)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_77.init = 16'he0f0;
    LUT4 i1398_1_lut_rep_94 (.A(cnt_ack_addr_r[0]), .Z(n7857)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(509[14:15])
    defparam i1398_1_lut_rep_94.init = 16'h5555;
    LUT4 i2_3_lut_4_lut_4_lut_adj_78 (.A(n7839), .B(state_next_14__N_273[9]), 
         .C(state_current[8]), .D(n7830), .Z(n6983)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_78.init = 16'h0010;
    LUT4 i11_4_lut (.A(n17), .B(n22_adj_651), .C(n45), .D(n14), .Z(n7028)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i11_4_lut.init = 16'hfffe;
    FD1P3IX cnt_dev_addr_1104__i1 (.D(n21_adj_654[1]), .SP(clk_div_100k_enable_35), 
            .CD(n6171), .CK(clk_div_100k), .Q(\cnt_dev_addr[1] ));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1104__i1.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1105__i1 (.D(n21_adj_656[1]), .SP(clk_div_100k_enable_37), 
            .CD(n4625), .CK(clk_div_100k), .Q(cnt_reg_addr[1]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1105__i1.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1105__i2 (.D(n21_adj_656[2]), .SP(clk_div_100k_enable_37), 
            .CD(n4625), .CK(clk_div_100k), .Q(cnt_reg_addr[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1105__i2.GSR = "ENABLED";
    FD1P3IX cnt_stop_i0_i1 (.D(n1931[1]), .SP(clk_div_100k_enable_34), .CD(n6553), 
            .CK(clk_div_100k), .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i1.GSR = "ENABLED";
    LUT4 i1175_1_lut_rep_100 (.A(cnt_start[0]), .Z(n7863)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(347[26:41])
    defparam i1175_1_lut_rep_100.init = 16'h5555;
    LUT4 i5242_4_lut (.A(n7464), .B(state_current[12]), .C(state_current[13]), 
         .D(state_current[3]), .Z(n7480)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5242_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(scl_N_565), .B(cnt_dev_addr_r[0]), .C(n8099), .D(n27_adj_630), 
         .Z(n17)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i5_4_lut.init = 16'h0ace;
    FD1P3IX cnt_dev_addr_1104__i2 (.D(n21_adj_654[2]), .SP(clk_div_100k_enable_35), 
            .CD(n6171), .CK(clk_div_100k), .Q(\cnt_dev_addr[2] ));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1104__i2.GSR = "ENABLED";
    LUT4 i1147_2_lut_rep_95 (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), .Z(n7858)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(386[14:15])
    defparam i1147_2_lut_rep_95.init = 16'heeee;
    LUT4 i5312_3_lut_4_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), .C(\state_next_14__N_352[9] ), 
         .D(cnt_ack_addr[0]), .Z(i2c_ack_7__N_465[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(386[14:15])
    defparam i5312_3_lut_4_lut.init = 16'h0100;
    LUT4 select_695_Select_0_i9_4_lut (.A(n9), .B(n7818), .C(scl_c), .D(cnt_start_r[2]), 
         .Z(n9_adj_652)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam select_695_Select_0_i9_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_rep_85_3_lut (.A(state_current[13]), .B(state_current[12]), 
         .C(state_current[10]), .Z(n7848)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_85_3_lut.init = 16'hfefe;
    LUT4 i4719_2_lut_3_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[2]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam i4719_2_lut_3_lut.init = 16'h7878;
    LUT4 i10_4_lut (.A(n27), .B(n20), .C(n14_adj_653), .D(n3), .Z(n22_adj_651)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i10_4_lut.init = 16'hfffd;
    FD1P3IX cnt_start_i0_i1 (.D(n1718[1]), .SP(clk_div_100k_enable_36), 
            .CD(n4612), .CK(clk_div_100k), .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=47 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_96 (.A(state_current[3]), .B(state_current[4]), .Z(n7859)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_96.init = 16'heeee;
    LUT4 i4726_3_lut_4_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[2]), .D(cnt_read_reg_data[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam i4726_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_104 (.A(state_current[10]), .B(state_current[13]), 
         .Z(n7867)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_104.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .C(cnt_read_reg_data[3]), .D(cnt_read_reg_data[2]), .Z(state_next_14__N_303[11])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam i3_3_lut_4_lut.init = 16'h8000;
    FD1P3IX cnt_reg_addr_1105__i3 (.D(n21_adj_656[3]), .SP(clk_div_100k_enable_37), 
            .CD(n4625), .CK(clk_div_100k), .Q(cnt_reg_addr[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1105__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_81_3_lut_4_lut (.A(state_current[3]), .B(state_current[4]), 
         .C(state_current[1]), .D(state_current[2]), .Z(n7844)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_81_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_79 (.A(state_current[10]), .B(n7868), .C(state_current[9]), 
         .D(n7480), .Z(n7376)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_79.init = 16'h0004;
    LUT4 i1_2_lut_rep_80_3_lut (.A(state_current[3]), .B(state_current[4]), 
         .C(state_current[0]), .Z(n7843)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_80_3_lut.init = 16'hfefe;
    FD1P3IX cnt_dev_addr_r_1107__i1 (.D(n21_adj_655[1]), .SP(clk_div_100k_enable_40), 
            .CD(n4621), .CK(clk_div_100k), .Q(cnt_dev_addr_r[1]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1107__i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_80 (.A(state_current[10]), .B(state_current[13]), 
         .C(state_current[9]), .D(n5519), .Z(n7416)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_80.init = 16'hfffe;
    FD1P3IX cnt_dev_addr_r_1107__i2 (.D(n21_adj_655[2]), .SP(clk_div_100k_enable_40), 
            .CD(n4621), .CK(clk_div_100k), .Q(cnt_dev_addr_r[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1107__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_52_3_lut_4_lut (.A(n7841), .B(n7859), .C(state_current[7]), 
         .D(n7848), .Z(n7815)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_rep_52_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4712_2_lut (.A(cnt_read_reg_data[1]), .B(cnt_read_reg_data[0]), 
         .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(518[34:58])
    defparam i4712_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_81 (.A(n27_adj_632), .B(cnt_ack_addr[0]), .C(scl_c), 
         .D(n7858), .Z(n14)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(381[5:19])
    defparam i1_4_lut_adj_81.init = 16'h5044;
    LUT4 i1_2_lut_rep_101 (.A(state_current[9]), .B(state_current[8]), .Z(n7864)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_rep_101.init = 16'heeee;
    LUT4 i1144_2_lut_rep_97 (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .Z(n7860)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(422[14:15])
    defparam i1144_2_lut_rep_97.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_82 (.A(n7843), .B(state_current[1]), .C(state_current[2]), 
         .D(n7838), .Z(n27_adj_632)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(381[5:19])
    defparam i1_2_lut_4_lut_adj_82.init = 16'hffef;
    LUT4 i1_2_lut_rep_61_4_lut (.A(n7843), .B(state_current[2]), .C(state_current[1]), 
         .D(n7838), .Z(n7824)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(356[5:18])
    defparam i1_2_lut_rep_61_4_lut.init = 16'hffef;
    FD1P3IX cnt_dev_addr_r_1107__i3 (.D(n21_adj_655[3]), .SP(clk_div_100k_enable_40), 
            .CD(n4621), .CK(clk_div_100k), .Q(cnt_dev_addr_r[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(481[31:52])
    defparam cnt_dev_addr_r_1107__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_83 (.A(cnt_stop[1]), .B(cnt_stop[2]), .Z(n3910)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(324[8] 586[6])
    defparam i1_2_lut_adj_83.init = 16'heeee;
    LUT4 i8_4_lut (.A(n7827), .B(n16), .C(n9_adj_652), .D(n7), .Z(n20)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i8_4_lut.init = 16'hfdfc;
    LUT4 i1_2_lut_rep_84_3_lut (.A(state_current[9]), .B(state_current[8]), 
         .C(state_current[7]), .Z(n7847)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(566[5:9])
    defparam i1_2_lut_rep_84_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_84 (.A(n27_adj_633), .B(n7829), .C(cnt_read_reg_data[0]), 
         .D(n53), .Z(n14_adj_653)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(325[4] 585[11])
    defparam i2_4_lut_adj_84.init = 16'h7350;
    PFUMX i5428 (.BLUT(n7875), .ALUT(n8099), .C0(sda_ctl), .Z(n111));
    PFUMX mux_861_i3 (.BLUT(n5411), .ALUT(n2508[0]), .C0(n894), .Z(n2771[2]));
    LUT4 i1161_2_lut_rep_102 (.A(cnt_ack_addr_r[1]), .B(cnt_ack_addr_r[2]), 
         .Z(n7865)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_adc/i2c_master_logic.v(508[14:15])
    defparam i1161_2_lut_rep_102.init = 16'heeee;
    PFUMX i5426 (.BLUT(n7872), .ALUT(n7873), .C0(cnt_start[1]), .Z(n7874));
    PFUMX i5424 (.BLUT(n7869), .ALUT(n7870), .C0(state_current[4]), .Z(n7871));
    
endmodule
