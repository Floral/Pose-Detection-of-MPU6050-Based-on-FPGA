set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports {col_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {row_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
set_property IOSTANDARD LVCMOS33 [get_ports {dig_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dig_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports scl]
set_property IOSTANDARD LVCMOS33 [get_ports sda]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out[0]}]

set_property PACKAGE_PIN AA16 [get_ports {seg_out[0]}]
set_property PACKAGE_PIN Y14 [get_ports {dig_out[0]}]
set_property PACKAGE_PIN AB13 [get_ports {dig_out[1]}]
set_property PACKAGE_PIN AA13 [get_ports {dig_out[2]}]
set_property PACKAGE_PIN Y13 [get_ports {dig_out[3]}]
set_property PACKAGE_PIN AB11 [get_ports {dig_out[4]}]
set_property PACKAGE_PIN AA14 [get_ports {dig_out[5]}]
set_property PACKAGE_PIN AB15 [get_ports {seg_out[1]}]
set_property PACKAGE_PIN AB16 [get_ports {seg_out[2]}]
set_property PACKAGE_PIN AB17 [get_ports {seg_out[3]}]
set_property PACKAGE_PIN W14 [get_ports {seg_out[4]}]
set_property PACKAGE_PIN Y17 [get_ports {seg_out[5]}]
set_property PACKAGE_PIN AA15 [get_ports {seg_out[6]}]
set_property PACKAGE_PIN AB10 [get_ports {col_in[3]}]
set_property PACKAGE_PIN W11 [get_ports {col_in[2]}]
set_property PACKAGE_PIN AA11 [get_ports {col_in[1]}]
set_property PACKAGE_PIN T14 [get_ports {col_in[0]}]
set_property PACKAGE_PIN Y16 [get_ports {seg_out[7]}]
set_property PACKAGE_PIN K18 [get_ports clk_in]

set_property PACKAGE_PIN B16 [get_ports rst_n]
set_property PACKAGE_PIN AA10 [get_ports {row_out[3]}]
set_property PACKAGE_PIN V10 [get_ports {row_out[2]}]
set_property PACKAGE_PIN W10 [get_ports {row_out[1]}]
set_property PACKAGE_PIN AA9 [get_ports {row_out[0]}]
set_property PACKAGE_PIN J19 [get_ports scl]

set_property PACKAGE_PIN H17 [get_ports sda]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_MODE SPIx4 [current_design]



set_property IOSTANDARD LVCMOS33 [get_ports rx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
set_property PACKAGE_PIN Y21 [get_ports rx]
set_property PACKAGE_PIN Y22 [get_ports tx]

create_clock -period 20.000 -name clk_in -waveform {0.000 10.000} [get_ports clk_in]



