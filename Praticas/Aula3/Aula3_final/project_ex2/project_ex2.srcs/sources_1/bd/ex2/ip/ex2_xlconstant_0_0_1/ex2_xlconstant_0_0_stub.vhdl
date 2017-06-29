-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Mar 15 19:56:42 2017
-- Host        : FilipePc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top ex2_xlconstant_0_0 -prefix
--               ex2_xlconstant_0_0_ ex2_xlconstant_0_0_stub.vhdl
-- Design      : ex2_xlconstant_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ex2_xlconstant_0_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end ex2_xlconstant_0_0;

architecture stub of ex2_xlconstant_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
begin
end;