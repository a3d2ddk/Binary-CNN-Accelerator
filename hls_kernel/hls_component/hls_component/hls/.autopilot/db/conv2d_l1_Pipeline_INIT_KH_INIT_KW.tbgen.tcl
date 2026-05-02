set moduleName conv2d_l1_Pipeline_INIT_KH_INIT_KW
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
set C_modelName {conv2d_l1_Pipeline_INIT_KH_INIT_KW}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_0 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_2 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_3 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_4 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_5 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_6 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_7 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_8 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_9 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_10 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_11 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_12 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_13 { MEM_WIDTH 16 MEM_SIZE 440 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ loc_08 int 32 regular  }
	{ oh_4 int 5 regular  }
	{ ow_4 int 5 regular  }
	{ add_ln103 int 33 regular  }
	{ input_0 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_1 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_2 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_3 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_4 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_5 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_6 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_7 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_8 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_9 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_10 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_11 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_12 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ input_13 int 16 regular {array 220 { 1 3 } 1 1 }  }
	{ kern_0_0_val int 1 regular  }
	{ kern_0_1_val int 1 regular  }
	{ kern_0_2_val int 1 regular  }
	{ kern_0_3_val int 1 regular  }
	{ kern_0_4_val int 1 regular  }
	{ kern_0_5_val int 1 regular  }
	{ kern_0_6_val int 1 regular  }
	{ kern_0_7_val int 1 regular  }
	{ kern_0_8_val int 1 regular  }
	{ kern_1_0_val int 1 regular  }
	{ kern_1_1_val int 1 regular  }
	{ kern_1_2_val int 1 regular  }
	{ kern_1_3_val int 1 regular  }
	{ kern_1_4_val int 1 regular  }
	{ kern_1_5_val int 1 regular  }
	{ kern_1_6_val int 1 regular  }
	{ kern_1_7_val int 1 regular  }
	{ kern_1_8_val int 1 regular  }
	{ kern_2_0_val int 1 regular  }
	{ kern_2_1_val int 1 regular  }
	{ kern_2_2_val int 1 regular  }
	{ kern_2_3_val int 1 regular  }
	{ kern_2_4_val int 1 regular  }
	{ kern_2_5_val int 1 regular  }
	{ kern_2_6_val int 1 regular  }
	{ kern_2_7_val int 1 regular  }
	{ kern_2_8_val int 1 regular  }
	{ k int 2 regular  }
	{ loc_11_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "loc_08", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "oh_4", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "ow_4", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln103", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_0_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_1_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_2_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_3_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_4_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_5_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_6_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_7_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_0_8_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_0_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_1_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_2_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_3_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_4_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_5_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_6_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_7_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_1_8_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_0_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_1_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_2_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_3_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_4_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_5_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_6_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_7_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kern_2_8_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "loc_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ loc_08 sc_in sc_lv 32 signal 0 } 
	{ oh_4 sc_in sc_lv 5 signal 1 } 
	{ ow_4 sc_in sc_lv 5 signal 2 } 
	{ add_ln103 sc_in sc_lv 33 signal 3 } 
	{ input_0_address0 sc_out sc_lv 8 signal 4 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_0_q0 sc_in sc_lv 16 signal 4 } 
	{ input_1_address0 sc_out sc_lv 8 signal 5 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_1_q0 sc_in sc_lv 16 signal 5 } 
	{ input_2_address0 sc_out sc_lv 8 signal 6 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_2_q0 sc_in sc_lv 16 signal 6 } 
	{ input_3_address0 sc_out sc_lv 8 signal 7 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_3_q0 sc_in sc_lv 16 signal 7 } 
	{ input_4_address0 sc_out sc_lv 8 signal 8 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_4_q0 sc_in sc_lv 16 signal 8 } 
	{ input_5_address0 sc_out sc_lv 8 signal 9 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_5_q0 sc_in sc_lv 16 signal 9 } 
	{ input_6_address0 sc_out sc_lv 8 signal 10 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_6_q0 sc_in sc_lv 16 signal 10 } 
	{ input_7_address0 sc_out sc_lv 8 signal 11 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 11 } 
	{ input_7_q0 sc_in sc_lv 16 signal 11 } 
	{ input_8_address0 sc_out sc_lv 8 signal 12 } 
	{ input_8_ce0 sc_out sc_logic 1 signal 12 } 
	{ input_8_q0 sc_in sc_lv 16 signal 12 } 
	{ input_9_address0 sc_out sc_lv 8 signal 13 } 
	{ input_9_ce0 sc_out sc_logic 1 signal 13 } 
	{ input_9_q0 sc_in sc_lv 16 signal 13 } 
	{ input_10_address0 sc_out sc_lv 8 signal 14 } 
	{ input_10_ce0 sc_out sc_logic 1 signal 14 } 
	{ input_10_q0 sc_in sc_lv 16 signal 14 } 
	{ input_11_address0 sc_out sc_lv 8 signal 15 } 
	{ input_11_ce0 sc_out sc_logic 1 signal 15 } 
	{ input_11_q0 sc_in sc_lv 16 signal 15 } 
	{ input_12_address0 sc_out sc_lv 8 signal 16 } 
	{ input_12_ce0 sc_out sc_logic 1 signal 16 } 
	{ input_12_q0 sc_in sc_lv 16 signal 16 } 
	{ input_13_address0 sc_out sc_lv 8 signal 17 } 
	{ input_13_ce0 sc_out sc_logic 1 signal 17 } 
	{ input_13_q0 sc_in sc_lv 16 signal 17 } 
	{ kern_0_0_val sc_in sc_lv 1 signal 18 } 
	{ kern_0_1_val sc_in sc_lv 1 signal 19 } 
	{ kern_0_2_val sc_in sc_lv 1 signal 20 } 
	{ kern_0_3_val sc_in sc_lv 1 signal 21 } 
	{ kern_0_4_val sc_in sc_lv 1 signal 22 } 
	{ kern_0_5_val sc_in sc_lv 1 signal 23 } 
	{ kern_0_6_val sc_in sc_lv 1 signal 24 } 
	{ kern_0_7_val sc_in sc_lv 1 signal 25 } 
	{ kern_0_8_val sc_in sc_lv 1 signal 26 } 
	{ kern_1_0_val sc_in sc_lv 1 signal 27 } 
	{ kern_1_1_val sc_in sc_lv 1 signal 28 } 
	{ kern_1_2_val sc_in sc_lv 1 signal 29 } 
	{ kern_1_3_val sc_in sc_lv 1 signal 30 } 
	{ kern_1_4_val sc_in sc_lv 1 signal 31 } 
	{ kern_1_5_val sc_in sc_lv 1 signal 32 } 
	{ kern_1_6_val sc_in sc_lv 1 signal 33 } 
	{ kern_1_7_val sc_in sc_lv 1 signal 34 } 
	{ kern_1_8_val sc_in sc_lv 1 signal 35 } 
	{ kern_2_0_val sc_in sc_lv 1 signal 36 } 
	{ kern_2_1_val sc_in sc_lv 1 signal 37 } 
	{ kern_2_2_val sc_in sc_lv 1 signal 38 } 
	{ kern_2_3_val sc_in sc_lv 1 signal 39 } 
	{ kern_2_4_val sc_in sc_lv 1 signal 40 } 
	{ kern_2_5_val sc_in sc_lv 1 signal 41 } 
	{ kern_2_6_val sc_in sc_lv 1 signal 42 } 
	{ kern_2_7_val sc_in sc_lv 1 signal 43 } 
	{ kern_2_8_val sc_in sc_lv 1 signal 44 } 
	{ k sc_in sc_lv 2 signal 45 } 
	{ loc_11_out sc_out sc_lv 32 signal 46 } 
	{ loc_11_out_ap_vld sc_out sc_logic 1 outvld 46 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "loc_08", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "loc_08", "role": "default" }} , 
 	{ "name": "oh_4", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "oh_4", "role": "default" }} , 
 	{ "name": "ow_4", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ow_4", "role": "default" }} , 
 	{ "name": "add_ln103", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "add_ln103", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_5", "role": "address0" }} , 
 	{ "name": "input_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce0" }} , 
 	{ "name": "input_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_5", "role": "q0" }} , 
 	{ "name": "input_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_6", "role": "address0" }} , 
 	{ "name": "input_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce0" }} , 
 	{ "name": "input_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_6", "role": "q0" }} , 
 	{ "name": "input_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_7", "role": "address0" }} , 
 	{ "name": "input_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce0" }} , 
 	{ "name": "input_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_7", "role": "q0" }} , 
 	{ "name": "input_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_8", "role": "address0" }} , 
 	{ "name": "input_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "ce0" }} , 
 	{ "name": "input_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_8", "role": "q0" }} , 
 	{ "name": "input_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_9", "role": "address0" }} , 
 	{ "name": "input_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "ce0" }} , 
 	{ "name": "input_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_9", "role": "q0" }} , 
 	{ "name": "input_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_10", "role": "address0" }} , 
 	{ "name": "input_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "ce0" }} , 
 	{ "name": "input_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_10", "role": "q0" }} , 
 	{ "name": "input_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_11", "role": "address0" }} , 
 	{ "name": "input_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "ce0" }} , 
 	{ "name": "input_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_11", "role": "q0" }} , 
 	{ "name": "input_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_12", "role": "address0" }} , 
 	{ "name": "input_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "ce0" }} , 
 	{ "name": "input_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_12", "role": "q0" }} , 
 	{ "name": "input_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_13", "role": "address0" }} , 
 	{ "name": "input_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "ce0" }} , 
 	{ "name": "input_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_13", "role": "q0" }} , 
 	{ "name": "kern_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_0_val", "role": "default" }} , 
 	{ "name": "kern_0_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_1_val", "role": "default" }} , 
 	{ "name": "kern_0_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_2_val", "role": "default" }} , 
 	{ "name": "kern_0_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_3_val", "role": "default" }} , 
 	{ "name": "kern_0_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_4_val", "role": "default" }} , 
 	{ "name": "kern_0_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_5_val", "role": "default" }} , 
 	{ "name": "kern_0_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_6_val", "role": "default" }} , 
 	{ "name": "kern_0_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_7_val", "role": "default" }} , 
 	{ "name": "kern_0_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_0_8_val", "role": "default" }} , 
 	{ "name": "kern_1_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_0_val", "role": "default" }} , 
 	{ "name": "kern_1_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_1_val", "role": "default" }} , 
 	{ "name": "kern_1_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_2_val", "role": "default" }} , 
 	{ "name": "kern_1_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_3_val", "role": "default" }} , 
 	{ "name": "kern_1_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_4_val", "role": "default" }} , 
 	{ "name": "kern_1_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_5_val", "role": "default" }} , 
 	{ "name": "kern_1_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_6_val", "role": "default" }} , 
 	{ "name": "kern_1_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_7_val", "role": "default" }} , 
 	{ "name": "kern_1_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_1_8_val", "role": "default" }} , 
 	{ "name": "kern_2_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_0_val", "role": "default" }} , 
 	{ "name": "kern_2_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_1_val", "role": "default" }} , 
 	{ "name": "kern_2_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_2_val", "role": "default" }} , 
 	{ "name": "kern_2_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_3_val", "role": "default" }} , 
 	{ "name": "kern_2_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_4_val", "role": "default" }} , 
 	{ "name": "kern_2_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_5_val", "role": "default" }} , 
 	{ "name": "kern_2_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_6_val", "role": "default" }} , 
 	{ "name": "kern_2_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_7_val", "role": "default" }} , 
 	{ "name": "kern_2_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kern_2_8_val", "role": "default" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "loc_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "loc_11_out", "role": "default" }} , 
 	{ "name": "loc_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "loc_11_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv2d_l1_Pipeline_INIT_KH_INIT_KW {
		loc_08 {Type I LastRead 0 FirstWrite -1}
		oh_4 {Type I LastRead 0 FirstWrite -1}
		ow_4 {Type I LastRead 0 FirstWrite -1}
		add_ln103 {Type I LastRead 0 FirstWrite -1}
		input_0 {Type I LastRead 68 FirstWrite -1}
		input_1 {Type I LastRead 68 FirstWrite -1}
		input_2 {Type I LastRead 68 FirstWrite -1}
		input_3 {Type I LastRead 68 FirstWrite -1}
		input_4 {Type I LastRead 68 FirstWrite -1}
		input_5 {Type I LastRead 68 FirstWrite -1}
		input_6 {Type I LastRead 68 FirstWrite -1}
		input_7 {Type I LastRead 68 FirstWrite -1}
		input_8 {Type I LastRead 68 FirstWrite -1}
		input_9 {Type I LastRead 68 FirstWrite -1}
		input_10 {Type I LastRead 68 FirstWrite -1}
		input_11 {Type I LastRead 68 FirstWrite -1}
		input_12 {Type I LastRead 68 FirstWrite -1}
		input_13 {Type I LastRead 68 FirstWrite -1}
		kern_0_0_val {Type I LastRead 0 FirstWrite -1}
		kern_0_1_val {Type I LastRead 0 FirstWrite -1}
		kern_0_2_val {Type I LastRead 0 FirstWrite -1}
		kern_0_3_val {Type I LastRead 0 FirstWrite -1}
		kern_0_4_val {Type I LastRead 0 FirstWrite -1}
		kern_0_5_val {Type I LastRead 0 FirstWrite -1}
		kern_0_6_val {Type I LastRead 0 FirstWrite -1}
		kern_0_7_val {Type I LastRead 0 FirstWrite -1}
		kern_0_8_val {Type I LastRead 0 FirstWrite -1}
		kern_1_0_val {Type I LastRead 0 FirstWrite -1}
		kern_1_1_val {Type I LastRead 0 FirstWrite -1}
		kern_1_2_val {Type I LastRead 0 FirstWrite -1}
		kern_1_3_val {Type I LastRead 0 FirstWrite -1}
		kern_1_4_val {Type I LastRead 0 FirstWrite -1}
		kern_1_5_val {Type I LastRead 0 FirstWrite -1}
		kern_1_6_val {Type I LastRead 0 FirstWrite -1}
		kern_1_7_val {Type I LastRead 0 FirstWrite -1}
		kern_1_8_val {Type I LastRead 0 FirstWrite -1}
		kern_2_0_val {Type I LastRead 0 FirstWrite -1}
		kern_2_1_val {Type I LastRead 0 FirstWrite -1}
		kern_2_2_val {Type I LastRead 0 FirstWrite -1}
		kern_2_3_val {Type I LastRead 0 FirstWrite -1}
		kern_2_4_val {Type I LastRead 0 FirstWrite -1}
		kern_2_5_val {Type I LastRead 0 FirstWrite -1}
		kern_2_6_val {Type I LastRead 0 FirstWrite -1}
		kern_2_7_val {Type I LastRead 0 FirstWrite -1}
		kern_2_8_val {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		loc_11_out {Type O LastRead -1 FirstWrite 69}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "80", "Max" : "80"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loc_08 { ap_none {  { loc_08 in_data 0 32 } } }
	oh_4 { ap_none {  { oh_4 in_data 0 5 } } }
	ow_4 { ap_none {  { ow_4 in_data 0 5 } } }
	add_ln103 { ap_none {  { add_ln103 in_data 0 33 } } }
	input_0 { ap_memory {  { input_0_address0 mem_address 1 8 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 16 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 8 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 16 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 8 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 16 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 8 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 16 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 8 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 16 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 8 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 16 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 8 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 16 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 8 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 16 } } }
	input_8 { ap_memory {  { input_8_address0 mem_address 1 8 }  { input_8_ce0 mem_ce 1 1 }  { input_8_q0 mem_dout 0 16 } } }
	input_9 { ap_memory {  { input_9_address0 mem_address 1 8 }  { input_9_ce0 mem_ce 1 1 }  { input_9_q0 mem_dout 0 16 } } }
	input_10 { ap_memory {  { input_10_address0 mem_address 1 8 }  { input_10_ce0 mem_ce 1 1 }  { input_10_q0 mem_dout 0 16 } } }
	input_11 { ap_memory {  { input_11_address0 mem_address 1 8 }  { input_11_ce0 mem_ce 1 1 }  { input_11_q0 mem_dout 0 16 } } }
	input_12 { ap_memory {  { input_12_address0 mem_address 1 8 }  { input_12_ce0 mem_ce 1 1 }  { input_12_q0 mem_dout 0 16 } } }
	input_13 { ap_memory {  { input_13_address0 mem_address 1 8 }  { input_13_ce0 mem_ce 1 1 }  { input_13_q0 mem_dout 0 16 } } }
	kern_0_0_val { ap_none {  { kern_0_0_val in_data 0 1 } } }
	kern_0_1_val { ap_none {  { kern_0_1_val in_data 0 1 } } }
	kern_0_2_val { ap_none {  { kern_0_2_val in_data 0 1 } } }
	kern_0_3_val { ap_none {  { kern_0_3_val in_data 0 1 } } }
	kern_0_4_val { ap_none {  { kern_0_4_val in_data 0 1 } } }
	kern_0_5_val { ap_none {  { kern_0_5_val in_data 0 1 } } }
	kern_0_6_val { ap_none {  { kern_0_6_val in_data 0 1 } } }
	kern_0_7_val { ap_none {  { kern_0_7_val in_data 0 1 } } }
	kern_0_8_val { ap_none {  { kern_0_8_val in_data 0 1 } } }
	kern_1_0_val { ap_none {  { kern_1_0_val in_data 0 1 } } }
	kern_1_1_val { ap_none {  { kern_1_1_val in_data 0 1 } } }
	kern_1_2_val { ap_none {  { kern_1_2_val in_data 0 1 } } }
	kern_1_3_val { ap_none {  { kern_1_3_val in_data 0 1 } } }
	kern_1_4_val { ap_none {  { kern_1_4_val in_data 0 1 } } }
	kern_1_5_val { ap_none {  { kern_1_5_val in_data 0 1 } } }
	kern_1_6_val { ap_none {  { kern_1_6_val in_data 0 1 } } }
	kern_1_7_val { ap_none {  { kern_1_7_val in_data 0 1 } } }
	kern_1_8_val { ap_none {  { kern_1_8_val in_data 0 1 } } }
	kern_2_0_val { ap_none {  { kern_2_0_val in_data 0 1 } } }
	kern_2_1_val { ap_none {  { kern_2_1_val in_data 0 1 } } }
	kern_2_2_val { ap_none {  { kern_2_2_val in_data 0 1 } } }
	kern_2_3_val { ap_none {  { kern_2_3_val in_data 0 1 } } }
	kern_2_4_val { ap_none {  { kern_2_4_val in_data 0 1 } } }
	kern_2_5_val { ap_none {  { kern_2_5_val in_data 0 1 } } }
	kern_2_6_val { ap_none {  { kern_2_6_val in_data 0 1 } } }
	kern_2_7_val { ap_none {  { kern_2_7_val in_data 0 1 } } }
	kern_2_8_val { ap_none {  { kern_2_8_val in_data 0 1 } } }
	k { ap_none {  { k in_data 0 2 } } }
	loc_11_out { ap_vld {  { loc_11_out out_data 1 32 }  { loc_11_out_ap_vld out_vld 1 1 } } }
}
