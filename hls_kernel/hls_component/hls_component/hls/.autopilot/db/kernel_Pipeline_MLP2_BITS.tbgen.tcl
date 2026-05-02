set moduleName kernel_Pipeline_MLP2_BITS
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
set C_modelName {kernel_Pipeline_MLP2_BITS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict mlp_hidden_1 { MEM_WIDTH 1 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ mlp2_acc int 32 regular  }
	{ sext_ln591 int 32 regular  }
	{ mlp_hidden_1 int 1 regular {array 512 { 1 3 } 1 1 }  }
	{ empty_76 int 1 regular  }
	{ empty_77 int 1 regular  }
	{ empty_78 int 1 regular  }
	{ empty_79 int 1 regular  }
	{ empty_80 int 1 regular  }
	{ empty_81 int 1 regular  }
	{ empty_82 int 1 regular  }
	{ empty_83 int 1 regular  }
	{ empty_84 int 1 regular  }
	{ empty_85 int 1 regular  }
	{ empty_86 int 1 regular  }
	{ empty_87 int 1 regular  }
	{ empty_88 int 1 regular  }
	{ empty_89 int 1 regular  }
	{ empty_90 int 1 regular  }
	{ empty_91 int 1 regular  }
	{ empty_92 int 1 regular  }
	{ empty_93 int 1 regular  }
	{ empty_94 int 1 regular  }
	{ empty_95 int 1 regular  }
	{ empty_96 int 1 regular  }
	{ empty_97 int 1 regular  }
	{ empty_98 int 1 regular  }
	{ empty_99 int 1 regular  }
	{ empty_100 int 1 regular  }
	{ empty_101 int 1 regular  }
	{ empty_102 int 1 regular  }
	{ empty int 5 regular  }
	{ mlp2_acc_2_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mlp2_acc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln591", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_hidden_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_76", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_77", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_78", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_79", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_80", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_81", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_82", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_83", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_84", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_85", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_86", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_87", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_88", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_89", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_90", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_91", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_92", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_93", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_94", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_95", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_96", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_97", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_98", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_99", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_100", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_101", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_102", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mlp2_acc_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mlp2_acc sc_in sc_lv 32 signal 0 } 
	{ sext_ln591 sc_in sc_lv 32 signal 1 } 
	{ mlp_hidden_1_address0 sc_out sc_lv 9 signal 2 } 
	{ mlp_hidden_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_hidden_1_q0 sc_in sc_lv 1 signal 2 } 
	{ empty_76 sc_in sc_lv 1 signal 3 } 
	{ empty_77 sc_in sc_lv 1 signal 4 } 
	{ empty_78 sc_in sc_lv 1 signal 5 } 
	{ empty_79 sc_in sc_lv 1 signal 6 } 
	{ empty_80 sc_in sc_lv 1 signal 7 } 
	{ empty_81 sc_in sc_lv 1 signal 8 } 
	{ empty_82 sc_in sc_lv 1 signal 9 } 
	{ empty_83 sc_in sc_lv 1 signal 10 } 
	{ empty_84 sc_in sc_lv 1 signal 11 } 
	{ empty_85 sc_in sc_lv 1 signal 12 } 
	{ empty_86 sc_in sc_lv 1 signal 13 } 
	{ empty_87 sc_in sc_lv 1 signal 14 } 
	{ empty_88 sc_in sc_lv 1 signal 15 } 
	{ empty_89 sc_in sc_lv 1 signal 16 } 
	{ empty_90 sc_in sc_lv 1 signal 17 } 
	{ empty_91 sc_in sc_lv 1 signal 18 } 
	{ empty_92 sc_in sc_lv 1 signal 19 } 
	{ empty_93 sc_in sc_lv 1 signal 20 } 
	{ empty_94 sc_in sc_lv 1 signal 21 } 
	{ empty_95 sc_in sc_lv 1 signal 22 } 
	{ empty_96 sc_in sc_lv 1 signal 23 } 
	{ empty_97 sc_in sc_lv 1 signal 24 } 
	{ empty_98 sc_in sc_lv 1 signal 25 } 
	{ empty_99 sc_in sc_lv 1 signal 26 } 
	{ empty_100 sc_in sc_lv 1 signal 27 } 
	{ empty_101 sc_in sc_lv 1 signal 28 } 
	{ empty_102 sc_in sc_lv 1 signal 29 } 
	{ empty sc_in sc_lv 5 signal 30 } 
	{ mlp2_acc_2_out sc_out sc_lv 32 signal 31 } 
	{ mlp2_acc_2_out_ap_vld sc_out sc_logic 1 outvld 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mlp2_acc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp2_acc", "role": "default" }} , 
 	{ "name": "sext_ln591", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln591", "role": "default" }} , 
 	{ "name": "mlp_hidden_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_hidden_1", "role": "address0" }} , 
 	{ "name": "mlp_hidden_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_hidden_1", "role": "ce0" }} , 
 	{ "name": "mlp_hidden_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_hidden_1", "role": "q0" }} , 
 	{ "name": "empty_76", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_76", "role": "default" }} , 
 	{ "name": "empty_77", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_77", "role": "default" }} , 
 	{ "name": "empty_78", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_78", "role": "default" }} , 
 	{ "name": "empty_79", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_79", "role": "default" }} , 
 	{ "name": "empty_80", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_80", "role": "default" }} , 
 	{ "name": "empty_81", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_81", "role": "default" }} , 
 	{ "name": "empty_82", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_82", "role": "default" }} , 
 	{ "name": "empty_83", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_83", "role": "default" }} , 
 	{ "name": "empty_84", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_84", "role": "default" }} , 
 	{ "name": "empty_85", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_85", "role": "default" }} , 
 	{ "name": "empty_86", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_86", "role": "default" }} , 
 	{ "name": "empty_87", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_87", "role": "default" }} , 
 	{ "name": "empty_88", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_88", "role": "default" }} , 
 	{ "name": "empty_89", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_89", "role": "default" }} , 
 	{ "name": "empty_90", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_90", "role": "default" }} , 
 	{ "name": "empty_91", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_91", "role": "default" }} , 
 	{ "name": "empty_92", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_92", "role": "default" }} , 
 	{ "name": "empty_93", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_93", "role": "default" }} , 
 	{ "name": "empty_94", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_94", "role": "default" }} , 
 	{ "name": "empty_95", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_95", "role": "default" }} , 
 	{ "name": "empty_96", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_96", "role": "default" }} , 
 	{ "name": "empty_97", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_97", "role": "default" }} , 
 	{ "name": "empty_98", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_98", "role": "default" }} , 
 	{ "name": "empty_99", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_99", "role": "default" }} , 
 	{ "name": "empty_100", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_100", "role": "default" }} , 
 	{ "name": "empty_101", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_101", "role": "default" }} , 
 	{ "name": "empty_102", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_102", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "mlp2_acc_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp2_acc_2_out", "role": "default" }} , 
 	{ "name": "mlp2_acc_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlp2_acc_2_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	kernel_Pipeline_MLP2_BITS {
		mlp2_acc {Type I LastRead 0 FirstWrite -1}
		sext_ln591 {Type I LastRead 0 FirstWrite -1}
		mlp_hidden_1 {Type I LastRead 0 FirstWrite -1}
		empty_76 {Type I LastRead 0 FirstWrite -1}
		empty_77 {Type I LastRead 0 FirstWrite -1}
		empty_78 {Type I LastRead 0 FirstWrite -1}
		empty_79 {Type I LastRead 0 FirstWrite -1}
		empty_80 {Type I LastRead 0 FirstWrite -1}
		empty_81 {Type I LastRead 0 FirstWrite -1}
		empty_82 {Type I LastRead 0 FirstWrite -1}
		empty_83 {Type I LastRead 0 FirstWrite -1}
		empty_84 {Type I LastRead 0 FirstWrite -1}
		empty_85 {Type I LastRead 0 FirstWrite -1}
		empty_86 {Type I LastRead 0 FirstWrite -1}
		empty_87 {Type I LastRead 0 FirstWrite -1}
		empty_88 {Type I LastRead 0 FirstWrite -1}
		empty_89 {Type I LastRead 0 FirstWrite -1}
		empty_90 {Type I LastRead 0 FirstWrite -1}
		empty_91 {Type I LastRead 0 FirstWrite -1}
		empty_92 {Type I LastRead 0 FirstWrite -1}
		empty_93 {Type I LastRead 0 FirstWrite -1}
		empty_94 {Type I LastRead 0 FirstWrite -1}
		empty_95 {Type I LastRead 0 FirstWrite -1}
		empty_96 {Type I LastRead 0 FirstWrite -1}
		empty_97 {Type I LastRead 0 FirstWrite -1}
		empty_98 {Type I LastRead 0 FirstWrite -1}
		empty_99 {Type I LastRead 0 FirstWrite -1}
		empty_100 {Type I LastRead 0 FirstWrite -1}
		empty_101 {Type I LastRead 0 FirstWrite -1}
		empty_102 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		mlp2_acc_2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "27"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mlp2_acc { ap_none {  { mlp2_acc in_data 0 32 } } }
	sext_ln591 { ap_none {  { sext_ln591 in_data 0 32 } } }
	mlp_hidden_1 { ap_memory {  { mlp_hidden_1_address0 mem_address 1 9 }  { mlp_hidden_1_ce0 mem_ce 1 1 }  { mlp_hidden_1_q0 mem_dout 0 1 } } }
	empty_76 { ap_none {  { empty_76 in_data 0 1 } } }
	empty_77 { ap_none {  { empty_77 in_data 0 1 } } }
	empty_78 { ap_none {  { empty_78 in_data 0 1 } } }
	empty_79 { ap_none {  { empty_79 in_data 0 1 } } }
	empty_80 { ap_none {  { empty_80 in_data 0 1 } } }
	empty_81 { ap_none {  { empty_81 in_data 0 1 } } }
	empty_82 { ap_none {  { empty_82 in_data 0 1 } } }
	empty_83 { ap_none {  { empty_83 in_data 0 1 } } }
	empty_84 { ap_none {  { empty_84 in_data 0 1 } } }
	empty_85 { ap_none {  { empty_85 in_data 0 1 } } }
	empty_86 { ap_none {  { empty_86 in_data 0 1 } } }
	empty_87 { ap_none {  { empty_87 in_data 0 1 } } }
	empty_88 { ap_none {  { empty_88 in_data 0 1 } } }
	empty_89 { ap_none {  { empty_89 in_data 0 1 } } }
	empty_90 { ap_none {  { empty_90 in_data 0 1 } } }
	empty_91 { ap_none {  { empty_91 in_data 0 1 } } }
	empty_92 { ap_none {  { empty_92 in_data 0 1 } } }
	empty_93 { ap_none {  { empty_93 in_data 0 1 } } }
	empty_94 { ap_none {  { empty_94 in_data 0 1 } } }
	empty_95 { ap_none {  { empty_95 in_data 0 1 } } }
	empty_96 { ap_none {  { empty_96 in_data 0 1 } } }
	empty_97 { ap_none {  { empty_97 in_data 0 1 } } }
	empty_98 { ap_none {  { empty_98 in_data 0 1 } } }
	empty_99 { ap_none {  { empty_99 in_data 0 1 } } }
	empty_100 { ap_none {  { empty_100 in_data 0 1 } } }
	empty_101 { ap_none {  { empty_101 in_data 0 1 } } }
	empty_102 { ap_none {  { empty_102 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 5 } } }
	mlp2_acc_2_out { ap_vld {  { mlp2_acc_2_out out_data 1 32 }  { mlp2_acc_2_out_ap_vld out_vld 1 1 } } }
}
