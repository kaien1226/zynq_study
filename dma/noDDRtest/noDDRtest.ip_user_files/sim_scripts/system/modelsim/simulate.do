onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_2 -L lib_fifo_v1_0_11 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_19 -L axi_sg_v4_1_10 -L axi_dma_v7_1_18 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v1_1_18 -L xlconcat_v2_1_1 -L xlconstant_v1_1_5 -L proc_sys_reset_v5_0_12 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_16 -L axi_register_slice_v2_1_17 -L axi_protocol_converter_v2_1_17 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {system.udo}

run -all

quit -force
