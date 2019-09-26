// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Sep 26 16:48:08 2019
// Host        : pandora running 64-bit Ubuntu 19.04
// Command     : write_verilog -force -mode synth_stub
//               /home/drid/Devel/LSF/FPGA_Eval/fpga-toolbox-eval/Vivado/LVDS/LVDS.srcs/sources_1/bd/lvds/ip/lvds_clk_wiz_0/lvds_clk_wiz_0_stub.v
// Design      : lvds_clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module lvds_clk_wiz_0(clk_out1, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,locked,clk_in1" */;
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1;
endmodule
