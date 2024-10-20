# @file longteng_top_constraint.xdc
#
#    The top hierarchy of LongTeng GPU.
#    SPDX-License-Identifier: WTFPL
#

# LED.
set_property PACKAGE_PIN A23 [get_ports ddr3_ready]
set_property IOSTANDARD LVCMOS33 [get_ports ddr3_ready]

set_property PACKAGE_PIN A24 [get_ports pcie_ready]
set_property IOSTANDARD LVCMOS33 [get_ports pcie_ready]

# Clk.
create_clock -period 20.000 -name clk_50m [get_ports clk_50m]
set_property PACKAGE_PIN G22 [get_ports clk_50m]
set_property IOSTANDARD LVCMOS33 [get_ports clk_50m]
set_property PACKAGE_PIN K6 [get_ports {clk_pcie_ref_clk_p[0]}]

# PCIe Reset.
set_property PACKAGE_PIN A12 [get_ports pcie_reset]
set_property IOSTANDARD LVCMOS33 [get_ports pcie_reset]

# PCIe.
set_property LOC GTXE2_CHANNEL_X0Y0 [get_cells {longteng_top_i/pcie_controller/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN R4 [get_ports {pcie_connector_rxp[3]}]
set_property LOC GTXE2_CHANNEL_X0Y1 [get_cells {longteng_top_i/pcie_controller/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN N4 [get_ports {pcie_connector_rxp[2]}]
set_property LOC GTXE2_CHANNEL_X0Y2 [get_cells {longteng_top_i/pcie_controller/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN L4 [get_ports {pcie_connector_rxp[1]}]
set_property LOC GTXE2_CHANNEL_X0Y3 [get_cells {longteng_top_i/pcie_controller/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN J4 [get_ports {pcie_connector_rxp[0]}]

#HDMI.
set_output_delay -clock clk_50m 0.100 [get_ports HDMI_TMDS_clk_p]
set_output_delay -clock clk_50m 0.100 [get_ports HDMI_TMDS_clk_n]
set_property PACKAGE_PIN F17 [get_ports HDMI_TMDS_clk_p]
set_property PACKAGE_PIN J15 [get_ports {HDMI_TMDS_data_p[0]}]
set_property PACKAGE_PIN E15 [get_ports {HDMI_TMDS_data_p[1]}]
set_property PACKAGE_PIN G17 [get_ports {HDMI_TMDS_data_p[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_enable[0]}]
set_property PACKAGE_PIN E22 [get_ports {hdmi_enable[0]}]

# Common Configurations.
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

create_clock -period 10.000 -name {clk_pcie_ref_clk_p[0]} -waveform {0.000 5.000} [get_ports {clk_pcie_ref_clk_p[0]}]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oobclk_125mhz_master_lane0_X0Y0] -group [get_clocks -include_generated_clocks oobclk_250mhz_master_lane0_X0Y0]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oobclk_125mhz_master_lane1_X0Y0] -group [get_clocks -include_generated_clocks oobclk_250mhz_master_lane1_X0Y0]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oobclk_125mhz_master_lane2_X0Y0] -group [get_clocks -include_generated_clocks oobclk_250mhz_master_lane2_X0Y0]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oobclk_125mhz_master_lane3_X0Y0] -group [get_clocks -include_generated_clocks oobclk_250mhz_master_lane3_X0Y0]
