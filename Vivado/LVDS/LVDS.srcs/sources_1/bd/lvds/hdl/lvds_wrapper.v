//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Sep 29 13:01:31 2019
//Host        : pandora running 64-bit Ubuntu 19.04
//Command     : generate_target lvds_wrapper.bd
//Design      : lvds_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module lvds_wrapper
   (LVDS_I_n,
    LVDS_I_p,
    LVDS_O_n,
    LVDS_O_p,
    led,
    reset,
    sw,
    sys_clock);
  input [0:0]LVDS_I_n;
  input [0:0]LVDS_I_p;
  output [0:0]LVDS_O_n;
  output [0:0]LVDS_O_p;
  output [3:0]led;
  input reset;
  input [3:0]sw;
  input sys_clock;

  wire [0:0]LVDS_I_n;
  wire [0:0]LVDS_I_p;
  wire [0:0]LVDS_O_n;
  wire [0:0]LVDS_O_p;
  wire [3:0]led;
  wire reset;
  wire [3:0]sw;
  wire sys_clock;

  lvds lvds_i
       (.LVDS_I_n(LVDS_I_n),
        .LVDS_I_p(LVDS_I_p),
        .LVDS_O_n(LVDS_O_n),
        .LVDS_O_p(LVDS_O_p),
        .led(led),
        .reset(reset),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
