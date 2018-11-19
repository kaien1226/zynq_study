// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Nov  3 17:03:52 2018
// Host        : zhengyuanbo-ThinkPad-T540p running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_processing_system7_0_0_stub.v
// Design      : system_processing_system7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "processing_system7_v5_5_processing_system7,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(FCLK_CLK0, FCLK_RESET0_N, MIO, PS_SRSTB, PS_CLK, 
  PS_PORB)
/* synthesis syn_black_box black_box_pad_pin="FCLK_CLK0,FCLK_RESET0_N,MIO[53:0],PS_SRSTB,PS_CLK,PS_PORB" */;
  output FCLK_CLK0;
  output FCLK_RESET0_N;
  inout [53:0]MIO;
  inout PS_SRSTB;
  inout PS_CLK;
  inout PS_PORB;
endmodule
