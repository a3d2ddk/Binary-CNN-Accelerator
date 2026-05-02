# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler kernel_ama_addmuladd_5ns_3ns_5ns_9s_9_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 299 \
    name output_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_0 \
    op interface \
    ports { output_0_address0 { O 9 vector } output_0_ce0 { O 1 bit } output_0_we0 { O 1 bit } output_0_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 300 \
    name output_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_1 \
    op interface \
    ports { output_1_address0 { O 9 vector } output_1_ce0 { O 1 bit } output_1_we0 { O 1 bit } output_1_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 301 \
    name output_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_2 \
    op interface \
    ports { output_2_address0 { O 9 vector } output_2_ce0 { O 1 bit } output_2_we0 { O 1 bit } output_2_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 302 \
    name output_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_3 \
    op interface \
    ports { output_3_address0 { O 9 vector } output_3_ce0 { O 1 bit } output_3_we0 { O 1 bit } output_3_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 303 \
    name output_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_4 \
    op interface \
    ports { output_4_address0 { O 9 vector } output_4_ce0 { O 1 bit } output_4_we0 { O 1 bit } output_4_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 304 \
    name output_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_5 \
    op interface \
    ports { output_5_address0 { O 9 vector } output_5_ce0 { O 1 bit } output_5_we0 { O 1 bit } output_5_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 305 \
    name output_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_6 \
    op interface \
    ports { output_6_address0 { O 9 vector } output_6_ce0 { O 1 bit } output_6_we0 { O 1 bit } output_6_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 306 \
    name output_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_7 \
    op interface \
    ports { output_7_address0 { O 9 vector } output_7_ce0 { O 1 bit } output_7_we0 { O 1 bit } output_7_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 307 \
    name output_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_8 \
    op interface \
    ports { output_8_address0 { O 9 vector } output_8_ce0 { O 1 bit } output_8_we0 { O 1 bit } output_8_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name output_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_9 \
    op interface \
    ports { output_9_address0 { O 9 vector } output_9_ce0 { O 1 bit } output_9_we0 { O 1 bit } output_9_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name output_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_10 \
    op interface \
    ports { output_10_address0 { O 9 vector } output_10_ce0 { O 1 bit } output_10_we0 { O 1 bit } output_10_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name output_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_11 \
    op interface \
    ports { output_11_address0 { O 9 vector } output_11_ce0 { O 1 bit } output_11_we0 { O 1 bit } output_11_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name output_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_12 \
    op interface \
    ports { output_12_address0 { O 9 vector } output_12_ce0 { O 1 bit } output_12_we0 { O 1 bit } output_12_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name output_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_13 \
    op interface \
    ports { output_13_address0 { O 9 vector } output_13_ce0 { O 1 bit } output_13_we0 { O 1 bit } output_13_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name buffer_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer_1 \
    op interface \
    ports { buffer_1_address0 { O 9 vector } buffer_1_ce0 { O 1 bit } buffer_1_we0 { O 1 bit } buffer_1_d0 { O 32 vector } buffer_1_q0 { I 32 vector } buffer_1_address1 { O 9 vector } buffer_1_ce1 { O 1 bit } buffer_1_we1 { O 1 bit } buffer_1_d1 { O 32 vector } buffer_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name buffer_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer_0 \
    op interface \
    ports { buffer_0_address0 { O 9 vector } buffer_0_ce0 { O 1 bit } buffer_0_we0 { O 1 bit } buffer_0_d0 { O 32 vector } buffer_0_q0 { I 32 vector } buffer_0_address1 { O 9 vector } buffer_0_ce1 { O 1 bit } buffer_0_we1 { O 1 bit } buffer_0_d1 { O 32 vector } buffer_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name zext_ln199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln199 \
    op interface \
    ports { zext_ln199 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name sext_ln209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln209 \
    op interface \
    ports { sext_ln209 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name select_ln199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln199 \
    op interface \
    ports { select_ln199 { I 4 vector } } \
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


