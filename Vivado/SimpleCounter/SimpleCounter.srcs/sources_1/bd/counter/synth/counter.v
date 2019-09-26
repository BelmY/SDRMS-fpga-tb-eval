//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun May 12 00:07:35 2019
//Host        : pandora running 64-bit Ubuntu 19.04
//Command     : generate_target counter.bd
//Design      : counter
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "counter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=counter,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "counter.hwdef" *) 
module counter
   (led,
    reset,
    sw,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 4}" *) output [3:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SW DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SW, LAYERED_METADATA undef" *) input [0:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN counter_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire clk_wiz_clk_out1;
  wire [3:0]led_counter_Q;
  wire reset_1;
  wire [21:0]scaler_Q;
  wire [0:0]sw_1;
  wire sys_clock_1;
  wire [0:0]xlslice_0_Dout;

  assign led[3:0] = led_counter_Q;
  assign reset_1 = reset;
  assign sw_1 = sw[0];
  assign sys_clock_1 = sys_clock;
  counter_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .resetn(reset_1));
  counter_c_counter_binary_0_0 led_counter
       (.CLK(xlslice_0_Dout),
        .Q(led_counter_Q),
        .UP(sw_1));
  counter_c_counter_binary_0_1 scaler
       (.CLK(clk_wiz_clk_out1),
        .Q(scaler_Q));
  counter_xlslice_0_0 xlslice_0
       (.Din(scaler_Q),
        .Dout(xlslice_0_Dout));
endmodule
