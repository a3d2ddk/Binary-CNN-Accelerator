set moduleName kernel_Pipeline_MLPO_BITS
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
set C_modelName {kernel_Pipeline_MLPO_BITS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict mlp_hidden_2 { MEM_WIDTH 1 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ mlpo_acc int 32 regular  }
	{ sext_ln486 int 32 regular  }
	{ mlp_hidden_2 int 1 regular {array 512 { 1 3 } 1 1 }  }
	{ empty_49 int 1 regular  }
	{ empty_50 int 1 regular  }
	{ empty_51 int 1 regular  }
	{ empty_52 int 1 regular  }
	{ empty_53 int 1 regular  }
	{ empty_54 int 1 regular  }
	{ empty_55 int 1 regular  }
	{ empty_56 int 1 regular  }
	{ empty_57 int 1 regular  }
	{ empty_58 int 1 regular  }
	{ empty_59 int 1 regular  }
	{ empty_60 int 1 regular  }
	{ empty_61 int 1 regular  }
	{ empty_62 int 1 regular  }
	{ empty_63 int 1 regular  }
	{ empty_64 int 1 regular  }
	{ empty_65 int 1 regular  }
	{ empty_66 int 1 regular  }
	{ empty_67 int 1 regular  }
	{ empty_68 int 1 regular  }
	{ empty_69 int 1 regular  }
	{ empty_70 int 1 regular  }
	{ empty_71 int 1 regular  }
	{ empty_72 int 1 regular  }
	{ empty_73 int 1 regular  }
	{ empty_74 int 1 regular  }
	{ empty_75 int 1 regular  }
	{ empty int 5 regular  }
	{ mlpo_acc_2_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mlpo_acc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln486", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_hidden_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_49", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_50", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_51", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_52", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_53", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_54", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_55", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_56", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_57", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_58", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_59", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_60", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_61", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_62", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_63", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_64", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_65", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_66", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_67", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_68", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_69", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_70", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_71", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_72", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_73", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_74", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_75", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mlpo_acc_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mlpo_acc sc_in sc_lv 32 signal 0 } 
	{ sext_ln486 sc_in sc_lv 32 signal 1 } 
	{ mlp_hidden_2_address0 sc_out sc_lv 9 signal 2 } 
	{ mlp_hidden_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_hidden_2_q0 sc_in sc_lv 1 signal 2 } 
	{ empty_49 sc_in sc_lv 1 signal 3 } 
	{ empty_50 sc_in sc_lv 1 signal 4 } 
	{ empty_51 sc_in sc_lv 1 signal 5 } 
	{ empty_52 sc_in sc_lv 1 signal 6 } 
	{ empty_53 sc_in sc_lv 1 signal 7 } 
	{ empty_54 sc_in sc_lv 1 signal 8 } 
	{ empty_55 sc_in sc_lv 1 signal 9 } 
	{ empty_56 sc_in sc_lv 1 signal 10 } 
	{ empty_57 sc_in sc_lv 1 signal 11 } 
	{ empty_58 sc_in sc_lv 1 signal 12 } 
	{ empty_59 sc_in sc_lv 1 signal 13 } 
	{ empty_60 sc_in sc_lv 1 signal 14 } 
	{ empty_61 sc_in sc_lv 1 signal 15 } 
	{ empty_62 sc_in sc_lv 1 signal 16 } 
	{ empty_63 sc_in sc_lv 1 signal 17 } 
	{ empty_64 sc_in sc_lv 1 signal 18 } 
	{ empty_65 sc_in sc_lv 1 signal 19 } 
	{ empty_66 sc_in sc_lv 1 signal 20 } 
	{ empty_67 sc_in sc_lv 1 signal 21 } 
	{ empty_68 sc_in sc_lv 1 signal 22 } 
	{ empty_69 sc_in sc_lv 1 signal 23 } 
	{ empty_70 sc_in sc_lv 1 signal 24 } 
	{ empty_71 sc_in sc_lv 1 signal 25 } 
	{ empty_72 sc_in sc_lv 1 signal 26 } 
	{ empty_73 sc_in sc_lv 1 signal 27 } 
	{ empty_74 sc_in sc_lv 1 signal 28 } 
	{ empty_75 sc_in sc_lv 1 signal 29 } 
	{ empty sc_in sc_lv 5 signal 30 } 
	{ mlpo_acc_2_out sc_out sc_lv 32 signal 31 } 
	{ mlpo_acc_2_out_ap_vld sc_out sc_logic 1 outvld 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mlpo_acc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlpo_acc", "role": "default" }} , 
 	{ "name": "sext_ln486", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln486", "role": "default" }} , 
 	{ "name": "mlp_hidden_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_hidden_2", "role": "address0" }} , 
 	{ "name": "mlp_hidden_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_hidden_2", "role": "ce0" }} , 
 	{ "name": "mlp_hidden_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_hidden_2", "role": "q0" }} , 
 	{ "name": "empty_49", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_49", "role": "default" }} , 
 	{ "name": "empty_50", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_50", "role": "default" }} , 
 	{ "name": "empty_51", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_51", "role": "default" }} , 
 	{ "name": "empty_52", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_52", "role": "default" }} , 
 	{ "name": "empty_53", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_53", "role": "default" }} , 
 	{ "name": "empty_54", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_54", "role": "default" }} , 
 	{ "name": "empty_55", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_55", "role": "default" }} , 
 	{ "name": "empty_56", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_56", "role": "default" }} , 
 	{ "name": "empty_57", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_57", "role": "default" }} , 
 	{ "name": "empty_58", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_58", "role": "default" }} , 
 	{ "name": "empty_59", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_59", "role": "default" }} , 
 	{ "name": "empty_60", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_60", "role": "default" }} , 
 	{ "name": "empty_61", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_61", "role": "default" }} , 
 	{ "name": "empty_62", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_62", "role": "default" }} , 
 	{ "name": "empty_63", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_63", "role": "default" }} , 
 	{ "name": "empty_64", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_64", "role": "default" }} , 
 	{ "name": "empty_65", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_65", "role": "default" }} , 
 	{ "name": "empty_66", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_66", "role": "default" }} , 
 	{ "name": "empty_67", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_67", "role": "default" }} , 
 	{ "name": "empty_68", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_68", "role": "default" }} , 
 	{ "name": "empty_69", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_69", "role": "default" }} , 
 	{ "name": "empty_70", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_70", "role": "default" }} , 
 	{ "name": "empty_71", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_71", "role": "default" }} , 
 	{ "name": "empty_72", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_72", "role": "default" }} , 
 	{ "name": "empty_73", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_73", "role": "default" }} , 
 	{ "name": "empty_74", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_74", "role": "default" }} , 
 	{ "name": "empty_75", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_75", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "mlpo_acc_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlpo_acc_2_out", "role": "default" }} , 
 	{ "name": "mlpo_acc_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlpo_acc_2_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	kernel_Pipeline_MLPO_BITS {
		mlpo_acc {Type I LastRead 0 FirstWrite -1}
		sext_ln486 {Type I LastRead 0 FirstWrite -1}
		mlp_hidden_2 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		empty_53 {Type I LastRead 0 FirstWrite -1}
		empty_54 {Type I LastRead 0 FirstWrite -1}
		empty_55 {Type I LastRead 0 FirstWrite -1}
		empty_56 {Type I LastRead 0 FirstWrite -1}
		empty_57 {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		empty_59 {Type I LastRead 0 FirstWrite -1}
		empty_60 {Type I LastRead 0 FirstWrite -1}
		empty_61 {Type I LastRead 0 FirstWrite -1}
		empty_62 {Type I LastRead 0 FirstWrite -1}
		empty_63 {Type I LastRead 0 FirstWrite -1}
		empty_64 {Type I LastRead 0 FirstWrite -1}
		empty_65 {Type I LastRead 0 FirstWrite -1}
		empty_66 {Type I LastRead 0 FirstWrite -1}
		empty_67 {Type I LastRead 0 FirstWrite -1}
		empty_68 {Type I LastRead 0 FirstWrite -1}
		empty_69 {Type I LastRead 0 FirstWrite -1}
		empty_70 {Type I LastRead 0 FirstWrite -1}
		empty_71 {Type I LastRead 0 FirstWrite -1}
		empty_72 {Type I LastRead 0 FirstWrite -1}
		empty_73 {Type I LastRead 0 FirstWrite -1}
		empty_74 {Type I LastRead 0 FirstWrite -1}
		empty_75 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		mlpo_acc_2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "27"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mlpo_acc { ap_none {  { mlpo_acc in_data 0 32 } } }
	sext_ln486 { ap_none {  { sext_ln486 in_data 0 32 } } }
	mlp_hidden_2 { ap_memory {  { mlp_hidden_2_address0 mem_address 1 9 }  { mlp_hidden_2_ce0 mem_ce 1 1 }  { mlp_hidden_2_q0 mem_dout 0 1 } } }
	empty_49 { ap_none {  { empty_49 in_data 0 1 } } }
	empty_50 { ap_none {  { empty_50 in_data 0 1 } } }
	empty_51 { ap_none {  { empty_51 in_data 0 1 } } }
	empty_52 { ap_none {  { empty_52 in_data 0 1 } } }
	empty_53 { ap_none {  { empty_53 in_data 0 1 } } }
	empty_54 { ap_none {  { empty_54 in_data 0 1 } } }
	empty_55 { ap_none {  { empty_55 in_data 0 1 } } }
	empty_56 { ap_none {  { empty_56 in_data 0 1 } } }
	empty_57 { ap_none {  { empty_57 in_data 0 1 } } }
	empty_58 { ap_none {  { empty_58 in_data 0 1 } } }
	empty_59 { ap_none {  { empty_59 in_data 0 1 } } }
	empty_60 { ap_none {  { empty_60 in_data 0 1 } } }
	empty_61 { ap_none {  { empty_61 in_data 0 1 } } }
	empty_62 { ap_none {  { empty_62 in_data 0 1 } } }
	empty_63 { ap_none {  { empty_63 in_data 0 1 } } }
	empty_64 { ap_none {  { empty_64 in_data 0 1 } } }
	empty_65 { ap_none {  { empty_65 in_data 0 1 } } }
	empty_66 { ap_none {  { empty_66 in_data 0 1 } } }
	empty_67 { ap_none {  { empty_67 in_data 0 1 } } }
	empty_68 { ap_none {  { empty_68 in_data 0 1 } } }
	empty_69 { ap_none {  { empty_69 in_data 0 1 } } }
	empty_70 { ap_none {  { empty_70 in_data 0 1 } } }
	empty_71 { ap_none {  { empty_71 in_data 0 1 } } }
	empty_72 { ap_none {  { empty_72 in_data 0 1 } } }
	empty_73 { ap_none {  { empty_73 in_data 0 1 } } }
	empty_74 { ap_none {  { empty_74 in_data 0 1 } } }
	empty_75 { ap_none {  { empty_75 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 5 } } }
	mlpo_acc_2_out { ap_vld {  { mlpo_acc_2_out out_data 1 32 }  { mlpo_acc_2_out_ap_vld out_vld 1 1 } } }
}
