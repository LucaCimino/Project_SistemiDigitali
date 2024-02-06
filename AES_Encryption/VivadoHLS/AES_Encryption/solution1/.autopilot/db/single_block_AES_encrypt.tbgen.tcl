set C_TypeInfoList {{ 
"single_block_AES_encrypt" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"i_plaintext": [[], {"reference": "0"}] }, {"cipher": [[], {"reference": "0"}] }],["1"],""],
 "1": [ "R", [[], {"array": ["2", [4]]}],""], 
"2": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}], 
"0": [ "stream<stream_type>", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
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
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "24"], "CDFG" : "single_block_AES_encrypt", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "0",
		"Port" : [
		{"Name" : "i_plaintext_V_data", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [
			{"Name" : "i_plaintext_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "i_plaintext_V_user_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "i_plaintext_V_last_V", "Type" : "Axis", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "cipher_V_data", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [
			{"Name" : "cipher_TDATA_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "cipher_V_user_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "cipher_V_last_V", "Type" : "Axis", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "key", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_aes_key_expansion_fu_150", "Port" : "key"}]}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_aes_cipher_fu_141", "Port" : "s_box"}, 
			{"SubInst" : "grp_single_block_AES_encrypt_aes_key_expansion_fu_150", "Port" : "s_box"}]}, 
		{"Name" : "R", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_aes_key_expansion_fu_150", "Port" : "R"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_aes_cipher_fu_141"},
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_aes_key_expansion_fu_150"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.plaintext_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141", "Parent" : "0", "Child" : ["5", "6", "20", "21", "22"], "CDFG" : "single_block_AES_encrypt_aes_cipher", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "out_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_add_round_key_fu_153", "Port" : "w"}]}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_single_block_AES_encrypt_sub_bytes_fu_168", "Port" : "s_box"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st11_fsm_10", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_mix_columns_fu_148"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_add_round_key_fu_153"},
		{"State" : "ap_ST_st13_fsm_12", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_add_round_key_fu_153"},
		{"State" : "ap_ST_st18_fsm_17", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_add_round_key_fu_153"},
		{"State" : "ap_ST_st9_fsm_8", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_shift_rows_fu_163"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_shift_rows_fu_163"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_sub_bytes_fu_168"},
		{"State" : "ap_ST_st14_fsm_13", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_sub_bytes_fu_168"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.state_U", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148", "Parent" : "4", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"], "CDFG" : "single_block_AES_encrypt_mix_columns", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_103"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_110"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_117"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_124"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_131"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_138"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_145"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_152"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_159"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_166"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_173"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_single_block_AES_encrypt_gmult_fu_180"}],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_103", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_110", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_117", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_124", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_131", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_138", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_145", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_152", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_159", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_166", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_173", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.grp_single_block_AES_encrypt_gmult_fu_180", "Parent" : "6", "Child" : [], "CDFG" : "single_block_AES_encrypt_gmult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_mix_columns_fu_148.single_block_AES_encrypt_mux_4to1_sel2_8_1_U12", "Parent" : "6", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_add_round_key_fu_153", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_add_round_key", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "r", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_shift_rows_fu_163", "Parent" : "4", "Child" : [], "CDFG" : "single_block_AES_encrypt_shift_rows", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_sub_bytes_fu_168", "Parent" : "4", "Child" : ["23"], "CDFG" : "single_block_AES_encrypt_sub_bytes", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_cipher_fu_141.grp_single_block_AES_encrypt_sub_bytes_fu_168.s_box_U", "Parent" : "22", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_150", "Parent" : "0", "Child" : ["25", "26", "27", "28"], "CDFG" : "single_block_AES_encrypt_aes_key_expansion", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "w", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "key", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_box", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "R", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_150.key_U", "Parent" : "24", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_150.s_box_U", "Parent" : "24", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_150.R_U", "Parent" : "24", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_block_AES_encrypt_aes_key_expansion_fu_150.single_block_AES_encrypt_mux_4to1_sel2_8_1_U0", "Parent" : "24", "Child" : []}]}

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
