// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Mar 15 20:07:21 2017
// Host        : FilipePc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ex2_clock_divider_0_0 -prefix
//               ex2_clock_divider_0_0_ ex2_clock_divider_0_0_stub.v
// Design      : ex2_clock_divider_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "clock_divider,Vivado 2016.4" *)
module ex2_clock_divider_0_0(clk, reset, divided_clk)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,divided_clk" */;
  input clk;
  input reset;
  output divided_clk;
endmodule
