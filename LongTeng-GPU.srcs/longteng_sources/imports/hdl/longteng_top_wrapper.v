//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sun Oct 20 20:07:18 2024
//Host        : fhh-pc-linux running 64-bit Arch Linux
//Command     : generate_target longteng_top_wrapper.bd
//Design      : longteng_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module longteng_top_wrapper
   (DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_cs_n,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    HDMI_DDC_scl_io,
    HDMI_DDC_sda_io,
    HDMI_TMDS_clk_n,
    HDMI_TMDS_clk_p,
    HDMI_TMDS_data_n,
    HDMI_TMDS_data_p,
    clk_50m,
    clk_pcie_ref_clk_n,
    clk_pcie_ref_clk_p,
    ddr3_ready,
    hdmi_enable,
    pcie_connector_rxn,
    pcie_connector_rxp,
    pcie_connector_txn,
    pcie_connector_txp,
    pcie_ready,
    pcie_reset);
  output [14:0]DDR3_0_addr;
  output [2:0]DDR3_0_ba;
  output DDR3_0_cas_n;
  output [0:0]DDR3_0_ck_n;
  output [0:0]DDR3_0_ck_p;
  output [0:0]DDR3_0_cke;
  output [0:0]DDR3_0_cs_n;
  output [3:0]DDR3_0_dm;
  inout [31:0]DDR3_0_dq;
  inout [3:0]DDR3_0_dqs_n;
  inout [3:0]DDR3_0_dqs_p;
  output [0:0]DDR3_0_odt;
  output DDR3_0_ras_n;
  output DDR3_0_reset_n;
  output DDR3_0_we_n;
  inout HDMI_DDC_scl_io;
  inout HDMI_DDC_sda_io;
  output HDMI_TMDS_clk_n;
  output HDMI_TMDS_clk_p;
  output [2:0]HDMI_TMDS_data_n;
  output [2:0]HDMI_TMDS_data_p;
  input clk_50m;
  input [0:0]clk_pcie_ref_clk_n;
  input [0:0]clk_pcie_ref_clk_p;
  output ddr3_ready;
  output [0:0]hdmi_enable;
  input [3:0]pcie_connector_rxn;
  input [3:0]pcie_connector_rxp;
  output [3:0]pcie_connector_txn;
  output [3:0]pcie_connector_txp;
  output pcie_ready;
  input pcie_reset;

  wire [14:0]DDR3_0_addr;
  wire [2:0]DDR3_0_ba;
  wire DDR3_0_cas_n;
  wire [0:0]DDR3_0_ck_n;
  wire [0:0]DDR3_0_ck_p;
  wire [0:0]DDR3_0_cke;
  wire [0:0]DDR3_0_cs_n;
  wire [3:0]DDR3_0_dm;
  wire [31:0]DDR3_0_dq;
  wire [3:0]DDR3_0_dqs_n;
  wire [3:0]DDR3_0_dqs_p;
  wire [0:0]DDR3_0_odt;
  wire DDR3_0_ras_n;
  wire DDR3_0_reset_n;
  wire DDR3_0_we_n;
  wire HDMI_DDC_scl_i;
  wire HDMI_DDC_scl_io;
  wire HDMI_DDC_scl_o;
  wire HDMI_DDC_scl_t;
  wire HDMI_DDC_sda_i;
  wire HDMI_DDC_sda_io;
  wire HDMI_DDC_sda_o;
  wire HDMI_DDC_sda_t;
  wire HDMI_TMDS_clk_n;
  wire HDMI_TMDS_clk_p;
  wire [2:0]HDMI_TMDS_data_n;
  wire [2:0]HDMI_TMDS_data_p;
  wire clk_50m;
  wire [0:0]clk_pcie_ref_clk_n;
  wire [0:0]clk_pcie_ref_clk_p;
  wire ddr3_ready;
  wire [0:0]hdmi_enable;
  wire [3:0]pcie_connector_rxn;
  wire [3:0]pcie_connector_rxp;
  wire [3:0]pcie_connector_txn;
  wire [3:0]pcie_connector_txp;
  wire pcie_ready;
  wire pcie_reset;

  IOBUF HDMI_DDC_scl_iobuf
       (.I(HDMI_DDC_scl_o),
        .IO(HDMI_DDC_scl_io),
        .O(HDMI_DDC_scl_i),
        .T(HDMI_DDC_scl_t));
  IOBUF HDMI_DDC_sda_iobuf
       (.I(HDMI_DDC_sda_o),
        .IO(HDMI_DDC_sda_io),
        .O(HDMI_DDC_sda_i),
        .T(HDMI_DDC_sda_t));
  longteng_top longteng_top_i
       (.DDR3_0_addr(DDR3_0_addr),
        .DDR3_0_ba(DDR3_0_ba),
        .DDR3_0_cas_n(DDR3_0_cas_n),
        .DDR3_0_ck_n(DDR3_0_ck_n),
        .DDR3_0_ck_p(DDR3_0_ck_p),
        .DDR3_0_cke(DDR3_0_cke),
        .DDR3_0_cs_n(DDR3_0_cs_n),
        .DDR3_0_dm(DDR3_0_dm),
        .DDR3_0_dq(DDR3_0_dq),
        .DDR3_0_dqs_n(DDR3_0_dqs_n),
        .DDR3_0_dqs_p(DDR3_0_dqs_p),
        .DDR3_0_odt(DDR3_0_odt),
        .DDR3_0_ras_n(DDR3_0_ras_n),
        .DDR3_0_reset_n(DDR3_0_reset_n),
        .DDR3_0_we_n(DDR3_0_we_n),
        .HDMI_DDC_scl_i(HDMI_DDC_scl_i),
        .HDMI_DDC_scl_o(HDMI_DDC_scl_o),
        .HDMI_DDC_scl_t(HDMI_DDC_scl_t),
        .HDMI_DDC_sda_i(HDMI_DDC_sda_i),
        .HDMI_DDC_sda_o(HDMI_DDC_sda_o),
        .HDMI_DDC_sda_t(HDMI_DDC_sda_t),
        .HDMI_TMDS_clk_n(HDMI_TMDS_clk_n),
        .HDMI_TMDS_clk_p(HDMI_TMDS_clk_p),
        .HDMI_TMDS_data_n(HDMI_TMDS_data_n),
        .HDMI_TMDS_data_p(HDMI_TMDS_data_p),
        .clk_50m(clk_50m),
        .clk_pcie_ref_clk_n(clk_pcie_ref_clk_n),
        .clk_pcie_ref_clk_p(clk_pcie_ref_clk_p),
        .ddr3_ready(ddr3_ready),
        .hdmi_enable(hdmi_enable),
        .pcie_connector_rxn(pcie_connector_rxn),
        .pcie_connector_rxp(pcie_connector_rxp),
        .pcie_connector_txn(pcie_connector_txn),
        .pcie_connector_txp(pcie_connector_txp),
        .pcie_ready(pcie_ready),
        .pcie_reset(pcie_reset));
endmodule
