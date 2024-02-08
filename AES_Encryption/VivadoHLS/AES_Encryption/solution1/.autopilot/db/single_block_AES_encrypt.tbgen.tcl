set C_TypeInfoList {{ 
"single_block_AES_encrypt" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"i_plaintext": [[], {"reference": "0"}] }, {"cipher": [[], {"reference": "0"}] }],["1"],""],
 "1": [ "R", [[], {"array": ["2", [4]]}],""], 
"0": [ "stream<stream_type>", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
"2": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}], 
"3": [ "stream_type", {"struct": [[],[],[{ "data": [[8], "5"]},{ "user": [[], "6"]},{ "last": [[], "6"]}],""]}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}],
"4": ["hls", ""]
}}
set moduleName single_block_AES_encrypt
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName {single_block_AES_encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ i_plaintext_V_data int 8 regular {axi_s 0 volatile  { i_plaintext data } }  }
	{ i_plaintext_V_user_V int 1 regular {axi_s 0 volatile  { i_plaintext user } }  }
	{ i_plaintext_V_last_V int 1 regular {axi_s 0 volatile  { i_plaintext last } }  }
	{ cipher_V_data int 8 regular {axi_s 1 volatile  { cipher data } }  }
	{ cipher_V_user_V int 1 regular {axi_s 1 volatile  { cipher user } }  }
	{ cipher_V_last_V int 1 regular {axi_s 1 volatile  { cipher last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i_plaintext_V_data", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "i_plaintext.V.data","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "i_plaintext_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "i_plaintext.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "i_plaintext_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "i_plaintext.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "cipher_V_data", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "cipher.V.data","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "cipher_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cipher.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "cipher_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cipher.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ i_plaintext_TDATA sc_in sc_lv 8 signal 0 } 
	{ i_plaintext_TVALID sc_in sc_logic 1 invld 0 } 
	{ i_plaintext_TREADY sc_out sc_logic 1 inacc 2 } 
	{ i_plaintext_TUSER sc_in sc_lv 1 signal 1 } 
	{ i_plaintext_TLAST sc_in sc_lv 1 signal 2 } 
	{ cipher_TDATA sc_out sc_lv 8 signal 3 } 
	{ cipher_TVALID sc_out sc_logic 1 outvld 5 } 
	{ cipher_TREADY sc_in sc_logic 1 outacc 5 } 
	{ cipher_TUSER sc_out sc_lv 1 signal 4 } 
	{ cipher_TLAST sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "i_plaintext_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "i_plaintext_V_data", "role": "default" }} , 
 	{ "name": "i_plaintext_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_plaintext_V_data", "role": "default" }} , 
 	{ "name": "i_plaintext_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_plaintext_V_last_V", "role": "default" }} , 
 	{ "name": "i_plaintext_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "i_plaintext_V_user_V", "role": "default" }} , 
 	{ "name": "i_plaintext_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "i_plaintext_V_last_V", "role": "default" }} , 
 	{ "name": "cipher_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cipher_V_data", "role": "default" }} , 
 	{ "name": "cipher_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "cipher_V_last_V", "role": "default" }} , 
 	{ "name": "cipher_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "cipher_V_last_V", "role": "default" }} , 
 	{ "name": "cipher_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cipher_V_user_V", "role": "default" }} , 
 	{ "name": "cipher_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cipher_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "60"], "CDFG" : "single_block_AES_encrypt", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "0",
		"Port" : [
		{"Name" : "i_plaintext_V_data", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "i_plaintext_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "i_plaintext_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "i_plaintext_V_last_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "cipher_V_data", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "cipher_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "cipher_V_user_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "cipher_V_last_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_aes_cipher_fu_112", "Port" : "s_box"}, 
			{"SubInst" : "grp_single_block_AES_encrypt_aes_key_expansion_fu_135", "Port" : "s_box"}]}, 
		{"Name" : "R", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_aes_key_expansion_fu_135", "Port" : "R"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_aes_key_expansion_fu_135"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112", "Parent" : "0", "Child" : ["3", "56", "57", "59"], "CDFG" : "single_block_AES_encrypt_aes_cipher", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_4_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_5_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_6_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_7_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_8_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_9_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_10_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_11_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_12_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_13_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_14_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "in_15_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_add_round_key_fu_184", "Port" : "w"}]}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_sub_bytes_fu_234", "Port" : "s_box"}]}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164", "Parent" : "2", "Child" : ["4", "17", "30", "43"], "CDFG" : "single_block_AES_encrypt_mix_columns", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "state_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_4_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_5_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_6_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_7_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_8_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_9_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_10_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_11_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_12_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_13_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_14_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_15_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"], "CDFG" : "single_block_AES_encrypt_coef_mult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "b_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_single_block_AES_encrypt_gmult_fu_44", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_s_single_block_AES_encrypt_gmult_fu_52", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_1_single_block_AES_encrypt_gmult_fu_60", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_2_single_block_AES_encrypt_gmult_fu_68", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_5_single_block_AES_encrypt_gmult_fu_76", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_6_single_block_AES_encrypt_gmult_fu_84", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_7_single_block_AES_encrypt_gmult_fu_92", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_3_single_block_AES_encrypt_gmult_fu_100", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_4_single_block_AES_encrypt_gmult_fu_108", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_8_single_block_AES_encrypt_gmult_fu_116", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_9_single_block_AES_encrypt_gmult_fu_124", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret_single_block_AES_encrypt_coef_mult_fu_134.tmp_10_single_block_AES_encrypt_gmult_fu_132", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146", "Parent" : "3", "Child" : ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"], "CDFG" : "single_block_AES_encrypt_coef_mult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "b_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_single_block_AES_encrypt_gmult_fu_44", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_s_single_block_AES_encrypt_gmult_fu_52", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_1_single_block_AES_encrypt_gmult_fu_60", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_2_single_block_AES_encrypt_gmult_fu_68", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_5_single_block_AES_encrypt_gmult_fu_76", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_6_single_block_AES_encrypt_gmult_fu_84", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_7_single_block_AES_encrypt_gmult_fu_92", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_3_single_block_AES_encrypt_gmult_fu_100", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_4_single_block_AES_encrypt_gmult_fu_108", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_8_single_block_AES_encrypt_gmult_fu_116", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_9_single_block_AES_encrypt_gmult_fu_124", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret1_single_block_AES_encrypt_coef_mult_fu_146.tmp_10_single_block_AES_encrypt_gmult_fu_132", "Parent" : "17", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158", "Parent" : "3", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"], "CDFG" : "single_block_AES_encrypt_coef_mult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "b_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_single_block_AES_encrypt_gmult_fu_44", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_s_single_block_AES_encrypt_gmult_fu_52", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_1_single_block_AES_encrypt_gmult_fu_60", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_2_single_block_AES_encrypt_gmult_fu_68", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_5_single_block_AES_encrypt_gmult_fu_76", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_6_single_block_AES_encrypt_gmult_fu_84", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_7_single_block_AES_encrypt_gmult_fu_92", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_3_single_block_AES_encrypt_gmult_fu_100", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_4_single_block_AES_encrypt_gmult_fu_108", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_8_single_block_AES_encrypt_gmult_fu_116", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_9_single_block_AES_encrypt_gmult_fu_124", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret2_single_block_AES_encrypt_coef_mult_fu_158.tmp_10_single_block_AES_encrypt_gmult_fu_132", "Parent" : "30", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170", "Parent" : "3", "Child" : ["44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"], "CDFG" : "single_block_AES_encrypt_coef_mult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "b_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_single_block_AES_encrypt_gmult_fu_44", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_s_single_block_AES_encrypt_gmult_fu_52", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_1_single_block_AES_encrypt_gmult_fu_60", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_2_single_block_AES_encrypt_gmult_fu_68", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_5_single_block_AES_encrypt_gmult_fu_76", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_6_single_block_AES_encrypt_gmult_fu_84", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_7_single_block_AES_encrypt_gmult_fu_92", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_3_single_block_AES_encrypt_gmult_fu_100", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_4_single_block_AES_encrypt_gmult_fu_108", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_8_single_block_AES_encrypt_gmult_fu_116", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_9_single_block_AES_encrypt_gmult_fu_124", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_mix_columns_fu_164.call_ret3_single_block_AES_encrypt_coef_mult_fu_170.tmp_10_single_block_AES_encrypt_gmult_fu_132", "Parent" : "43", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_add_round_key_fu_184", "Parent" : "2", "Child" : [], "CDFG" : "single_block_AES_encrypt_add_round_key", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_4_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_5_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_6_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_7_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_8_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_9_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_10_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_11_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_12_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_13_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_14_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_15_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "r", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_sub_bytes_fu_234", "Parent" : "2", "Child" : ["58"], "CDFG" : "single_block_AES_encrypt_sub_bytes", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state_0_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_1_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_2_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_3_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_4_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_5_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_6_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_7_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_8_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_9_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_10_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_11_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_12_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_13_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_14_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_15_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_sub_bytes_fu_234.s_box_U", "Parent" : "57", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_112.grp_single_block_AES_encrypt_shift_rows_fu_256", "Parent" : "2", "Child" : [], "CDFG" : "single_block_AES_encrypt_shift_rows", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "state_4_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_5_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_6_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_7_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_8_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_9_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_10_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_11_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_12_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_13_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_14_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "state_15_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_135", "Parent" : "0", "Child" : ["61", "62", "63"], "CDFG" : "single_block_AES_encrypt_aes_key_expansion", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "w", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "R", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_135.s_box_U", "Parent" : "60", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_135.R_U", "Parent" : "60", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_135.single_block_AES_encrypt_mux_4to1_sel2_8_1_U0", "Parent" : "60", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	i_plaintext_V_data { axis {  { i_plaintext_TDATA in_data 0 8 }  { i_plaintext_TVALID in_vld 0 1 } } }
	i_plaintext_V_user_V { axis {  { i_plaintext_TUSER in_data 0 1 } } }
	i_plaintext_V_last_V { axis {  { i_plaintext_TREADY in_acc 1 1 }  { i_plaintext_TLAST in_data 0 1 } } }
	cipher_V_data { axis {  { cipher_TDATA out_data 1 8 } } }
	cipher_V_user_V { axis {  { cipher_TUSER out_data 1 1 } } }
	cipher_V_last_V { axis {  { cipher_TVALID out_vld 1 1 }  { cipher_TREADY out_acc 0 1 }  { cipher_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

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
