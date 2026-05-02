set ModuleHierarchy {[{
"Name" : "kernel", "RefName" : "kernel","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_kernel_Pipeline_VITIS_LOOP_299_1_fu_821", "RefName" : "kernel_Pipeline_VITIS_LOOP_299_1","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_299_1","RefName" : "VITIS_LOOP_299_1","ID" : "2","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "kernel_loop","RefName" : "kernel_loop","ID" : "3","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_kernel_Pipeline_MLP2_BITS_fu_829", "RefName" : "kernel_Pipeline_MLP2_BITS","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "MLP2_BITS","RefName" : "MLP2_BITS","ID" : "5","Type" : "pipeline"},]},
	{"Name" : "grp_kernel_Pipeline_MLP1_BITS_fu_865", "RefName" : "kernel_Pipeline_MLP1_BITS","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "MLP1_BITS","RefName" : "MLP1_BITS","ID" : "7","Type" : "pipeline"},]},
	{"Name" : "grp_conv2d_l4_fu_914", "RefName" : "conv2d_l4","ID" : "8","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_conv2d_l4_Pipeline_L4_FH_L4_FW_fu_552", "RefName" : "conv2d_l4_Pipeline_L4_FH_L4_FW","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "L4_FH_L4_FW","RefName" : "L4_FH_L4_FW","ID" : "10","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "L4_H","RefName" : "L4_H","ID" : "11","Type" : "no",
			"SubLoops" : [
			{"Name" : "L4_W","RefName" : "L4_W","ID" : "12","Type" : "no",
				"SubLoops" : [
				{"Name" : "L4_K","RefName" : "L4_K","ID" : "13","Type" : "no",
					"SubInsts" : [
					{"Name" : "grp_conv2d_l4_Pipeline_L4_KH_L4_KW_fu_484", "RefName" : "conv2d_l4_Pipeline_L4_KH_L4_KW","ID" : "14","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "L4_KH_L4_KW","RefName" : "L4_KH_L4_KW","ID" : "15","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "grp_conv2d_l3_fu_984", "RefName" : "conv2d_l3","ID" : "16","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_conv2d_l3_Pipeline_L3_FH_L3_FW_fu_554", "RefName" : "conv2d_l3_Pipeline_L3_FH_L3_FW","ID" : "17","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "L3_FH_L3_FW","RefName" : "L3_FH_L3_FW","ID" : "18","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "L3_H","RefName" : "L3_H","ID" : "19","Type" : "no",
			"SubLoops" : [
			{"Name" : "L3_W","RefName" : "L3_W","ID" : "20","Type" : "no",
				"SubLoops" : [
				{"Name" : "L3_K","RefName" : "L3_K","ID" : "21","Type" : "no",
					"SubInsts" : [
					{"Name" : "grp_conv2d_l3_Pipeline_L3_KH_L3_KW_fu_486", "RefName" : "conv2d_l3_Pipeline_L3_KH_L3_KW","ID" : "22","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "L3_KH_L3_KW","RefName" : "L3_KH_L3_KW","ID" : "23","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "grp_conv2d_l2_fu_1054", "RefName" : "conv2d_l2","ID" : "24","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_conv2d_l2_Pipeline_L2_FH_L2_FW_fu_554", "RefName" : "conv2d_l2_Pipeline_L2_FH_L2_FW","ID" : "25","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "L2_FH_L2_FW","RefName" : "L2_FH_L2_FW","ID" : "26","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "L2_H","RefName" : "L2_H","ID" : "27","Type" : "no",
			"SubLoops" : [
			{"Name" : "L2_W","RefName" : "L2_W","ID" : "28","Type" : "no",
				"SubLoops" : [
				{"Name" : "L2_K","RefName" : "L2_K","ID" : "29","Type" : "no",
					"SubInsts" : [
					{"Name" : "grp_conv2d_l2_Pipeline_L2_KH_L2_KW_fu_486", "RefName" : "conv2d_l2_Pipeline_L2_KH_L2_KW","ID" : "30","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "L2_KH_L2_KW","RefName" : "L2_KH_L2_KW","ID" : "31","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "grp_conv2d_l1_fu_1124", "RefName" : "conv2d_l1","ID" : "32","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_conv2d_l1_Pipeline_INIT_FH_INIT_FW_fu_535", "RefName" : "conv2d_l1_Pipeline_INIT_FH_INIT_FW","ID" : "33","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "INIT_FH_INIT_FW","RefName" : "INIT_FH_INIT_FW","ID" : "34","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "INIT_H","RefName" : "INIT_H","ID" : "35","Type" : "no",
			"SubLoops" : [
			{"Name" : "INIT_W","RefName" : "INIT_W","ID" : "36","Type" : "no",
				"SubLoops" : [
				{"Name" : "INIT_K","RefName" : "INIT_K","ID" : "37","Type" : "no",
					"SubInsts" : [
					{"Name" : "grp_conv2d_l1_Pipeline_INIT_KH_INIT_KW_fu_468", "RefName" : "conv2d_l1_Pipeline_INIT_KH_INIT_KW","ID" : "38","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "INIT_KH_INIT_KW","RefName" : "INIT_KH_INIT_KW","ID" : "39","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "grp_kernel_Pipeline_MLPO_BITS_fu_1194", "RefName" : "kernel_Pipeline_MLPO_BITS","ID" : "40","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "MLPO_BITS","RefName" : "MLPO_BITS","ID" : "41","Type" : "pipeline"},]},
	{"Name" : "grp_softmax_fu_1230", "RefName" : "softmax","ID" : "42","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_softmax_Pipeline_SM_NORM_fu_224", "RefName" : "softmax_Pipeline_SM_NORM","ID" : "43","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "SM_NORM","RefName" : "SM_NORM","ID" : "44","Type" : "pipeline"},]},]},
	{"Name" : "grp_kernel_Pipeline_OUT_STREAM_fu_1236", "RefName" : "kernel_Pipeline_OUT_STREAM","ID" : "45","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "OUT_STREAM","RefName" : "OUT_STREAM","ID" : "46","Type" : "pipeline"},]},]},]
}]}