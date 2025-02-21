# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.cache/wt [current_project]
set_property parent.project_path C:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/lucac/VivadoHLS/AES_CTR
  c:/Users/lucac/VivadoHLS/AES_Encryption
} [current_project]
add_files C:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_3/design_1_processing_system7_0_3.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_50M_3/design_1_rst_processing_system7_0_50M_3_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_50M_3/design_1_rst_processing_system7_0_50M_3.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_50M_3/design_1_rst_processing_system7_0_50M_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_xbar_2/design_1_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_AES_encryption_0_0/constraints/AES_encryption_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files C:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib C:/Users/lucac/Vivado/AES_Encryption_Pynq/AES_Encryption_Pynq.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xc7z020clg400-1


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
