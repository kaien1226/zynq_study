
`timescale 1 ns / 1 ps

	module algorithm_top_v2_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid
	);
// Instantiation of Axi Bus Interface S00_AXIS
/*	algorithm_top_v2_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
	) algorithm_top_v2_0_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid)
	);
*/
	// Add user logic here

	// User logic ends

        input           axi_clk,
        input           M_AXI_resetn,
        input           S_AXIS_S2MM_tready,
        output[31:0]    S_AXIS_S2MM_tdata,
        output          S_AXIS_S2MM_tvalid,
        output[3:0]     S_AXIS_S2MM_tkeep,
        output          S_AXIS_S2MM_tlast

    assign axi_clk = s00_axis_aclk;
    assign M_AXI_resetn = s00_axis_aresetn;
    assign s00_axis_tready = S_AXIS_S2MM_tready;
    assign s00_axis_tdata = S_AXIS_S2MM_tdata;
    assign s00_axis_tstrb = S_AXIS_S2MM_tkeep;
    assign s00_axis_tlast = S_AXIS_S2MM_tlast;
    assign s00_axis_tvalid = S_AXIS_S2MM_tvalid


    wire[31:0]   S_AXIS_S2MM_tdata;
    reg         S_AXIS_S2MM_tvalid;
    wire[3:0]    S_AXIS_S2MM_tkeep;
    reg         S_AXIS_S2MM_tlast;
    reg[31:0]   counter;   

    assign S_AXIS_S2MM_tdata=counter+32'haa000000;
    assign S_AXIS_S2MM_tkeep =4'b1111;
    always@(posedge axi_clk or negedge M_AXI_resetn)
    begin
       if(!M_AXI_resetn) begin
            counter <= 32'h00000000;
       end
       else if(counter==32'h0012bff) begin
           counter<=32'h00000000;
       end
       else if(S_AXIS_S2MM_tvalid & S_AXIS_S2MM_tready) begin
           counter<=counter+1;
       end 

    end 
     always@(posedge axi_clk or negedge M_AXI_resetn)
    begin
       if(!M_AXI_resetn) begin
            S_AXIS_S2MM_tvalid <=1'b0;
       end
       else if(S_AXIS_S2MM_tready && counter!=32'h0012bff) begin
            S_AXIS_S2MM_tvalid <=1'b1;
       end 
       else begin
           S_AXIS_S2MM_tvalid <=1'b0;
       end
    end 
     always@(counter or M_AXI_resetn)
     begin
          if(!M_AXI_resetn) begin
               S_AXIS_S2MM_tlast<=1'b0;
          end
          if(counter==32'h00012bff) begin
               S_AXIS_S2MM_tlast<=1'b1;
          end
          else if(counter==32'h00012c00 ) begin
             S_AXIS_S2MM_tlast<=1'b0;
          end
          else begin
             S_AXIS_S2MM_tlast<=1'b0;
          end   
       end 


	endmodule
