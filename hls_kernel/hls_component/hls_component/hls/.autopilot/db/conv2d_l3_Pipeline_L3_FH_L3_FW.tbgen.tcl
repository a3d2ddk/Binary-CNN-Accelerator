set moduleName conv2d_l3_Pipeline_L3_FH_L3_FW
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 22
set C_modelName {conv2d_l3_Pipeline_L3_FH_L3_FW}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict output_0 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_1 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_2 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_3 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_4 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_5 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_6 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_7 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_8 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_9 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_10 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_11 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_12 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_13 { MEM_WIDTH 1 MEM_SIZE 304 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_1 { MEM_WIDTH 32 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_0 { MEM_WIDTH 32 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ zext_ln139 int 9 regular  }
	{ output_0 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_1 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_2 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_3 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_4 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_5 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_6 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_7 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_8 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_9 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_10 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_11 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_12 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ output_13 int 1 regular {array 304 { 0 3 } 0 1 }  }
	{ buffer_1 int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ buffer_0 int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ sext_ln149 int 16 regular  }
	{ select_ln139 int 4 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln139", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_8", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_9", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_10", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_11", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_12", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_13", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "buffer_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "sext_ln149", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln139", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln139 sc_in sc_lv 9 signal 0 } 
	{ output_0_address0 sc_out sc_lv 9 signal 1 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_0_we0 sc_out sc_logic 1 signal 1 } 
	{ output_0_d0 sc_out sc_lv 1 signal 1 } 
	{ output_1_address0 sc_out sc_lv 9 signal 2 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_1_we0 sc_out sc_logic 1 signal 2 } 
	{ output_1_d0 sc_out sc_lv 1 signal 2 } 
	{ output_2_address0 sc_out sc_lv 9 signal 3 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_2_we0 sc_out sc_logic 1 signal 3 } 
	{ output_2_d0 sc_out sc_lv 1 signal 3 } 
	{ output_3_address0 sc_out sc_lv 9 signal 4 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_3_we0 sc_out sc_logic 1 signal 4 } 
	{ output_3_d0 sc_out sc_lv 1 signal 4 } 
	{ output_4_address0 sc_out sc_lv 9 signal 5 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_4_we0 sc_out sc_logic 1 signal 5 } 
	{ output_4_d0 sc_out sc_lv 1 signal 5 } 
	{ output_5_address0 sc_out sc_lv 9 signal 6 } 
	{ output_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_5_we0 sc_out sc_logic 1 signal 6 } 
	{ output_5_d0 sc_out sc_lv 1 signal 6 } 
	{ output_6_address0 sc_out sc_lv 9 signal 7 } 
	{ output_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ output_6_we0 sc_out sc_logic 1 signal 7 } 
	{ output_6_d0 sc_out sc_lv 1 signal 7 } 
	{ output_7_address0 sc_out sc_lv 9 signal 8 } 
	{ output_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ output_7_we0 sc_out sc_logic 1 signal 8 } 
	{ output_7_d0 sc_out sc_lv 1 signal 8 } 
	{ output_8_address0 sc_out sc_lv 9 signal 9 } 
	{ output_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ output_8_we0 sc_out sc_logic 1 signal 9 } 
	{ output_8_d0 sc_out sc_lv 1 signal 9 } 
	{ output_9_address0 sc_out sc_lv 9 signal 10 } 
	{ output_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ output_9_we0 sc_out sc_logic 1 signal 10 } 
	{ output_9_d0 sc_out sc_lv 1 signal 10 } 
	{ output_10_address0 sc_out sc_lv 9 signal 11 } 
	{ output_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_10_we0 sc_out sc_logic 1 signal 11 } 
	{ output_10_d0 sc_out sc_lv 1 signal 11 } 
	{ output_11_address0 sc_out sc_lv 9 signal 12 } 
	{ output_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ output_11_we0 sc_out sc_logic 1 signal 12 } 
	{ output_11_d0 sc_out sc_lv 1 signal 12 } 
	{ output_12_address0 sc_out sc_lv 9 signal 13 } 
	{ output_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ output_12_we0 sc_out sc_logic 1 signal 13 } 
	{ output_12_d0 sc_out sc_lv 1 signal 13 } 
	{ output_13_address0 sc_out sc_lv 9 signal 14 } 
	{ output_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ output_13_we0 sc_out sc_logic 1 signal 14 } 
	{ output_13_d0 sc_out sc_lv 1 signal 14 } 
	{ buffer_1_address0 sc_out sc_lv 9 signal 15 } 
	{ buffer_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ buffer_1_we0 sc_out sc_logic 1 signal 15 } 
	{ buffer_1_d0 sc_out sc_lv 32 signal 15 } 
	{ buffer_1_q0 sc_in sc_lv 32 signal 15 } 
	{ buffer_1_address1 sc_out sc_lv 9 signal 15 } 
	{ buffer_1_ce1 sc_out sc_logic 1 signal 15 } 
	{ buffer_1_we1 sc_out sc_logic 1 signal 15 } 
	{ buffer_1_d1 sc_out sc_lv 32 signal 15 } 
	{ buffer_1_q1 sc_in sc_lv 32 signal 15 } 
	{ buffer_0_address0 sc_out sc_lv 9 signal 16 } 
	{ buffer_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ buffer_0_we0 sc_out sc_logic 1 signal 16 } 
	{ buffer_0_d0 sc_out sc_lv 32 signal 16 } 
	{ buffer_0_q0 sc_in sc_lv 32 signal 16 } 
	{ buffer_0_address1 sc_out sc_lv 9 signal 16 } 
	{ buffer_0_ce1 sc_out sc_logic 1 signal 16 } 
	{ buffer_0_we1 sc_out sc_logic 1 signal 16 } 
	{ buffer_0_d1 sc_out sc_lv 32 signal 16 } 
	{ buffer_0_q1 sc_in sc_lv 32 signal 16 } 
	{ sext_ln149 sc_in sc_lv 16 signal 17 } 
	{ select_ln139 sc_in sc_lv 4 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln139", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln139", "role": "default" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "output_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_5", "role": "address0" }} , 
 	{ "name": "output_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "ce0" }} , 
 	{ "name": "output_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "we0" }} , 
 	{ "name": "output_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "d0" }} , 
 	{ "name": "output_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_6", "role": "address0" }} , 
 	{ "name": "output_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "ce0" }} , 
 	{ "name": "output_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "we0" }} , 
 	{ "name": "output_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "d0" }} , 
 	{ "name": "output_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_7", "role": "address0" }} , 
 	{ "name": "output_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "ce0" }} , 
 	{ "name": "output_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "we0" }} , 
 	{ "name": "output_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "d0" }} , 
 	{ "name": "output_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_8", "role": "address0" }} , 
 	{ "name": "output_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "ce0" }} , 
 	{ "name": "output_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "we0" }} , 
 	{ "name": "output_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "d0" }} , 
 	{ "name": "output_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_9", "role": "address0" }} , 
 	{ "name": "output_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "ce0" }} , 
 	{ "name": "output_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "we0" }} , 
 	{ "name": "output_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "d0" }} , 
 	{ "name": "output_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_10", "role": "address0" }} , 
 	{ "name": "output_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "ce0" }} , 
 	{ "name": "output_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "we0" }} , 
 	{ "name": "output_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "d0" }} , 
 	{ "name": "output_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_11", "role": "address0" }} , 
 	{ "name": "output_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "ce0" }} , 
 	{ "name": "output_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "we0" }} , 
 	{ "name": "output_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "d0" }} , 
 	{ "name": "output_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_12", "role": "address0" }} , 
 	{ "name": "output_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "ce0" }} , 
 	{ "name": "output_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "we0" }} , 
 	{ "name": "output_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "d0" }} , 
 	{ "name": "output_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_13", "role": "address0" }} , 
 	{ "name": "output_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "ce0" }} , 
 	{ "name": "output_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "we0" }} , 
 	{ "name": "output_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "d0" }} , 
 	{ "name": "buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_1", "role": "address0" }} , 
 	{ "name": "buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "ce0" }} , 
 	{ "name": "buffer_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "we0" }} , 
 	{ "name": "buffer_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_1", "role": "d0" }} , 
 	{ "name": "buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_1", "role": "q0" }} , 
 	{ "name": "buffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_1", "role": "address1" }} , 
 	{ "name": "buffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "ce1" }} , 
 	{ "name": "buffer_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "we1" }} , 
 	{ "name": "buffer_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_1", "role": "d1" }} , 
 	{ "name": "buffer_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_1", "role": "q1" }} , 
 	{ "name": "buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_0", "role": "address0" }} , 
 	{ "name": "buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_0", "role": "ce0" }} , 
 	{ "name": "buffer_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_0", "role": "we0" }} , 
 	{ "name": "buffer_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_0", "role": "d0" }} , 
 	{ "name": "buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_0", "role": "q0" }} , 
 	{ "name": "buffer_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "buffer_0", "role": "address1" }} , 
 	{ "name": "buffer_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_0", "role": "ce1" }} , 
 	{ "name": "buffer_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_0", "role": "we1" }} , 
 	{ "name": "buffer_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_0", "role": "d1" }} , 
 	{ "name": "buffer_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_0", "role": "q1" }} , 
 	{ "name": "sext_ln149", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln149", "role": "default" }} , 
 	{ "name": "select_ln139", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "select_ln139", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv2d_l3_Pipeline_L3_FH_L3_FW {
		zext_ln139 {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 5}
		output_1 {Type O LastRead -1 FirstWrite 5}
		output_2 {Type O LastRead -1 FirstWrite 5}
		output_3 {Type O LastRead -1 FirstWrite 5}
		output_4 {Type O LastRead -1 FirstWrite 5}
		output_5 {Type O LastRead -1 FirstWrite 5}
		output_6 {Type O LastRead -1 FirstWrite 5}
		output_7 {Type O LastRead -1 FirstWrite 5}
		output_8 {Type O LastRead -1 FirstWrite 5}
		output_9 {Type O LastRead -1 FirstWrite 5}
		output_10 {Type O LastRead -1 FirstWrite 5}
		output_11 {Type O LastRead -1 FirstWrite 5}
		output_12 {Type O LastRead -1 FirstWrite 5}
		output_13 {Type O LastRead -1 FirstWrite 5}
		buffer_1 {Type IO LastRead 2 FirstWrite 1}
		buffer_0 {Type IO LastRead 2 FirstWrite 1}
		sext_ln149 {Type I LastRead 0 FirstWrite -1}
		select_ln139 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln139 { ap_none {  { zext_ln139 in_data 0 9 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 9 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 1 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 9 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 1 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 9 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 1 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 9 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 1 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 9 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 1 } } }
	output_5 { ap_memory {  { output_5_address0 mem_address 1 9 }  { output_5_ce0 mem_ce 1 1 }  { output_5_we0 mem_we 1 1 }  { output_5_d0 mem_din 1 1 } } }
	output_6 { ap_memory {  { output_6_address0 mem_address 1 9 }  { output_6_ce0 mem_ce 1 1 }  { output_6_we0 mem_we 1 1 }  { output_6_d0 mem_din 1 1 } } }
	output_7 { ap_memory {  { output_7_address0 mem_address 1 9 }  { output_7_ce0 mem_ce 1 1 }  { output_7_we0 mem_we 1 1 }  { output_7_d0 mem_din 1 1 } } }
	output_8 { ap_memory {  { output_8_address0 mem_address 1 9 }  { output_8_ce0 mem_ce 1 1 }  { output_8_we0 mem_we 1 1 }  { output_8_d0 mem_din 1 1 } } }
	output_9 { ap_memory {  { output_9_address0 mem_address 1 9 }  { output_9_ce0 mem_ce 1 1 }  { output_9_we0 mem_we 1 1 }  { output_9_d0 mem_din 1 1 } } }
	output_10 { ap_memory {  { output_10_address0 mem_address 1 9 }  { output_10_ce0 mem_ce 1 1 }  { output_10_we0 mem_we 1 1 }  { output_10_d0 mem_din 1 1 } } }
	output_11 { ap_memory {  { output_11_address0 mem_address 1 9 }  { output_11_ce0 mem_ce 1 1 }  { output_11_we0 mem_we 1 1 }  { output_11_d0 mem_din 1 1 } } }
	output_12 { ap_memory {  { output_12_address0 mem_address 1 9 }  { output_12_ce0 mem_ce 1 1 }  { output_12_we0 mem_we 1 1 }  { output_12_d0 mem_din 1 1 } } }
	output_13 { ap_memory {  { output_13_address0 mem_address 1 9 }  { output_13_ce0 mem_ce 1 1 }  { output_13_we0 mem_we 1 1 }  { output_13_d0 mem_din 1 1 } } }
	buffer_1 { ap_memory {  { buffer_1_address0 mem_address 1 9 }  { buffer_1_ce0 mem_ce 1 1 }  { buffer_1_we0 mem_we 1 1 }  { buffer_1_d0 mem_din 1 32 }  { buffer_1_q0 mem_dout 0 32 }  { buffer_1_address1 MemPortADDR2 1 9 }  { buffer_1_ce1 MemPortCE2 1 1 }  { buffer_1_we1 MemPortWE2 1 1 }  { buffer_1_d1 MemPortDIN2 1 32 }  { buffer_1_q1 MemPortDOUT2 0 32 } } }
	buffer_0 { ap_memory {  { buffer_0_address0 mem_address 1 9 }  { buffer_0_ce0 mem_ce 1 1 }  { buffer_0_we0 mem_we 1 1 }  { buffer_0_d0 mem_din 1 32 }  { buffer_0_q0 mem_dout 0 32 }  { buffer_0_address1 MemPortADDR2 1 9 }  { buffer_0_ce1 MemPortCE2 1 1 }  { buffer_0_we1 MemPortWE2 1 1 }  { buffer_0_d1 MemPortDIN2 1 32 }  { buffer_0_q1 MemPortDOUT2 0 32 } } }
	sext_ln149 { ap_none {  { sext_ln149 in_data 0 16 } } }
	select_ln139 { ap_none {  { select_ln139 in_data 0 4 } } }
}
