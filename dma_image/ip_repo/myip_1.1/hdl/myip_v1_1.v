
`timescale 1 ns / 1 ps

	module myip_v1_1 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_TRANSACTIONS_NUM	= 4,

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4,

		// Parameters of Axi Master Bus Interface M01_AXI
		parameter  C_M01_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M01_AXI_BURST_LEN	= 16,
		parameter integer C_M01_AXI_ID_WIDTH	= 1,
		parameter integer C_M01_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M01_AXI_DATA_WIDTH	= 32,
		parameter integer C_M01_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_BUSER_WIDTH	= 0,

		// Parameters of Axi Slave Bus Interface S02_AXI
		parameter integer C_S02_AXI_ID_WIDTH	= 1,
		parameter integer C_S02_AXI_DATA_WIDTH	= 32,
		parameter integer C_S02_AXI_ADDR_WIDTH	= 6,
		parameter integer C_S02_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_S02_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_S02_AXI_WUSER_WIDTH	= 0,
		parameter integer C_S02_AXI_RUSER_WIDTH	= 0,
		parameter integer C_S02_AXI_BUSER_WIDTH	= 0,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32,

		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXI
		input wire  m00_axi_init_axi_txn,
		output wire  m00_axi_error,
		output wire  m00_axi_txn_done,
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [2 : 0] m00_axi_awprot,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [1 : 0] m00_axi_bresp,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [2 : 0] m00_axi_arprot,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready,

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Master Bus Interface M01_AXI
		input wire  m01_axi_init_axi_txn,
		output wire  m01_axi_txn_done,
		output wire  m01_axi_error,
		input wire  m01_axi_aclk,
		input wire  m01_axi_aresetn,
		output wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_awid,
		output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_awaddr,
		output wire [7 : 0] m01_axi_awlen,
		output wire [2 : 0] m01_axi_awsize,
		output wire [1 : 0] m01_axi_awburst,
		output wire  m01_axi_awlock,
		output wire [3 : 0] m01_axi_awcache,
		output wire [2 : 0] m01_axi_awprot,
		output wire [3 : 0] m01_axi_awqos,
		output wire [C_M01_AXI_AWUSER_WIDTH-1 : 0] m01_axi_awuser,
		output wire  m01_axi_awvalid,
		input wire  m01_axi_awready,
		output wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_wdata,
		output wire [C_M01_AXI_DATA_WIDTH/8-1 : 0] m01_axi_wstrb,
		output wire  m01_axi_wlast,
		output wire [C_M01_AXI_WUSER_WIDTH-1 : 0] m01_axi_wuser,
		output wire  m01_axi_wvalid,
		input wire  m01_axi_wready,
		input wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_bid,
		input wire [1 : 0] m01_axi_bresp,
		input wire [C_M01_AXI_BUSER_WIDTH-1 : 0] m01_axi_buser,
		input wire  m01_axi_bvalid,
		output wire  m01_axi_bready,
		output wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_arid,
		output wire [C_M01_AXI_ADDR_WIDTH-1 : 0] m01_axi_araddr,
		output wire [7 : 0] m01_axi_arlen,
		output wire [2 : 0] m01_axi_arsize,
		output wire [1 : 0] m01_axi_arburst,
		output wire  m01_axi_arlock,
		output wire [3 : 0] m01_axi_arcache,
		output wire [2 : 0] m01_axi_arprot,
		output wire [3 : 0] m01_axi_arqos,
		output wire [C_M01_AXI_ARUSER_WIDTH-1 : 0] m01_axi_aruser,
		output wire  m01_axi_arvalid,
		input wire  m01_axi_arready,
		input wire [C_M01_AXI_ID_WIDTH-1 : 0] m01_axi_rid,
		input wire [C_M01_AXI_DATA_WIDTH-1 : 0] m01_axi_rdata,
		input wire [1 : 0] m01_axi_rresp,
		input wire  m01_axi_rlast,
		input wire [C_M01_AXI_RUSER_WIDTH-1 : 0] m01_axi_ruser,
		input wire  m01_axi_rvalid,
		output wire  m01_axi_rready,

		// Ports of Axi Slave Bus Interface S02_AXI
		input wire  s02_axi_aclk,
		input wire  s02_axi_aresetn,
		input wire [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_awid,
		input wire [C_S02_AXI_ADDR_WIDTH-1 : 0] s02_axi_awaddr,
		input wire [7 : 0] s02_axi_awlen,
		input wire [2 : 0] s02_axi_awsize,
		input wire [1 : 0] s02_axi_awburst,
		input wire  s02_axi_awlock,
		input wire [3 : 0] s02_axi_awcache,
		input wire [2 : 0] s02_axi_awprot,
		input wire [3 : 0] s02_axi_awqos,
		input wire [3 : 0] s02_axi_awregion,
		input wire [C_S02_AXI_AWUSER_WIDTH-1 : 0] s02_axi_awuser,
		input wire  s02_axi_awvalid,
		output wire  s02_axi_awready,
		input wire [C_S02_AXI_DATA_WIDTH-1 : 0] s02_axi_wdata,
		input wire [(C_S02_AXI_DATA_WIDTH/8)-1 : 0] s02_axi_wstrb,
		input wire  s02_axi_wlast,
		input wire [C_S02_AXI_WUSER_WIDTH-1 : 0] s02_axi_wuser,
		input wire  s02_axi_wvalid,
		output wire  s02_axi_wready,
		output wire [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_bid,
		output wire [1 : 0] s02_axi_bresp,
		output wire [C_S02_AXI_BUSER_WIDTH-1 : 0] s02_axi_buser,
		output wire  s02_axi_bvalid,
		input wire  s02_axi_bready,
		input wire [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_arid,
		input wire [C_S02_AXI_ADDR_WIDTH-1 : 0] s02_axi_araddr,
		input wire [7 : 0] s02_axi_arlen,
		input wire [2 : 0] s02_axi_arsize,
		input wire [1 : 0] s02_axi_arburst,
		input wire  s02_axi_arlock,
		input wire [3 : 0] s02_axi_arcache,
		input wire [2 : 0] s02_axi_arprot,
		input wire [3 : 0] s02_axi_arqos,
		input wire [3 : 0] s02_axi_arregion,
		input wire [C_S02_AXI_ARUSER_WIDTH-1 : 0] s02_axi_aruser,
		input wire  s02_axi_arvalid,
		output wire  s02_axi_arready,
		output wire [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_rid,
		output wire [C_S02_AXI_DATA_WIDTH-1 : 0] s02_axi_rdata,
		output wire [1 : 0] s02_axi_rresp,
		output wire  s02_axi_rlast,
		output wire [C_S02_AXI_RUSER_WIDTH-1 : 0] s02_axi_ruser,
		output wire  s02_axi_rvalid,
		input wire  s02_axi_rready,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready,

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid
	);
// Instantiation of Axi Bus Interface M00_AXI
	myip_v1_1_M00_AXI # ( 
		.C_M_START_DATA_VALUE(C_M00_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M00_AXI_TRANSACTIONS_NUM)
	) myip_v1_1_M00_AXI_inst (
		.INIT_AXI_TXN(m00_axi_init_axi_txn),
		.ERROR(m00_axi_error),
		.TXN_DONE(m00_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m00_axi_awaddr),
		.M_AXI_AWPROT(m00_axi_awprot),
		.M_AXI_AWVALID(m00_axi_awvalid),
		.M_AXI_AWREADY(m00_axi_awready),
		.M_AXI_WDATA(m00_axi_wdata),
		.M_AXI_WSTRB(m00_axi_wstrb),
		.M_AXI_WVALID(m00_axi_wvalid),
		.M_AXI_WREADY(m00_axi_wready),
		.M_AXI_BRESP(m00_axi_bresp),
		.M_AXI_BVALID(m00_axi_bvalid),
		.M_AXI_BREADY(m00_axi_bready),
		.M_AXI_ARADDR(m00_axi_araddr),
		.M_AXI_ARPROT(m00_axi_arprot),
		.M_AXI_ARVALID(m00_axi_arvalid),
		.M_AXI_ARREADY(m00_axi_arready),
		.M_AXI_RDATA(m00_axi_rdata),
		.M_AXI_RRESP(m00_axi_rresp),
		.M_AXI_RVALID(m00_axi_rvalid),
		.M_AXI_RREADY(m00_axi_rready)
	);

// Instantiation of Axi Bus Interface S00_AXI
	myip_v1_1_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) myip_v1_1_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

// Instantiation of Axi Bus Interface M01_AXI
	myip_v1_1_M01_AXI # ( 
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M01_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN(C_M01_AXI_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_M01_AXI_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_M01_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M01_AXI_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH(C_M01_AXI_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_M01_AXI_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH(C_M01_AXI_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_M01_AXI_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH(C_M01_AXI_BUSER_WIDTH)
	) myip_v1_1_M01_AXI_inst (
		.INIT_AXI_TXN(m01_axi_init_axi_txn),
		.TXN_DONE(m01_axi_txn_done),
		.ERROR(m01_axi_error),
		.M_AXI_ACLK(m01_axi_aclk),
		.M_AXI_ARESETN(m01_axi_aresetn),
		.M_AXI_AWID(m01_axi_awid),
		.M_AXI_AWADDR(m01_axi_awaddr),
		.M_AXI_AWLEN(m01_axi_awlen),
		.M_AXI_AWSIZE(m01_axi_awsize),
		.M_AXI_AWBURST(m01_axi_awburst),
		.M_AXI_AWLOCK(m01_axi_awlock),
		.M_AXI_AWCACHE(m01_axi_awcache),
		.M_AXI_AWPROT(m01_axi_awprot),
		.M_AXI_AWQOS(m01_axi_awqos),
		.M_AXI_AWUSER(m01_axi_awuser),
		.M_AXI_AWVALID(m01_axi_awvalid),
		.M_AXI_AWREADY(m01_axi_awready),
		.M_AXI_WDATA(m01_axi_wdata),
		.M_AXI_WSTRB(m01_axi_wstrb),
		.M_AXI_WLAST(m01_axi_wlast),
		.M_AXI_WUSER(m01_axi_wuser),
		.M_AXI_WVALID(m01_axi_wvalid),
		.M_AXI_WREADY(m01_axi_wready),
		.M_AXI_BID(m01_axi_bid),
		.M_AXI_BRESP(m01_axi_bresp),
		.M_AXI_BUSER(m01_axi_buser),
		.M_AXI_BVALID(m01_axi_bvalid),
		.M_AXI_BREADY(m01_axi_bready),
		.M_AXI_ARID(m01_axi_arid),
		.M_AXI_ARADDR(m01_axi_araddr),
		.M_AXI_ARLEN(m01_axi_arlen),
		.M_AXI_ARSIZE(m01_axi_arsize),
		.M_AXI_ARBURST(m01_axi_arburst),
		.M_AXI_ARLOCK(m01_axi_arlock),
		.M_AXI_ARCACHE(m01_axi_arcache),
		.M_AXI_ARPROT(m01_axi_arprot),
		.M_AXI_ARQOS(m01_axi_arqos),
		.M_AXI_ARUSER(m01_axi_aruser),
		.M_AXI_ARVALID(m01_axi_arvalid),
		.M_AXI_ARREADY(m01_axi_arready),
		.M_AXI_RID(m01_axi_rid),
		.M_AXI_RDATA(m01_axi_rdata),
		.M_AXI_RRESP(m01_axi_rresp),
		.M_AXI_RLAST(m01_axi_rlast),
		.M_AXI_RUSER(m01_axi_ruser),
		.M_AXI_RVALID(m01_axi_rvalid),
		.M_AXI_RREADY(m01_axi_rready)
	);

// Instantiation of Axi Bus Interface S02_AXI
	myip_v1_1_S02_AXI # ( 
		.C_S_AXI_ID_WIDTH(C_S02_AXI_ID_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S02_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S02_AXI_ADDR_WIDTH),
		.C_S_AXI_AWUSER_WIDTH(C_S02_AXI_AWUSER_WIDTH),
		.C_S_AXI_ARUSER_WIDTH(C_S02_AXI_ARUSER_WIDTH),
		.C_S_AXI_WUSER_WIDTH(C_S02_AXI_WUSER_WIDTH),
		.C_S_AXI_RUSER_WIDTH(C_S02_AXI_RUSER_WIDTH),
		.C_S_AXI_BUSER_WIDTH(C_S02_AXI_BUSER_WIDTH)
	) myip_v1_1_S02_AXI_inst (
		.S_AXI_ACLK(s02_axi_aclk),
		.S_AXI_ARESETN(s02_axi_aresetn),
		.S_AXI_AWID(s02_axi_awid),
		.S_AXI_AWADDR(s02_axi_awaddr),
		.S_AXI_AWLEN(s02_axi_awlen),
		.S_AXI_AWSIZE(s02_axi_awsize),
		.S_AXI_AWBURST(s02_axi_awburst),
		.S_AXI_AWLOCK(s02_axi_awlock),
		.S_AXI_AWCACHE(s02_axi_awcache),
		.S_AXI_AWPROT(s02_axi_awprot),
		.S_AXI_AWQOS(s02_axi_awqos),
		.S_AXI_AWREGION(s02_axi_awregion),
		.S_AXI_AWUSER(s02_axi_awuser),
		.S_AXI_AWVALID(s02_axi_awvalid),
		.S_AXI_AWREADY(s02_axi_awready),
		.S_AXI_WDATA(s02_axi_wdata),
		.S_AXI_WSTRB(s02_axi_wstrb),
		.S_AXI_WLAST(s02_axi_wlast),
		.S_AXI_WUSER(s02_axi_wuser),
		.S_AXI_WVALID(s02_axi_wvalid),
		.S_AXI_WREADY(s02_axi_wready),
		.S_AXI_BID(s02_axi_bid),
		.S_AXI_BRESP(s02_axi_bresp),
		.S_AXI_BUSER(s02_axi_buser),
		.S_AXI_BVALID(s02_axi_bvalid),
		.S_AXI_BREADY(s02_axi_bready),
		.S_AXI_ARID(s02_axi_arid),
		.S_AXI_ARADDR(s02_axi_araddr),
		.S_AXI_ARLEN(s02_axi_arlen),
		.S_AXI_ARSIZE(s02_axi_arsize),
		.S_AXI_ARBURST(s02_axi_arburst),
		.S_AXI_ARLOCK(s02_axi_arlock),
		.S_AXI_ARCACHE(s02_axi_arcache),
		.S_AXI_ARPROT(s02_axi_arprot),
		.S_AXI_ARQOS(s02_axi_arqos),
		.S_AXI_ARREGION(s02_axi_arregion),
		.S_AXI_ARUSER(s02_axi_aruser),
		.S_AXI_ARVALID(s02_axi_arvalid),
		.S_AXI_ARREADY(s02_axi_arready),
		.S_AXI_RID(s02_axi_rid),
		.S_AXI_RDATA(s02_axi_rdata),
		.S_AXI_RRESP(s02_axi_rresp),
		.S_AXI_RLAST(s02_axi_rlast),
		.S_AXI_RUSER(s02_axi_ruser),
		.S_AXI_RVALID(s02_axi_rvalid),
		.S_AXI_RREADY(s02_axi_rready)
	);

// Instantiation of Axi Bus Interface M00_AXIS
	myip_v1_1_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) myip_v1_1_M00_AXIS_inst (
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready)
	);

// Instantiation of Axi Bus Interface S00_AXIS
	myip_v1_1_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) myip_v1_1_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid)
	);

	// Add user logic here

	// User logic ends

	endmodule
