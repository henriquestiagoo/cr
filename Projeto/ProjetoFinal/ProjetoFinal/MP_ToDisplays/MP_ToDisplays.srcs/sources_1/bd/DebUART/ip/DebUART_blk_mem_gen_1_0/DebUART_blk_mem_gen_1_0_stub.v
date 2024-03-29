// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun May 28 17:35:27 2017
// Host        : TiagoHenriques running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top DebUART_blk_mem_gen_1_0 -prefix
//               DebUART_blk_mem_gen_1_0_ DebUART_blk_mem_gen_1_0_stub.v
// Design      : DebUART_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_5,Vivado 2016.4" *)
module DebUART_blk_mem_gen_1_0(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[5:0],dina[7:0],douta[7:0]" */;
  input clka;
  input [0:0]wea;
  input [5:0]addra;
  input [7:0]dina;
  output [7:0]douta;
endmodule
