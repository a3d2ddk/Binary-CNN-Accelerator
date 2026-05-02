set SynModuleInfo {
  {SRCNAME kernel_Pipeline_VITIS_LOOP_299_1 MODELNAME kernel_Pipeline_VITIS_LOOP_299_1 RTLNAME kernel_kernel_Pipeline_VITIS_LOOP_299_1
    SUBMODULES {
      {MODELNAME kernel_flow_control_loop_pipe_sequential_init RTLNAME kernel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME kernel_Pipeline_MLP2_BITS MODELNAME kernel_Pipeline_MLP2_BITS RTLNAME kernel_kernel_Pipeline_MLP2_BITS
    SUBMODULES {
      {MODELNAME kernel_sparsemux_19_4_1_1_1 RTLNAME kernel_sparsemux_19_4_1_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME kernel_sparsemux_7_2_1_1_1 RTLNAME kernel_sparsemux_7_2_1_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME kernel_Pipeline_MLP1_BITS MODELNAME kernel_Pipeline_MLP1_BITS RTLNAME kernel_kernel_Pipeline_MLP1_BITS
    SUBMODULES {
      {MODELNAME kernel_mul_32ns_34ns_65_2_1 RTLNAME kernel_mul_32ns_34ns_65_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kernel_urem_32s_5ns_4_36_1 RTLNAME kernel_urem_32s_5ns_4_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME kernel_sparsemux_29_4_1_1_1 RTLNAME kernel_sparsemux_29_4_1_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME kernel_mac_muladd_6ns_3s_8s_8_4_1 RTLNAME kernel_mac_muladd_6ns_3s_8s_8_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2d_l4_Pipeline_L4_KH_L4_KW MODELNAME conv2d_l4_Pipeline_L4_KH_L4_KW RTLNAME kernel_conv2d_l4_Pipeline_L4_KH_L4_KW
    SUBMODULES {
      {MODELNAME kernel_mac_muladd_8s_5ns_9s_9_4_1 RTLNAME kernel_mac_muladd_8s_5ns_9s_9_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2d_l4_Pipeline_L4_FH_L4_FW MODELNAME conv2d_l4_Pipeline_L4_FH_L4_FW RTLNAME kernel_conv2d_l4_Pipeline_L4_FH_L4_FW
    SUBMODULES {
      {MODELNAME kernel_mac_muladd_6ns_3ns_8s_8_4_1 RTLNAME kernel_mac_muladd_6ns_3ns_8s_8_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2d_l4 MODELNAME conv2d_l4 RTLNAME kernel_conv2d_l4
    SUBMODULES {
      {MODELNAME kernel_mul_64ns_66ns_129_5_1 RTLNAME kernel_mul_64ns_66ns_129_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME kernel_urem_32ns_5ns_4_36_seq_1 RTLNAME kernel_urem_32ns_5ns_4_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME kernel_urem_64s_5ns_4_68_seq_1 RTLNAME kernel_urem_64s_5ns_4_68_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 67 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv2d_l3_Pipeline_L3_KH_L3_KW MODELNAME conv2d_l3_Pipeline_L3_KH_L3_KW RTLNAME kernel_conv2d_l3_Pipeline_L3_KH_L3_KW}
  {SRCNAME conv2d_l3_Pipeline_L3_FH_L3_FW MODELNAME conv2d_l3_Pipeline_L3_FH_L3_FW RTLNAME kernel_conv2d_l3_Pipeline_L3_FH_L3_FW
    SUBMODULES {
      {MODELNAME kernel_ama_addmuladd_5ns_3ns_5ns_9s_9_4_1 RTLNAME kernel_ama_addmuladd_5ns_3ns_5ns_9s_9_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2d_l3 MODELNAME conv2d_l3 RTLNAME kernel_conv2d_l3}
  {SRCNAME conv2d_l2_Pipeline_L2_KH_L2_KW MODELNAME conv2d_l2_Pipeline_L2_KH_L2_KW RTLNAME kernel_conv2d_l2_Pipeline_L2_KH_L2_KW}
  {SRCNAME conv2d_l2_Pipeline_L2_FH_L2_FW MODELNAME conv2d_l2_Pipeline_L2_FH_L2_FW RTLNAME kernel_conv2d_l2_Pipeline_L2_FH_L2_FW}
  {SRCNAME conv2d_l2 MODELNAME conv2d_l2 RTLNAME kernel_conv2d_l2}
  {SRCNAME conv2d_l1_Pipeline_INIT_KH_INIT_KW MODELNAME conv2d_l1_Pipeline_INIT_KH_INIT_KW RTLNAME kernel_conv2d_l1_Pipeline_INIT_KH_INIT_KW
    SUBMODULES {
      {MODELNAME kernel_urem_64s_5ns_4_68_1 RTLNAME kernel_urem_64s_5ns_4_68_1 BINDTYPE op TYPE urem IMPL auto LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME kernel_sparsemux_29_4_16_1_1 RTLNAME kernel_sparsemux_29_4_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME conv2d_l1_Pipeline_INIT_FH_INIT_FW MODELNAME conv2d_l1_Pipeline_INIT_FH_INIT_FW RTLNAME kernel_conv2d_l1_Pipeline_INIT_FH_INIT_FW}
  {SRCNAME conv2d_l1 MODELNAME conv2d_l1 RTLNAME kernel_conv2d_l1}
  {SRCNAME kernel_Pipeline_MLPO_BITS MODELNAME kernel_Pipeline_MLPO_BITS RTLNAME kernel_kernel_Pipeline_MLPO_BITS}
  {SRCNAME softmax_Pipeline_SM_NORM MODELNAME softmax_Pipeline_SM_NORM RTLNAME kernel_softmax_Pipeline_SM_NORM
    SUBMODULES {
      {MODELNAME kernel_sdiv_32ns_32ns_16_36_1 RTLNAME kernel_sdiv_32ns_32ns_16_36_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME softmax MODELNAME softmax RTLNAME kernel_softmax
    SUBMODULES {
      {MODELNAME kernel_softmax_ev_RAM_AUTO_1R1W RTLNAME kernel_softmax_ev_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kernel_Pipeline_OUT_STREAM MODELNAME kernel_Pipeline_OUT_STREAM RTLNAME kernel_kernel_Pipeline_OUT_STREAM}
  {SRCNAME kernel MODELNAME kernel RTLNAME kernel IS_TOP 1
    SUBMODULES {
      {MODELNAME kernel_mul_16ns_18ns_33_1_1 RTLNAME kernel_mul_16ns_18ns_33_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME kernel_urem_16ns_5ns_4_20_seq_1 RTLNAME kernel_urem_16ns_5ns_4_20_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 19 ALLOW_PRAGMA 1}
      {MODELNAME kernel_starting_image_RAM_AUTO_1R1W RTLNAME kernel_starting_image_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_packed_image_1_RAM_AUTO_1R1W RTLNAME kernel_packed_image_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_packed_image_2_RAM_AUTO_1R1W RTLNAME kernel_packed_image_2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_packed_image_3_RAM_AUTO_1R1W RTLNAME kernel_packed_image_3_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_packed_image_4_RAM_AUTO_1R1W RTLNAME kernel_packed_image_4_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_mlp_hidden_1_RAM_AUTO_1R1W RTLNAME kernel_mlp_hidden_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_logits_RAM_AUTO_1R1W RTLNAME kernel_logits_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_probs_RAM_AUTO_1R1W RTLNAME kernel_probs_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_buffer_RAM_AUTO_1R1W RTLNAME kernel_buffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_control_s_axi RTLNAME kernel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME kernel_regslice_both RTLNAME kernel_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
