############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       ps7_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              xc7z010clg400-1
##                    Device Size:        xc7z010
##                    Package:            clg400
##                    Speedgrade:         -1
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################
create_clock -name clk_fpga_0 -period "20" [get_pins "PS7_i/FCLKCLK[0]"]
set_input_jitter clk_fpga_0 0.6
#The clocks are asynchronous, user should constrain them appropriately.#


############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  UART 1 / rx / MIO[49]
set_property iostandard "LVCMOS33" [get_ports "MIO[49]"]
set_property PACKAGE_PIN "C12" [get_ports "MIO[49]"]
set_property slew "slow" [get_ports "MIO[49]"]
set_property drive "8" [get_ports "MIO[49]"]
set_property pullup "TRUE" [get_ports "MIO[49]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[49]"]
#  UART 1 / tx / MIO[48]
set_property iostandard "LVCMOS33" [get_ports "MIO[48]"]
set_property PACKAGE_PIN "B12" [get_ports "MIO[48]"]
set_property slew "slow" [get_ports "MIO[48]"]
set_property drive "8" [get_ports "MIO[48]"]
set_property pullup "TRUE" [get_ports "MIO[48]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[48]"]
#  SD 0 / wp / MIO[23]
set_property iostandard "LVCMOS33" [get_ports "MIO[23]"]
set_property PACKAGE_PIN "D11" [get_ports "MIO[23]"]
set_property slew "slow" [get_ports "MIO[23]"]
set_property drive "8" [get_ports "MIO[23]"]
set_property pullup "TRUE" [get_ports "MIO[23]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[23]"]
#  SD 0 / cd / MIO[22]
set_property iostandard "LVCMOS33" [get_ports "MIO[22]"]
set_property PACKAGE_PIN "B17" [get_ports "MIO[22]"]
set_property slew "slow" [get_ports "MIO[22]"]
set_property drive "8" [get_ports "MIO[22]"]
set_property pullup "TRUE" [get_ports "MIO[22]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[22]"]
#  SD 0 / data[3] / MIO[21]
set_property iostandard "LVCMOS33" [get_ports "MIO[21]"]
set_property PACKAGE_PIN "F14" [get_ports "MIO[21]"]
set_property slew "slow" [get_ports "MIO[21]"]
set_property drive "8" [get_ports "MIO[21]"]
set_property pullup "TRUE" [get_ports "MIO[21]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[21]"]
#  SD 0 / data[2] / MIO[20]
set_property iostandard "LVCMOS33" [get_ports "MIO[20]"]
set_property PACKAGE_PIN "A17" [get_ports "MIO[20]"]
set_property slew "slow" [get_ports "MIO[20]"]
set_property drive "8" [get_ports "MIO[20]"]
set_property pullup "TRUE" [get_ports "MIO[20]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[20]"]
#  SD 0 / data[1] / MIO[19]
set_property iostandard "LVCMOS33" [get_ports "MIO[19]"]
set_property PACKAGE_PIN "D10" [get_ports "MIO[19]"]
set_property slew "slow" [get_ports "MIO[19]"]
set_property drive "8" [get_ports "MIO[19]"]
set_property pullup "TRUE" [get_ports "MIO[19]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[19]"]
#  SD 0 / data[0] / MIO[18]
set_property iostandard "LVCMOS33" [get_ports "MIO[18]"]
set_property PACKAGE_PIN "B18" [get_ports "MIO[18]"]
set_property slew "slow" [get_ports "MIO[18]"]
set_property drive "8" [get_ports "MIO[18]"]
set_property pullup "TRUE" [get_ports "MIO[18]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[18]"]
#  SD 0 / cmd / MIO[17]
set_property iostandard "LVCMOS33" [get_ports "MIO[17]"]
set_property PACKAGE_PIN "E14" [get_ports "MIO[17]"]
set_property slew "slow" [get_ports "MIO[17]"]
set_property drive "8" [get_ports "MIO[17]"]
set_property pullup "TRUE" [get_ports "MIO[17]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[17]"]
#  SD 0 / clk / MIO[16]
set_property iostandard "LVCMOS33" [get_ports "MIO[16]"]
set_property PACKAGE_PIN "A19" [get_ports "MIO[16]"]
set_property slew "slow" [get_ports "MIO[16]"]
set_property drive "8" [get_ports "MIO[16]"]
set_property pullup "TRUE" [get_ports "MIO[16]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[16]"]
set_property iostandard "LVCMOS33" [get_ports "PS_PORB"]
set_property PACKAGE_PIN "C7" [get_ports "PS_PORB"]
set_property slew "fast" [get_ports "PS_PORB"]
set_property iostandard "LVCMOS33" [get_ports "PS_SRSTB"]
set_property PACKAGE_PIN "B10" [get_ports "PS_SRSTB"]
set_property slew "fast" [get_ports "PS_SRSTB"]
set_property iostandard "LVCMOS33" [get_ports "PS_CLK"]
set_property PACKAGE_PIN "E7" [get_ports "PS_CLK"]
set_property slew "fast" [get_ports "PS_CLK"]

