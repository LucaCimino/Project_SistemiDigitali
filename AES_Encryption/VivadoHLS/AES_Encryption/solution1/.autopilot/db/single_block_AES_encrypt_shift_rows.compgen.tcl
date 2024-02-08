# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name state_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_4_read \
    op interface \
    ports { state_4_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name state_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_5_read \
    op interface \
    ports { state_5_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name state_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_6_read \
    op interface \
    ports { state_6_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name state_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_7_read \
    op interface \
    ports { state_7_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name state_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_8_read \
    op interface \
    ports { state_8_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name state_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_9_read \
    op interface \
    ports { state_9_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name state_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_10_read \
    op interface \
    ports { state_10_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name state_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_11_read \
    op interface \
    ports { state_11_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name state_12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_12_read \
    op interface \
    ports { state_12_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name state_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_13_read \
    op interface \
    ports { state_13_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name state_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_14_read \
    op interface \
    ports { state_14_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name state_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_15_read \
    op interface \
    ports { state_15_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


