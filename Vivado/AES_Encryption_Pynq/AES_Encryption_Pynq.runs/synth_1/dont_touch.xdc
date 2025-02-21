# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# Block Designs: bd/design_1/design_1.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1 || ORIG_REF_NAME==design_1}]

# IP: bd/design_1/ip/design_1_processing_system7_0_3/design_1_processing_system7_0_3.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_processing_system7_0_3 || ORIG_REF_NAME==design_1_processing_system7_0_3}]

# IP: bd/design_1/ip/design_1_xlconcat_0_2/design_1_xlconcat_0_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_xlconcat_0_2 || ORIG_REF_NAME==design_1_xlconcat_0_2}]

# IP: bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_axi_dma_0_2 || ORIG_REF_NAME==design_1_axi_dma_0_2}]

# IP: bd/design_1/ip/design_1_axi_mem_intercon_2/design_1_axi_mem_intercon_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_axi_mem_intercon_2 || ORIG_REF_NAME==design_1_axi_mem_intercon_2}]

# IP: bd/design_1/ip/design_1_rst_processing_system7_0_50M_3/design_1_rst_processing_system7_0_50M_3.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_rst_processing_system7_0_50M_3 || ORIG_REF_NAME==design_1_rst_processing_system7_0_50M_3}]

# IP: bd/design_1/ip/design_1_processing_system7_0_axi_periph_3/design_1_processing_system7_0_axi_periph_3.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_processing_system7_0_axi_periph_3 || ORIG_REF_NAME==design_1_processing_system7_0_axi_periph_3}]

# IP: bd/design_1/ip/design_1_xbar_2/design_1_xbar_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_xbar_2 || ORIG_REF_NAME==design_1_xbar_2}]

# IP: bd/design_1/ip/design_1_AES_encryption_0_0/design_1_AES_encryption_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_AES_encryption_0_0 || ORIG_REF_NAME==design_1_AES_encryption_0_0}]

# IP: bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_auto_pc_0 || ORIG_REF_NAME==design_1_auto_pc_0}]

# IP: bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_auto_us_0 || ORIG_REF_NAME==design_1_auto_us_0}]

# IP: bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_auto_us_1 || ORIG_REF_NAME==design_1_auto_us_1}]

# IP: bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_auto_pc_1 || ORIG_REF_NAME==design_1_auto_pc_1}]

# XDC: bd/design_1/ip/design_1_processing_system7_0_3/design_1_processing_system7_0_3.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_processing_system7_0_3 || ORIG_REF_NAME==design_1_processing_system7_0_3}] {/inst }]/inst ]]

# XDC: bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2_ooc.xdc

# XDC: bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_axi_dma_0_2 || ORIG_REF_NAME==design_1_axi_dma_0_2}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_axi_dma_0_2 || ORIG_REF_NAME==design_1_axi_dma_0_2}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_rst_processing_system7_0_50M_3/design_1_rst_processing_system7_0_50M_3_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_rst_processing_system7_0_50M_3 || ORIG_REF_NAME==design_1_rst_processing_system7_0_50M_3}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_rst_processing_system7_0_50M_3/design_1_rst_processing_system7_0_50M_3.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_rst_processing_system7_0_50M_3 || ORIG_REF_NAME==design_1_rst_processing_system7_0_50M_3}] {/U0 }]/U0 ]]

# XDC: bd/design_1/ip/design_1_rst_processing_system7_0_50M_3/design_1_rst_processing_system7_0_50M_3_ooc.xdc

# XDC: bd/design_1/ip/design_1_xbar_2/design_1_xbar_2_ooc.xdc

# XDC: bd/design_1/ip/design_1_AES_encryption_0_0/constraints/AES_encryption_ooc.xdc

# XDC: bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_clocks.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_auto_us_0 || ORIG_REF_NAME==design_1_auto_us_0}] {/inst }]/inst ]]

# XDC: bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1_ooc.xdc

# XDC: bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1_clocks.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_auto_us_1 || ORIG_REF_NAME==design_1_auto_us_1}] {/inst }]/inst ]]

# XDC: bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc

# XDC: bd/design_1/design_1_ooc.xdc
