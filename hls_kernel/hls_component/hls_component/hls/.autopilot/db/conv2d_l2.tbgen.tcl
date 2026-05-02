set moduleName conv2d_l2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {conv2d_l2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_0 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_1 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_2 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_3 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_4 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_5 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_6 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_7 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_8 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_9 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_10 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_11 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_12 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict input_13 { MEM_WIDTH 1 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buffer_0 { MEM_WIDTH 32 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buffer_1 { MEM_WIDTH 32 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict output_0 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_1 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_2 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_3 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_4 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_5 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_6 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_7 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_8 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_9 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_10 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_11 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_12 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_13 { MEM_WIDTH 1 MEM_SIZE 640 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_0 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_1 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_2 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_3 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_4 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_5 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_6 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_7 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_8 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_9 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_10 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_11 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_12 int 1 regular {array 1280 { 1 3 } 1 1 }  }
	{ input_13 int 1 regular {array 1280 { 1 3 } 1 1 }  }
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
	{ num_kerns_val int 2 regular  }
	{ in_ch_start int 32 regular  }
	{ buffer_0 int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ buffer_1 int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ finalize uint 1 regular  }
	{ bias int 16 regular  }
	{ out_ch int 32 regular  }
	{ output_0 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_1 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_2 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_3 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_4 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_5 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_6 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_7 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_8 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_9 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_10 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_11 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_12 int 1 regular {array 640 { 0 3 } 0 1 }  }
	{ output_13 int 1 regular {array 640 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_0", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_4", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_5", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_6", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_7", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_8", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_9", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_10", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_11", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_12", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_13", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
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
 	{ "Name" : "num_kerns_val", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_ch_start", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "buffer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "finalize", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_ch", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
 	{ "Name" : "output_13", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 156
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_address0 sc_out sc_lv 11 signal 0 } 
	{ input_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_0_q0 sc_in sc_lv 1 signal 0 } 
	{ input_1_address0 sc_out sc_lv 11 signal 1 } 
	{ input_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_1_q0 sc_in sc_lv 1 signal 1 } 
	{ input_2_address0 sc_out sc_lv 11 signal 2 } 
	{ input_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_2_q0 sc_in sc_lv 1 signal 2 } 
	{ input_3_address0 sc_out sc_lv 11 signal 3 } 
	{ input_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_3_q0 sc_in sc_lv 1 signal 3 } 
	{ input_4_address0 sc_out sc_lv 11 signal 4 } 
	{ input_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_4_q0 sc_in sc_lv 1 signal 4 } 
	{ input_5_address0 sc_out sc_lv 11 signal 5 } 
	{ input_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ input_5_q0 sc_in sc_lv 1 signal 5 } 
	{ input_6_address0 sc_out sc_lv 11 signal 6 } 
	{ input_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ input_6_q0 sc_in sc_lv 1 signal 6 } 
	{ input_7_address0 sc_out sc_lv 11 signal 7 } 
	{ input_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ input_7_q0 sc_in sc_lv 1 signal 7 } 
	{ input_8_address0 sc_out sc_lv 11 signal 8 } 
	{ input_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ input_8_q0 sc_in sc_lv 1 signal 8 } 
	{ input_9_address0 sc_out sc_lv 11 signal 9 } 
	{ input_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ input_9_q0 sc_in sc_lv 1 signal 9 } 
	{ input_10_address0 sc_out sc_lv 11 signal 10 } 
	{ input_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ input_10_q0 sc_in sc_lv 1 signal 10 } 
	{ input_11_address0 sc_out sc_lv 11 signal 11 } 
	{ input_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ input_11_q0 sc_in sc_lv 1 signal 11 } 
	{ input_12_address0 sc_out sc_lv 11 signal 12 } 
	{ input_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ input_12_q0 sc_in sc_lv 1 signal 12 } 
	{ input_13_address0 sc_out sc_lv 11 signal 13 } 
	{ input_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ input_13_q0 sc_in sc_lv 1 signal 13 } 
	{ kern_0_0_val sc_in sc_lv 1 signal 14 } 
	{ kern_0_1_val sc_in sc_lv 1 signal 15 } 
	{ kern_0_2_val sc_in sc_lv 1 signal 16 } 
	{ kern_0_3_val sc_in sc_lv 1 signal 17 } 
	{ kern_0_4_val sc_in sc_lv 1 signal 18 } 
	{ kern_0_5_val sc_in sc_lv 1 signal 19 } 
	{ kern_0_6_val sc_in sc_lv 1 signal 20 } 
	{ kern_0_7_val sc_in sc_lv 1 signal 21 } 
	{ kern_0_8_val sc_in sc_lv 1 signal 22 } 
	{ kern_1_0_val sc_in sc_lv 1 signal 23 } 
	{ kern_1_1_val sc_in sc_lv 1 signal 24 } 
	{ kern_1_2_val sc_in sc_lv 1 signal 25 } 
	{ kern_1_3_val sc_in sc_lv 1 signal 26 } 
	{ kern_1_4_val sc_in sc_lv 1 signal 27 } 
	{ kern_1_5_val sc_in sc_lv 1 signal 28 } 
	{ kern_1_6_val sc_in sc_lv 1 signal 29 } 
	{ kern_1_7_val sc_in sc_lv 1 signal 30 } 
	{ kern_1_8_val sc_in sc_lv 1 signal 31 } 
	{ kern_2_0_val sc_in sc_lv 1 signal 32 } 
	{ kern_2_1_val sc_in sc_lv 1 signal 33 } 
	{ kern_2_2_val sc_in sc_lv 1 signal 34 } 
	{ kern_2_3_val sc_in sc_lv 1 signal 35 } 
	{ kern_2_4_val sc_in sc_lv 1 signal 36 } 
	{ kern_2_5_val sc_in sc_lv 1 signal 37 } 
	{ kern_2_6_val sc_in sc_lv 1 signal 38 } 
	{ kern_2_7_val sc_in sc_lv 1 signal 39 } 
	{ kern_2_8_val sc_in sc_lv 1 signal 40 } 
	{ num_kerns_val sc_in sc_lv 2 signal 41 } 
	{ in_ch_start sc_in sc_lv 32 signal 42 } 
	{ buffer_0_address0 sc_out sc_lv 9 signal 43 } 
	{ buffer_0_ce0 sc_out sc_logic 1 signal 43 } 
	{ buffer_0_we0 sc_out sc_logic 1 signal 43 } 
	{ buffer_0_d0 sc_out sc_lv 32 signal 43 } 
	{ buffer_0_q0 sc_in sc_lv 32 signal 43 } 
	{ buffer_0_address1 sc_out sc_lv 9 signal 43 } 
	{ buffer_0_ce1 sc_out sc_logic 1 signal 43 } 
	{ buffer_0_we1 sc_out sc_logic 1 signal 43 } 
	{ buffer_0_d1 sc_out sc_lv 32 signal 43 } 
	{ buffer_0_q1 sc_in sc_lv 32 signal 43 } 
	{ buffer_1_address0 sc_out sc_lv 9 signal 44 } 
	{ buffer_1_ce0 sc_out sc_logic 1 signal 44 } 
	{ buffer_1_we0 sc_out sc_logic 1 signal 44 } 
	{ buffer_1_d0 sc_out sc_lv 32 signal 44 } 
	{ buffer_1_q0 sc_in sc_lv 32 signal 44 } 
	{ buffer_1_address1 sc_out sc_lv 9 signal 44 } 
	{ buffer_1_ce1 sc_out sc_logic 1 signal 44 } 
	{ buffer_1_we1 sc_out sc_logic 1 signal 44 } 
	{ buffer_1_d1 sc_out sc_lv 32 signal 44 } 
	{ buffer_1_q1 sc_in sc_lv 32 signal 44 } 
	{ finalize sc_in sc_lv 1 signal 45 } 
	{ bias sc_in sc_lv 16 signal 46 } 
	{ out_ch sc_in sc_lv 32 signal 47 } 
	{ output_0_address0 sc_out sc_lv 10 signal 48 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 48 } 
	{ output_0_we0 sc_out sc_logic 1 signal 48 } 
	{ output_0_d0 sc_out sc_lv 1 signal 48 } 
	{ output_1_address0 sc_out sc_lv 10 signal 49 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 49 } 
	{ output_1_we0 sc_out sc_logic 1 signal 49 } 
	{ output_1_d0 sc_out sc_lv 1 signal 49 } 
	{ output_2_address0 sc_out sc_lv 10 signal 50 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 50 } 
	{ output_2_we0 sc_out sc_logic 1 signal 50 } 
	{ output_2_d0 sc_out sc_lv 1 signal 50 } 
	{ output_3_address0 sc_out sc_lv 10 signal 51 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 51 } 
	{ output_3_we0 sc_out sc_logic 1 signal 51 } 
	{ output_3_d0 sc_out sc_lv 1 signal 51 } 
	{ output_4_address0 sc_out sc_lv 10 signal 52 } 
	{ output_4_ce0 sc_out sc_logic 1 signal 52 } 
	{ output_4_we0 sc_out sc_logic 1 signal 52 } 
	{ output_4_d0 sc_out sc_lv 1 signal 52 } 
	{ output_5_address0 sc_out sc_lv 10 signal 53 } 
	{ output_5_ce0 sc_out sc_logic 1 signal 53 } 
	{ output_5_we0 sc_out sc_logic 1 signal 53 } 
	{ output_5_d0 sc_out sc_lv 1 signal 53 } 
	{ output_6_address0 sc_out sc_lv 10 signal 54 } 
	{ output_6_ce0 sc_out sc_logic 1 signal 54 } 
	{ output_6_we0 sc_out sc_logic 1 signal 54 } 
	{ output_6_d0 sc_out sc_lv 1 signal 54 } 
	{ output_7_address0 sc_out sc_lv 10 signal 55 } 
	{ output_7_ce0 sc_out sc_logic 1 signal 55 } 
	{ output_7_we0 sc_out sc_logic 1 signal 55 } 
	{ output_7_d0 sc_out sc_lv 1 signal 55 } 
	{ output_8_address0 sc_out sc_lv 10 signal 56 } 
	{ output_8_ce0 sc_out sc_logic 1 signal 56 } 
	{ output_8_we0 sc_out sc_logic 1 signal 56 } 
	{ output_8_d0 sc_out sc_lv 1 signal 56 } 
	{ output_9_address0 sc_out sc_lv 10 signal 57 } 
	{ output_9_ce0 sc_out sc_logic 1 signal 57 } 
	{ output_9_we0 sc_out sc_logic 1 signal 57 } 
	{ output_9_d0 sc_out sc_lv 1 signal 57 } 
	{ output_10_address0 sc_out sc_lv 10 signal 58 } 
	{ output_10_ce0 sc_out sc_logic 1 signal 58 } 
	{ output_10_we0 sc_out sc_logic 1 signal 58 } 
	{ output_10_d0 sc_out sc_lv 1 signal 58 } 
	{ output_11_address0 sc_out sc_lv 10 signal 59 } 
	{ output_11_ce0 sc_out sc_logic 1 signal 59 } 
	{ output_11_we0 sc_out sc_logic 1 signal 59 } 
	{ output_11_d0 sc_out sc_lv 1 signal 59 } 
	{ output_12_address0 sc_out sc_lv 10 signal 60 } 
	{ output_12_ce0 sc_out sc_logic 1 signal 60 } 
	{ output_12_we0 sc_out sc_logic 1 signal 60 } 
	{ output_12_d0 sc_out sc_lv 1 signal 60 } 
	{ output_13_address0 sc_out sc_lv 10 signal 61 } 
	{ output_13_ce0 sc_out sc_logic 1 signal 61 } 
	{ output_13_we0 sc_out sc_logic 1 signal 61 } 
	{ output_13_d0 sc_out sc_lv 1 signal 61 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_0", "role": "address0" }} , 
 	{ "name": "input_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ce0" }} , 
 	{ "name": "input_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "q0" }} , 
 	{ "name": "input_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_1", "role": "address0" }} , 
 	{ "name": "input_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ce0" }} , 
 	{ "name": "input_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "q0" }} , 
 	{ "name": "input_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_2", "role": "address0" }} , 
 	{ "name": "input_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "ce0" }} , 
 	{ "name": "input_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_2", "role": "q0" }} , 
 	{ "name": "input_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_3", "role": "address0" }} , 
 	{ "name": "input_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "ce0" }} , 
 	{ "name": "input_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_3", "role": "q0" }} , 
 	{ "name": "input_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_4", "role": "address0" }} , 
 	{ "name": "input_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "ce0" }} , 
 	{ "name": "input_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_4", "role": "q0" }} , 
 	{ "name": "input_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_5", "role": "address0" }} , 
 	{ "name": "input_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "ce0" }} , 
 	{ "name": "input_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_5", "role": "q0" }} , 
 	{ "name": "input_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_6", "role": "address0" }} , 
 	{ "name": "input_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "ce0" }} , 
 	{ "name": "input_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_6", "role": "q0" }} , 
 	{ "name": "input_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_7", "role": "address0" }} , 
 	{ "name": "input_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "ce0" }} , 
 	{ "name": "input_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_7", "role": "q0" }} , 
 	{ "name": "input_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_8", "role": "address0" }} , 
 	{ "name": "input_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "ce0" }} , 
 	{ "name": "input_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_8", "role": "q0" }} , 
 	{ "name": "input_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_9", "role": "address0" }} , 
 	{ "name": "input_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "ce0" }} , 
 	{ "name": "input_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_9", "role": "q0" }} , 
 	{ "name": "input_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_10", "role": "address0" }} , 
 	{ "name": "input_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "ce0" }} , 
 	{ "name": "input_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_10", "role": "q0" }} , 
 	{ "name": "input_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_11", "role": "address0" }} , 
 	{ "name": "input_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "ce0" }} , 
 	{ "name": "input_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_11", "role": "q0" }} , 
 	{ "name": "input_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_12", "role": "address0" }} , 
 	{ "name": "input_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "ce0" }} , 
 	{ "name": "input_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_12", "role": "q0" }} , 
 	{ "name": "input_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_13", "role": "address0" }} , 
 	{ "name": "input_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "ce0" }} , 
 	{ "name": "input_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_13", "role": "q0" }} , 
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
 	{ "name": "num_kerns_val", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "num_kerns_val", "role": "default" }} , 
 	{ "name": "in_ch_start", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_ch_start", "role": "default" }} , 
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
 	{ "name": "finalize", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "finalize", "role": "default" }} , 
 	{ "name": "bias", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias", "role": "default" }} , 
 	{ "name": "out_ch", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_ch", "role": "default" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we0" }} , 
 	{ "name": "output_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "d0" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we0" }} , 
 	{ "name": "output_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "d0" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we0" }} , 
 	{ "name": "output_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "d0" }} , 
 	{ "name": "output_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_4", "role": "address0" }} , 
 	{ "name": "output_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "ce0" }} , 
 	{ "name": "output_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "we0" }} , 
 	{ "name": "output_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_4", "role": "d0" }} , 
 	{ "name": "output_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_5", "role": "address0" }} , 
 	{ "name": "output_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "ce0" }} , 
 	{ "name": "output_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "we0" }} , 
 	{ "name": "output_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_5", "role": "d0" }} , 
 	{ "name": "output_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_6", "role": "address0" }} , 
 	{ "name": "output_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "ce0" }} , 
 	{ "name": "output_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "we0" }} , 
 	{ "name": "output_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_6", "role": "d0" }} , 
 	{ "name": "output_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_7", "role": "address0" }} , 
 	{ "name": "output_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "ce0" }} , 
 	{ "name": "output_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "we0" }} , 
 	{ "name": "output_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_7", "role": "d0" }} , 
 	{ "name": "output_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_8", "role": "address0" }} , 
 	{ "name": "output_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "ce0" }} , 
 	{ "name": "output_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "we0" }} , 
 	{ "name": "output_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_8", "role": "d0" }} , 
 	{ "name": "output_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_9", "role": "address0" }} , 
 	{ "name": "output_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "ce0" }} , 
 	{ "name": "output_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "we0" }} , 
 	{ "name": "output_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_9", "role": "d0" }} , 
 	{ "name": "output_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_10", "role": "address0" }} , 
 	{ "name": "output_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "ce0" }} , 
 	{ "name": "output_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "we0" }} , 
 	{ "name": "output_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_10", "role": "d0" }} , 
 	{ "name": "output_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_11", "role": "address0" }} , 
 	{ "name": "output_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "ce0" }} , 
 	{ "name": "output_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "we0" }} , 
 	{ "name": "output_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_11", "role": "d0" }} , 
 	{ "name": "output_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_12", "role": "address0" }} , 
 	{ "name": "output_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "ce0" }} , 
 	{ "name": "output_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "we0" }} , 
 	{ "name": "output_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_12", "role": "d0" }} , 
 	{ "name": "output_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_13", "role": "address0" }} , 
 	{ "name": "output_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "ce0" }} , 
 	{ "name": "output_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "we0" }} , 
 	{ "name": "output_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_13", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv2d_l2 {
		input_0 {Type I LastRead 1 FirstWrite -1}
		input_1 {Type I LastRead 1 FirstWrite -1}
		input_2 {Type I LastRead 1 FirstWrite -1}
		input_3 {Type I LastRead 1 FirstWrite -1}
		input_4 {Type I LastRead 1 FirstWrite -1}
		input_5 {Type I LastRead 1 FirstWrite -1}
		input_6 {Type I LastRead 1 FirstWrite -1}
		input_7 {Type I LastRead 1 FirstWrite -1}
		input_8 {Type I LastRead 1 FirstWrite -1}
		input_9 {Type I LastRead 1 FirstWrite -1}
		input_10 {Type I LastRead 1 FirstWrite -1}
		input_11 {Type I LastRead 1 FirstWrite -1}
		input_12 {Type I LastRead 1 FirstWrite -1}
		input_13 {Type I LastRead 1 FirstWrite -1}
		kern_0_0_val {Type I LastRead 35 FirstWrite -1}
		kern_0_1_val {Type I LastRead 35 FirstWrite -1}
		kern_0_2_val {Type I LastRead 35 FirstWrite -1}
		kern_0_3_val {Type I LastRead 35 FirstWrite -1}
		kern_0_4_val {Type I LastRead 35 FirstWrite -1}
		kern_0_5_val {Type I LastRead 35 FirstWrite -1}
		kern_0_6_val {Type I LastRead 35 FirstWrite -1}
		kern_0_7_val {Type I LastRead 35 FirstWrite -1}
		kern_0_8_val {Type I LastRead 35 FirstWrite -1}
		kern_1_0_val {Type I LastRead 35 FirstWrite -1}
		kern_1_1_val {Type I LastRead 35 FirstWrite -1}
		kern_1_2_val {Type I LastRead 35 FirstWrite -1}
		kern_1_3_val {Type I LastRead 35 FirstWrite -1}
		kern_1_4_val {Type I LastRead 35 FirstWrite -1}
		kern_1_5_val {Type I LastRead 35 FirstWrite -1}
		kern_1_6_val {Type I LastRead 35 FirstWrite -1}
		kern_1_7_val {Type I LastRead 35 FirstWrite -1}
		kern_1_8_val {Type I LastRead 35 FirstWrite -1}
		kern_2_0_val {Type I LastRead 35 FirstWrite -1}
		kern_2_1_val {Type I LastRead 35 FirstWrite -1}
		kern_2_2_val {Type I LastRead 35 FirstWrite -1}
		kern_2_3_val {Type I LastRead 35 FirstWrite -1}
		kern_2_4_val {Type I LastRead 35 FirstWrite -1}
		kern_2_5_val {Type I LastRead 35 FirstWrite -1}
		kern_2_6_val {Type I LastRead 35 FirstWrite -1}
		kern_2_7_val {Type I LastRead 35 FirstWrite -1}
		kern_2_8_val {Type I LastRead 35 FirstWrite -1}
		num_kerns_val {Type I LastRead 35 FirstWrite -1}
		in_ch_start {Type I LastRead 35 FirstWrite -1}
		buffer_0 {Type IO LastRead 37 FirstWrite 0}
		buffer_1 {Type IO LastRead 37 FirstWrite 0}
		finalize {Type I LastRead 35 FirstWrite -1}
		bias {Type I LastRead 35 FirstWrite -1}
		out_ch {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 2}
		output_1 {Type O LastRead -1 FirstWrite 2}
		output_2 {Type O LastRead -1 FirstWrite 2}
		output_3 {Type O LastRead -1 FirstWrite 2}
		output_4 {Type O LastRead -1 FirstWrite 2}
		output_5 {Type O LastRead -1 FirstWrite 2}
		output_6 {Type O LastRead -1 FirstWrite 2}
		output_7 {Type O LastRead -1 FirstWrite 2}
		output_8 {Type O LastRead -1 FirstWrite 2}
		output_9 {Type O LastRead -1 FirstWrite 2}
		output_10 {Type O LastRead -1 FirstWrite 2}
		output_11 {Type O LastRead -1 FirstWrite 2}
		output_12 {Type O LastRead -1 FirstWrite 2}
		output_13 {Type O LastRead -1 FirstWrite 2}}
	conv2d_l2_Pipeline_L2_FH_L2_FW {
		zext_ln84 {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 2}
		output_1 {Type O LastRead -1 FirstWrite 2}
		output_2 {Type O LastRead -1 FirstWrite 2}
		output_3 {Type O LastRead -1 FirstWrite 2}
		output_4 {Type O LastRead -1 FirstWrite 2}
		output_5 {Type O LastRead -1 FirstWrite 2}
		output_6 {Type O LastRead -1 FirstWrite 2}
		output_7 {Type O LastRead -1 FirstWrite 2}
		output_8 {Type O LastRead -1 FirstWrite 2}
		output_9 {Type O LastRead -1 FirstWrite 2}
		output_10 {Type O LastRead -1 FirstWrite 2}
		output_11 {Type O LastRead -1 FirstWrite 2}
		output_12 {Type O LastRead -1 FirstWrite 2}
		output_13 {Type O LastRead -1 FirstWrite 2}
		buffer_1 {Type IO LastRead 1 FirstWrite 0}
		buffer_0 {Type IO LastRead 1 FirstWrite 0}
		sext_ln94 {Type I LastRead 0 FirstWrite -1}
		select_ln84 {Type I LastRead 0 FirstWrite -1}}
	conv2d_l2_Pipeline_L2_KH_L2_KW {
		loc_08 {Type I LastRead 0 FirstWrite -1}
		zext_ln98 {Type I LastRead 0 FirstWrite -1}
		zext_ln99 {Type I LastRead 0 FirstWrite -1}
		udiv_ln4 {Type I LastRead 0 FirstWrite -1}
		input_0 {Type I LastRead 1 FirstWrite -1}
		input_1 {Type I LastRead 1 FirstWrite -1}
		input_2 {Type I LastRead 1 FirstWrite -1}
		input_3 {Type I LastRead 1 FirstWrite -1}
		input_4 {Type I LastRead 1 FirstWrite -1}
		input_5 {Type I LastRead 1 FirstWrite -1}
		input_6 {Type I LastRead 1 FirstWrite -1}
		input_7 {Type I LastRead 1 FirstWrite -1}
		input_8 {Type I LastRead 1 FirstWrite -1}
		input_9 {Type I LastRead 1 FirstWrite -1}
		input_10 {Type I LastRead 1 FirstWrite -1}
		input_11 {Type I LastRead 1 FirstWrite -1}
		input_12 {Type I LastRead 1 FirstWrite -1}
		input_13 {Type I LastRead 1 FirstWrite -1}
		select_ln100 {Type I LastRead 0 FirstWrite -1}
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
		loc_9_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "103", "Max" : "65348"}
	, {"Name" : "Interval", "Min" : "103", "Max" : "65348"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0 { ap_memory {  { input_0_address0 mem_address 1 11 }  { input_0_ce0 mem_ce 1 1 }  { input_0_q0 mem_dout 0 1 } } }
	input_1 { ap_memory {  { input_1_address0 mem_address 1 11 }  { input_1_ce0 mem_ce 1 1 }  { input_1_q0 mem_dout 0 1 } } }
	input_2 { ap_memory {  { input_2_address0 mem_address 1 11 }  { input_2_ce0 mem_ce 1 1 }  { input_2_q0 mem_dout 0 1 } } }
	input_3 { ap_memory {  { input_3_address0 mem_address 1 11 }  { input_3_ce0 mem_ce 1 1 }  { input_3_q0 mem_dout 0 1 } } }
	input_4 { ap_memory {  { input_4_address0 mem_address 1 11 }  { input_4_ce0 mem_ce 1 1 }  { input_4_q0 mem_dout 0 1 } } }
	input_5 { ap_memory {  { input_5_address0 mem_address 1 11 }  { input_5_ce0 mem_ce 1 1 }  { input_5_q0 mem_dout 0 1 } } }
	input_6 { ap_memory {  { input_6_address0 mem_address 1 11 }  { input_6_ce0 mem_ce 1 1 }  { input_6_q0 mem_dout 0 1 } } }
	input_7 { ap_memory {  { input_7_address0 mem_address 1 11 }  { input_7_ce0 mem_ce 1 1 }  { input_7_q0 mem_dout 0 1 } } }
	input_8 { ap_memory {  { input_8_address0 mem_address 1 11 }  { input_8_ce0 mem_ce 1 1 }  { input_8_q0 mem_dout 0 1 } } }
	input_9 { ap_memory {  { input_9_address0 mem_address 1 11 }  { input_9_ce0 mem_ce 1 1 }  { input_9_q0 mem_dout 0 1 } } }
	input_10 { ap_memory {  { input_10_address0 mem_address 1 11 }  { input_10_ce0 mem_ce 1 1 }  { input_10_q0 mem_dout 0 1 } } }
	input_11 { ap_memory {  { input_11_address0 mem_address 1 11 }  { input_11_ce0 mem_ce 1 1 }  { input_11_q0 mem_dout 0 1 } } }
	input_12 { ap_memory {  { input_12_address0 mem_address 1 11 }  { input_12_ce0 mem_ce 1 1 }  { input_12_q0 mem_dout 0 1 } } }
	input_13 { ap_memory {  { input_13_address0 mem_address 1 11 }  { input_13_ce0 mem_ce 1 1 }  { input_13_q0 mem_dout 0 1 } } }
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
	num_kerns_val { ap_none {  { num_kerns_val in_data 0 2 } } }
	in_ch_start { ap_none {  { in_ch_start in_data 0 32 } } }
	buffer_0 { ap_memory {  { buffer_0_address0 mem_address 1 9 }  { buffer_0_ce0 mem_ce 1 1 }  { buffer_0_we0 mem_we 1 1 }  { buffer_0_d0 mem_din 1 32 }  { buffer_0_q0 mem_dout 0 32 }  { buffer_0_address1 MemPortADDR2 1 9 }  { buffer_0_ce1 MemPortCE2 1 1 }  { buffer_0_we1 MemPortWE2 1 1 }  { buffer_0_d1 MemPortDIN2 1 32 }  { buffer_0_q1 MemPortDOUT2 0 32 } } }
	buffer_1 { ap_memory {  { buffer_1_address0 mem_address 1 9 }  { buffer_1_ce0 mem_ce 1 1 }  { buffer_1_we0 mem_we 1 1 }  { buffer_1_d0 mem_din 1 32 }  { buffer_1_q0 mem_dout 0 32 }  { buffer_1_address1 MemPortADDR2 1 9 }  { buffer_1_ce1 MemPortCE2 1 1 }  { buffer_1_we1 MemPortWE2 1 1 }  { buffer_1_d1 MemPortDIN2 1 32 }  { buffer_1_q1 MemPortDOUT2 0 32 } } }
	finalize { ap_none {  { finalize in_data 0 1 } } }
	bias { ap_none {  { bias in_data 0 16 } } }
	out_ch { ap_none {  { out_ch in_data 0 32 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 10 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 1 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 10 }  { output_1_ce0 mem_ce 1 1 }  { output_1_we0 mem_we 1 1 }  { output_1_d0 mem_din 1 1 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 10 }  { output_2_ce0 mem_ce 1 1 }  { output_2_we0 mem_we 1 1 }  { output_2_d0 mem_din 1 1 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 10 }  { output_3_ce0 mem_ce 1 1 }  { output_3_we0 mem_we 1 1 }  { output_3_d0 mem_din 1 1 } } }
	output_4 { ap_memory {  { output_4_address0 mem_address 1 10 }  { output_4_ce0 mem_ce 1 1 }  { output_4_we0 mem_we 1 1 }  { output_4_d0 mem_din 1 1 } } }
	output_5 { ap_memory {  { output_5_address0 mem_address 1 10 }  { output_5_ce0 mem_ce 1 1 }  { output_5_we0 mem_we 1 1 }  { output_5_d0 mem_din 1 1 } } }
	output_6 { ap_memory {  { output_6_address0 mem_address 1 10 }  { output_6_ce0 mem_ce 1 1 }  { output_6_we0 mem_we 1 1 }  { output_6_d0 mem_din 1 1 } } }
	output_7 { ap_memory {  { output_7_address0 mem_address 1 10 }  { output_7_ce0 mem_ce 1 1 }  { output_7_we0 mem_we 1 1 }  { output_7_d0 mem_din 1 1 } } }
	output_8 { ap_memory {  { output_8_address0 mem_address 1 10 }  { output_8_ce0 mem_ce 1 1 }  { output_8_we0 mem_we 1 1 }  { output_8_d0 mem_din 1 1 } } }
	output_9 { ap_memory {  { output_9_address0 mem_address 1 10 }  { output_9_ce0 mem_ce 1 1 }  { output_9_we0 mem_we 1 1 }  { output_9_d0 mem_din 1 1 } } }
	output_10 { ap_memory {  { output_10_address0 mem_address 1 10 }  { output_10_ce0 mem_ce 1 1 }  { output_10_we0 mem_we 1 1 }  { output_10_d0 mem_din 1 1 } } }
	output_11 { ap_memory {  { output_11_address0 mem_address 1 10 }  { output_11_ce0 mem_ce 1 1 }  { output_11_we0 mem_we 1 1 }  { output_11_d0 mem_din 1 1 } } }
	output_12 { ap_memory {  { output_12_address0 mem_address 1 10 }  { output_12_ce0 mem_ce 1 1 }  { output_12_we0 mem_we 1 1 }  { output_12_d0 mem_din 1 1 } } }
	output_13 { ap_memory {  { output_13_address0 mem_address 1 10 }  { output_13_ce0 mem_ce 1 1 }  { output_13_we0 mem_we 1 1 }  { output_13_d0 mem_din 1 1 } } }
}
