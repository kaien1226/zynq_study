connect -url tcp:127.0.0.1:3121
source /home/zhengyuanbo/project/xilinx/first_test/first_test/first_test.sdk/top_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00001902ed1101"} -index 0
loadhw -hw /home/zhengyuanbo/project/xilinx/first_test/first_test/first_test.sdk/top_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00001902ed1101"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001902ed1101"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001902ed1101"} -index 0
dow /home/zhengyuanbo/project/xilinx/first_test/first_test/first_test.sdk/hello5/Debug/hello5.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00001902ed1101"} -index 0
con