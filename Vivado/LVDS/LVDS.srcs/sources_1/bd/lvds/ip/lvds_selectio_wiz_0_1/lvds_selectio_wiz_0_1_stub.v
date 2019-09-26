// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Sep 26 16:48:08 2019
// Host        : pandora running 64-bit Ubuntu 19.04
// Command     : write_verilog -force -mode synth_stub
//               /home/drid/Devel/LSF/FPGA_Eval/fpga-toolbox-eval/Vivado/LVDS/LVDS.srcs/sources_1/bd/lvds/ip/lvds_selectio_wiz_0_1/lvds_selectio_wiz_0_1_stub.v
// Design      : lvds_selectio_wiz_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module lvds_selectio_wiz_0_1(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, bitslip, clk_in, clk_div_in, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[0:0],data_in_from_pins_n[0:0],data_in_to_device[3:0],bitslip[0:0],clk_in,clk_div_in,io_reset" */;
  input [0:0]data_in_from_pins_p;
  input [0:0]data_in_from_pins_n;
  output [3:0]data_in_to_device;
  input [0:0]bitslip;
  input clk_in;
  input clk_div_in;
  input io_reset;
endmodule
