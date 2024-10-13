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
set_property PACKAGE_PIN G22 [get_ports clk_50m]
set_property IOSTANDARD LVCMOS33 [get_ports clk_50m]
set_property PACKAGE_PIN K6 [get_ports {clk_pcie_ref_clk_p[0]}]

# PCIe Reset.
set_property PACKAGE_PIN A12 [get_ports pcie_reset]
set_property IOSTANDARD LVCMOS33 [get_ports pcie_reset]

# PCIe.
set_property PACKAGE_PIN R4 [get_ports {pcie_connector_rxp[3]}]
set_property PACKAGE_PIN N4 [get_ports {pcie_connector_rxp[2]}]
set_property PACKAGE_PIN L4 [get_ports {pcie_connector_rxp[1]}]
set_property PACKAGE_PIN J4 [get_ports {pcie_connector_rxp[0]}]

# Common Configurations.
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
