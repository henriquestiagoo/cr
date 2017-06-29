# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.cache/wt} [current_project]
set_property parent.project_path {C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.xpr} [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {c:/Users/ASUS/Desktop/UA/42 Ano/Aual5.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{C:/Users/ASUS/Desktop/UA/4� Ano/2�Semestre/CR/coe_cr/coe_from_java1.coe}}
add_files {{C:/Users/ASUS/Desktop/UA/4� Ano/2�Semestre/CR/gen/gen/word2.coe}}
add_files -quiet {{c:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp}}
set_property used_in_implementation false [get_files {{c:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp}}]
read_vhdl -library xil_defaultlib {
  {C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/sources_1/new/segment_decoder.vhd}
  {C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/sources_1/new/Sort.vhd}
  {C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/sources_1/new/clock_divider.vhd}
  {C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/sources_1/new/EightDisplayControl.vhd}
  {C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/sources_1/new/ex3.vhd}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/constrs_1/imports/Desktop/Nexys4_Master.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/ASUS/Desktop/UA/42 Ano/Aual5.srcs/constrs_1/imports/Desktop/Nexys4_Master.xdc}}]


synth_design -top ex3 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef ex3.dcp

catch { report_utilization -file ex3_utilization_synth.rpt -pb ex3_utilization_synth.pb }