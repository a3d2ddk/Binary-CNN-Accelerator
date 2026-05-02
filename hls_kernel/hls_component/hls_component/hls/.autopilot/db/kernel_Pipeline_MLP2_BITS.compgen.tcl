# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler kernel_sparsemux_19_4_1_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler kernel_sparsemux_7_2_1_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name mlp_hidden_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mlp_hidden_1 \
    op interface \
    ports { mlp_hidden_1_address0 { O 9 vector } mlp_hidden_1_ce0 { O 1 bit } mlp_hidden_1_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mlp_hidden_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name mlp2_acc \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp2_acc \
    op interface \
    ports { mlp2_acc { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name sext_ln462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln462 \
    op interface \
    ports { sext_ln462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name empty_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_76 \
    op interface \
    ports { empty_76 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name empty_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_77 \
    op interface \
    ports { empty_77 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name empty_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_78 \
    op interface \
    ports { empty_78 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name empty_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_79 \
    op interface \
    ports { empty_79 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name empty_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_80 \
    op interface \
    ports { empty_80 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name empty_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_81 \
    op interface \
    ports { empty_81 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name empty_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_82 \
    op interface \
    ports { empty_82 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name empty_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_83 \
    op interface \
    ports { empty_83 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name empty_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_84 \
    op interface \
    ports { empty_84 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name empty_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_85 \
    op interface \
    ports { empty_85 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name empty_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_86 \
    op interface \
    ports { empty_86 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name empty_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_87 \
    op interface \
    ports { empty_87 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name empty_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_88 \
    op interface \
    ports { empty_88 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name empty_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_89 \
    op interface \
    ports { empty_89 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name empty_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_90 \
    op interface \
    ports { empty_90 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name empty_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_91 \
    op interface \
    ports { empty_91 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name empty_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_92 \
    op interface \
    ports { empty_92 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name empty_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_93 \
    op interface \
    ports { empty_93 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name empty_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_94 \
    op interface \
    ports { empty_94 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name empty_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_95 \
    op interface \
    ports { empty_95 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name empty_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_96 \
    op interface \
    ports { empty_96 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name empty_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_97 \
    op interface \
    ports { empty_97 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name empty_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_98 \
    op interface \
    ports { empty_98 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name empty_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_99 \
    op interface \
    ports { empty_99 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name empty_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_100 \
    op interface \
    ports { empty_100 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name empty_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_101 \
    op interface \
    ports { empty_101 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name empty_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_102 \
    op interface \
    ports { empty_102 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name mlp2_acc_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp2_acc_2_out \
    op interface \
    ports { mlp2_acc_2_out { O 32 vector } mlp2_acc_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName kernel_flow_control_loop_pipe_sequential_init_U
set CompName kernel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix kernel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


