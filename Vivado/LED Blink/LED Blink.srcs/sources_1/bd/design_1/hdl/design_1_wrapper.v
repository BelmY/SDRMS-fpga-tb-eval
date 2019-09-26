//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Aug 28 16:10:03 2019
//Host        : drid-t420s running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (LED1,
    clk_100MHz,
    reset_rtl_0);
  output [15:0]LED1;
  input clk_100MHz;
  input reset_rtl_0;

  wire [15:0]LED1;
  wire clk_100MHz;
  wire reset_rtl_0;

  design_1 design_1_i
       (.LED1(LED1),
        .clk_100MHz(clk_100MHz),
        .reset_rtl_0(reset_rtl_0));
endmodule
