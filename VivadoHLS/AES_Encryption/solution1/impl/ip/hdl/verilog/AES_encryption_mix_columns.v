// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AES_encryption_mix_columns (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0
);

parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_st2_fsm_1 = 6'b10;
parameter    ap_ST_st3_fsm_2 = 6'b100;
parameter    ap_ST_st4_fsm_3 = 6'b1000;
parameter    ap_ST_st5_fsm_4 = 6'b10000;
parameter    ap_ST_st6_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv4_2 = 4'b10;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv2_1 = 2'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_23;
wire   [2:0] j_2_fu_217_p2;
reg   [2:0] j_2_reg_502;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_43;
wire   [3:0] tmp_cast_fu_223_p1;
reg   [3:0] tmp_cast_reg_507;
wire   [0:0] exitcond2_fu_211_p2;
wire   [2:0] i_2_fu_233_p2;
reg   [2:0] i_2_reg_516;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_58;
wire   [1:0] tmp_12_fu_239_p1;
reg   [1:0] tmp_12_reg_521;
wire   [0:0] exitcond1_fu_227_p2;
wire   [7:0] res_0_fu_370_p2;
reg   [7:0] res_0_reg_561;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_84;
wire    grp_AES_encryption_gmult_fu_103_ap_done;
wire    grp_AES_encryption_gmult_fu_110_ap_done;
wire    grp_AES_encryption_gmult_fu_117_ap_done;
wire    grp_AES_encryption_gmult_fu_124_ap_done;
wire    grp_AES_encryption_gmult_fu_131_ap_done;
wire    grp_AES_encryption_gmult_fu_138_ap_done;
wire    grp_AES_encryption_gmult_fu_145_ap_done;
wire    grp_AES_encryption_gmult_fu_152_ap_done;
wire    grp_AES_encryption_gmult_fu_159_ap_done;
wire    grp_AES_encryption_gmult_fu_166_ap_done;
wire    grp_AES_encryption_gmult_fu_173_ap_done;
wire    grp_AES_encryption_gmult_fu_180_ap_done;
wire   [7:0] res_1_fu_388_p2;
reg   [7:0] res_1_reg_566;
wire   [7:0] res_2_fu_406_p2;
reg   [7:0] res_2_reg_571;
wire   [7:0] res_3_fu_424_p2;
reg   [7:0] res_3_reg_576;
wire   [2:0] i_3_fu_436_p2;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_136;
wire    grp_AES_encryption_gmult_fu_103_ap_start;
wire    grp_AES_encryption_gmult_fu_103_ap_idle;
wire    grp_AES_encryption_gmult_fu_103_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_103_ap_return;
wire    grp_AES_encryption_gmult_fu_110_ap_start;
wire    grp_AES_encryption_gmult_fu_110_ap_idle;
wire    grp_AES_encryption_gmult_fu_110_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_110_ap_return;
wire    grp_AES_encryption_gmult_fu_117_ap_start;
wire    grp_AES_encryption_gmult_fu_117_ap_idle;
wire    grp_AES_encryption_gmult_fu_117_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_117_ap_return;
wire    grp_AES_encryption_gmult_fu_124_ap_start;
wire    grp_AES_encryption_gmult_fu_124_ap_idle;
wire    grp_AES_encryption_gmult_fu_124_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_124_ap_return;
wire    grp_AES_encryption_gmult_fu_131_ap_start;
wire    grp_AES_encryption_gmult_fu_131_ap_idle;
wire    grp_AES_encryption_gmult_fu_131_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_131_ap_return;
wire    grp_AES_encryption_gmult_fu_138_ap_start;
wire    grp_AES_encryption_gmult_fu_138_ap_idle;
wire    grp_AES_encryption_gmult_fu_138_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_138_ap_return;
wire    grp_AES_encryption_gmult_fu_145_ap_start;
wire    grp_AES_encryption_gmult_fu_145_ap_idle;
wire    grp_AES_encryption_gmult_fu_145_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_145_ap_return;
wire    grp_AES_encryption_gmult_fu_152_ap_start;
wire    grp_AES_encryption_gmult_fu_152_ap_idle;
wire    grp_AES_encryption_gmult_fu_152_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_152_ap_return;
wire    grp_AES_encryption_gmult_fu_159_ap_start;
wire    grp_AES_encryption_gmult_fu_159_ap_idle;
wire    grp_AES_encryption_gmult_fu_159_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_159_ap_return;
wire    grp_AES_encryption_gmult_fu_166_ap_start;
wire    grp_AES_encryption_gmult_fu_166_ap_idle;
wire    grp_AES_encryption_gmult_fu_166_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_166_ap_return;
wire    grp_AES_encryption_gmult_fu_173_ap_start;
wire    grp_AES_encryption_gmult_fu_173_ap_idle;
wire    grp_AES_encryption_gmult_fu_173_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_173_ap_return;
wire    grp_AES_encryption_gmult_fu_180_ap_start;
wire    grp_AES_encryption_gmult_fu_180_ap_idle;
wire    grp_AES_encryption_gmult_fu_180_ap_ready;
wire   [7:0] grp_AES_encryption_gmult_fu_180_ap_return;
reg   [2:0] j_reg_70;
wire   [0:0] exitcond_fu_430_p2;
reg   [2:0] i_reg_81;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_240;
reg   [2:0] i_1_reg_92;
reg    ap_reg_grp_AES_encryption_gmult_fu_103_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_110_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_117_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_124_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_131_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_138_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_145_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_152_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_159_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_166_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_173_ap_start;
reg    ap_reg_grp_AES_encryption_gmult_fu_180_ap_start;
wire   [63:0] tmp_7_fu_256_p1;
wire   [63:0] tmp_2_fu_470_p1;
reg   [7:0] col_0_s_fu_34;
wire   [7:0] col_3_5_fu_330_p3;
reg   [7:0] col_1_s_fu_38;
wire   [7:0] col_3_4_fu_322_p3;
reg   [7:0] col_2_s_fu_42;
wire   [7:0] col_3_1_fu_306_p3;
reg   [7:0] col_3_s_fu_46;
wire   [7:0] col_3_fu_290_p3;
wire   [7:0] tmp_1_fu_446_p6;
wire   [3:0] tmp_s_fu_243_p3;
wire   [3:0] tmp_6_fu_251_p2;
wire   [0:0] sel_tmp4_fu_271_p2;
wire   [0:0] sel_tmp2_fu_266_p2;
wire   [0:0] sel_tmp_fu_261_p2;
wire   [0:0] or_cond_fu_276_p2;
wire   [7:0] newSel_fu_282_p3;
wire   [7:0] newSel2_fu_298_p3;
wire   [7:0] col_3_3_fu_314_p3;
wire   [7:0] tmp5_fu_364_p2;
wire   [7:0] tmp_fu_358_p2;
wire   [7:0] tmp7_fu_382_p2;
wire   [7:0] tmp6_fu_376_p2;
wire   [7:0] tmp9_fu_400_p2;
wire   [7:0] tmp8_fu_394_p2;
wire   [7:0] tmp11_fu_418_p2;
wire   [7:0] tmp10_fu_412_p2;
wire   [1:0] tmp_13_fu_442_p1;
wire   [3:0] tmp_8_fu_457_p3;
wire   [3:0] tmp_9_fu_465_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
#0 ap_reg_grp_AES_encryption_gmult_fu_103_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_110_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_117_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_124_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_131_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_138_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_145_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_152_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_159_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_166_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_173_ap_start = 1'b0;
#0 ap_reg_grp_AES_encryption_gmult_fu_180_ap_start = 1'b0;
end

AES_encryption_gmult grp_AES_encryption_gmult_fu_103(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_103_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_103_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_103_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_103_ap_ready),
    .a(ap_const_lv4_2),
    .b(col_0_s_fu_34),
    .ap_return(grp_AES_encryption_gmult_fu_103_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_110(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_110_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_110_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_110_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_110_ap_ready),
    .a(ap_const_lv4_3),
    .b(col_1_s_fu_38),
    .ap_return(grp_AES_encryption_gmult_fu_110_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_117(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_117_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_117_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_117_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_117_ap_ready),
    .a(ap_const_lv4_1),
    .b(col_2_s_fu_42),
    .ap_return(grp_AES_encryption_gmult_fu_117_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_124(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_124_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_124_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_124_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_124_ap_ready),
    .a(ap_const_lv4_1),
    .b(col_3_s_fu_46),
    .ap_return(grp_AES_encryption_gmult_fu_124_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_131(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_131_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_131_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_131_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_131_ap_ready),
    .a(ap_const_lv4_1),
    .b(col_0_s_fu_34),
    .ap_return(grp_AES_encryption_gmult_fu_131_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_138(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_138_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_138_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_138_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_138_ap_ready),
    .a(ap_const_lv4_2),
    .b(col_1_s_fu_38),
    .ap_return(grp_AES_encryption_gmult_fu_138_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_145(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_145_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_145_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_145_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_145_ap_ready),
    .a(ap_const_lv4_3),
    .b(col_2_s_fu_42),
    .ap_return(grp_AES_encryption_gmult_fu_145_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_152(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_152_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_152_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_152_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_152_ap_ready),
    .a(ap_const_lv4_1),
    .b(col_1_s_fu_38),
    .ap_return(grp_AES_encryption_gmult_fu_152_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_159(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_159_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_159_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_159_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_159_ap_ready),
    .a(ap_const_lv4_2),
    .b(col_2_s_fu_42),
    .ap_return(grp_AES_encryption_gmult_fu_159_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_166(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_166_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_166_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_166_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_166_ap_ready),
    .a(ap_const_lv4_3),
    .b(col_3_s_fu_46),
    .ap_return(grp_AES_encryption_gmult_fu_166_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_173(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_173_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_173_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_173_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_173_ap_ready),
    .a(ap_const_lv4_3),
    .b(col_0_s_fu_34),
    .ap_return(grp_AES_encryption_gmult_fu_173_ap_return)
);

AES_encryption_gmult grp_AES_encryption_gmult_fu_180(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AES_encryption_gmult_fu_180_ap_start),
    .ap_done(grp_AES_encryption_gmult_fu_180_ap_done),
    .ap_idle(grp_AES_encryption_gmult_fu_180_ap_idle),
    .ap_ready(grp_AES_encryption_gmult_fu_180_ap_ready),
    .a(ap_const_lv4_2),
    .b(col_3_s_fu_46),
    .ap_return(grp_AES_encryption_gmult_fu_180_ap_return)
);

AES_encryption_mux_4to1_sel2_8_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
AES_encryption_mux_4to1_sel2_8_1_U11(
    .din1(res_0_reg_561),
    .din2(res_1_reg_566),
    .din3(res_2_reg_571),
    .din4(res_3_reg_576),
    .din5(tmp_13_fu_442_p1),
    .dout(tmp_1_fu_446_p6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_103_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_103_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_103_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_103_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_110_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_110_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_110_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_110_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_117_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_117_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_117_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_117_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_124_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_124_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_124_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_124_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_131_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_131_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_131_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_131_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_138_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_138_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_138_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_138_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_145_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_145_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_145_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_145_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_152_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_152_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_152_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_152_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_159_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_159_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_159_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_159_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_166_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_166_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_166_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_166_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_173_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_173_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_173_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_173_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_AES_encryption_gmult_fu_180_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond1_fu_227_p2))) begin
            ap_reg_grp_AES_encryption_gmult_fu_180_ap_start <= 1'b1;
        end else if ((1'b1 == grp_AES_encryption_gmult_fu_180_ap_ready)) begin
            ap_reg_grp_AES_encryption_gmult_fu_180_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == exitcond_fu_430_p2))) begin
        i_1_reg_92 <= i_3_fu_436_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~((1'b0 == grp_AES_encryption_gmult_fu_103_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_110_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_117_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_124_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_131_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_138_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_145_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_152_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_159_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_166_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_173_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_180_ap_done)))) begin
        i_1_reg_92 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        i_reg_81 <= i_2_reg_516;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_211_p2 == 1'b0))) begin
        i_reg_81 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == exitcond_fu_430_p2))) begin
        j_reg_70 <= j_2_reg_502;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        j_reg_70 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        col_0_s_fu_34 <= col_3_5_fu_330_p3;
        col_1_s_fu_38 <= col_3_4_fu_322_p3;
        col_2_s_fu_42 <= col_3_1_fu_306_p3;
        col_3_s_fu_46 <= col_3_fu_290_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        i_2_reg_516 <= i_2_fu_233_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        j_2_reg_502 <= j_2_fu_217_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~((1'b0 == grp_AES_encryption_gmult_fu_103_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_110_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_117_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_124_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_131_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_138_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_145_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_152_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_159_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_166_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_173_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_180_ap_done)))) begin
        res_0_reg_561 <= res_0_fu_370_p2;
        res_1_reg_566 <= res_1_fu_388_p2;
        res_2_reg_571 <= res_2_fu_406_p2;
        res_3_reg_576 <= res_3_fu_424_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond1_fu_227_p2))) begin
        tmp_12_reg_521 <= tmp_12_fu_239_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_211_p2 == 1'b0))) begin
        tmp_cast_reg_507[2 : 0] <= tmp_cast_fu_223_p1[2 : 0];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_211_p2 == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_211_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_43) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_58) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_240) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_84) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_136) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        state_address0 = tmp_2_fu_470_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        state_address0 = tmp_7_fu_256_p1;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == exitcond_fu_430_p2))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(exitcond2_fu_211_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == exitcond1_fu_227_p2)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st5_fsm_4 : begin
            if (~((1'b0 == grp_AES_encryption_gmult_fu_103_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_110_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_117_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_124_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_131_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_138_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_145_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_152_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_159_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_166_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_173_ap_done) | (1'b0 == grp_AES_encryption_gmult_fu_180_ap_done))) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st6_fsm_5 : begin
            if ((1'b0 == exitcond_fu_430_p2)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_136 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_23 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_240 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_43 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_58 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_84 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

assign col_3_1_fu_306_p3 = ((or_cond_fu_276_p2[0:0] === 1'b1) ? col_2_s_fu_42 : newSel2_fu_298_p3);

assign col_3_3_fu_314_p3 = ((sel_tmp2_fu_266_p2[0:0] === 1'b1) ? state_q0 : col_1_s_fu_38);

assign col_3_4_fu_322_p3 = ((sel_tmp4_fu_271_p2[0:0] === 1'b1) ? col_1_s_fu_38 : col_3_3_fu_314_p3);

assign col_3_5_fu_330_p3 = ((sel_tmp4_fu_271_p2[0:0] === 1'b1) ? state_q0 : col_0_s_fu_34);

assign col_3_fu_290_p3 = ((or_cond_fu_276_p2[0:0] === 1'b1) ? col_3_s_fu_46 : newSel_fu_282_p3);

assign exitcond1_fu_227_p2 = ((i_reg_81 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign exitcond2_fu_211_p2 = ((j_reg_70 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign exitcond_fu_430_p2 = ((i_1_reg_92 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign grp_AES_encryption_gmult_fu_103_ap_start = ap_reg_grp_AES_encryption_gmult_fu_103_ap_start;

assign grp_AES_encryption_gmult_fu_110_ap_start = ap_reg_grp_AES_encryption_gmult_fu_110_ap_start;

assign grp_AES_encryption_gmult_fu_117_ap_start = ap_reg_grp_AES_encryption_gmult_fu_117_ap_start;

assign grp_AES_encryption_gmult_fu_124_ap_start = ap_reg_grp_AES_encryption_gmult_fu_124_ap_start;

assign grp_AES_encryption_gmult_fu_131_ap_start = ap_reg_grp_AES_encryption_gmult_fu_131_ap_start;

assign grp_AES_encryption_gmult_fu_138_ap_start = ap_reg_grp_AES_encryption_gmult_fu_138_ap_start;

assign grp_AES_encryption_gmult_fu_145_ap_start = ap_reg_grp_AES_encryption_gmult_fu_145_ap_start;

assign grp_AES_encryption_gmult_fu_152_ap_start = ap_reg_grp_AES_encryption_gmult_fu_152_ap_start;

assign grp_AES_encryption_gmult_fu_159_ap_start = ap_reg_grp_AES_encryption_gmult_fu_159_ap_start;

assign grp_AES_encryption_gmult_fu_166_ap_start = ap_reg_grp_AES_encryption_gmult_fu_166_ap_start;

assign grp_AES_encryption_gmult_fu_173_ap_start = ap_reg_grp_AES_encryption_gmult_fu_173_ap_start;

assign grp_AES_encryption_gmult_fu_180_ap_start = ap_reg_grp_AES_encryption_gmult_fu_180_ap_start;

assign i_2_fu_233_p2 = (i_reg_81 + ap_const_lv3_1);

assign i_3_fu_436_p2 = (i_1_reg_92 + ap_const_lv3_1);

assign j_2_fu_217_p2 = (j_reg_70 + ap_const_lv3_1);

assign newSel2_fu_298_p3 = ((sel_tmp_fu_261_p2[0:0] === 1'b1) ? state_q0 : col_2_s_fu_42);

assign newSel_fu_282_p3 = ((sel_tmp_fu_261_p2[0:0] === 1'b1) ? col_3_s_fu_46 : state_q0);

assign or_cond_fu_276_p2 = (sel_tmp4_fu_271_p2 | sel_tmp2_fu_266_p2);

assign res_0_fu_370_p2 = (tmp5_fu_364_p2 ^ tmp_fu_358_p2);

assign res_1_fu_388_p2 = (tmp7_fu_382_p2 ^ tmp6_fu_376_p2);

assign res_2_fu_406_p2 = (tmp9_fu_400_p2 ^ tmp8_fu_394_p2);

assign res_3_fu_424_p2 = (tmp11_fu_418_p2 ^ tmp10_fu_412_p2);

assign sel_tmp2_fu_266_p2 = ((tmp_12_reg_521 == ap_const_lv2_1) ? 1'b1 : 1'b0);

assign sel_tmp4_fu_271_p2 = ((tmp_12_reg_521 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp_fu_261_p2 = ((tmp_12_reg_521 == ap_const_lv2_2) ? 1'b1 : 1'b0);

assign state_d0 = tmp_1_fu_446_p6;

assign tmp10_fu_412_p2 = (grp_AES_encryption_gmult_fu_152_ap_return ^ grp_AES_encryption_gmult_fu_173_ap_return);

assign tmp11_fu_418_p2 = (grp_AES_encryption_gmult_fu_117_ap_return ^ grp_AES_encryption_gmult_fu_180_ap_return);

assign tmp5_fu_364_p2 = (grp_AES_encryption_gmult_fu_117_ap_return ^ grp_AES_encryption_gmult_fu_124_ap_return);

assign tmp6_fu_376_p2 = (grp_AES_encryption_gmult_fu_138_ap_return ^ grp_AES_encryption_gmult_fu_131_ap_return);

assign tmp7_fu_382_p2 = (grp_AES_encryption_gmult_fu_145_ap_return ^ grp_AES_encryption_gmult_fu_124_ap_return);

assign tmp8_fu_394_p2 = (grp_AES_encryption_gmult_fu_152_ap_return ^ grp_AES_encryption_gmult_fu_131_ap_return);

assign tmp9_fu_400_p2 = (grp_AES_encryption_gmult_fu_159_ap_return ^ grp_AES_encryption_gmult_fu_166_ap_return);

assign tmp_12_fu_239_p1 = i_reg_81[1:0];

assign tmp_13_fu_442_p1 = i_1_reg_92[1:0];

assign tmp_2_fu_470_p1 = tmp_9_fu_465_p2;

assign tmp_6_fu_251_p2 = (tmp_cast_reg_507 + tmp_s_fu_243_p3);

assign tmp_7_fu_256_p1 = tmp_6_fu_251_p2;

assign tmp_8_fu_457_p3 = {{tmp_13_fu_442_p1}, {ap_const_lv2_0}};

assign tmp_9_fu_465_p2 = (tmp_cast_reg_507 + tmp_8_fu_457_p3);

assign tmp_cast_fu_223_p1 = j_reg_70;

assign tmp_fu_358_p2 = (grp_AES_encryption_gmult_fu_110_ap_return ^ grp_AES_encryption_gmult_fu_103_ap_return);

assign tmp_s_fu_243_p3 = {{tmp_12_fu_239_p1}, {ap_const_lv2_0}};

always @ (posedge ap_clk) begin
    tmp_cast_reg_507[3] <= 1'b0;
end

endmodule //AES_encryption_mix_columns
