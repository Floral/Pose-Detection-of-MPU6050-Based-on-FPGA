// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Mon Dec 18 08:38:55 2017
//
// Verilog Description of module i2c_master
//

module i2c_master (sys_clk_12m, rst_n, scl, sda) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(2[8:18])
    input sys_clk_12m;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(9[10:21])
    input rst_n;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(10[10:15])
    output scl;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(11[11:14])
    inout sda;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(12[10:13])
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(9[10:21])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(14[7:19])
    
    wire GND_net, VCC_net, rst_n_c, scl_c;
    wire [7:0]wave_rom_address;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(21[13:29])
    wire [7:0]wave_rom_data;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(22[13:26])
    
    wire sda_r;
    wire [14:0]state_next_14__N_373;
    
    wire n3577, n6857;
    
    VHI i2 (.Z(VCC_net));
    i2c_master_config i2c_master_config_inst (.sys_clk_12m_c(sys_clk_12m_c), 
            .wave_rom_data({wave_rom_data}), .wave_rom_address({wave_rom_address}), 
            .GND_net(GND_net), .n6857(n6857), .clk_div_100k(clk_div_100k), 
            .scl_c(scl_c), .\state_next_14__N_373[9] (state_next_14__N_373[9]), 
            .sda_r(sda_r), .n3577(n3577)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(39[20] 55[3])
    LUT4 m1_lut (.Z(n6857)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(10[10:15])
    IB sys_clk_12m_pad (.I(sys_clk_12m), .O(sys_clk_12m_c));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(9[10:21])
    OB scl_pad (.I(scl_c), .O(scl));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(11[11:14])
    BB sda_pad (.I(sda_r), .T(n3577), .B(sda), .O(state_next_14__N_373[9]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(49[10:13])
    clk_div clk_div_inst (.GND_net(GND_net), .clk_div_100k(clk_div_100k), 
            .sys_clk_12m_c(sys_clk_12m_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(15[10] 19[4])
    GSR GSR_INST (.GSR(rst_n_c));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    rom_waveform rom_waveform_inst (.wave_rom_address({wave_rom_address}), 
            .sys_clk_12m_c(sys_clk_12m_c), .VCC_net(VCC_net), .GND_net(GND_net), 
            .wave_rom_data({wave_rom_data})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(23[15] 29[4])
    
endmodule
//
// Verilog Description of module i2c_master_config
//

module i2c_master_config (sys_clk_12m_c, wave_rom_data, wave_rom_address, 
            GND_net, n6857, clk_div_100k, scl_c, \state_next_14__N_373[9] , 
            sda_r, n3577) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_12m_c;
    input [7:0]wave_rom_data;
    output [7:0]wave_rom_address;
    input GND_net;
    input n6857;
    input clk_div_100k;
    output scl_c;
    input \state_next_14__N_373[9] ;
    output sda_r;
    output n3577;
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(9[10:21])
    wire [7:0]i2c_ack /* synthesis SET_AS_NETWORK=\i2c_master_config_inst/i2c_ack[2], is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(31[15:22])
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(14[7:19])
    wire [7:0]i2c_reg_data;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(28[15:27])
    
    wire n6020;
    wire [7:0]n37;
    
    wire n6019;
    wire [7:0]i2c_config;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(25[15:25])
    
    wire n6018, n6017;
    
    FD1S3AX i2c_reg_data_i0 (.D(wave_rom_data[0]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i0.GSR = "ENABLED";
    FD1S3AX i2c_reg_data_i4 (.D(wave_rom_data[4]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i4.GSR = "ENABLED";
    FD1S3AX i2c_reg_data_i1 (.D(wave_rom_data[1]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i1.GSR = "ENABLED";
    CCU2D wave_rom_address_1108_add_4_9 (.A0(wave_rom_address[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6020), .S0(n37[7]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108_add_4_9.INIT0 = 16'hfaaa;
    defparam wave_rom_address_1108_add_4_9.INIT1 = 16'h0000;
    defparam wave_rom_address_1108_add_4_9.INJECT1_0 = "NO";
    defparam wave_rom_address_1108_add_4_9.INJECT1_1 = "NO";
    CCU2D wave_rom_address_1108_add_4_7 (.A0(wave_rom_address[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(wave_rom_address[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6019), .COUT(n6020), .S0(n37[5]), 
          .S1(n37[6]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108_add_4_7.INIT0 = 16'hfaaa;
    defparam wave_rom_address_1108_add_4_7.INIT1 = 16'hfaaa;
    defparam wave_rom_address_1108_add_4_7.INJECT1_0 = "NO";
    defparam wave_rom_address_1108_add_4_7.INJECT1_1 = "NO";
    FD1S3AX i2c_config_i1 (.D(n6857), .CK(sys_clk_12m_c), .Q(i2c_config[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_config_i1.GSR = "ENABLED";
    CCU2D wave_rom_address_1108_add_4_5 (.A0(wave_rom_address[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(wave_rom_address[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6018), .COUT(n6019), .S0(n37[3]), 
          .S1(n37[4]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108_add_4_5.INIT0 = 16'hfaaa;
    defparam wave_rom_address_1108_add_4_5.INIT1 = 16'hfaaa;
    defparam wave_rom_address_1108_add_4_5.INJECT1_0 = "NO";
    defparam wave_rom_address_1108_add_4_5.INJECT1_1 = "NO";
    CCU2D wave_rom_address_1108_add_4_3 (.A0(wave_rom_address[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(wave_rom_address[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n6017), .COUT(n6018), .S0(n37[1]), 
          .S1(n37[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108_add_4_3.INIT0 = 16'hfaaa;
    defparam wave_rom_address_1108_add_4_3.INIT1 = 16'hfaaa;
    defparam wave_rom_address_1108_add_4_3.INJECT1_0 = "NO";
    defparam wave_rom_address_1108_add_4_3.INJECT1_1 = "NO";
    CCU2D wave_rom_address_1108_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wave_rom_address[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6017), .S1(n37[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108_add_4_1.INIT0 = 16'hF000;
    defparam wave_rom_address_1108_add_4_1.INIT1 = 16'h0555;
    defparam wave_rom_address_1108_add_4_1.INJECT1_0 = "NO";
    defparam wave_rom_address_1108_add_4_1.INJECT1_1 = "NO";
    FD1S3AX wave_rom_address_1108__i7 (.D(n37[7]), .CK(i2c_ack[2]), .Q(wave_rom_address[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i7.GSR = "ENABLED";
    FD1S3AX i2c_reg_data_i3 (.D(wave_rom_data[3]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i3.GSR = "ENABLED";
    FD1S3AX wave_rom_address_1108__i6 (.D(n37[6]), .CK(i2c_ack[2]), .Q(wave_rom_address[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i6.GSR = "ENABLED";
    FD1S3AX wave_rom_address_1108__i5 (.D(n37[5]), .CK(i2c_ack[2]), .Q(wave_rom_address[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i5.GSR = "ENABLED";
    FD1S3AX wave_rom_address_1108__i4 (.D(n37[4]), .CK(i2c_ack[2]), .Q(wave_rom_address[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i4.GSR = "ENABLED";
    FD1S3AX wave_rom_address_1108__i3 (.D(n37[3]), .CK(i2c_ack[2]), .Q(wave_rom_address[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i3.GSR = "ENABLED";
    FD1S3AX wave_rom_address_1108__i2 (.D(n37[2]), .CK(i2c_ack[2]), .Q(wave_rom_address[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i2.GSR = "ENABLED";
    FD1S3AX wave_rom_address_1108__i1 (.D(n37[1]), .CK(i2c_ack[2]), .Q(wave_rom_address[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i1.GSR = "ENABLED";
    FD1S3AX wave_rom_address_1108__i0 (.D(n37[0]), .CK(i2c_ack[2]), .Q(wave_rom_address[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(64[24:47])
    defparam wave_rom_address_1108__i0.GSR = "ENABLED";
    FD1S3AX i2c_reg_data_i7 (.D(wave_rom_data[7]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i7.GSR = "ENABLED";
    FD1S3AX i2c_reg_data_i2 (.D(wave_rom_data[2]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i2.GSR = "ENABLED";
    FD1S3AX i2c_reg_data_i6 (.D(wave_rom_data[6]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i6.GSR = "ENABLED";
    FD1S3AX i2c_reg_data_i5 (.D(wave_rom_data[5]), .CK(sys_clk_12m_c), .Q(i2c_reg_data[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=55 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(95[8] 103[6])
    defparam i2c_reg_data_i5.GSR = "ENABLED";
    i2c_master_logic i2c_master_logic_inst (.clk_div_100k(clk_div_100k), .scl_c(scl_c), 
            .\state_next_14__N_373[9] (\state_next_14__N_373[9] ), .sda_r(sda_r), 
            .\i2c_ack[2] (i2c_ack[2]), .\i2c_config[1] (i2c_config[1]), 
            .n3577(n3577), .i2c_reg_data({i2c_reg_data})) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(35[19] 49[4])
    
endmodule
//
// Verilog Description of module i2c_master_logic
//

module i2c_master_logic (clk_div_100k, scl_c, \state_next_14__N_373[9] , 
            sda_r, \i2c_ack[2] , \i2c_config[1] , n3577, i2c_reg_data) /* synthesis syn_module_defined=1 */ ;
    input clk_div_100k;
    output scl_c;
    input \state_next_14__N_373[9] ;
    output sda_r;
    output \i2c_ack[2] ;
    input \i2c_config[1] ;
    output n3577;
    input [7:0]i2c_reg_data;
    
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(14[7:19])
    wire \i2c_ack[2]  /* synthesis SET_AS_NETWORK=\i2c_master_config_inst/i2c_ack[2], is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_config.v(31[15:22])
    wire [14:0]state_current;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(86[14:27])
    
    wire n6650, n6626;
    wire [2:0]cnt_start;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(96[12:21])
    wire [2:0]n1718;
    
    wire n6644, n5;
    wire [2:0]cnt_ack_r_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(100[12:26])
    
    wire n6645;
    wire [2:0]cnt_ack_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(98[12:24])
    wire [2:0]n1749;
    wire [3:0]cnt_write_reg_data;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(101[12:30])
    wire [3:0]n21;
    
    wire n25_adj_649, n4;
    wire [3:0]cnt_dev_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(97[12:24])
    
    wire clk_div_100k_enable_28, n5853;
    wire [3:0]n21_adj_675;
    
    wire n162, n6646, clk_div_100k_enable_27;
    wire [2:0]cnt_stop;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(104[12:20])
    
    wire n6625, n4417, n6214;
    wire [3:0]n2626;
    
    wire n4399;
    wire [7:0]n2593;
    
    wire n1, n6647;
    wire [3:0]cnt_reg_addr;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(99[12:24])
    wire [3:0]n21_adj_676;
    
    wire clk_div_100k_enable_19, n25_adj_651, n6275, clk_div_100k_enable_21;
    wire [2:0]n1775;
    
    wire n6554;
    wire [14:0]state_next_14__N_354;
    
    wire n1252, n6232, n6271, n5129, n6628, n5058, n6285, n5125, 
        n6632, n4403, n3, n6648, clk_div_100k_enable_14, n4422, 
        n6635, n1044, n6097, n4424, n16, cnt_start_2__N_429, n6109, 
        n6319, n4985, sda_ctl, n6226, n5148, n6627, n6555, n6272, 
        n5097;
    wire [5:0]n2586;
    
    wire n25_adj_653, n5113, n6252;
    wire [7:0]i2c_ack_7__N_502;
    
    wire clk_div_100k_enable_18, n4426, n6649, n6629, n6037;
    wire [14:0]state_next_14__N_234;
    
    wire n6024, n25_adj_654, clk_div_100k_enable_23, clk_div_100k_enable_24, 
        n4406, n6641, n4420, n1287, n1_adj_656, n6633, n5_adj_657, 
        n6025, n6355;
    wire [14:0]state_next_14__N_249;
    
    wire n6063, n25_adj_658;
    wire [2:0]cnt_ack_w_data;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(102[12:26])
    
    wire n1_adj_662, n6315, n25_adj_663, n6642, n6296, n4298, n4295, 
        n6363, n6364, n6365, n6631;
    wire [2:0]n1801;
    
    wire n5145, n5139, n6415, n6637, n6591, n6640, n6643, n25_adj_664, 
        n6224, n5131, n6357, n6233, clk_div_100k_enable_20, n16_adj_665, 
        n8, n6222, n15, n6, sda_r_N_627, n5123;
    wire [2:0]n2562;
    wire [2:0]n1931;
    
    wire n6652, n6651, n159, n6325, n6217, n147, n6634, n6639, 
        n6359, n4269, n6360, n6361, n7, n6362, n6269, n6347, 
        n144, n135, n138, n6636, n6517, n132, n156, n6238, n5095, 
        n4_adj_668, n5_adj_669, n8_adj_670, n12, n8_adj_671, n10, 
        n15_adj_672, sda_ctl_N_599, n1_adj_673, n6060, n10_adj_674, 
        n6040, n6044, n4378;
    
    LUT4 i1_2_lut_rep_43_3_lut_4_lut (.A(state_current[2]), .B(state_current[3]), 
         .C(n6650), .D(state_current[5]), .Z(n6626)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_43_3_lut_4_lut.init = 16'h0006;
    LUT4 i1184_2_lut_3_lut (.A(cnt_start[0]), .B(cnt_start[1]), .C(cnt_start[2]), 
         .Z(n1718[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1184_2_lut_3_lut.init = 16'h7878;
    LUT4 i2920_2_lut_rep_61 (.A(state_current[0]), .B(state_current[5]), 
         .Z(n6644)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2920_2_lut_rep_61.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(state_current[0]), .B(state_current[5]), .C(state_current[6]), 
         .D(state_current[13]), .Z(n5)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfeee;
    LUT4 i1161_2_lut_rep_62 (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .Z(n6645)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(423[14:15])
    defparam i1161_2_lut_rep_62.init = 16'heeee;
    LUT4 i1206_3_lut (.A(cnt_ack_addr[2]), .B(cnt_ack_addr[1]), .C(cnt_ack_addr[0]), 
         .Z(n1749[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(384[29:48])
    defparam i1206_3_lut.init = 16'h6a6a;
    LUT4 i3782_1_lut (.A(cnt_write_reg_data[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam i3782_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_4_lut_adj_47 (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .C(cnt_ack_r_addr[0]), .D(n25_adj_649), .Z(n4)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(423[14:15])
    defparam i1_3_lut_4_lut_adj_47.init = 16'h00fe;
    FD1P3IX cnt_dev_addr_1109__i0 (.D(n21_adj_675[0]), .SP(clk_div_100k_enable_28), 
            .CD(n5853), .CK(clk_div_100k), .Q(cnt_dev_addr[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1109__i0.GSR = "ENABLED";
    LUT4 i195_3_lut_4_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[2]), 
         .C(scl_c), .D(cnt_ack_r_addr[0]), .Z(n162)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(423[14:15])
    defparam i195_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1396_1_lut_rep_63 (.A(cnt_ack_r_addr[0]), .Z(n6646)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(423[14:15])
    defparam i1396_1_lut_rep_63.init = 16'h5555;
    LUT4 i2254_4_lut (.A(clk_div_100k_enable_27), .B(cnt_stop[1]), .C(n6625), 
         .D(cnt_stop[2]), .Z(n4417)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam i2254_4_lut.init = 16'ha8a0;
    LUT4 i4211_2_lut_4_lut_4_lut (.A(cnt_ack_r_addr[0]), .B(state_current[4]), 
         .C(\state_next_14__N_373[9] ), .D(n6645), .Z(n6214)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(423[14:15])
    defparam i4211_2_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i2832_2_lut_4_lut_4_lut (.A(cnt_ack_r_addr[0]), .B(state_current[4]), 
         .C(\state_next_14__N_373[9] ), .D(n6645), .Z(n2626[1])) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(423[14:15])
    defparam i2832_2_lut_4_lut_4_lut.init = 16'hccc4;
    FD1S3IX state_current__i3 (.D(n2593[2]), .CK(clk_div_100k), .CD(n4399), 
            .Q(state_current[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i3.GSR = "ENABLED";
    LUT4 i1394_1_lut (.A(cnt_stop[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(295[24:37])
    defparam i1394_1_lut.init = 16'h5555;
    LUT4 i2811_2_lut_rep_64 (.A(state_current[0]), .B(state_current[1]), 
         .Z(n6647)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2811_2_lut_rep_64.init = 16'heeee;
    LUT4 i3755_2_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .Z(n21_adj_676[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam i3755_2_lut.init = 16'h6666;
    LUT4 i4200_3_lut_rep_37_3_lut (.A(clk_div_100k_enable_19), .B(n25_adj_651), 
         .C(n6275), .Z(clk_div_100k_enable_21)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i4200_3_lut_rep_37_3_lut.init = 16'hb0b0;
    LUT4 i1221_2_lut (.A(cnt_ack_r_addr[1]), .B(cnt_ack_r_addr[0]), .Z(n1775[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(420[31:52])
    defparam i1221_2_lut.init = 16'h6666;
    LUT4 n25_bdd_4_lut (.A(cnt_stop[1]), .B(sda_r), .C(cnt_stop[2]), .D(cnt_stop[0]), 
         .Z(n6554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n25_bdd_4_lut.init = 16'hceda;
    LUT4 i2_4_lut (.A(state_next_14__N_354[13]), .B(state_current[4]), .C(n1252), 
         .D(state_current[13]), .Z(n6232)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(207[4] 233[11])
    defparam i2_4_lut.init = 16'h0200;
    LUT4 i2_3_lut (.A(cnt_stop[1]), .B(cnt_stop[2]), .C(cnt_stop[0]), 
         .Z(state_next_14__N_354[13])) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(295[24:37])
    defparam i2_3_lut.init = 16'hbfbf;
    FD1S3IX state_current__i4 (.D(n5129), .CK(clk_div_100k), .CD(n6271), 
            .Q(state_current[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_45_3_lut_4_lut (.A(state_current[0]), .B(state_current[1]), 
         .C(n6650), .D(state_current[2]), .Z(n6628)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_45_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2965_3_lut_4_lut (.A(state_current[0]), .B(state_current[1]), 
         .C(n5058), .D(n6285), .Z(n5125)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2965_3_lut_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_49_3_lut (.A(state_current[0]), .B(state_current[1]), 
         .C(state_current[2]), .Z(n6632)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_49_3_lut.init = 16'hfefe;
    FD1P3IX cnt_write_reg_data_1111__i2 (.D(n21[2]), .SP(clk_div_100k_enable_21), 
            .CD(n4403), .CK(clk_div_100k), .Q(cnt_write_reg_data[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1111__i2.GSR = "ENABLED";
    LUT4 equal_486_i3_2_lut (.A(cnt_start[1]), .B(cnt_start[2]), .Z(n3)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(349[14:15])
    defparam equal_486_i3_2_lut.init = 16'heeee;
    FD1P3IX cnt_write_reg_data_1111__i3 (.D(n21[3]), .SP(clk_div_100k_enable_21), 
            .CD(n4403), .CK(clk_div_100k), .Q(cnt_write_reg_data[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1111__i3.GSR = "ENABLED";
    LUT4 i1175_1_lut_rep_65 (.A(cnt_start[0]), .Z(n6648)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(347[26:41])
    defparam i1175_1_lut_rep_65.init = 16'h5555;
    FD1P3IX cnt_ack_r_addr_i0_i0 (.D(n6646), .SP(clk_div_100k_enable_14), 
            .CD(n4422), .CK(clk_div_100k), .Q(cnt_ack_r_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i0.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(\state_next_14__N_373[9] ), .B(n6635), .C(n1044), 
         .D(state_current[5]), .Z(n6097)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    FD1P3IX cnt_start_i0_i2 (.D(n1718[2]), .SP(clk_div_100k_enable_19), 
            .CD(n4424), .CK(clk_div_100k), .Q(cnt_start[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i2.GSR = "ENABLED";
    LUT4 i2260_2_lut_3_lut_3_lut (.A(clk_div_100k_enable_19), .B(n25_adj_651), 
         .C(n6275), .Z(n4403)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2260_2_lut_3_lut_3_lut.init = 16'h8080;
    LUT4 select_638_Select_0_i16_4_lut_4_lut (.A(cnt_start[0]), .B(n3), 
         .C(sda_r), .D(n6275), .Z(n16)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(347[26:41])
    defparam select_638_Select_0_i16_4_lut_4_lut.init = 16'h00d1;
    FD1P3AY scl_r_513 (.D(n6109), .SP(cnt_start_2__N_429), .CK(clk_div_100k), 
            .Q(scl_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam scl_r_513.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_48 (.A(state_current[0]), .B(n6319), .C(n4985), 
         .D(state_current[1]), .Z(n1044)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_48.init = 16'h0102;
    LUT4 i3791_2_lut_3_lut (.A(cnt_write_reg_data[1]), .B(cnt_write_reg_data[0]), 
         .C(cnt_write_reg_data[2]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam i3791_2_lut_3_lut.init = 16'h7878;
    FD1P3AY sda_ctl_511 (.D(n6226), .SP(cnt_start_2__N_429), .CK(clk_div_100k), 
            .Q(sda_ctl)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam sda_ctl_511.GSR = "ENABLED";
    FD1S3IX state_current__i6 (.D(n5148), .CK(clk_div_100k), .CD(n4399), 
            .Q(state_current[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i6.GSR = "ENABLED";
    FD1S3IX state_current__i13 (.D(n2593[7]), .CK(clk_div_100k), .CD(n4399), 
            .Q(state_current[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i13.GSR = "ENABLED";
    LUT4 n6554_bdd_2_lut_4_lut (.A(state_current[6]), .B(state_current[13]), 
         .C(n6627), .D(n6554), .Z(n6555)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(566[5:9])
    defparam n6554_bdd_2_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut (.A(state_current[2]), .B(state_current[1]), .Z(n6272)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX mux_835_i4 (.BLUT(n2626[1]), .ALUT(n5097), .C0(n1252), .Z(n2586[3]));
    FD1P3IX cnt_dev_addr_1109__i3 (.D(n21_adj_675[3]), .SP(clk_div_100k_enable_28), 
            .CD(n5853), .CK(clk_div_100k), .Q(cnt_dev_addr[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1109__i3.GSR = "ENABLED";
    LUT4 i3798_3_lut_4_lut (.A(cnt_write_reg_data[1]), .B(cnt_write_reg_data[0]), 
         .C(cnt_write_reg_data[2]), .D(cnt_write_reg_data[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam i3798_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4196_3_lut_3_lut (.A(clk_div_100k_enable_19), .B(n6275), .C(n25_adj_653), 
         .Z(clk_div_100k_enable_28)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i4196_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i3_3_lut_4_lut (.A(cnt_write_reg_data[1]), .B(cnt_write_reg_data[0]), 
         .C(cnt_write_reg_data[3]), .D(cnt_write_reg_data[2]), .Z(n5113)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam i3_3_lut_4_lut.init = 16'h8000;
    FD1S3IX i2c_ack__i1 (.D(i2c_ack_7__N_502[2]), .CK(clk_div_100k), .CD(n6252), 
            .Q(\i2c_ack[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(597[8] 685[7])
    defparam i2c_ack__i1.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i2 (.D(n1749[2]), .SP(clk_div_100k_enable_18), 
            .CD(n4426), .CK(clk_div_100k), .Q(cnt_ack_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i2.GSR = "ENABLED";
    LUT4 i4081_2_lut_rep_66 (.A(state_current[3]), .B(state_current[5]), 
         .Z(n6649)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4081_2_lut_rep_66.init = 16'heeee;
    LUT4 i1_2_lut_rep_46_3_lut_4_lut (.A(state_current[3]), .B(state_current[5]), 
         .C(n6650), .D(state_current[4]), .Z(n6629)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_46_3_lut_4_lut.init = 16'hfffe;
    FD1S3IX state_current__i1 (.D(n2593[0]), .CK(clk_div_100k), .CD(n4399), 
            .Q(state_current[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i1.GSR = "ENABLED";
    LUT4 i4191_4_lut (.A(n6647), .B(state_current[13]), .C(n6626), .D(state_current[4]), 
         .Z(n6037)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+(D))))) */ ;
    defparam i4191_4_lut.init = 16'h0023;
    LUT4 i3_4_lut_adj_49 (.A(state_current[1]), .B(state_current[2]), .C(state_current[0]), 
         .D(n6629), .Z(n25_adj_653)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(356[5:18])
    defparam i3_4_lut_adj_49.init = 16'hfffd;
    LUT4 i4213_3_lut_rep_38_3_lut (.A(clk_div_100k_enable_19), .B(n25_adj_649), 
         .C(n6275), .Z(clk_div_100k_enable_14)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i4213_3_lut_rep_38_3_lut.init = 16'hb0b0;
    FD1P3IX cnt_write_reg_data_1111__i0 (.D(n21[0]), .SP(clk_div_100k_enable_21), 
            .CD(n4403), .CK(clk_div_100k), .Q(cnt_write_reg_data[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1111__i0.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_50 (.A(n1044), .B(state_next_14__N_234[0]), .C(state_current[0]), 
         .Z(n6024)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_50.init = 16'h8080;
    LUT4 i2259_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_19), .B(n6645), 
         .C(n25_adj_649), .D(n6275), .Z(n4422)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2259_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 i4206_3_lut_rep_39_3_lut (.A(clk_div_100k_enable_19), .B(n25_adj_654), 
         .C(n6275), .Z(clk_div_100k_enable_23)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i4206_3_lut_rep_39_3_lut.init = 16'hb0b0;
    LUT4 i2_3_lut_adj_51 (.A(cnt_start[1]), .B(cnt_start[2]), .C(cnt_start[0]), 
         .Z(state_next_14__N_234[0])) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(351[14:15])
    defparam i2_3_lut_adj_51.init = 16'hfdfd;
    FD1P3IX cnt_stop_i0_i0 (.D(n1), .SP(clk_div_100k_enable_27), .CD(n4417), 
            .CK(clk_div_100k), .Q(cnt_stop[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i0.GSR = "ENABLED";
    LUT4 i1228_3_lut (.A(cnt_ack_r_addr[2]), .B(cnt_ack_r_addr[1]), .C(cnt_ack_r_addr[0]), 
         .Z(n1775[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(420[31:52])
    defparam i1228_3_lut.init = 16'h6a6a;
    FD1P3IX cnt_reg_addr_1110__i1 (.D(n21_adj_676[1]), .SP(clk_div_100k_enable_24), 
            .CD(n4406), .CK(clk_div_100k), .Q(cnt_reg_addr[1]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1110__i1.GSR = "ENABLED";
    LUT4 i2257_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_19), .B(n6641), 
         .C(n25_adj_654), .D(n6275), .Z(n4420)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2257_3_lut_4_lut_4_lut.init = 16'hac00;
    FD1P3IX cnt_ack_r_addr_i0_i1 (.D(n1775[1]), .SP(clk_div_100k_enable_14), 
            .CD(n4422), .CK(clk_div_100k), .Q(cnt_ack_r_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i1.GSR = "ENABLED";
    PFUMX mux_836_i8 (.BLUT(n6232), .ALUT(n6097), .C0(n1287), .Z(n2593[7]));
    FD1P3IX cnt_reg_addr_1110__i2 (.D(n21_adj_676[2]), .SP(clk_div_100k_enable_24), 
            .CD(n4406), .CK(clk_div_100k), .Q(cnt_reg_addr[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1110__i2.GSR = "ENABLED";
    LUT4 i1395_1_lut (.A(cnt_ack_addr[0]), .Z(n1_adj_656)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(387[14:15])
    defparam i1395_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_50_3_lut (.A(state_current[3]), .B(state_current[5]), 
         .C(state_current[4]), .Z(n6633)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_50_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_52 (.A(n1252), .B(\state_next_14__N_373[9] ), .C(state_current[2]), 
         .D(n5_adj_657), .Z(n6025)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;
    defparam i2_4_lut_adj_52.init = 16'h2080;
    LUT4 i4173_3_lut (.A(n1287), .B(\i2c_config[1] ), .C(n6355), .Z(n4399)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam i4173_3_lut.init = 16'h7373;
    LUT4 i4179_3_lut (.A(n1044), .B(state_next_14__N_249[2]), .C(state_current[0]), 
         .Z(n6063)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i4179_3_lut.init = 16'h0808;
    LUT4 i4198_3_lut_rep_40_3_lut (.A(clk_div_100k_enable_19), .B(n25_adj_658), 
         .C(n6275), .Z(clk_div_100k_enable_24)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i4198_3_lut_rep_40_3_lut.init = 16'hb0b0;
    PFUMX mux_836_i1 (.BLUT(n6037), .ALUT(n6024), .C0(n1287), .Z(n2593[0]));
    FD1P3IX cnt_reg_addr_1110__i3 (.D(n21_adj_676[3]), .SP(clk_div_100k_enable_24), 
            .CD(n4406), .CK(clk_div_100k), .Q(cnt_reg_addr[3]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1110__i3.GSR = "ENABLED";
    LUT4 i3762_2_lut_3_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .C(cnt_reg_addr[2]), 
         .Z(n21_adj_676[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam i3762_2_lut_3_lut.init = 16'h7878;
    LUT4 i3769_3_lut_4_lut (.A(cnt_reg_addr[1]), .B(cnt_reg_addr[0]), .C(cnt_reg_addr[2]), 
         .D(cnt_reg_addr[3]), .Z(n21_adj_676[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam i3769_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3740_3_lut_4_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), .C(cnt_dev_addr[2]), 
         .D(cnt_dev_addr[3]), .Z(n21_adj_675[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam i3740_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3_3_lut_4_lut_adj_53 (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), 
         .C(cnt_dev_addr[3]), .D(cnt_dev_addr[2]), .Z(state_next_14__N_249[2])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam i3_3_lut_4_lut_adj_53.init = 16'h8000;
    FD1P3IX cnt_ack_r_addr_i0_i2 (.D(n1775[2]), .SP(clk_div_100k_enable_14), 
            .CD(n4422), .CK(clk_div_100k), .Q(cnt_ack_r_addr[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_r_addr_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_ack_addr_i0_i0 (.D(n1_adj_656), .SP(clk_div_100k_enable_18), 
            .CD(n4426), .CK(clk_div_100k), .Q(cnt_ack_addr[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i0.GSR = "ENABLED";
    LUT4 i3733_2_lut_3_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), .C(cnt_dev_addr[2]), 
         .Z(n21_adj_675[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam i3733_2_lut_3_lut.init = 16'h7878;
    LUT4 i3784_2_lut (.A(cnt_write_reg_data[1]), .B(cnt_write_reg_data[0]), 
         .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam i3784_2_lut.init = 16'h6666;
    PFUMX mux_836_i3 (.BLUT(n6025), .ALUT(n6063), .C0(n1287), .Z(n2593[2]));
    LUT4 i2255_2_lut_3_lut_3_lut (.A(clk_div_100k_enable_19), .B(n25_adj_658), 
         .C(n6275), .Z(n4406)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2255_2_lut_3_lut_3_lut.init = 16'h8080;
    LUT4 equal_1402_i24_2_lut_rep_67 (.A(state_current[6]), .B(state_current[13]), 
         .Z(n6650)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(356[5:18])
    defparam equal_1402_i24_2_lut_rep_67.init = 16'heeee;
    LUT4 i4204_3_lut_3_lut (.A(clk_div_100k_enable_19), .B(n6625), .C(n6275), 
         .Z(clk_div_100k_enable_27)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i4204_3_lut_3_lut.init = 16'hb0b0;
    FD1P3IX cnt_ack_w_data_i0_i0 (.D(n1_adj_662), .SP(clk_div_100k_enable_23), 
            .CD(n4420), .CK(clk_div_100k), .Q(cnt_ack_w_data[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_w_data_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_start_i0_i0 (.D(n6648), .SP(clk_div_100k_enable_19), .CD(n4424), 
            .CK(clk_div_100k), .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i0.GSR = "ENABLED";
    LUT4 i4098_3_lut_4_lut (.A(state_current[6]), .B(state_current[13]), 
         .C(state_current[1]), .D(state_current[0]), .Z(n6315)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(356[5:18])
    defparam i4098_3_lut_4_lut.init = 16'hfeef;
    LUT4 i4202_3_lut_rep_41_3_lut (.A(clk_div_100k_enable_19), .B(n25_adj_663), 
         .C(n6275), .Z(clk_div_100k_enable_18)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i4202_3_lut_rep_41_3_lut.init = 16'hb0b0;
    LUT4 i1397_1_lut (.A(cnt_ack_w_data[0]), .Z(n1_adj_662)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(459[14:15])
    defparam i1397_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(n6642), .B(n6296), .C(n4298), .D(n4295), .Z(n1287)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1110;
    L6MUX21 i4148 (.D0(n6363), .D1(n6364), .SD(cnt_write_reg_data[3]), 
            .Z(n6365));
    LUT4 i1_2_lut_rep_48_3_lut (.A(state_current[6]), .B(state_current[13]), 
         .C(state_current[5]), .Z(n6631)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(356[5:18])
    defparam i1_2_lut_rep_48_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_54 (.A(state_current[1]), .B(state_current[0]), .C(state_current[6]), 
         .D(state_current[5]), .Z(n4298)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_54.init = 16'h0012;
    LUT4 i1243_2_lut (.A(cnt_ack_w_data[1]), .B(cnt_ack_w_data[0]), .Z(n1801[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(456[31:52])
    defparam i1243_2_lut.init = 16'h6666;
    PFUMX mux_836_i6 (.BLUT(n6214), .ALUT(n5145), .C0(n1287), .Z(n5148));
    LUT4 i4207_2_lut_3_lut (.A(state_current[6]), .B(state_current[13]), 
         .C(n5139), .Z(n6415)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(356[5:18])
    defparam i4207_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_55 (.A(state_current[0]), .B(state_current[6]), .C(state_current[5]), 
         .D(state_current[1]), .Z(n4295)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_55.init = 16'h0012;
    LUT4 i4102_2_lut_3_lut_4_lut (.A(state_current[6]), .B(state_current[13]), 
         .C(state_current[2]), .D(state_current[5]), .Z(n6319)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(356[5:18])
    defparam i4102_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4186_4_lut (.A(i2c_ack_7__N_502[2]), .B(n1044), .C(n5113), .D(state_current[5]), 
         .Z(n5145)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i4186_4_lut.init = 16'h0322;
    LUT4 i2263_3_lut_4_lut_4_lut (.A(clk_div_100k_enable_19), .B(n6637), 
         .C(n25_adj_663), .D(n6275), .Z(n4426)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2263_3_lut_4_lut_4_lut.init = 16'hac00;
    LUT4 state_current_2__bdd_4_lut_4317 (.A(state_current[2]), .B(state_current[13]), 
         .C(state_current[3]), .D(state_current[4]), .Z(n6591)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam state_current_2__bdd_4_lut_4317.init = 16'hfee8;
    LUT4 i1_3_lut_4_lut_adj_56 (.A(n6640), .B(n6631), .C(n6647), .D(state_current[4]), 
         .Z(n1252)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_56.init = 16'h0002;
    LUT4 i2826_2_lut (.A(state_current[4]), .B(state_current[3]), .Z(n4985)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2826_2_lut.init = 16'heeee;
    LUT4 i4138_4_lut (.A(n6644), .B(state_current[6]), .C(n6591), .D(state_current[1]), 
         .Z(n6355)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4138_4_lut.init = 16'hfffe;
    FD1P3IX cnt_ack_addr_i0_i1 (.D(n1749[1]), .SP(clk_div_100k_enable_18), 
            .CD(n4426), .CK(clk_div_100k), .Q(cnt_ack_addr[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_addr_i0_i1.GSR = "ENABLED";
    LUT4 i2261_3_lut_4_lut (.A(n6643), .B(cnt_start[2]), .C(state_current[0]), 
         .D(clk_div_100k_enable_19), .Z(n4424)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i2261_3_lut_4_lut.init = 16'hef00;
    LUT4 i1199_2_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[0]), .Z(n1749[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(384[29:48])
    defparam i1199_2_lut.init = 16'h6666;
    LUT4 i1428_1_lut (.A(sda_ctl), .Z(n3577)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(49[10:13])
    defparam i1428_1_lut.init = 16'h5555;
    LUT4 equal_1400_i25_2_lut_3_lut_4_lut (.A(state_current[2]), .B(n6647), 
         .C(n6650), .D(n6633), .Z(n25_adj_664)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(453[5:18])
    defparam equal_1400_i25_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(n1287), .B(\i2c_config[1] ), .C(n6355), .Z(n6224)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam i1_3_lut.init = 16'hfbfb;
    LUT4 i2_3_lut_rep_42_4_lut (.A(n6633), .B(n6632), .C(state_current[13]), 
         .D(state_current[6]), .Z(n6625)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(453[5:18])
    defparam i2_3_lut_rep_42_4_lut.init = 16'hffef;
    LUT4 mux_840_i2_3_lut (.A(state_next_14__N_249[2]), .B(state_next_14__N_234[0]), 
         .C(state_current[0]), .Z(n5131)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(236[4] 263[11])
    defparam mux_840_i2_3_lut.init = 16'h3535;
    LUT4 i1177_2_lut (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n1718[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(347[26:41])
    defparam i1177_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_57 (.A(state_current[6]), .B(n6357), .C(state_current[13]), 
         .D(n6233), .Z(clk_div_100k_enable_20)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_57.init = 16'h1511;
    LUT4 i2_3_lut_4_lut (.A(n6633), .B(n6632), .C(state_current[13]), 
         .D(state_current[6]), .Z(n25_adj_654)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(453[5:18])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_adj_58 (.A(n5139), .B(n6647), .C(n16_adj_665), .D(n6649), 
         .Z(n6233)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_adj_58.init = 16'h5554;
    LUT4 i1_4_lut_adj_59 (.A(n25_adj_664), .B(n16), .C(n8), .D(n6555), 
         .Z(n6222)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_59.init = 16'hfffd;
    LUT4 i3_4_lut_adj_60 (.A(n15), .B(n6), .C(sda_r_N_627), .D(n25_adj_658), 
         .Z(n8)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i3_4_lut_adj_60.init = 16'heefe;
    LUT4 i4164_2_lut_2_lut_3_lut (.A(\i2c_config[1] ), .B(n1287), .C(n1044), 
         .Z(n5123)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i4164_2_lut_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1250_3_lut (.A(cnt_ack_w_data[2]), .B(cnt_ack_w_data[1]), .C(cnt_ack_w_data[0]), 
         .Z(n1801[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(456[31:52])
    defparam i1250_3_lut.init = 16'h6a6a;
    LUT4 mux_830_i2_3_lut_4_lut (.A(cnt_ack_w_data[0]), .B(n6641), .C(state_current[5]), 
         .D(n5113), .Z(n2562[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(459[14:15])
    defparam mux_830_i2_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i4079_2_lut (.A(state_current[13]), .B(state_current[3]), .Z(n6296)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4079_2_lut.init = 16'heeee;
    LUT4 i3_3_lut_4_lut_adj_61 (.A(n6650), .B(n6632), .C(state_current[5]), 
         .D(n4985), .Z(n25_adj_651)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(453[5:18])
    defparam i3_3_lut_4_lut_adj_61.init = 16'hffef;
    LUT4 i3753_1_lut (.A(cnt_reg_addr[0]), .Z(n21_adj_676[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam i3753_1_lut.init = 16'h5555;
    LUT4 i2896_2_lut_rep_58 (.A(cnt_ack_w_data[2]), .B(cnt_ack_w_data[1]), 
         .Z(n6641)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2896_2_lut_rep_58.init = 16'heeee;
    LUT4 i1353_2_lut (.A(cnt_stop[1]), .B(cnt_stop[0]), .Z(n1931[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(569[25:39])
    defparam i1353_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_44_3_lut_4_lut (.A(state_current[4]), .B(n6649), .C(n6647), 
         .D(state_current[2]), .Z(n6627)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(453[5:18])
    defparam i1_2_lut_rep_44_3_lut_4_lut.init = 16'hfffe;
    LUT4 cnt_ack_w_data_2__I_0_577_i5_2_lut_rep_52_3_lut (.A(cnt_ack_w_data[2]), 
         .B(cnt_ack_w_data[1]), .C(cnt_ack_w_data[0]), .Z(n6635)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam cnt_ack_w_data_2__I_0_577_i5_2_lut_rep_52_3_lut.init = 16'hefef;
    LUT4 i1868_4_lut_then_1_lut (.A(sda_r), .Z(n6652)) /* synthesis lut_function=(A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(396[13] 414[20])
    defparam i1868_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 i1868_4_lut_else_1_lut (.A(cnt_reg_addr[2]), .B(cnt_reg_addr[1]), 
         .C(\i2c_config[1] ), .D(cnt_reg_addr[3]), .Z(n6651)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(396[13] 414[20])
    defparam i1868_4_lut_else_1_lut.init = 16'h0040;
    LUT4 i193_3_lut_4_lut (.A(cnt_ack_w_data[2]), .B(cnt_ack_w_data[1]), 
         .C(scl_c), .D(cnt_ack_w_data[0]), .Z(n159)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i193_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4224_3_lut_rep_47_4_lut_4_lut (.A(n6650), .B(n6272), .C(n6649), 
         .D(state_current[4]), .Z(clk_div_100k_enable_19)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4224_3_lut_rep_47_4_lut_4_lut.init = 16'h0001;
    LUT4 i3726_2_lut (.A(cnt_dev_addr[1]), .B(cnt_dev_addr[0]), .Z(n21_adj_675[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam i3726_2_lut.init = 16'h6666;
    LUT4 i4177_2_lut_3_lut_4_lut (.A(cnt_ack_w_data[2]), .B(cnt_ack_w_data[1]), 
         .C(\state_next_14__N_373[9] ), .D(cnt_ack_w_data[0]), .Z(i2c_ack_7__N_502[2])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4177_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_62 (.A(n6325), .B(n6217), .C(state_current[2]), 
         .D(n147), .Z(n6109)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_62.init = 16'hcdcc;
    LUT4 i2850_2_lut_rep_59 (.A(state_current[2]), .B(state_current[4]), 
         .Z(n6642)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2850_2_lut_rep_59.init = 16'heeee;
    LUT4 i4166_4_lut (.A(state_current[6]), .B(n6634), .C(n6644), .D(n6639), 
         .Z(n6252)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i4166_4_lut.init = 16'hfffd;
    LUT4 i4142_3_lut (.A(i2c_reg_data[7]), .B(i2c_reg_data[6]), .C(cnt_write_reg_data[1]), 
         .Z(n6359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4142_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_63 (.A(n6650), .B(n6632), .C(state_current[4]), 
         .D(n6649), .Z(n25_adj_649)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(453[5:18])
    defparam i2_3_lut_4_lut_adj_63.init = 16'hffef;
    FD1S3IX state_current__i7 (.D(n2562[1]), .CK(clk_div_100k), .CD(n4269), 
            .Q(state_current[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i7.GSR = "ENABLED";
    LUT4 i4116_2_lut_rep_51_3_lut (.A(state_current[2]), .B(state_current[4]), 
         .C(state_current[3]), .Z(n6634)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4116_2_lut_rep_51_3_lut.init = 16'hfefe;
    LUT4 i1162_2_lut_rep_60 (.A(cnt_start[0]), .B(cnt_start[1]), .Z(n6643)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1162_2_lut_rep_60.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_64 (.A(n6650), .B(n6633), .C(state_current[2]), 
         .D(n6647), .Z(n25_adj_663)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(381[5:19])
    defparam i2_3_lut_4_lut_adj_64.init = 16'hffef;
    FD1S3IX state_current__i5 (.D(n2586[3]), .CK(clk_div_100k), .CD(n6224), 
            .Q(state_current[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i5.GSR = "ENABLED";
    LUT4 i4143_3_lut (.A(i2c_reg_data[5]), .B(i2c_reg_data[4]), .C(cnt_write_reg_data[1]), 
         .Z(n6360)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4143_3_lut.init = 16'hcaca;
    LUT4 i1360_3_lut (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[0]), 
         .Z(n1931[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(569[25:39])
    defparam i1360_3_lut.init = 16'h6a6a;
    FD1S3IX state_current__i2 (.D(n5131), .CK(clk_div_100k), .CD(n5123), 
            .Q(state_current[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(93[4:32])
    defparam state_current__i2.GSR = "ENABLED";
    LUT4 i4144_3_lut (.A(i2c_reg_data[3]), .B(i2c_reg_data[2]), .C(cnt_write_reg_data[1]), 
         .Z(n6361)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4144_3_lut.init = 16'hcaca;
    LUT4 i4194_4_lut (.A(n7), .B(n6325), .C(\i2c_config[1] ), .D(n1287), 
         .Z(n6271)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i4194_4_lut.init = 16'hffdf;
    FD1P3IX cnt_start_i0_i1 (.D(n1718[1]), .SP(clk_div_100k_enable_19), 
            .CD(n4424), .CK(clk_div_100k), .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_start_i0_i1.GSR = "ENABLED";
    LUT4 i4145_3_lut (.A(i2c_reg_data[1]), .B(i2c_reg_data[0]), .C(cnt_write_reg_data[1]), 
         .Z(n6362)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4145_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_65 (.A(n6269), .B(n6347), .C(state_current[2]), 
         .D(n144), .Z(n6217)) /* synthesis lut_function=(!(A (B)+!A (B+(C+!(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i2_4_lut_adj_65.init = 16'h2322;
    LUT4 i4140_3_lut_4_lut (.A(state_current[3]), .B(n6642), .C(state_current[1]), 
         .D(n6644), .Z(n6357)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4140_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_66 (.A(n135), .B(n138), .C(n6649), .D(n6636), 
         .Z(n147)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_66.init = 16'h0ace;
    LUT4 i1_4_lut_adj_67 (.A(cnt_ack_addr[0]), .B(n6325), .C(scl_c), .D(n6637), 
         .Z(n6269)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_67.init = 16'h3022;
    LUT4 i1_4_lut_adj_68 (.A(state_current[0]), .B(n6639), .C(n6517), 
         .D(n132), .Z(n144)) /* synthesis lut_function=(!(A (B+!(C))+!A !((D)+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_68.init = 16'h7531;
    LUT4 i1_4_lut_adj_69 (.A(state_current[4]), .B(state_current[6]), .C(n159), 
         .D(n162), .Z(n135)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_69.init = 16'h7350;
    LUT4 i1_2_lut_adj_70 (.A(state_current[2]), .B(state_current[4]), .Z(n16_adj_665)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_70.init = 16'h8888;
    LUT4 i1_4_lut_adj_71 (.A(state_current[3]), .B(cnt_reg_addr[0]), .C(cnt_write_reg_data[0]), 
         .D(state_current[5]), .Z(n138)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_71.init = 16'h50dc;
    LUT4 i2_3_lut_4_lut_adj_72 (.A(n6650), .B(n6633), .C(state_current[0]), 
         .D(n6272), .Z(n6275)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(381[5:19])
    defparam i2_3_lut_4_lut_adj_72.init = 16'hffef;
    LUT4 i1_4_lut_adj_73 (.A(cnt_dev_addr[0]), .B(state_current[1]), .C(state_current[13]), 
         .D(n156), .Z(n132)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_73.init = 16'h3b0a;
    LUT4 i192_4_lut (.A(cnt_stop[0]), .B(scl_c), .C(cnt_stop[1]), .D(cnt_stop[2]), 
         .Z(n156)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i192_4_lut.init = 16'hccca;
    LUT4 i4209_4_lut (.A(n6415), .B(n5), .C(n4985), .D(n6272), .Z(cnt_start_2__N_429)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i4209_4_lut.init = 16'haaab;
    LUT4 i1_4_lut_adj_74 (.A(\i2c_config[1] ), .B(cnt_dev_addr[1]), .C(cnt_dev_addr[3]), 
         .D(cnt_dev_addr[2]), .Z(n6238)) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_74.init = 16'h0802;
    LUT4 i1_2_lut_3_lut (.A(\i2c_config[1] ), .B(n1287), .C(n1044), .Z(n4269)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf7f7;
    FD1P3AY sda_r_512 (.D(n6222), .SP(clk_div_100k_enable_20), .CK(clk_div_100k), 
            .Q(sda_r)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam sda_r_512.GSR = "ENABLED";
    LUT4 select_638_Select_0_i15_4_lut (.A(n6238), .B(n25_adj_653), .C(sda_r), 
         .D(cnt_dev_addr[0]), .Z(n15)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam select_638_Select_0_i15_4_lut.init = 16'h3022;
    LUT4 mux_841_i2_4_lut (.A(n5095), .B(\state_next_14__N_373[9] ), .C(state_current[2]), 
         .D(n5_adj_657), .Z(n5129)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C)+!B (C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(236[4] 263[11])
    defparam mux_841_i2_4_lut.init = 16'h0535;
    LUT4 i2976_4_lut (.A(state_current[4]), .B(n5125), .C(n4_adj_668), 
         .D(state_current[5]), .Z(n5139)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2976_4_lut.init = 16'hccc8;
    LUT4 i4181_4_lut (.A(clk_div_100k_enable_19), .B(n6634), .C(state_current[5]), 
         .D(n6315), .Z(n5853)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(86[14:27])
    defparam i4181_4_lut.init = 16'haaa8;
    LUT4 i1_4_lut_adj_75 (.A(state_current[3]), .B(state_current[1]), .C(state_current[2]), 
         .D(state_current[0]), .Z(n4_adj_668)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_75.init = 16'hfefa;
    LUT4 i1_4_lut_adj_76 (.A(state_current[3]), .B(state_current[4]), .C(state_current[2]), 
         .D(state_current[5]), .Z(n6285)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_76.init = 16'hffec;
    LUT4 i4110_2_lut_rep_53 (.A(state_current[4]), .B(state_current[6]), 
         .Z(n6636)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4110_2_lut_rep_53.init = 16'heeee;
    FD1P3IX cnt_write_reg_data_1111__i1 (.D(n21[1]), .SP(clk_div_100k_enable_21), 
            .CD(n4403), .CK(clk_div_100k), .Q(cnt_write_reg_data[1]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(431[35:60])
    defparam cnt_write_reg_data_1111__i1.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(state_current[4]), .B(state_current[6]), 
         .C(n6640), .D(state_current[5]), .Z(n7)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2899_4_lut (.A(state_current[5]), .B(state_current[3]), .C(state_current[4]), 
         .D(state_current[2]), .Z(n5058)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2899_4_lut.init = 16'hffec;
    LUT4 i4130_2_lut_3_lut_4_lut (.A(state_current[4]), .B(state_current[6]), 
         .C(state_current[3]), .D(state_current[5]), .Z(n6347)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4130_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1142_2_lut_rep_54 (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), .Z(n6637)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(386[14:15])
    defparam i1142_2_lut_rep_54.init = 16'heeee;
    FD1P3IX cnt_ack_w_data_i0_i1 (.D(n1801[1]), .SP(clk_div_100k_enable_23), 
            .CD(n4420), .CK(clk_div_100k), .Q(cnt_ack_w_data[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_w_data_i0_i1.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_77 (.A(cnt_reg_addr[0]), .B(cnt_reg_addr[1]), .C(cnt_reg_addr[2]), 
         .D(cnt_reg_addr[3]), .Z(n5095)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_77.init = 16'h8000;
    LUT4 cnt_ack_addr_2__I_0_572_i5_2_lut_3_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), 
         .C(cnt_ack_addr[0]), .Z(n5_adj_669)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(386[14:15])
    defparam cnt_ack_addr_2__I_0_572_i5_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_78 (.A(n25_adj_664), .B(n8_adj_670), .C(n12), .D(n8_adj_671), 
         .Z(n6226)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_78.init = 16'hfffd;
    LUT4 select_638_Select_0_i6_4_lut (.A(n6365), .B(n25_adj_651), .C(sda_r), 
         .D(cnt_write_reg_data[0]), .Z(n6)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam select_638_Select_0_i6_4_lut.init = 16'h3022;
    LUT4 i1_4_lut_adj_79 (.A(sda_ctl), .B(n25_adj_663), .C(n4), .D(n5_adj_669), 
         .Z(n8_adj_670)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_79.init = 16'ha2a0;
    LUT4 i5_4_lut (.A(n6275), .B(n10), .C(n15_adj_672), .D(sda_ctl_N_599), 
         .Z(n12)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i5_4_lut.init = 16'hfdfc;
    FD1P3IX cnt_ack_w_data_i0_i2 (.D(n1801[2]), .SP(clk_div_100k_enable_23), 
            .CD(n4420), .CK(clk_div_100k), .Q(cnt_ack_w_data[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_ack_w_data_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_reg_addr_1110__i0 (.D(n21_adj_676[0]), .SP(clk_div_100k_enable_24), 
            .CD(n4406), .CK(clk_div_100k), .Q(cnt_reg_addr[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(395[29:48])
    defparam cnt_reg_addr_1110__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_80 (.A(n1_adj_673), .B(n25_adj_658), .C(sda_ctl), 
         .D(n6060), .Z(n8_adj_671)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_80.init = 16'hbabb;
    LUT4 i3_4_lut_adj_81 (.A(n10_adj_674), .B(sda_ctl), .C(n25_adj_651), 
         .D(n6040), .Z(n10)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i3_4_lut_adj_81.init = 16'haeaf;
    LUT4 cnt_ack_addr_2__I_0_573_i5_2_lut_3_lut (.A(cnt_ack_addr[1]), .B(cnt_ack_addr[2]), 
         .C(cnt_ack_addr[0]), .Z(n5_adj_657)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(386[14:15])
    defparam cnt_ack_addr_2__I_0_573_i5_2_lut_3_lut.init = 16'hefef;
    FD1P3IX cnt_stop_i0_i1 (.D(n1931[1]), .SP(clk_div_100k_enable_27), .CD(n4417), 
            .CK(clk_div_100k), .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i1.GSR = "ENABLED";
    LUT4 select_592_Select_0_i15_3_lut (.A(sda_ctl), .B(n25_adj_653), .C(n6044), 
         .Z(n15_adj_672)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam select_592_Select_0_i15_3_lut.init = 16'h2323;
    LUT4 i1_4_lut_adj_82 (.A(sda_ctl), .B(cnt_start[2]), .C(cnt_start[1]), 
         .D(cnt_start[0]), .Z(sda_ctl_N_599)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(346[17] 354[15])
    defparam i1_4_lut_adj_82.init = 16'haaab;
    FD1P3IX cnt_dev_addr_1109__i1 (.D(n21_adj_675[1]), .SP(clk_div_100k_enable_28), 
            .CD(n5853), .CK(clk_div_100k), .Q(cnt_dev_addr[1]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1109__i1.GSR = "ENABLED";
    LUT4 i3_3_lut_4_lut_adj_83 (.A(cnt_reg_addr[2]), .B(cnt_reg_addr[3]), 
         .C(cnt_reg_addr[1]), .D(cnt_reg_addr[0]), .Z(n6060)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(396[13] 414[20])
    defparam i3_3_lut_4_lut_adj_83.init = 16'hfffe;
    LUT4 select_592_Select_0_i10_4_lut (.A(sda_ctl), .B(n25_adj_654), .C(cnt_ack_w_data[0]), 
         .D(n6641), .Z(n10_adj_674)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam select_592_Select_0_i10_4_lut.init = 16'h2220;
    LUT4 i3_4_lut_adj_84 (.A(cnt_write_reg_data[0]), .B(cnt_write_reg_data[2]), 
         .C(cnt_write_reg_data[1]), .D(cnt_write_reg_data[3]), .Z(n6040)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(432[13] 450[20])
    defparam i3_4_lut_adj_84.init = 16'hfffe;
    LUT4 i3_4_lut_adj_85 (.A(cnt_dev_addr[0]), .B(cnt_dev_addr[3]), .C(cnt_dev_addr[2]), 
         .D(cnt_dev_addr[1]), .Z(n6044)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(360[13] 378[20])
    defparam i3_4_lut_adj_85.init = 16'hfffe;
    LUT4 i1_4_lut_adj_86 (.A(n6625), .B(cnt_stop[2]), .C(sda_ctl), .D(n4378), 
         .Z(n1_adj_673)) /* synthesis lut_function=(!(A+!((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(325[4] 585[11])
    defparam i1_4_lut_adj_86.init = 16'h5155;
    LUT4 i3724_1_lut (.A(cnt_dev_addr[0]), .Z(n21_adj_675[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam i3724_1_lut.init = 16'h5555;
    LUT4 i4083_2_lut_rep_56 (.A(state_current[13]), .B(state_current[1]), 
         .Z(n6639)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4083_2_lut_rep_56.init = 16'heeee;
    LUT4 i2215_2_lut (.A(cnt_stop[0]), .B(cnt_stop[1]), .Z(n4378)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(568[17] 580[15])
    defparam i2215_2_lut.init = 16'heeee;
    LUT4 i4108_2_lut_3_lut (.A(state_current[13]), .B(state_current[1]), 
         .C(state_current[0]), .Z(n6325)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4108_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_87 (.A(state_current[4]), .B(n6628), .C(state_current[5]), 
         .D(state_current[3]), .Z(n25_adj_658)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(453[5:18])
    defparam i2_4_lut_adj_87.init = 16'hfeff;
    LUT4 cnt_start_1__bdd_4_lut (.A(cnt_start[1]), .B(scl_c), .C(cnt_start[0]), 
         .D(cnt_start[2]), .Z(n6517)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;
    defparam cnt_start_1__bdd_4_lut.init = 16'hccc5;
    PFUMX i4146 (.BLUT(n6359), .ALUT(n6360), .C0(cnt_write_reg_data[2]), 
          .Z(n6363));
    LUT4 i4170_2_lut (.A(n5095), .B(state_current[2]), .Z(n5097)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4170_2_lut.init = 16'h2222;
    LUT4 i32_2_lut_rep_57 (.A(state_current[2]), .B(state_current[3]), .Z(n6640)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i32_2_lut_rep_57.init = 16'h6666;
    FD1P3IX cnt_stop_i0_i2 (.D(n1931[2]), .SP(clk_div_100k_enable_27), .CD(n4417), 
            .CK(clk_div_100k), .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=4, LSE_LLINE=35, LSE_RLINE=49 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(324[8] 586[6])
    defparam cnt_stop_i0_i2.GSR = "ENABLED";
    PFUMX i4285 (.BLUT(n6651), .ALUT(n6652), .C0(cnt_reg_addr[0]), .Z(sda_r_N_627));
    PFUMX i4147 (.BLUT(n6361), .ALUT(n6362), .C0(cnt_write_reg_data[2]), 
          .Z(n6364));
    FD1P3IX cnt_dev_addr_1109__i2 (.D(n21_adj_675[2]), .SP(clk_div_100k_enable_28), 
            .CD(n5853), .CK(clk_div_100k), .Q(cnt_dev_addr[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master_logic.v(359[29:48])
    defparam cnt_dev_addr_1109__i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module clk_div
//

module clk_div (GND_net, clk_div_100k, sys_clk_12m_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_div_100k;
    input sys_clk_12m_c;
    
    wire clk_div_100k /* synthesis SET_AS_NETWORK=clk_div_100k, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(14[7:19])
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(9[10:21])
    
    wire n6016;
    wire [31:0]cnt_p;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(28[19:24])
    wire [31:0]n101;
    
    wire n6015, n6014, n6013, n6012, n6011, n6010, n6009, n6008, 
        n5992, n5993, n5991, n6007, n6006, n6005, n5988, n5989, 
        n6004, n5990, n6003, clkout_N_68, n6002, n6001;
    wire [31:0]n200;
    
    wire n5987, n6000, n5994, n5995, n6086, n10, n4410, n45, 
        n50, n39, n40, n5999, n5998, n29, n48, n42, n30, n44, 
        n34, n5997, n5996;
    
    CCU2D cnt_p_1107_add_4_33 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6016), .S0(n101[31]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_33.INIT1 = 16'h0000;
    defparam cnt_p_1107_add_4_33.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_31 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6015), .COUT(n6016), .S0(n101[29]), .S1(n101[30]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_31.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_29 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6014), .COUT(n6015), .S0(n101[27]), .S1(n101[28]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_29.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_27 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6013), .COUT(n6014), .S0(n101[25]), .S1(n101[26]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_27.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_25 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6012), .COUT(n6013), .S0(n101[23]), .S1(n101[24]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_25.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_23 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6011), .COUT(n6012), .S0(n101[21]), .S1(n101[22]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_23.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_21 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6010), .COUT(n6011), .S0(n101[19]), .S1(n101[20]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_21.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_19 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6009), .COUT(n6010), .S0(n101[17]), .S1(n101[18]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_19.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_17 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6008), .COUT(n6009), .S0(n101[15]), .S1(n101[16]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_17.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_17.INJECT1_1 = "NO";
    CCU2D add_3715_14 (.A0(cnt_p[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5992), .COUT(n5993));
    defparam add_3715_14.INIT0 = 16'h5555;
    defparam add_3715_14.INIT1 = 16'h5555;
    defparam add_3715_14.INJECT1_0 = "NO";
    defparam add_3715_14.INJECT1_1 = "NO";
    CCU2D add_3715_12 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5991), .COUT(n5992));
    defparam add_3715_12.INIT0 = 16'h5555;
    defparam add_3715_12.INIT1 = 16'h5555;
    defparam add_3715_12.INJECT1_0 = "NO";
    defparam add_3715_12.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6007), .COUT(n6008), .S0(n101[13]), .S1(n101[14]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6006), .COUT(n6007), .S0(n101[11]), .S1(n101[12]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6005), .COUT(n6006), .S0(n101[9]), .S1(n101[10]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_11.INJECT1_1 = "NO";
    CCU2D add_3715_6 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5988), 
          .COUT(n5989));
    defparam add_3715_6.INIT0 = 16'h5555;
    defparam add_3715_6.INIT1 = 16'h5555;
    defparam add_3715_6.INJECT1_0 = "NO";
    defparam add_3715_6.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6004), .COUT(n6005), .S0(n101[7]), .S1(n101[8]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_9.INJECT1_1 = "NO";
    CCU2D add_3715_8 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5989), .COUT(n5990));
    defparam add_3715_8.INIT0 = 16'h5555;
    defparam add_3715_8.INIT1 = 16'h5555;
    defparam add_3715_8.INJECT1_0 = "NO";
    defparam add_3715_8.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6003), .COUT(n6004), .S0(n101[5]), .S1(n101[6]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_7.INJECT1_1 = "NO";
    FD1S3AX clk_p_29 (.D(clkout_N_68), .CK(sys_clk_12m_c), .Q(clk_div_100k)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=4, LSE_LLINE=15, LSE_RLINE=19 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(47[9] 50[14])
    defparam clk_p_29.GSR = "ENABLED";
    CCU2D cnt_p_1107_add_4_5 (.A0(cnt_p[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6002), .COUT(n6003), .S0(n101[3]), .S1(n101[4]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_3 (.A0(n200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6001), .COUT(n6002), .S0(n101[1]), .S1(n101[2]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_1107_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_1107_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_3.INJECT1_1 = "NO";
    CCU2D add_3715_4 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5987), 
          .COUT(n5988));
    defparam add_3715_4.INIT0 = 16'h5aaa;
    defparam add_3715_4.INIT1 = 16'h5555;
    defparam add_3715_4.INJECT1_0 = "NO";
    defparam add_3715_4.INJECT1_1 = "NO";
    CCU2D cnt_p_1107_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n200[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n6001), .S1(n101[0]));   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_1107_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_1107_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_1107_add_4_1.INJECT1_1 = "NO";
    CCU2D add_3715_30 (.A0(cnt_p[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n6000), 
          .S1(clkout_N_68));
    defparam add_3715_30.INIT0 = 16'h5555;
    defparam add_3715_30.INIT1 = 16'h0000;
    defparam add_3715_30.INJECT1_0 = "NO";
    defparam add_3715_30.INJECT1_1 = "NO";
    CCU2D add_3715_18 (.A0(cnt_p[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5994), .COUT(n5995));
    defparam add_3715_18.INIT0 = 16'h5555;
    defparam add_3715_18.INIT1 = 16'h5555;
    defparam add_3715_18.INJECT1_0 = "NO";
    defparam add_3715_18.INJECT1_1 = "NO";
    LUT4 i4188_4_lut (.A(n6086), .B(cnt_p[4]), .C(n10), .D(n200[1]), 
         .Z(n4410)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i4188_4_lut.init = 16'h4000;
    LUT4 i25_4_lut (.A(n45), .B(n50), .C(n39), .D(n40), .Z(n6086)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(cnt_p[6]), .B(cnt_p[5]), .C(n200[0]), .D(cnt_p[2]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i19_4_lut (.A(cnt_p[30]), .B(cnt_p[13]), .C(cnt_p[7]), .D(cnt_p[22]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i19_4_lut.init = 16'hfffe;
    CCU2D add_3715_28 (.A0(cnt_p[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5999), .COUT(n6000));
    defparam add_3715_28.INIT0 = 16'h5555;
    defparam add_3715_28.INIT1 = 16'h5555;
    defparam add_3715_28.INJECT1_0 = "NO";
    defparam add_3715_28.INJECT1_1 = "NO";
    CCU2D add_3715_26 (.A0(cnt_p[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5998), .COUT(n5999));
    defparam add_3715_26.INIT0 = 16'h5555;
    defparam add_3715_26.INIT1 = 16'h5555;
    defparam add_3715_26.INJECT1_0 = "NO";
    defparam add_3715_26.INJECT1_1 = "NO";
    LUT4 i24_4_lut (.A(n29), .B(n48), .C(n42), .D(n30), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut (.A(cnt_p[17]), .B(cnt_p[29]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i13_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(cnt_p[27]), .B(cnt_p[15]), .C(cnt_p[12]), .D(cnt_p[23]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(cnt_p[21]), .B(cnt_p[28]), .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i22_4_lut (.A(cnt_p[14]), .B(n44), .C(n34), .D(cnt_p[19]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i22_4_lut.init = 16'hfffe;
    FD1S3IX cnt_p_1107__i30 (.D(n101[30]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i30.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i29 (.D(n101[29]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i29.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i28 (.D(n101[28]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i28.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i27 (.D(n101[27]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i27.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i26 (.D(n101[26]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i26.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i25 (.D(n101[25]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i25.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i24 (.D(n101[24]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i24.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i23 (.D(n101[23]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i23.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i22 (.D(n101[22]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i22.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i21 (.D(n101[21]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i21.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i20 (.D(n101[20]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i20.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i19 (.D(n101[19]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i19.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i18 (.D(n101[18]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i18.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i17 (.D(n101[17]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i17.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i16 (.D(n101[16]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i16.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i15 (.D(n101[15]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i15.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i14 (.D(n101[14]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i14.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i13 (.D(n101[13]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i13.GSR = "ENABLED";
    LUT4 i16_4_lut (.A(cnt_p[24]), .B(cnt_p[31]), .C(cnt_p[16]), .D(cnt_p[11]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i16_4_lut.init = 16'hfffe;
    FD1S3IX cnt_p_1107__i12 (.D(n101[12]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i11 (.D(n101[11]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i10 (.D(n101[10]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i9 (.D(n101[9]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i8 (.D(n101[8]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i7 (.D(n101[7]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i6 (.D(n101[6]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i5 (.D(n101[5]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i4 (.D(n101[4]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i3 (.D(n101[3]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i2 (.D(n101[2]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i1 (.D(n101[1]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(n200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i1.GSR = "ENABLED";
    LUT4 i4_2_lut (.A(cnt_p[9]), .B(cnt_p[10]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(cnt_p[3]), .B(cnt_p[20]), .C(cnt_p[18]), .D(cnt_p[8]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(cnt_p[25]), .B(cnt_p[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam i8_2_lut.init = 16'heeee;
    CCU2D add_3715_16 (.A0(cnt_p[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5993), .COUT(n5994));
    defparam add_3715_16.INIT0 = 16'h5555;
    defparam add_3715_16.INIT1 = 16'h5555;
    defparam add_3715_16.INJECT1_0 = "NO";
    defparam add_3715_16.INJECT1_1 = "NO";
    CCU2D add_3715_24 (.A0(cnt_p[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5997), .COUT(n5998));
    defparam add_3715_24.INIT0 = 16'h5555;
    defparam add_3715_24.INIT1 = 16'h5555;
    defparam add_3715_24.INJECT1_0 = "NO";
    defparam add_3715_24.INJECT1_1 = "NO";
    FD1S3IX cnt_p_1107__i0 (.D(n101[0]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(n200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i0.GSR = "ENABLED";
    FD1S3IX cnt_p_1107__i31 (.D(n101[31]), .CK(sys_clk_12m_c), .CD(n4410), 
            .Q(cnt_p[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/clk_div.v(39[16:23])
    defparam cnt_p_1107__i31.GSR = "ENABLED";
    CCU2D add_3715_2 (.A0(cnt_p[3]), .B0(cnt_p[2]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n5987));
    defparam add_3715_2.INIT0 = 16'h7000;
    defparam add_3715_2.INIT1 = 16'h5aaa;
    defparam add_3715_2.INJECT1_0 = "NO";
    defparam add_3715_2.INJECT1_1 = "NO";
    CCU2D add_3715_22 (.A0(cnt_p[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5996), .COUT(n5997));
    defparam add_3715_22.INIT0 = 16'h5555;
    defparam add_3715_22.INIT1 = 16'h5555;
    defparam add_3715_22.INJECT1_0 = "NO";
    defparam add_3715_22.INJECT1_1 = "NO";
    CCU2D add_3715_20 (.A0(cnt_p[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5995), .COUT(n5996));
    defparam add_3715_20.INIT0 = 16'h5555;
    defparam add_3715_20.INIT1 = 16'h5555;
    defparam add_3715_20.INJECT1_0 = "NO";
    defparam add_3715_20.INJECT1_1 = "NO";
    CCU2D add_3715_10 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5990), .COUT(n5991));
    defparam add_3715_10.INIT0 = 16'h5555;
    defparam add_3715_10.INIT1 = 16'h5555;
    defparam add_3715_10.INJECT1_0 = "NO";
    defparam add_3715_10.INJECT1_1 = "NO";
    
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
// Verilog Description of module rom_waveform
//

module rom_waveform (wave_rom_address, sys_clk_12m_c, VCC_net, GND_net, 
            wave_rom_data) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input [7:0]wave_rom_address;
    input sys_clk_12m_c;
    input VCC_net;
    input GND_net;
    output [7:0]wave_rom_data;
    
    wire sys_clk_12m_c /* synthesis SET_AS_NETWORK=sys_clk_12m_c, is_clock=1 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(9[10:21])
    
    DP8KC rom_waveform_0_0_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(wave_rom_address[0]), .ADA4(wave_rom_address[1]), 
          .ADA5(wave_rom_address[2]), .ADA6(wave_rom_address[3]), .ADA7(wave_rom_address[4]), 
          .ADA8(wave_rom_address[5]), .ADA9(wave_rom_address[6]), .ADA10(wave_rom_address[7]), 
          .ADA11(GND_net), .ADA12(GND_net), .CEA(VCC_net), .OCEA(VCC_net), 
          .CLKA(sys_clk_12m_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(wave_rom_data[0]), .DOA1(wave_rom_data[1]), .DOA2(wave_rom_data[2]), 
          .DOA3(wave_rom_data[3]), .DOA4(wave_rom_data[4]), .DOA5(wave_rom_data[5]), 
          .DOA6(wave_rom_data[6]), .DOA7(wave_rom_data[7])) /* synthesis MEM_LPC_FILE="rom_waveform.lpc", MEM_INIT_FILE="rom_waveform.mem", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=15, LSE_RCOL=4, LSE_LLINE=23, LSE_RLINE=29 */ ;   // c:/users/22822/desktop/2/source/i2c_master_pcf8591_dac/i2c_master.v(23[15] 29[4])
    defparam rom_waveform_0_0_0.DATA_WIDTH_A = 9;
    defparam rom_waveform_0_0_0.DATA_WIDTH_B = 9;
    defparam rom_waveform_0_0_0.REGMODE_A = "OUTREG";
    defparam rom_waveform_0_0_0.REGMODE_B = "NOREG";
    defparam rom_waveform_0_0_0.CSDECODE_A = "0b000";
    defparam rom_waveform_0_0_0.CSDECODE_B = "0b111";
    defparam rom_waveform_0_0_0.WRITEMODE_A = "NORMAL";
    defparam rom_waveform_0_0_0.WRITEMODE_B = "NORMAL";
    defparam rom_waveform_0_0_0.GSR = "ENABLED";
    defparam rom_waveform_0_0_0.RESETMODE = "SYNC";
    defparam rom_waveform_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam rom_waveform_0_0_0.INIT_DATA = "STATIC";
    defparam rom_waveform_0_0_0.INITVAL_00 = "0x07C3C0743806C340643005C2C0542804C240442003C1C0341802C140241001C0C0140800C0400400";
    defparam rom_waveform_0_0_0.INITVAL_01 = "0x0FC7C0F4780EC740E4700DC6C0D4680CC640C4600BC5C0B4580AC540A45009C4C0944808C4408440";
    defparam rom_waveform_0_0_0.INITVAL_02 = "0x17ABB172B716AB3162AF15AAB152A714AA31429F13A9B1329712A931228F11A8B1128710A8310280";
    defparam rom_waveform_0_0_0.INITVAL_03 = "0x1FAFB1F2F71EAF31E2EF1DAEB1D2E71CAE31C2DF1BADB1B2D71AAD31A2CF19ACB192C718AC3182BF";
    defparam rom_waveform_0_0_0.INITVAL_04 = "0x182C318AC7192CB19ACF1A2D31AAD71B2DB1BADF1C2E31CAE71D2EB1DAEF1E2F31EAF71F2FB1FAFF";
    defparam rom_waveform_0_0_0.INITVAL_05 = "0x1028310A871128B11A8F1229312A971329B13A9F142A314AA7152AB15AAF162B316AB7172BB17ABF";
    defparam rom_waveform_0_0_0.INITVAL_06 = "0x0844408C480944C09C500A4540AC580B45C0BC600C4640CC680D46C0DC700E4740EC780F47C0FC80";
    defparam rom_waveform_0_0_0.INITVAL_07 = "0x0040400C080140C01C100241402C180341C03C200442404C280542C05C300643406C380743C07C40";
    defparam rom_waveform_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_waveform_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
