vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ex2/ipshared/5ec7/clock_divider.vhd" \
"../../../bd/ex2/ip/ex2_clock_divider_0_0_1/sim/ex2_clock_divider_0_0.vhd" \
"../../../bd/ex2/ipshared/3147/Binary_to_BCD16.vhd" \
"../../../bd/ex2/ip/ex2_BinToBCD16_0_0_1/sim/ex2_BinToBCD16_0_0.vhd" \
"../../../bd/ex2/ipshared/e147/xlconstant.vhd" \
"../../../bd/ex2/ip/ex2_xlconstant_0_0_1/sim/ex2_xlconstant_0_0.vhd" \
"../../../bd/ex2/ipshared/b6e6/Desktop/aula3_ex2/aula3_ex2.srcs/sources_1/new/GreatestMaximumDivisor.vhd" \
"../../../bd/ex2/ip/ex2_GreatestMaximumDivisor_0_1_2/sim/ex2_GreatestMaximumDivisor_0_1.vhd" \
"../../../bd/ex2/ipshared/e9db/src/common.vhd" \
"../../../bd/ex2/ipshared/e9db/src/Decimal_to_Displays.vhd" \
"../../../bd/ex2/ip/ex2_Decimal_to_Displays_3_0_0/sim/ex2_Decimal_to_Displays_3_0_0.vhd" \
"../../../bd/ex2/hdl/ex2.vhd" \


