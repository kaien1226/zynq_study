#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Nov 14 12:41:29 CST 2018
# SW Build 2258646 on Thu Jun 14 20:02:38 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 4edad254594a499a978f6e1191eac0de --incr --debug typical --relax --mt 8 -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xil_defaultlib -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_2 -L lib_fifo_v1_0_11 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_19 -L axi_sg_v4_1_10 -L axi_dma_v7_1_18 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v1_1_18 -L xlconcat_v2_1_1 -L xlconstant_v1_1_5 -L proc_sys_reset_v5_0_12 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_16 -L axi_register_slice_v2_1_17 -L axi_protocol_converter_v2_1_17 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot top_behav xil_defaultlib.top xil_defaultlib.glbl -log elaborate.log
