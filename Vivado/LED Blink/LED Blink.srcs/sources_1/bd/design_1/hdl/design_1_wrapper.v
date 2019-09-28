//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Sep 29 02:08:45 2019
//Host        : pandora running 64-bit Ubuntu 19.04
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led0_r,
    led1_g,
    led2_b,
    reset,
    sys_clock);
  output [0:0]led0_r;
  output [0:0]led1_g;
  output [0:0]led2_b;
  input reset;
  input sys_clock;

  wire [0:0]led0_r;
  wire [0:0]led1_g;
  wire [0:0]led2_b;
  wire reset;
  wire sys_clock;

  design_1 design_1_i
       (.led0_r(led0_r),
        .led1_g(led1_g),
        .led2_b(led2_b),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
