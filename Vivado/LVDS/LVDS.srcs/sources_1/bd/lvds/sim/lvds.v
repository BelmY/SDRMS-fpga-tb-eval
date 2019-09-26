//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Thu Sep 26 16:56:25 2019
//Host        : pandora running 64-bit Ubuntu 19.04
//Command     : generate_target lvds.bd
//Design      : lvds
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "lvds,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=lvds,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "lvds.hwdef" *) 
module lvds
   (LVDS_O_n,
    LVDS_O_p,
    LVDS_n,
    LVDS_p,
    SW,
    led,
    reset,
    sys_clock);
  output [0:0]LVDS_O_n;
  output [0:0]LVDS_O_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LVDS_N DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LVDS_N, LAYERED_METADATA undef" *) input LVDS_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LVDS_P DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LVDS_P, LAYERED_METADATA undef" *) input LVDS_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SW DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SW, LAYERED_METADATA undef" *) input [3:0]SW;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED, LAYERED_METADATA undef" *) output [3:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN lvds_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire LVDS_n_1;
  wire LVDS_p_1;
  wire [3:0]SW_1;
  wire clk_wiz_clk_out1;
  wire reset_1;
  wire [3:0]selectio_wiz_0_data_in_to_device;
  wire [0:0]selectio_wiz_1_data_out_to_pins_n;
  wire [0:0]selectio_wiz_1_data_out_to_pins_p;
  wire sys_clock_1;

  assign LVDS_O_n[0] = selectio_wiz_1_data_out_to_pins_n;
  assign LVDS_O_p[0] = selectio_wiz_1_data_out_to_pins_p;
  assign LVDS_n_1 = LVDS_n;
  assign LVDS_p_1 = LVDS_p;
  assign SW_1 = SW[3:0];
  assign led[3:0] = selectio_wiz_0_data_in_to_device;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  lvds_selectio_wiz_0_1 LVDS_In
       (.bitslip(1'b0),
        .clk_div_in(1'b0),
        .clk_in(clk_wiz_clk_out1),
        .data_in_from_pins_n(LVDS_n_1),
        .data_in_from_pins_p(LVDS_p_1),
        .data_in_to_device(selectio_wiz_0_data_in_to_device),
        .io_reset(1'b0));
  lvds_selectio_wiz_1_0 LVSD_Out
       (.clk_div_in(1'b0),
        .clk_in(clk_wiz_clk_out1),
        .data_out_from_device(SW_1),
        .data_out_to_pins_n(selectio_wiz_1_data_out_to_pins_n),
        .data_out_to_pins_p(selectio_wiz_1_data_out_to_pins_p),
        .io_reset(1'b0));
  lvds_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .resetn(reset_1));
endmodule
