//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun May 12 00:07:35 2019
//Host        : pandora running 64-bit Ubuntu 19.04
//Command     : generate_target counter_wrapper.bd
//Design      : counter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module counter_wrapper
   (led,
    reset,
    sw,
    sys_clock);
  output [3:0]led;
  input reset;
  input [0:0]sw;
  input sys_clock;

  wire [3:0]led;
  wire reset;
  wire [0:0]sw;
  wire sys_clock;

  counter counter_i
       (.led(led),
        .reset(reset),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
