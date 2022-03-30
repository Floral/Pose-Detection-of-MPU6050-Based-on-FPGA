// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Mar 13 13:29:50 2022
// Host        : DESKTOP-DOA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "255" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "254" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 91792)
`pragma protect data_block
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
aRKSE5ej+V+EbWy+cu2Nml7ddb4vuTSk8/yoOCFeCbA+/kDqSPsm17Fg52JbR4CNwJr8XoVTB6A9
0zpz8YqF/o4UvquCjCcw9wL5bazTv348026i02G8/ZLT8P6Yyj/XBVimAKHhb8Lj4ya7M7+XquUH
V/wSV5t1rwe/HFG55etd8CTMFwE5SZRYKzt+yzmL+RjgDflsDqu2fLhPN4Z5bG1oH9v+2miR+I1J
Q9dTmO+CjsMhghWmq4Wvfbfsk9YhQiWEYmDf/0mPLPuEWNBgNsxyJXnYUEb3q+HKYjb/KAYWMte1
8+Hf8C/nGRvBcdqDHP9jn84LYyTArfFqRnC3Y4LMf+4ue6YcvTHxgSyZhAeQLqqNq/jUgwjA7EnK
ZNubUKU32FUUul2bXl4YIDcgN7EVsmJI6ay5v08UqmuswY3uF6H7TnDv/TSwOtuJm4Y9mjcCNr6M
cmx/MJShHYL2tAn3RNkHtgV21Fbg4r4HR4y+/4sXLYBu2c/tPsu4C/c/8BPs21Rb4aNTsGUp4JYu
y2INBL2ZdScADtyTUu69YgjBJG1SS1ZJ9H6z8kV6dgPyCegMh1/A3Avz2HTkHMSnTCQ9dZhXB5xb
jtXUP0Uw+6XBRqBpYyogPnam9nxaet5RJ8SMZqI/NcszRsjMi5Y4enh31zExhJ7OJpciNf6123di
X7ajEbBkJf2Tr/7dUvlUHBPlzjdGwoRrh3097Ny7l/OoY2jR6x8x2qitKMmGvM9P6NT9/XgcQi7l
IX/9bgvIvKgNeQek/oSrkciA4WsP1p9aMZ8V5nuGrAQOR0Qbe9E1f2qxRkJYMfGwfQEfJ6DS6EAd
D+8n1wFhuhYyn80a/28XHRjXb81Gh+IbCpDazTlkqNZxhcVtpLnuloCZNuXFr1ka0xUwurcVfBfl
d47+i8w6CdHvGJqbHaiLOuZ5IevNsl8tD7Y82rt4q3BQH6igsos0W5Hs4MVvj8EBHwDxfb3dsUdW
vOhvZHXNkDD4nAbpEugr4XcnDlkpC7fU+A5da4EOGNtdDfHGBzEZiMhIuNGn9gRpdBnRtPXSUMs8
8t16qoxIqGabeLyrjgO+La29osDiP4jT84dCMuyvbB2a8Q1dL5vKerBxONkpznHCcuTtTWxOqeRE
+DTlSEa8hqjQQr3IPsl/juBynfhYKSoUyjk2RuBT5p66cg8k6H9E4d8IpxR5aK3+tHEj12CV5KyQ
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
8y9Mqf5/5kGRu36Oj0bXvkudAHbb6g==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27040)
`pragma protect data_block
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
m4B8eWmjRwzzbWNg1+azuuclwLY7qw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
