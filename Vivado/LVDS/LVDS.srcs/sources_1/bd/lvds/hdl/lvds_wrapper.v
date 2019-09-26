//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun May 12 01:23:09 2019
//Host        : pandora running 64-bit Ubuntu 19.04
//Command     : generate_target lvds_wrapper.bd
//Design      : lvds_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module lvds_wrapper
   (LVDS_n,
    LVDS_p,
    led,
    reset,
    sys_clock);
  input LVDS_n;
  input LVDS_p;
  output [3:0]led;
  input reset;
  input sys_clock;

  wire LVDS_n;
  wire LVDS_p;
  wire [3:0]led;
  wire reset;
  wire sys_clock;

  lvds lvds_i
       (.LVDS_n(LVDS_n),
        .LVDS_p(LVDS_p),
        .led(led),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
