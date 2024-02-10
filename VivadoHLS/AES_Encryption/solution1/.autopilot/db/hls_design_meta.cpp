#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("i_plaintext_TDATA", 8, hls_in, 0, "axis", "in_data", 1),
	Port_Property("i_plaintext_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("i_plaintext_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("i_plaintext_TUSER", 1, hls_in, 1, "axis", "in_data", 1),
	Port_Property("i_plaintext_TLAST", 1, hls_in, 2, "axis", "in_data", 1),
	Port_Property("cipher_TDATA", 8, hls_out, 3, "axis", "out_data", 1),
	Port_Property("cipher_TVALID", 1, hls_out, 5, "axis", "out_vld", 1),
	Port_Property("cipher_TREADY", 1, hls_in, 5, "axis", "out_acc", 1),
	Port_Property("cipher_TUSER", 1, hls_out, 4, "axis", "out_data", 1),
	Port_Property("cipher_TLAST", 1, hls_out, 5, "axis", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "AES_encryption";
