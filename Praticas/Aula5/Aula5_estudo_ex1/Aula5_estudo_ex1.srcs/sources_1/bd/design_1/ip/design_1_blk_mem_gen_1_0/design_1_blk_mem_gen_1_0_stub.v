// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 04 15:51:40 2017
// Host        : TiagoHenriques running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Utilizador/Desktop/Universidade/4_ano/2_semestre/CR/Praticas/Aula5/Aula5_estudo_ex1/Aula5_estudo_ex1.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_1_0/design_1_blk_mem_gen_1_0_stub.v
// Design      : design_1_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_5,Vivado 2016.4" *)
module design_1_blk_mem_gen_1_0(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[6:0],dina[15:0],douta[15:0]" */;
  input clka;
  input [0:0]wea;
  input [6:0]addra;
  input [15:0]dina;
  output [15:0]douta;
endmodule
