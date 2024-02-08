############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AES_Encryption
set_top single_block_AES_encrypt
add_files AES_Encryption/main.h
add_files AES_Encryption/main.cpp
add_files AES_Encryption/aes.h
add_files AES_Encryption/aes.cpp
add_files -tb AES_Encryption/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./AES_Encryption/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
