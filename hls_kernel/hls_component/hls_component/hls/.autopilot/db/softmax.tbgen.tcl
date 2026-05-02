set moduleName softmax
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
set C_modelName {softmax}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict logits { MEM_WIDTH 32 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict probs { MEM_WIDTH 16 MEM_SIZE 20 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ logits int 32 regular {array 10 { 1 1 } 1 1 }  }
	{ probs int 16 regular {array 10 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "logits", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "probs", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ logits_address0 sc_out sc_lv 4 signal 0 } 
	{ logits_ce0 sc_out sc_logic 1 signal 0 } 
	{ logits_q0 sc_in sc_lv 32 signal 0 } 
	{ logits_address1 sc_out sc_lv 4 signal 0 } 
	{ logits_ce1 sc_out sc_logic 1 signal 0 } 
	{ logits_q1 sc_in sc_lv 32 signal 0 } 
	{ probs_address0 sc_out sc_lv 4 signal 1 } 
	{ probs_ce0 sc_out sc_logic 1 signal 1 } 
	{ probs_we0 sc_out sc_logic 1 signal 1 } 
	{ probs_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "logits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "logits", "role": "address0" }} , 
 	{ "name": "logits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "logits", "role": "ce0" }} , 
 	{ "name": "logits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logits", "role": "q0" }} , 
 	{ "name": "logits_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "logits", "role": "address1" }} , 
 	{ "name": "logits_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "logits", "role": "ce1" }} , 
 	{ "name": "logits_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logits", "role": "q1" }} , 
 	{ "name": "probs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "probs", "role": "address0" }} , 
 	{ "name": "probs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "probs", "role": "ce0" }} , 
 	{ "name": "probs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "probs", "role": "we0" }} , 
 	{ "name": "probs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "probs", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	softmax {
		logits {Type I LastRead 5 FirstWrite -1}
		probs {Type O LastRead -1 FirstWrite 36}}
	softmax_Pipeline_SM_NORM {
		es_1 {Type I LastRead 0 FirstWrite -1}
		probs {Type O LastRead -1 FirstWrite 36}
		ev {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "59", "Max" : "59"}
	, {"Name" : "Interval", "Min" : "59", "Max" : "59"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	logits { ap_memory {  { logits_address0 mem_address 1 4 }  { logits_ce0 mem_ce 1 1 }  { logits_q0 mem_dout 0 32 }  { logits_address1 MemPortADDR2 1 4 }  { logits_ce1 MemPortCE2 1 1 }  { logits_q1 MemPortDOUT2 0 32 } } }
	probs { ap_memory {  { probs_address0 mem_address 1 4 }  { probs_ce0 mem_ce 1 1 }  { probs_we0 mem_we 1 1 }  { probs_d0 mem_din 1 16 } } }
}
