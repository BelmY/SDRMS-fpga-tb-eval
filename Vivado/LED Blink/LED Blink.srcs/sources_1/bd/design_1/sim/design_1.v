//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Sep 29 02:08:45 2019
//Host        : pandora running 64-bit Ubuntu 19.04
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (led0_r,
    led1_g,
    led2_b,
    reset,
    sys_clock);
  output [0:0]led0_r;
  output [0:0]led1_g;
  output [0:0]led2_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire [23:0]c_counter_binary_0_Q;
  wire clk_wiz_clk_out1;
  wire reset_1;
  wire sys_clock_1;
  wire [0:0]xlslice_1_Dout;

  assign led0_r[0] = xlslice_1_Dout;
  assign led1_g[0] = xlslice_1_Dout;
  assign led2_b[0] = xlslice_1_Dout;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(clk_wiz_clk_out1),
        .Q(c_counter_binary_0_Q));
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .resetn(reset_1));
  design_1_xlslice_1_0 xlslice_1
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_1_Dout));
endmodule
