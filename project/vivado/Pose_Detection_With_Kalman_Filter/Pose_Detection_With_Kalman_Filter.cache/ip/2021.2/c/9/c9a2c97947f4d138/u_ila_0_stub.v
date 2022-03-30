// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Mar 16 10:13:27 2022
// Host        : DESKTOP-DOA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u_ila_0_stub.v
// Design      : u_ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[13:0],probe1[13:0],probe2[3:0],probe3[3:0],probe4[7:0],probe5[15:0],probe6[29:0],probe7[15:0],probe8[15:0],probe9[15:0],probe10[1:0],probe11[0:0],probe12[0:0],probe13[0:0]" */;
  input clk;
  input [13:0]probe0;
  input [13:0]probe1;
  input [3:0]probe2;
  input [3:0]probe3;
  input [7:0]probe4;
  input [15:0]probe5;
  input [29:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [15:0]probe9;
  input [1:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
endmodule
