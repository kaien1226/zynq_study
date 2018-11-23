# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.cache/wt [current_project]
set_property parent.project_path /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/zhengyuanbo/project/xilinx/dma/ip_repo/myip_1.1
  /home/zhengyuanbo/project/xilinx/dma/ip_repo/algorithm_top_3.0
  /home/zhengyuanbo/project/xilinx/dma/ip_repo/myip_1.0
  /home/zhengyuanbo/project/xilinx/dma/ip_repo/algorithm_top_2.0
  /home/zhengyuanbo/project/xilinx/dma/ip_repo/algorithm_top_1.0
} [current_project]
set_property ip_output_repo /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/hdl/system_wrapper.v
  /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/new/top.v
}
add_files /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0/system_axis_data_fifo_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/bd_44e3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/bd_44e3_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/bd_44e3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/bd_44e3_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/bd_44e3_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/bd_44e3_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/bd_44e3_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/bd_44e3_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/bd_44e3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/bd_44e3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/bd_44e3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/bd_44e3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/bd_44e3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/bd_44e3_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/bd_44e3_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/bd_44e3_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/bd_44e3_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/bd_44e3_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/bd_44e3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/bd_44e3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/sources_1/bd/system/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/constrs_1/new/top.xdc
set_property used_in_implementation false [get_files /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/constrs_1/new/top.xdc]

read_xdc /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/system_processing_system7_0_0/new/top.xdc
set_property used_in_implementation false [get_files /home/zhengyuanbo/project/xilinx/dma/noDDRtest/noDDRtest.srcs/system_processing_system7_0_0/new/top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]