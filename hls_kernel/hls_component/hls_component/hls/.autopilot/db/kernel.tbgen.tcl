set moduleName kernel
set isTopModule 1
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
set C_modelName {kernel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ A_V_data_V int 32 regular {axi_s 0 volatile  { A Data } }  }
	{ A_V_keep_V int 4 regular {axi_s 0 volatile  { A Keep } }  }
	{ A_V_strb_V int 4 regular {axi_s 0 volatile  { A Strb } }  }
	{ A_V_last_V int 1 regular {axi_s 0 volatile  { A Last } }  }
	{ B_V_data_V int 32 regular {axi_s 1 volatile  { B Data } }  }
	{ B_V_keep_V int 4 regular {axi_s 1 volatile  { B Keep } }  }
	{ B_V_strb_V int 4 regular {axi_s 1 volatile  { B Strb } }  }
	{ B_V_last_V int 1 regular {axi_s 1 volatile  { B Last } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "B_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ A_TDATA sc_in sc_lv 32 signal 0 } 
	{ A_TVALID sc_in sc_logic 1 invld 3 } 
	{ A_TREADY sc_out sc_logic 1 inacc 3 } 
	{ A_TKEEP sc_in sc_lv 4 signal 1 } 
	{ A_TSTRB sc_in sc_lv 4 signal 2 } 
	{ A_TLAST sc_in sc_lv 1 signal 3 } 
	{ B_TDATA sc_out sc_lv 32 signal 4 } 
	{ B_TVALID sc_out sc_logic 1 outvld 7 } 
	{ B_TREADY sc_in sc_logic 1 outacc 7 } 
	{ B_TKEEP sc_out sc_lv 4 signal 5 } 
	{ B_TSTRB sc_out sc_lv 4 signal 6 } 
	{ B_TLAST sc_out sc_lv 1 signal 7 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"kernel","role":"start","value":"0","valid_bit":"0"},{"name":"kernel","role":"continue","value":"0","valid_bit":"4"},{"name":"kernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"kernel","role":"start","value":"0","valid_bit":"0"},{"name":"kernel","role":"done","value":"0","valid_bit":"1"},{"name":"kernel","role":"idle","value":"0","valid_bit":"2"},{"name":"kernel","role":"ready","value":"0","valid_bit":"3"},{"name":"kernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_V_data_V", "role": "default" }} , 
 	{ "name": "A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A_V_last_V", "role": "default" }} , 
 	{ "name": "A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "A_V_last_V", "role": "default" }} , 
 	{ "name": "A_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_V_keep_V", "role": "default" }} , 
 	{ "name": "A_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_V_strb_V", "role": "default" }} , 
 	{ "name": "A_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_V_last_V", "role": "default" }} , 
 	{ "name": "B_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_V_data_V", "role": "default" }} , 
 	{ "name": "B_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_V_last_V", "role": "default" }} , 
 	{ "name": "B_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "B_V_last_V", "role": "default" }} , 
 	{ "name": "B_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_V_keep_V", "role": "default" }} , 
 	{ "name": "B_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_V_strb_V", "role": "default" }} , 
 	{ "name": "B_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_V_last_V", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	kernel {
		A_V_data_V {Type I LastRead 2 FirstWrite -1}
		A_V_keep_V {Type I LastRead 2 FirstWrite -1}
		A_V_strb_V {Type I LastRead 2 FirstWrite -1}
		A_V_last_V {Type I LastRead 2 FirstWrite -1}
		B_V_data_V {Type O LastRead -1 FirstWrite 1}
		B_V_keep_V {Type O LastRead -1 FirstWrite 1}
		B_V_strb_V {Type O LastRead -1 FirstWrite 1}
		B_V_last_V {Type O LastRead -1 FirstWrite 1}}
	kernel_Pipeline_VITIS_LOOP_299_1 {
		buffer_1 {Type O LastRead -1 FirstWrite 0}
		buffer_r {Type O LastRead -1 FirstWrite 0}}
	kernel_Pipeline_MLP2_BITS {
		mlp2_acc {Type I LastRead 0 FirstWrite -1}
		sext_ln462 {Type I LastRead 0 FirstWrite -1}
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
		mlp2_acc_2_out {Type O LastRead -1 FirstWrite 1}}
	kernel_Pipeline_MLP1_BITS {
		mlp1_acc {Type I LastRead 0 FirstWrite -1}
		mlp1_w_off {Type I LastRead 0 FirstWrite -1}
		packed_image_4 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_1 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_2 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_3 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_4 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_5 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_6 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_7 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_8 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_9 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_10 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_11 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_12 {Type I LastRead 35 FirstWrite -1}
		packed_image_4_13 {Type I LastRead 35 FirstWrite -1}
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
		mlp1_acc_2_out {Type O LastRead -1 FirstWrite 37}}
	conv2d_l4 {
		input_0 {Type I LastRead 4 FirstWrite -1}
		input_1 {Type I LastRead 4 FirstWrite -1}
		input_2 {Type I LastRead 4 FirstWrite -1}
		input_3 {Type I LastRead 4 FirstWrite -1}
		input_4 {Type I LastRead 4 FirstWrite -1}
		input_5 {Type I LastRead 4 FirstWrite -1}
		input_6 {Type I LastRead 4 FirstWrite -1}
		input_7 {Type I LastRead 4 FirstWrite -1}
		input_8 {Type I LastRead 4 FirstWrite -1}
		input_9 {Type I LastRead 4 FirstWrite -1}
		input_10 {Type I LastRead 4 FirstWrite -1}
		input_11 {Type I LastRead 4 FirstWrite -1}
		input_12 {Type I LastRead 4 FirstWrite -1}
		input_13 {Type I LastRead 4 FirstWrite -1}
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
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}}
	conv2d_l4_Pipeline_L4_FH_L4_FW {
		zext_ln195 {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}
		buffer_1 {Type IO LastRead 1 FirstWrite 0}
		buffer_0 {Type IO LastRead 1 FirstWrite 0}
		sext_ln205 {Type I LastRead 0 FirstWrite -1}
		select_ln195 {Type I LastRead 0 FirstWrite -1}}
	conv2d_l4_Pipeline_L4_KH_L4_KW {
		loc_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln209 {Type I LastRead 0 FirstWrite -1}
		zext_ln210 {Type I LastRead 0 FirstWrite -1}
		udiv_ln2 {Type I LastRead 0 FirstWrite -1}
		input_0 {Type I LastRead 4 FirstWrite -1}
		input_1 {Type I LastRead 4 FirstWrite -1}
		input_2 {Type I LastRead 4 FirstWrite -1}
		input_3 {Type I LastRead 4 FirstWrite -1}
		input_4 {Type I LastRead 4 FirstWrite -1}
		input_5 {Type I LastRead 4 FirstWrite -1}
		input_6 {Type I LastRead 4 FirstWrite -1}
		input_7 {Type I LastRead 4 FirstWrite -1}
		input_8 {Type I LastRead 4 FirstWrite -1}
		input_9 {Type I LastRead 4 FirstWrite -1}
		input_10 {Type I LastRead 4 FirstWrite -1}
		input_11 {Type I LastRead 4 FirstWrite -1}
		input_12 {Type I LastRead 4 FirstWrite -1}
		input_13 {Type I LastRead 4 FirstWrite -1}
		select_ln211 {Type I LastRead 0 FirstWrite -1}
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
		loc_3_out {Type O LastRead -1 FirstWrite 5}}
	conv2d_l3 {
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
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}}
	conv2d_l3_Pipeline_L3_FH_L3_FW {
		zext_ln139 {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}
		buffer_1 {Type IO LastRead 1 FirstWrite 0}
		buffer_0 {Type IO LastRead 1 FirstWrite 0}
		sext_ln149 {Type I LastRead 0 FirstWrite -1}
		select_ln139 {Type I LastRead 0 FirstWrite -1}}
	conv2d_l3_Pipeline_L3_KH_L3_KW {
		loc_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln153 {Type I LastRead 0 FirstWrite -1}
		zext_ln154 {Type I LastRead 0 FirstWrite -1}
		udiv_ln3 {Type I LastRead 0 FirstWrite -1}
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
		select_ln155 {Type I LastRead 0 FirstWrite -1}
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
		loc_7_out {Type O LastRead -1 FirstWrite 2}}
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
		loc_9_out {Type O LastRead -1 FirstWrite 2}}
	conv2d_l1 {
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
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}}
	conv2d_l1_Pipeline_INIT_FH_INIT_FW {
		zext_ln29 {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 3}
		output_1 {Type O LastRead -1 FirstWrite 3}
		output_2 {Type O LastRead -1 FirstWrite 3}
		output_3 {Type O LastRead -1 FirstWrite 3}
		output_4 {Type O LastRead -1 FirstWrite 3}
		output_5 {Type O LastRead -1 FirstWrite 3}
		output_6 {Type O LastRead -1 FirstWrite 3}
		output_7 {Type O LastRead -1 FirstWrite 3}
		output_8 {Type O LastRead -1 FirstWrite 3}
		output_9 {Type O LastRead -1 FirstWrite 3}
		output_10 {Type O LastRead -1 FirstWrite 3}
		output_11 {Type O LastRead -1 FirstWrite 3}
		output_12 {Type O LastRead -1 FirstWrite 3}
		output_13 {Type O LastRead -1 FirstWrite 3}
		buffer_1 {Type IO LastRead 1 FirstWrite 0}
		buffer_0 {Type IO LastRead 1 FirstWrite 0}
		sext_ln39 {Type I LastRead 0 FirstWrite -1}
		select_ln29 {Type I LastRead 0 FirstWrite -1}}
	conv2d_l1_Pipeline_INIT_KH_INIT_KW {
		loc_08 {Type I LastRead 0 FirstWrite -1}
		oh_4 {Type I LastRead 0 FirstWrite -1}
		ow_4 {Type I LastRead 0 FirstWrite -1}
		add_ln53 {Type I LastRead 0 FirstWrite -1}
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
		loc_11_out {Type O LastRead -1 FirstWrite 69}}
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
		mlpo_acc_2_out {Type O LastRead -1 FirstWrite 1}}
	softmax {
		logits {Type I LastRead 5 FirstWrite -1}
		probs {Type O LastRead -1 FirstWrite 36}}
	softmax_Pipeline_SM_NORM {
		es_1 {Type I LastRead 0 FirstWrite -1}
		probs {Type O LastRead -1 FirstWrite 36}
		ev {Type I LastRead 0 FirstWrite -1}}
	kernel_Pipeline_OUT_STREAM {
		probs {Type I LastRead 1 FirstWrite -1}
		B_V_data_V {Type O LastRead -1 FirstWrite 1}
		B_V_keep_V {Type O LastRead -1 FirstWrite 1}
		B_V_strb_V {Type O LastRead -1 FirstWrite 1}
		B_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_V_data_V { axis {  { A_TDATA in_data 0 32 } } }
	A_V_keep_V { axis {  { A_TKEEP in_data 0 4 } } }
	A_V_strb_V { axis {  { A_TSTRB in_data 0 4 } } }
	A_V_last_V { axis {  { A_TVALID in_vld 0 1 }  { A_TREADY in_acc 1 1 }  { A_TLAST in_data 0 1 } } }
	B_V_data_V { axis {  { B_TDATA out_data 1 32 } } }
	B_V_keep_V { axis {  { B_TKEEP out_data 1 4 } } }
	B_V_strb_V { axis {  { B_TSTRB out_data 1 4 } } }
	B_V_last_V { axis {  { B_TVALID out_vld 1 1 }  { B_TREADY out_acc 0 1 }  { B_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
