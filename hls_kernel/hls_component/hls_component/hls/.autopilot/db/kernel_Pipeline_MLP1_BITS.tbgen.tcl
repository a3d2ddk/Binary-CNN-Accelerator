set moduleName kernel_Pipeline_MLP1_BITS
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
set C_modelName {kernel_Pipeline_MLP1_BITS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict packed_image_4 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_1 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_2 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_3 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_4 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_5 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_6 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_7 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_8 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_9 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_10 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_11 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_12 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict packed_image_4_13 { MEM_WIDTH 1 MEM_SIZE 148 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ mlp1_acc int 32 regular  }
	{ mlp1_w_off int 32 regular  }
	{ packed_image_4 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_1 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_2 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_3 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_4 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_5 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_6 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_7 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_8 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_9 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_10 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_11 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_12 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ packed_image_4_13 int 1 regular {array 148 { 1 3 } 1 1 }  }
	{ empty_103 int 1 regular  }
	{ empty_104 int 1 regular  }
	{ empty_105 int 1 regular  }
	{ empty_106 int 1 regular  }
	{ empty_107 int 1 regular  }
	{ empty_108 int 1 regular  }
	{ empty_109 int 1 regular  }
	{ empty_110 int 1 regular  }
	{ empty_111 int 1 regular  }
	{ empty_112 int 1 regular  }
	{ empty_113 int 1 regular  }
	{ empty_114 int 1 regular  }
	{ empty_115 int 1 regular  }
	{ empty_116 int 1 regular  }
	{ empty_117 int 1 regular  }
	{ empty_118 int 1 regular  }
	{ empty_119 int 1 regular  }
	{ empty_120 int 1 regular  }
	{ empty_121 int 1 regular  }
	{ empty_122 int 1 regular  }
	{ empty_123 int 1 regular  }
	{ empty_124 int 1 regular  }
	{ empty_125 int 1 regular  }
	{ empty_126 int 1 regular  }
	{ empty_127 int 1 regular  }
	{ empty_128 int 1 regular  }
	{ empty int 1 regular  }
	{ total_1 int 5 regular  }
	{ mlp1_acc_2_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mlp1_acc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp1_w_off", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_4", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_5", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_6", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_7", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_8", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_9", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_10", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_11", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_12", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "packed_image_4_13", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_103", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_104", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_105", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_106", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_107", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_108", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_109", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_110", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_111", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_112", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_113", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_114", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_115", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_116", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_117", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_118", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_119", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_120", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_121", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_122", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_123", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_124", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_125", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_126", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_127", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_128", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "total_1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mlp1_acc_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 80
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mlp1_acc sc_in sc_lv 32 signal 0 } 
	{ mlp1_w_off sc_in sc_lv 32 signal 1 } 
	{ packed_image_4_address0 sc_out sc_lv 8 signal 2 } 
	{ packed_image_4_ce0 sc_out sc_logic 1 signal 2 } 
	{ packed_image_4_q0 sc_in sc_lv 1 signal 2 } 
	{ packed_image_4_1_address0 sc_out sc_lv 8 signal 3 } 
	{ packed_image_4_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ packed_image_4_1_q0 sc_in sc_lv 1 signal 3 } 
	{ packed_image_4_2_address0 sc_out sc_lv 8 signal 4 } 
	{ packed_image_4_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ packed_image_4_2_q0 sc_in sc_lv 1 signal 4 } 
	{ packed_image_4_3_address0 sc_out sc_lv 8 signal 5 } 
	{ packed_image_4_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ packed_image_4_3_q0 sc_in sc_lv 1 signal 5 } 
	{ packed_image_4_4_address0 sc_out sc_lv 8 signal 6 } 
	{ packed_image_4_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ packed_image_4_4_q0 sc_in sc_lv 1 signal 6 } 
	{ packed_image_4_5_address0 sc_out sc_lv 8 signal 7 } 
	{ packed_image_4_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ packed_image_4_5_q0 sc_in sc_lv 1 signal 7 } 
	{ packed_image_4_6_address0 sc_out sc_lv 8 signal 8 } 
	{ packed_image_4_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ packed_image_4_6_q0 sc_in sc_lv 1 signal 8 } 
	{ packed_image_4_7_address0 sc_out sc_lv 8 signal 9 } 
	{ packed_image_4_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ packed_image_4_7_q0 sc_in sc_lv 1 signal 9 } 
	{ packed_image_4_8_address0 sc_out sc_lv 8 signal 10 } 
	{ packed_image_4_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ packed_image_4_8_q0 sc_in sc_lv 1 signal 10 } 
	{ packed_image_4_9_address0 sc_out sc_lv 8 signal 11 } 
	{ packed_image_4_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ packed_image_4_9_q0 sc_in sc_lv 1 signal 11 } 
	{ packed_image_4_10_address0 sc_out sc_lv 8 signal 12 } 
	{ packed_image_4_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ packed_image_4_10_q0 sc_in sc_lv 1 signal 12 } 
	{ packed_image_4_11_address0 sc_out sc_lv 8 signal 13 } 
	{ packed_image_4_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ packed_image_4_11_q0 sc_in sc_lv 1 signal 13 } 
	{ packed_image_4_12_address0 sc_out sc_lv 8 signal 14 } 
	{ packed_image_4_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ packed_image_4_12_q0 sc_in sc_lv 1 signal 14 } 
	{ packed_image_4_13_address0 sc_out sc_lv 8 signal 15 } 
	{ packed_image_4_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ packed_image_4_13_q0 sc_in sc_lv 1 signal 15 } 
	{ empty_103 sc_in sc_lv 1 signal 16 } 
	{ empty_104 sc_in sc_lv 1 signal 17 } 
	{ empty_105 sc_in sc_lv 1 signal 18 } 
	{ empty_106 sc_in sc_lv 1 signal 19 } 
	{ empty_107 sc_in sc_lv 1 signal 20 } 
	{ empty_108 sc_in sc_lv 1 signal 21 } 
	{ empty_109 sc_in sc_lv 1 signal 22 } 
	{ empty_110 sc_in sc_lv 1 signal 23 } 
	{ empty_111 sc_in sc_lv 1 signal 24 } 
	{ empty_112 sc_in sc_lv 1 signal 25 } 
	{ empty_113 sc_in sc_lv 1 signal 26 } 
	{ empty_114 sc_in sc_lv 1 signal 27 } 
	{ empty_115 sc_in sc_lv 1 signal 28 } 
	{ empty_116 sc_in sc_lv 1 signal 29 } 
	{ empty_117 sc_in sc_lv 1 signal 30 } 
	{ empty_118 sc_in sc_lv 1 signal 31 } 
	{ empty_119 sc_in sc_lv 1 signal 32 } 
	{ empty_120 sc_in sc_lv 1 signal 33 } 
	{ empty_121 sc_in sc_lv 1 signal 34 } 
	{ empty_122 sc_in sc_lv 1 signal 35 } 
	{ empty_123 sc_in sc_lv 1 signal 36 } 
	{ empty_124 sc_in sc_lv 1 signal 37 } 
	{ empty_125 sc_in sc_lv 1 signal 38 } 
	{ empty_126 sc_in sc_lv 1 signal 39 } 
	{ empty_127 sc_in sc_lv 1 signal 40 } 
	{ empty_128 sc_in sc_lv 1 signal 41 } 
	{ empty sc_in sc_lv 1 signal 42 } 
	{ total_1 sc_in sc_lv 5 signal 43 } 
	{ mlp1_acc_2_out sc_out sc_lv 32 signal 44 } 
	{ mlp1_acc_2_out_ap_vld sc_out sc_logic 1 outvld 44 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mlp1_acc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp1_acc", "role": "default" }} , 
 	{ "name": "mlp1_w_off", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp1_w_off", "role": "default" }} , 
 	{ "name": "packed_image_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4", "role": "address0" }} , 
 	{ "name": "packed_image_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4", "role": "ce0" }} , 
 	{ "name": "packed_image_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4", "role": "q0" }} , 
 	{ "name": "packed_image_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_1", "role": "address0" }} , 
 	{ "name": "packed_image_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_1", "role": "ce0" }} , 
 	{ "name": "packed_image_4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_1", "role": "q0" }} , 
 	{ "name": "packed_image_4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_2", "role": "address0" }} , 
 	{ "name": "packed_image_4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_2", "role": "ce0" }} , 
 	{ "name": "packed_image_4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_2", "role": "q0" }} , 
 	{ "name": "packed_image_4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_3", "role": "address0" }} , 
 	{ "name": "packed_image_4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_3", "role": "ce0" }} , 
 	{ "name": "packed_image_4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_3", "role": "q0" }} , 
 	{ "name": "packed_image_4_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_4", "role": "address0" }} , 
 	{ "name": "packed_image_4_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_4", "role": "ce0" }} , 
 	{ "name": "packed_image_4_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_4", "role": "q0" }} , 
 	{ "name": "packed_image_4_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_5", "role": "address0" }} , 
 	{ "name": "packed_image_4_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_5", "role": "ce0" }} , 
 	{ "name": "packed_image_4_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_5", "role": "q0" }} , 
 	{ "name": "packed_image_4_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_6", "role": "address0" }} , 
 	{ "name": "packed_image_4_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_6", "role": "ce0" }} , 
 	{ "name": "packed_image_4_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_6", "role": "q0" }} , 
 	{ "name": "packed_image_4_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_7", "role": "address0" }} , 
 	{ "name": "packed_image_4_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_7", "role": "ce0" }} , 
 	{ "name": "packed_image_4_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_7", "role": "q0" }} , 
 	{ "name": "packed_image_4_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_8", "role": "address0" }} , 
 	{ "name": "packed_image_4_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_8", "role": "ce0" }} , 
 	{ "name": "packed_image_4_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_8", "role": "q0" }} , 
 	{ "name": "packed_image_4_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_9", "role": "address0" }} , 
 	{ "name": "packed_image_4_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_9", "role": "ce0" }} , 
 	{ "name": "packed_image_4_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_9", "role": "q0" }} , 
 	{ "name": "packed_image_4_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_10", "role": "address0" }} , 
 	{ "name": "packed_image_4_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_10", "role": "ce0" }} , 
 	{ "name": "packed_image_4_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_10", "role": "q0" }} , 
 	{ "name": "packed_image_4_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_11", "role": "address0" }} , 
 	{ "name": "packed_image_4_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_11", "role": "ce0" }} , 
 	{ "name": "packed_image_4_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_11", "role": "q0" }} , 
 	{ "name": "packed_image_4_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_12", "role": "address0" }} , 
 	{ "name": "packed_image_4_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_12", "role": "ce0" }} , 
 	{ "name": "packed_image_4_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_12", "role": "q0" }} , 
 	{ "name": "packed_image_4_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packed_image_4_13", "role": "address0" }} , 
 	{ "name": "packed_image_4_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_13", "role": "ce0" }} , 
 	{ "name": "packed_image_4_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packed_image_4_13", "role": "q0" }} , 
 	{ "name": "empty_103", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_103", "role": "default" }} , 
 	{ "name": "empty_104", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_104", "role": "default" }} , 
 	{ "name": "empty_105", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_105", "role": "default" }} , 
 	{ "name": "empty_106", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_106", "role": "default" }} , 
 	{ "name": "empty_107", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_107", "role": "default" }} , 
 	{ "name": "empty_108", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_108", "role": "default" }} , 
 	{ "name": "empty_109", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_109", "role": "default" }} , 
 	{ "name": "empty_110", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_110", "role": "default" }} , 
 	{ "name": "empty_111", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_111", "role": "default" }} , 
 	{ "name": "empty_112", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_112", "role": "default" }} , 
 	{ "name": "empty_113", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_113", "role": "default" }} , 
 	{ "name": "empty_114", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_114", "role": "default" }} , 
 	{ "name": "empty_115", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_115", "role": "default" }} , 
 	{ "name": "empty_116", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_116", "role": "default" }} , 
 	{ "name": "empty_117", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_117", "role": "default" }} , 
 	{ "name": "empty_118", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_118", "role": "default" }} , 
 	{ "name": "empty_119", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_119", "role": "default" }} , 
 	{ "name": "empty_120", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_120", "role": "default" }} , 
 	{ "name": "empty_121", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_121", "role": "default" }} , 
 	{ "name": "empty_122", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_122", "role": "default" }} , 
 	{ "name": "empty_123", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_123", "role": "default" }} , 
 	{ "name": "empty_124", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_124", "role": "default" }} , 
 	{ "name": "empty_125", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_125", "role": "default" }} , 
 	{ "name": "empty_126", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_126", "role": "default" }} , 
 	{ "name": "empty_127", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_127", "role": "default" }} , 
 	{ "name": "empty_128", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_128", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "total_1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "total_1", "role": "default" }} , 
 	{ "name": "mlp1_acc_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp1_acc_2_out", "role": "default" }} , 
 	{ "name": "mlp1_acc_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlp1_acc_2_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	kernel_Pipeline_MLP1_BITS {
		mlp1_acc {Type I LastRead 0 FirstWrite -1}
		mlp1_w_off {Type I LastRead 0 FirstWrite -1}
		packed_image_4 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_1 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_2 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_3 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_4 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_5 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_6 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_7 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_8 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_9 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_10 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_11 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_12 {Type I LastRead 36 FirstWrite -1}
		packed_image_4_13 {Type I LastRead 36 FirstWrite -1}
		empty_103 {Type I LastRead 0 FirstWrite -1}
		empty_104 {Type I LastRead 0 FirstWrite -1}
		empty_105 {Type I LastRead 0 FirstWrite -1}
		empty_106 {Type I LastRead 0 FirstWrite -1}
		empty_107 {Type I LastRead 0 FirstWrite -1}
		empty_108 {Type I LastRead 0 FirstWrite -1}
		empty_109 {Type I LastRead 0 FirstWrite -1}
		empty_110 {Type I LastRead 0 FirstWrite -1}
		empty_111 {Type I LastRead 0 FirstWrite -1}
		empty_112 {Type I LastRead 0 FirstWrite -1}
		empty_113 {Type I LastRead 0 FirstWrite -1}
		empty_114 {Type I LastRead 0 FirstWrite -1}
		empty_115 {Type I LastRead 0 FirstWrite -1}
		empty_116 {Type I LastRead 0 FirstWrite -1}
		empty_117 {Type I LastRead 0 FirstWrite -1}
		empty_118 {Type I LastRead 0 FirstWrite -1}
		empty_119 {Type I LastRead 0 FirstWrite -1}
		empty_120 {Type I LastRead 0 FirstWrite -1}
		empty_121 {Type I LastRead 0 FirstWrite -1}
		empty_122 {Type I LastRead 0 FirstWrite -1}
		empty_123 {Type I LastRead 0 FirstWrite -1}
		empty_124 {Type I LastRead 0 FirstWrite -1}
		empty_125 {Type I LastRead 0 FirstWrite -1}
		empty_126 {Type I LastRead 0 FirstWrite -1}
		empty_127 {Type I LastRead 0 FirstWrite -1}
		empty_128 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		total_1 {Type I LastRead 0 FirstWrite -1}
		mlp1_acc_2_out {Type O LastRead -1 FirstWrite 38}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "40", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "27"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mlp1_acc { ap_none {  { mlp1_acc in_data 0 32 } } }
	mlp1_w_off { ap_none {  { mlp1_w_off in_data 0 32 } } }
	packed_image_4 { ap_memory {  { packed_image_4_address0 mem_address 1 8 }  { packed_image_4_ce0 mem_ce 1 1 }  { packed_image_4_q0 mem_dout 0 1 } } }
	packed_image_4_1 { ap_memory {  { packed_image_4_1_address0 mem_address 1 8 }  { packed_image_4_1_ce0 mem_ce 1 1 }  { packed_image_4_1_q0 mem_dout 0 1 } } }
	packed_image_4_2 { ap_memory {  { packed_image_4_2_address0 mem_address 1 8 }  { packed_image_4_2_ce0 mem_ce 1 1 }  { packed_image_4_2_q0 mem_dout 0 1 } } }
	packed_image_4_3 { ap_memory {  { packed_image_4_3_address0 mem_address 1 8 }  { packed_image_4_3_ce0 mem_ce 1 1 }  { packed_image_4_3_q0 mem_dout 0 1 } } }
	packed_image_4_4 { ap_memory {  { packed_image_4_4_address0 mem_address 1 8 }  { packed_image_4_4_ce0 mem_ce 1 1 }  { packed_image_4_4_q0 mem_dout 0 1 } } }
	packed_image_4_5 { ap_memory {  { packed_image_4_5_address0 mem_address 1 8 }  { packed_image_4_5_ce0 mem_ce 1 1 }  { packed_image_4_5_q0 mem_dout 0 1 } } }
	packed_image_4_6 { ap_memory {  { packed_image_4_6_address0 mem_address 1 8 }  { packed_image_4_6_ce0 mem_ce 1 1 }  { packed_image_4_6_q0 mem_dout 0 1 } } }
	packed_image_4_7 { ap_memory {  { packed_image_4_7_address0 mem_address 1 8 }  { packed_image_4_7_ce0 mem_ce 1 1 }  { packed_image_4_7_q0 mem_dout 0 1 } } }
	packed_image_4_8 { ap_memory {  { packed_image_4_8_address0 mem_address 1 8 }  { packed_image_4_8_ce0 mem_ce 1 1 }  { packed_image_4_8_q0 mem_dout 0 1 } } }
	packed_image_4_9 { ap_memory {  { packed_image_4_9_address0 mem_address 1 8 }  { packed_image_4_9_ce0 mem_ce 1 1 }  { packed_image_4_9_q0 mem_dout 0 1 } } }
	packed_image_4_10 { ap_memory {  { packed_image_4_10_address0 mem_address 1 8 }  { packed_image_4_10_ce0 mem_ce 1 1 }  { packed_image_4_10_q0 mem_dout 0 1 } } }
	packed_image_4_11 { ap_memory {  { packed_image_4_11_address0 mem_address 1 8 }  { packed_image_4_11_ce0 mem_ce 1 1 }  { packed_image_4_11_q0 mem_dout 0 1 } } }
	packed_image_4_12 { ap_memory {  { packed_image_4_12_address0 mem_address 1 8 }  { packed_image_4_12_ce0 mem_ce 1 1 }  { packed_image_4_12_q0 mem_dout 0 1 } } }
	packed_image_4_13 { ap_memory {  { packed_image_4_13_address0 mem_address 1 8 }  { packed_image_4_13_ce0 mem_ce 1 1 }  { packed_image_4_13_q0 mem_dout 0 1 } } }
	empty_103 { ap_none {  { empty_103 in_data 0 1 } } }
	empty_104 { ap_none {  { empty_104 in_data 0 1 } } }
	empty_105 { ap_none {  { empty_105 in_data 0 1 } } }
	empty_106 { ap_none {  { empty_106 in_data 0 1 } } }
	empty_107 { ap_none {  { empty_107 in_data 0 1 } } }
	empty_108 { ap_none {  { empty_108 in_data 0 1 } } }
	empty_109 { ap_none {  { empty_109 in_data 0 1 } } }
	empty_110 { ap_none {  { empty_110 in_data 0 1 } } }
	empty_111 { ap_none {  { empty_111 in_data 0 1 } } }
	empty_112 { ap_none {  { empty_112 in_data 0 1 } } }
	empty_113 { ap_none {  { empty_113 in_data 0 1 } } }
	empty_114 { ap_none {  { empty_114 in_data 0 1 } } }
	empty_115 { ap_none {  { empty_115 in_data 0 1 } } }
	empty_116 { ap_none {  { empty_116 in_data 0 1 } } }
	empty_117 { ap_none {  { empty_117 in_data 0 1 } } }
	empty_118 { ap_none {  { empty_118 in_data 0 1 } } }
	empty_119 { ap_none {  { empty_119 in_data 0 1 } } }
	empty_120 { ap_none {  { empty_120 in_data 0 1 } } }
	empty_121 { ap_none {  { empty_121 in_data 0 1 } } }
	empty_122 { ap_none {  { empty_122 in_data 0 1 } } }
	empty_123 { ap_none {  { empty_123 in_data 0 1 } } }
	empty_124 { ap_none {  { empty_124 in_data 0 1 } } }
	empty_125 { ap_none {  { empty_125 in_data 0 1 } } }
	empty_126 { ap_none {  { empty_126 in_data 0 1 } } }
	empty_127 { ap_none {  { empty_127 in_data 0 1 } } }
	empty_128 { ap_none {  { empty_128 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	total_1 { ap_none {  { total_1 in_data 0 5 } } }
	mlp1_acc_2_out { ap_vld {  { mlp1_acc_2_out out_data 1 32 }  { mlp1_acc_2_out_ap_vld out_vld 1 1 } } }
}
