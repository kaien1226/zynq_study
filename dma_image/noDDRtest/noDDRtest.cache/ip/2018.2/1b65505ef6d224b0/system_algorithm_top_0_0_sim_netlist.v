// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Nov 14 11:16:07 2018
// Host        : zhengyuanbo-ThinkPad-T540p running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_algorithm_top_0_0_sim_netlist.v
// Design      : system_algorithm_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_algorithm_top_v3_0
   (m_axis_tdata,
    s_axis_tdata);
  output [31:0]m_axis_tdata;
  input [31:0]s_axis_tdata;

  wire [31:0]m_axis_tdata;
  wire \m_axis_tdata[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[0]_INST_0_n_0 ;
  wire \m_axis_tdata[0]_INST_0_n_1 ;
  wire \m_axis_tdata[0]_INST_0_n_2 ;
  wire \m_axis_tdata[0]_INST_0_n_3 ;
  wire \m_axis_tdata[12]_INST_0_n_0 ;
  wire \m_axis_tdata[12]_INST_0_n_1 ;
  wire \m_axis_tdata[12]_INST_0_n_2 ;
  wire \m_axis_tdata[12]_INST_0_n_3 ;
  wire \m_axis_tdata[16]_INST_0_n_0 ;
  wire \m_axis_tdata[16]_INST_0_n_1 ;
  wire \m_axis_tdata[16]_INST_0_n_2 ;
  wire \m_axis_tdata[16]_INST_0_n_3 ;
  wire \m_axis_tdata[20]_INST_0_n_0 ;
  wire \m_axis_tdata[20]_INST_0_n_1 ;
  wire \m_axis_tdata[20]_INST_0_n_2 ;
  wire \m_axis_tdata[20]_INST_0_n_3 ;
  wire \m_axis_tdata[24]_INST_0_n_0 ;
  wire \m_axis_tdata[24]_INST_0_n_1 ;
  wire \m_axis_tdata[24]_INST_0_n_2 ;
  wire \m_axis_tdata[24]_INST_0_n_3 ;
  wire \m_axis_tdata[28]_INST_0_n_1 ;
  wire \m_axis_tdata[28]_INST_0_n_2 ;
  wire \m_axis_tdata[28]_INST_0_n_3 ;
  wire \m_axis_tdata[4]_INST_0_n_0 ;
  wire \m_axis_tdata[4]_INST_0_n_1 ;
  wire \m_axis_tdata[4]_INST_0_n_2 ;
  wire \m_axis_tdata[4]_INST_0_n_3 ;
  wire \m_axis_tdata[8]_INST_0_n_0 ;
  wire \m_axis_tdata[8]_INST_0_n_1 ;
  wire \m_axis_tdata[8]_INST_0_n_2 ;
  wire \m_axis_tdata[8]_INST_0_n_3 ;
  wire [31:0]s_axis_tdata;
  wire [3:3]\NLW_m_axis_tdata[28]_INST_0_CO_UNCONNECTED ;

  CARRY4 \m_axis_tdata[0]_INST_0 
       (.CI(1'b0),
        .CO({\m_axis_tdata[0]_INST_0_n_0 ,\m_axis_tdata[0]_INST_0_n_1 ,\m_axis_tdata[0]_INST_0_n_2 ,\m_axis_tdata[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[1],1'b0}),
        .O(m_axis_tdata[3:0]),
        .S({s_axis_tdata[3:2],\m_axis_tdata[0]_INST_0_i_1_n_0 ,s_axis_tdata[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[0]_INST_0_i_1 
       (.I0(s_axis_tdata[1]),
        .O(\m_axis_tdata[0]_INST_0_i_1_n_0 ));
  CARRY4 \m_axis_tdata[12]_INST_0 
       (.CI(\m_axis_tdata[8]_INST_0_n_0 ),
        .CO({\m_axis_tdata[12]_INST_0_n_0 ,\m_axis_tdata[12]_INST_0_n_1 ,\m_axis_tdata[12]_INST_0_n_2 ,\m_axis_tdata[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[15:12]),
        .S(s_axis_tdata[15:12]));
  CARRY4 \m_axis_tdata[16]_INST_0 
       (.CI(\m_axis_tdata[12]_INST_0_n_0 ),
        .CO({\m_axis_tdata[16]_INST_0_n_0 ,\m_axis_tdata[16]_INST_0_n_1 ,\m_axis_tdata[16]_INST_0_n_2 ,\m_axis_tdata[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[19:16]),
        .S(s_axis_tdata[19:16]));
  CARRY4 \m_axis_tdata[20]_INST_0 
       (.CI(\m_axis_tdata[16]_INST_0_n_0 ),
        .CO({\m_axis_tdata[20]_INST_0_n_0 ,\m_axis_tdata[20]_INST_0_n_1 ,\m_axis_tdata[20]_INST_0_n_2 ,\m_axis_tdata[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[23:20]),
        .S(s_axis_tdata[23:20]));
  CARRY4 \m_axis_tdata[24]_INST_0 
       (.CI(\m_axis_tdata[20]_INST_0_n_0 ),
        .CO({\m_axis_tdata[24]_INST_0_n_0 ,\m_axis_tdata[24]_INST_0_n_1 ,\m_axis_tdata[24]_INST_0_n_2 ,\m_axis_tdata[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[27:24]),
        .S(s_axis_tdata[27:24]));
  CARRY4 \m_axis_tdata[28]_INST_0 
       (.CI(\m_axis_tdata[24]_INST_0_n_0 ),
        .CO({\NLW_m_axis_tdata[28]_INST_0_CO_UNCONNECTED [3],\m_axis_tdata[28]_INST_0_n_1 ,\m_axis_tdata[28]_INST_0_n_2 ,\m_axis_tdata[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[31:28]),
        .S(s_axis_tdata[31:28]));
  CARRY4 \m_axis_tdata[4]_INST_0 
       (.CI(\m_axis_tdata[0]_INST_0_n_0 ),
        .CO({\m_axis_tdata[4]_INST_0_n_0 ,\m_axis_tdata[4]_INST_0_n_1 ,\m_axis_tdata[4]_INST_0_n_2 ,\m_axis_tdata[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[7:4]),
        .S(s_axis_tdata[7:4]));
  CARRY4 \m_axis_tdata[8]_INST_0 
       (.CI(\m_axis_tdata[4]_INST_0_n_0 ),
        .CO({\m_axis_tdata[8]_INST_0_n_0 ,\m_axis_tdata[8]_INST_0_n_1 ,\m_axis_tdata[8]_INST_0_n_2 ,\m_axis_tdata[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[11:8]),
        .S(s_axis_tdata[11:8]));
endmodule

(* CHECK_LICENSE_TYPE = "system_algorithm_top_0_0,algorithm_top_v3_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "algorithm_top_v3_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axis_tdata,
    s_axis_tstrb,
    s_axis_tlast,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_aclk,
    s_axis_aresetn,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_aclk,
    m_axis_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [3:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [3:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW" *) input m_axis_aresetn;

  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tstrb;
  wire s_axis_tvalid;

  assign m_axis_tstrb[3:0] = s_axis_tstrb;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_algorithm_top_v3_0 inst
       (.m_axis_tdata(m_axis_tdata),
        .s_axis_tdata(s_axis_tdata));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
