; ModuleID = 'C:/Users/lucac/VivadoHLS/AES_Encryption/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@single_block_AES_encrypt_str = internal unnamed_addr constant [25 x i8] c"single_block_AES_encrypt\00"
@s_box = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@R = global [4 x i8] c"\02\00\00\00", align 1
@K = global i32 0, align 4
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str37 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@p_str26 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_read, i8 %state_1_read, i8 %state_2_read, i8 %state_3_read, i8 %state_4_read, i8 %state_5_read, i8 %state_6_read, i8 %state_7_read, i8 %state_8_read, i8 %state_9_read, i8 %state_10_read, i8 %state_11_read, i8 %state_12_read, i8 %state_13_read, i8 %state_14_read, i8 %state_15_read) readnone {
.preheader.preheader.0:
  %state_15_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_15_read)
  %state_14_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_14_read)
  %state_13_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_13_read)
  %state_12_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_12_read)
  %state_11_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_11_read)
  %state_10_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_10_read)
  %state_9_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_9_read)
  %state_8_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_8_read)
  %state_7_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_7_read)
  %state_6_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_6_read)
  %state_5_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_5_read)
  %state_4_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_4_read)
  %state_3_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_3_read)
  %state_2_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_2_read)
  %state_1_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_1_read)
  %state_0_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_0_read)
  %tmp_8 = zext i8 %state_0_read_1 to i64
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8
  %s_box_load = load i8* %s_box_addr, align 1
  %tmp_8_0_1 = zext i8 %state_1_read_1 to i64
  %s_box_addr_1 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_0_1
  %s_box_load_1 = load i8* %s_box_addr_1, align 1
  %tmp_8_0_2 = zext i8 %state_2_read_1 to i64
  %s_box_addr_2 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_0_2
  %s_box_load_2 = load i8* %s_box_addr_2, align 1
  %tmp_8_0_3 = zext i8 %state_3_read_1 to i64
  %s_box_addr_3 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_0_3
  %s_box_load_3 = load i8* %s_box_addr_3, align 1
  %tmp_8_1 = zext i8 %state_4_read_1 to i64
  %s_box_addr_4 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_1
  %s_box_load_4 = load i8* %s_box_addr_4, align 1
  %tmp_8_1_1 = zext i8 %state_5_read_1 to i64
  %s_box_addr_5 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_1_1
  %s_box_load_5 = load i8* %s_box_addr_5, align 1
  %tmp_8_1_2 = zext i8 %state_6_read_1 to i64
  %s_box_addr_6 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_1_2
  %s_box_load_6 = load i8* %s_box_addr_6, align 1
  %tmp_8_1_3 = zext i8 %state_7_read_1 to i64
  %s_box_addr_7 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_1_3
  %s_box_load_7 = load i8* %s_box_addr_7, align 1
  %tmp_8_2 = zext i8 %state_8_read_1 to i64
  %s_box_addr_8 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_2
  %s_box_load_8 = load i8* %s_box_addr_8, align 1
  %tmp_8_2_1 = zext i8 %state_9_read_1 to i64
  %s_box_addr_9 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_2_1
  %s_box_load_9 = load i8* %s_box_addr_9, align 1
  %tmp_8_2_2 = zext i8 %state_10_read_1 to i64
  %s_box_addr_10 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_2_2
  %s_box_load_10 = load i8* %s_box_addr_10, align 1
  %tmp_8_2_3 = zext i8 %state_11_read_1 to i64
  %s_box_addr_11 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_2_3
  %s_box_load_11 = load i8* %s_box_addr_11, align 1
  %tmp_8_3 = zext i8 %state_12_read_1 to i64
  %s_box_addr_12 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_3
  %s_box_load_12 = load i8* %s_box_addr_12, align 1
  %tmp_8_3_1 = zext i8 %state_13_read_1 to i64
  %s_box_addr_13 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_3_1
  %s_box_load_13 = load i8* %s_box_addr_13, align 1
  %tmp_8_3_2 = zext i8 %state_14_read_1 to i64
  %s_box_addr_14 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_3_2
  %s_box_load_14 = load i8* %s_box_addr_14, align 1
  %tmp_8_3_3 = zext i8 %state_15_read_1 to i64
  %s_box_addr_15 = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8_3_3
  %s_box_load_15 = load i8* %s_box_addr_15, align 1
  %mrv = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } undef, i8 %s_box_load, 0
  %mrv_1 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv, i8 %s_box_load_1, 1
  %mrv_2 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_1, i8 %s_box_load_2, 2
  %mrv_3 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_2, i8 %s_box_load_3, 3
  %mrv_4 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_3, i8 %s_box_load_4, 4
  %mrv_5 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_4, i8 %s_box_load_5, 5
  %mrv_6 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_5, i8 %s_box_load_6, 6
  %mrv_7 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_6, i8 %s_box_load_7, 7
  %mrv_8 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_7, i8 %s_box_load_8, 8
  %mrv_9 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_8, i8 %s_box_load_9, 9
  %mrv_s = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_9, i8 %s_box_load_10, 10
  %mrv_10 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_s, i8 %s_box_load_11, 11
  %mrv_11 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_10, i8 %s_box_load_12, 12
  %mrv_12 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_11, i8 %s_box_load_13, 13
  %mrv_13 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_12, i8 %s_box_load_14, 14
  %mrv_14 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_13, i8 %s_box_load_15, 15
  ret { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_14
}

define void @single_block_AES_encrypt(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %i_plaintext_V_data), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_user_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_last_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %cipher_V_data), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_user_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_last_V), !map !39
  call void (...)* @_ssdm_op_SpecTopModule([25 x i8]* @single_block_AES_encrypt_str) nounwind
  %w = alloca [176 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, [5 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str15) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, [5 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str15) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str26, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str15) nounwind
  call fastcc void @single_block_AES_encrypt_aes_key_expansion([176 x i8]* %w)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %block = phi i5 [ 0, %0 ], [ %block_1, %2 ]
  %exitcond1 = icmp eq i5 %block, -16
  %block_1 = add i5 %block, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str37) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str37)
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str15) nounwind
  %empty_7 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_16 = extractvalue { i8, i1, i1 } %empty_7, 0
  %empty_8 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_17 = extractvalue { i8, i1, i1 } %empty_8, 0
  %empty_9 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_18 = extractvalue { i8, i1, i1 } %empty_9, 0
  %empty_10 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_19 = extractvalue { i8, i1, i1 } %empty_10, 0
  %empty_11 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_20 = extractvalue { i8, i1, i1 } %empty_11, 0
  %empty_12 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_21 = extractvalue { i8, i1, i1 } %empty_12, 0
  %empty_13 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_22 = extractvalue { i8, i1, i1 } %empty_13, 0
  %empty_14 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_23 = extractvalue { i8, i1, i1 } %empty_14, 0
  %empty_15 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_24 = extractvalue { i8, i1, i1 } %empty_15, 0
  %empty_16 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_25 = extractvalue { i8, i1, i1 } %empty_16, 0
  %empty_17 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_26 = extractvalue { i8, i1, i1 } %empty_17, 0
  %empty_18 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_27 = extractvalue { i8, i1, i1 } %empty_18, 0
  %empty_19 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_28 = extractvalue { i8, i1, i1 } %empty_19, 0
  %empty_20 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_29 = extractvalue { i8, i1, i1 } %empty_20, 0
  %empty_21 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_30 = extractvalue { i8, i1, i1 } %empty_21, 0
  %empty_22 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_31 = extractvalue { i8, i1, i1 } %empty_22, 0
  %call_ret = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_aes_cipher(i8 %tmp_data_16, i8 %tmp_data_17, i8 %tmp_data_18, i8 %tmp_data_19, i8 %tmp_data_20, i8 %tmp_data_21, i8 %tmp_data_22, i8 %tmp_data_23, i8 %tmp_data_24, i8 %tmp_data_25, i8 %tmp_data_26, i8 %tmp_data_27, i8 %tmp_data_28, i8 %tmp_data_29, i8 %tmp_data_30, i8 %tmp_data_31, [176 x i8]* %w)
  %tmp_data = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 0
  %tmp_data_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 1
  %tmp_data_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 2
  %tmp_data_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 3
  %tmp_data_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 4
  %tmp_data_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 5
  %tmp_data_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 6
  %tmp_data_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 7
  %tmp_data_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 8
  %tmp_data_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 9
  %tmp_data_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 10
  %tmp_data_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 11
  %tmp_data_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 12
  %tmp_data_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 13
  %tmp_data_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 14
  %tmp_data_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 15
  %tmp_last_V = icmp eq i5 %block, 15
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_2, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_3, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_4, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_5, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_6, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_7, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_8, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_9, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_10, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_11, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_12, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_13, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_14, i1 true, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_15, i1 true, i1 %tmp_last_V)
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str37, i32 %tmp_1)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_read, i8 %state_5_read, i8 %state_6_read, i8 %state_7_read, i8 %state_8_read, i8 %state_9_read, i8 %state_10_read, i8 %state_11_read, i8 %state_12_read, i8 %state_13_read, i8 %state_14_read, i8 %state_15_read) readnone {
.preheader.preheader.0:
  %state_15_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_15_read)
  %state_14_read11 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_14_read)
  %state_13_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_13_read)
  %state_12_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_12_read)
  %state_11_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_11_read)
  %state_10_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_10_read)
  %state_9_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_9_read)
  %state_8_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_8_read)
  %state_7_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_7_read)
  %state_6_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_6_read)
  %state_5_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_5_read)
  %state_4_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_4_read)
  %mrv = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } undef, i8 %state_5_read_2, 0
  %mrv_1 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv, i8 %state_6_read_2, 1
  %mrv_2 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_1, i8 %state_7_read_2, 2
  %mrv_3 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_2, i8 %state_4_read_2, 3
  %mrv_4 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_3, i8 %state_10_read_2, 4
  %mrv_5 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_4, i8 %state_11_read_2, 5
  %mrv_6 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_5, i8 %state_8_read_2, 6
  %mrv_7 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_6, i8 %state_9_read_2, 7
  %mrv_8 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_7, i8 %state_15_read_2, 8
  %mrv_9 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_8, i8 %state_12_read_2, 9
  %mrv_10 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_9, i8 %state_13_read_2, 10
  %mrv_11 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_10, i8 %state_14_read11, 11
  ret { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_11
}

define internal fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_read, i8 %state_1_read, i8 %state_2_read, i8 %state_3_read, i8 %state_4_read, i8 %state_5_read, i8 %state_6_read, i8 %state_7_read, i8 %state_8_read, i8 %state_9_read, i8 %state_10_read, i8 %state_11_read, i8 %state_12_read, i8 %state_13_read, i8 %state_14_read, i8 %state_15_read) readnone {
.preheader.preheader.0:
  %state_15_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_15_read)
  %state_14_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_14_read)
  %state_13_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_13_read)
  %state_12_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_12_read)
  %state_11_read12 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_11_read)
  %state_10_read11 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_10_read)
  %state_9_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_9_read)
  %state_8_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_8_read)
  %state_7_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_7_read)
  %state_6_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_6_read)
  %state_5_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_5_read)
  %state_4_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_4_read)
  %state_3_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_3_read)
  %state_2_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_2_read)
  %state_1_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_1_read)
  %state_0_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_0_read)
  %call_ret = call fastcc { i8, i8, i8, i8 } @single_block_AES_encrypt_coef_mult(i8 %state_0_read_2, i8 %state_4_read_3, i8 %state_8_read_3, i8 %state_12_read_3)
  %res_0 = extractvalue { i8, i8, i8, i8 } %call_ret, 0
  %res_1 = extractvalue { i8, i8, i8, i8 } %call_ret, 1
  %res_2 = extractvalue { i8, i8, i8, i8 } %call_ret, 2
  %res_3 = extractvalue { i8, i8, i8, i8 } %call_ret, 3
  %call_ret1 = call fastcc { i8, i8, i8, i8 } @single_block_AES_encrypt_coef_mult(i8 %state_1_read_2, i8 %state_5_read_3, i8 %state_9_read_3, i8 %state_13_read_3)
  %res_0_1 = extractvalue { i8, i8, i8, i8 } %call_ret1, 0
  %res_1_1 = extractvalue { i8, i8, i8, i8 } %call_ret1, 1
  %res_2_1 = extractvalue { i8, i8, i8, i8 } %call_ret1, 2
  %res_3_1 = extractvalue { i8, i8, i8, i8 } %call_ret1, 3
  %call_ret2 = call fastcc { i8, i8, i8, i8 } @single_block_AES_encrypt_coef_mult(i8 %state_2_read_2, i8 %state_6_read_3, i8 %state_10_read11, i8 %state_14_read_2)
  %res_0_2 = extractvalue { i8, i8, i8, i8 } %call_ret2, 0
  %res_1_2 = extractvalue { i8, i8, i8, i8 } %call_ret2, 1
  %res_2_2 = extractvalue { i8, i8, i8, i8 } %call_ret2, 2
  %res_3_2 = extractvalue { i8, i8, i8, i8 } %call_ret2, 3
  %call_ret3 = call fastcc { i8, i8, i8, i8 } @single_block_AES_encrypt_coef_mult(i8 %state_3_read_2, i8 %state_7_read_3, i8 %state_11_read12, i8 %state_15_read_3)
  %res_0_3 = extractvalue { i8, i8, i8, i8 } %call_ret3, 0
  %res_1_3 = extractvalue { i8, i8, i8, i8 } %call_ret3, 1
  %res_2_3 = extractvalue { i8, i8, i8, i8 } %call_ret3, 2
  %res_3_3 = extractvalue { i8, i8, i8, i8 } %call_ret3, 3
  %mrv = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } undef, i8 %res_0, 0
  %mrv_1 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv, i8 %res_0_1, 1
  %mrv_2 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_1, i8 %res_0_2, 2
  %mrv_3 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_2, i8 %res_0_3, 3
  %mrv_4 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_3, i8 %res_1, 4
  %mrv_5 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_4, i8 %res_1_1, 5
  %mrv_6 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_5, i8 %res_1_2, 6
  %mrv_7 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_6, i8 %res_1_3, 7
  %mrv_8 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_7, i8 %res_2, 8
  %mrv_9 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_8, i8 %res_2_1, 9
  %mrv_10 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_9, i8 %res_2_2, 10
  %mrv_11 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_10, i8 %res_2_3, 11
  %mrv_12 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_11, i8 %res_3, 12
  %mrv_13 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_12, i8 %res_3_1, 13
  %mrv_14 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_13, i8 %res_3_2, 14
  %mrv_s = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_14, i8 %res_3_3, 15
  ret { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_s
}

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext %a, i8 %b) readnone {
  %b_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b)
  %a_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %a)
  %tmp = trunc i8 %b_read to i1
  %tmp_1 = trunc i4 %a_read to i2
  %tmp_7 = select i1 %tmp, i2 %tmp_1, i2 0
  %tmp_7_cast = zext i2 %tmp_7 to i3
  %a_assign = call i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2 %tmp_1, i1 false)
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %b_read, i32 1)
  %tmp_24_1 = select i1 %tmp_2, i3 %a_assign, i3 0
  %tmp_3 = shl i4 %a_read, 2
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %b_read, i32 2)
  %tmp_24_2 = select i1 %tmp_4, i4 %tmp_3, i4 0
  %tmp_24_2_cast = zext i4 %tmp_24_2 to i5
  %a_assign_7 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_1, i3 0)
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %b_read, i32 3)
  %tmp_24_3 = select i1 %tmp_5, i5 %a_assign_7, i5 0
  %a_assign_3 = call i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2 %tmp_1, i4 0)
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %b_read, i32 4)
  %tmp_24_4 = select i1 %tmp_6, i6 %a_assign_3, i6 0
  %tmp_24_4_cast = zext i6 %tmp_24_4 to i7
  %a_assign_4 = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %tmp_1, i5 0)
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %b_read, i32 5)
  %tmp_24_5 = select i1 %tmp_8, i7 %a_assign_4, i7 0
  %a_assign_5 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2 %tmp_1, i6 0)
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %b_read, i32 6)
  %tmp_24_6 = select i1 %tmp_9, i8 %a_assign_5, i8 0
  %tmp_10 = trunc i4 %a_read to i1
  %a_assign_6 = call i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1 %tmp_10, i7 0)
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %a_read, i32 1)
  %a_assign_1_s = or i8 %a_assign_6, 27
  %a_assign_2_6 = select i1 %tmp_11, i8 %a_assign_1_s, i8 %a_assign_6
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %b_read, i32 7)
  %tmp_24_7 = select i1 %tmp_12, i8 %a_assign_2_6, i8 0
  %tmp3 = xor i3 %tmp_24_1, %tmp_7_cast
  %tmp3_cast = zext i3 %tmp3 to i5
  %tmp4 = xor i5 %tmp_24_2_cast, %tmp_24_3
  %tmp2 = xor i5 %tmp4, %tmp3_cast
  %tmp2_cast = zext i5 %tmp2 to i8
  %tmp6 = xor i7 %tmp_24_4_cast, %tmp_24_5
  %tmp6_cast = zext i7 %tmp6 to i8
  %tmp7 = xor i8 %tmp_24_6, %tmp_24_7
  %tmp5 = xor i8 %tmp7, %tmp6_cast
  %p_0_7 = xor i8 %tmp5, %tmp2_cast
  ret i8 %p_0_7
}

define internal fastcc { i8, i8, i8, i8 } @single_block_AES_encrypt_coef_mult(i8 %b_0_read, i8 %b_1_read, i8 %b_2_read, i8 %b_3_read) readnone {
  %b_3_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b_3_read)
  %b_2_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b_2_read)
  %b_1_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b_1_read)
  %b_0_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b_0_read)
  %tmp = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %b_0_read_1)
  %tmp_s = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %b_1_read_1)
  %tmp_1 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %b_2_read_1)
  %tmp_2 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %b_3_read_1)
  %tmp1 = xor i8 %tmp_s, %tmp
  %tmp2 = xor i8 %tmp_1, %tmp_2
  %d_0_write_assign = xor i8 %tmp2, %tmp1
  %tmp_5 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %b_0_read_1)
  %tmp_6 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %b_1_read_1)
  %tmp_7 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %b_2_read_1)
  %tmp3 = xor i8 %tmp_6, %tmp_5
  %tmp4 = xor i8 %tmp_7, %tmp_2
  %d_1_write_assign = xor i8 %tmp4, %tmp3
  %tmp_3 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %b_1_read_1)
  %tmp_4 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %b_2_read_1)
  %tmp_8 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %b_3_read_1)
  %tmp5 = xor i8 %tmp_3, %tmp_5
  %tmp6 = xor i8 %tmp_4, %tmp_8
  %d_2_write_assign = xor i8 %tmp6, %tmp5
  %tmp_9 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %b_0_read_1)
  %tmp_10 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %b_3_read_1)
  %tmp7 = xor i8 %tmp_3, %tmp_9
  %tmp8 = xor i8 %tmp_1, %tmp_10
  %d_3_write_assign = xor i8 %tmp8, %tmp7
  %mrv = insertvalue { i8, i8, i8, i8 } undef, i8 %d_0_write_assign, 0
  %mrv_1 = insertvalue { i8, i8, i8, i8 } %mrv, i8 %d_1_write_assign, 1
  %mrv_2 = insertvalue { i8, i8, i8, i8 } %mrv_1, i8 %d_2_write_assign, 2
  %mrv_3 = insertvalue { i8, i8, i8, i8 } %mrv_2, i8 %d_3_write_assign, 3
  ret { i8, i8, i8, i8 } %mrv_3
}

define internal fastcc void @single_block_AES_encrypt_aes_key_expansion([176 x i8]* %w) {
.preheader.preheader:
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 0
  store i8 99, i8* %w_addr, align 1
  %w_addr_1 = getelementptr [176 x i8]* %w, i64 0, i64 1
  store i8 -45, i8* %w_addr_1, align 1
  %w_addr_2 = getelementptr [176 x i8]* %w, i64 0, i64 2
  store i8 113, i8* %w_addr_2, align 1
  %w_addr_3 = getelementptr [176 x i8]* %w, i64 0, i64 3
  store i8 -29, i8* %w_addr_3, align 1
  %w_addr_4 = getelementptr [176 x i8]* %w, i64 0, i64 4
  store i8 107, i8* %w_addr_4, align 1
  %w_addr_5 = getelementptr [176 x i8]* %w, i64 0, i64 5
  store i8 -78, i8* %w_addr_5, align 1
  %w_addr_6 = getelementptr [176 x i8]* %w, i64 0, i64 6
  store i8 18, i8* %w_addr_6, align 1
  %w_addr_7 = getelementptr [176 x i8]* %w, i64 0, i64 7
  store i8 -123, i8* %w_addr_7, align 1
  %w_addr_8 = getelementptr [176 x i8]* %w, i64 0, i64 8
  store i8 -25, i8* %w_addr_8, align 1
  %w_addr_9 = getelementptr [176 x i8]* %w, i64 0, i64 9
  store i8 103, i8* %w_addr_9, align 1
  %w_addr_10 = getelementptr [176 x i8]* %w, i64 0, i64 10
  store i8 -46, i8* %w_addr_10, align 1
  %w_addr_11 = getelementptr [176 x i8]* %w, i64 0, i64 11
  store i8 -1, i8* %w_addr_11, align 1
  %w_addr_12 = getelementptr [176 x i8]* %w, i64 0, i64 12
  store i8 17, i8* %w_addr_12, align 1
  %w_addr_13 = getelementptr [176 x i8]* %w, i64 0, i64 13
  store i8 21, i8* %w_addr_13, align 1
  %w_addr_14 = getelementptr [176 x i8]* %w, i64 0, i64 14
  store i8 -29, i8* %w_addr_14, align 1
  %w_addr_15 = getelementptr [176 x i8]* %w, i64 0, i64 15
  store i8 -85, i8* %w_addr_15, align 1
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %i_1 = phi i6 [ %i, %._crit_edge ], [ 4, %.preheader.preheader ]
  %exitcond = icmp eq i6 %i_1, -20
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40)
  br i1 %exitcond, label %5, label %0

; <label>:0                                       ; preds = %.preheader
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %i_1, i2 0)
  %tmp_11 = add i8 -4, %tmp_s
  %tmp_12 = zext i8 %tmp_11 to i64
  %w_addr_16 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_12
  %tmp_47 = load i8* %w_addr_16, align 1
  %tmp_13 = add i8 -3, %tmp_s
  %tmp_14 = zext i8 %tmp_13 to i64
  %w_addr_17 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_14
  %tmp_1 = load i8* %w_addr_17, align 1
  %tmp_15 = add i8 -2, %tmp_s
  %tmp_16 = zext i8 %tmp_15 to i64
  %w_addr_18 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_16
  %tmp_2 = load i8* %w_addr_18, align 1
  %tmp_17 = add i8 -1, %tmp_s
  %tmp_18 = zext i8 %tmp_17 to i64
  %w_addr_19 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_18
  %tmp_3_1 = load i8* %w_addr_19, align 1
  %tmp_22 = trunc i6 %i_1 to i2
  %tmp_19 = icmp eq i2 %tmp_22, 0
  br i1 %tmp_19, label %.preheader47, label %._crit_edge

.preheader47:                                     ; preds = %0, %_ifconv.i
  %write_flag_i = phi i1 [ %write_flag_1_i, %_ifconv.i ], [ false, %0 ]
  %w_3_read_assign_2 = phi i8 [ %w_3_read_assign_3, %_ifconv.i ], [ undef, %0 ]
  %tmp_2_1 = phi i8 [ %w_3_read_assign_5, %_ifconv.i ], [ %tmp_2, %0 ]
  %tmp_1_1 = phi i8 [ %w_3_read_assign_7, %_ifconv.i ], [ %tmp_1, %0 ]
  %i_i1 = phi i2 [ %i_3, %_ifconv.i ], [ 0, %0 ]
  %exitcond_i1 = icmp eq i2 %i_i1, -1
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %i_3 = add i2 %i_i1, 1
  br i1 %exitcond_i1, label %rot_word.exit, label %_ifconv.i

_ifconv.i:                                        ; preds = %.preheader47
  %sel_tmp_i = icmp eq i2 %i_i1, 1
  %w_3_read_assign = select i1 %sel_tmp_i, i8 %tmp_2_1, i8 %tmp_3_1
  %sel_tmp2_i = icmp eq i2 %i_i1, 0
  %w_3_read_assign_1 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign
  %write_flag_1_i = or i1 %sel_tmp2_i, %write_flag_i
  %w_3_read_assign_3 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign_2
  %w_3_read_assign_4 = select i1 %sel_tmp_i, i8 %tmp_2_1, i8 %w_3_read_assign_1
  %w_3_read_assign_5 = select i1 %sel_tmp2_i, i8 %tmp_2_1, i8 %w_3_read_assign_4
  %w_3_read_assign_6 = select i1 %sel_tmp_i, i8 %w_3_read_assign_1, i8 %tmp_1_1
  %w_3_read_assign_7 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign_6
  br label %.preheader47

rot_word.exit:                                    ; preds = %.preheader47
  %tmp_0_1 = select i1 %write_flag_i, i8 %w_3_read_assign_2, i8 %tmp_47
  br label %1

; <label>:1                                       ; preds = %_ifconv, %rot_word.exit
  %a_3_read_assign = phi i8 [ %tmp_47, %rot_word.exit ], [ %tmp_3, %_ifconv ]
  %a_2_read_assign = phi i8 [ %tmp_2_1, %rot_word.exit ], [ %tmp_3_4, %_ifconv ]
  %tmp_3_3 = phi i8 [ %tmp_1_1, %rot_word.exit ], [ %tmp_3_7, %_ifconv ]
  %tmp_3_6 = phi i8 [ %tmp_0_1, %rot_word.exit ], [ %tmp_3_8, %_ifconv ]
  %i_i = phi i3 [ 0, %rot_word.exit ], [ %i_2, %_ifconv ]
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_2 = add i3 %i_i, 1
  br i1 %exitcond_i, label %sub_word.exit, label %_ifconv

_ifconv:                                          ; preds = %1
  %tmp_42 = trunc i3 %i_i to i2
  %tmp = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %tmp_3_6, i8 %tmp_3_3, i8 %a_2_read_assign, i8 %a_3_read_assign, i2 %tmp_42)
  %tmp_1_i = zext i8 %tmp to i64
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_1_i
  %tmp_3_11 = load i8* %s_box_addr, align 1
  %sel_tmp = icmp eq i2 %tmp_42, -2
  %sel_tmp8 = icmp eq i2 %tmp_42, 1
  %sel_tmp1 = icmp eq i2 %tmp_42, 0
  %or_cond = or i1 %sel_tmp1, %sel_tmp8
  %newSel = select i1 %sel_tmp, i8 %a_3_read_assign, i8 %tmp_3_11
  %tmp_3 = select i1 %or_cond, i8 %a_3_read_assign, i8 %newSel
  %newSel2 = select i1 %sel_tmp, i8 %tmp_3_11, i8 %a_2_read_assign
  %tmp_3_4 = select i1 %or_cond, i8 %a_2_read_assign, i8 %newSel2
  %tmp_3_5 = select i1 %sel_tmp8, i8 %tmp_3_11, i8 %tmp_3_3
  %tmp_3_7 = select i1 %sel_tmp1, i8 %tmp_3_3, i8 %tmp_3_5
  %tmp_3_8 = select i1 %sel_tmp1, i8 %tmp_3_11, i8 %tmp_3_6
  br label %1

sub_word.exit:                                    ; preds = %1
  %i_assign = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5)
  %i_assign_cast1 = zext i4 %i_assign to i8
  %tmp_20 = icmp eq i4 %i_assign, 1
  br i1 %tmp_20, label %2, label %3

; <label>:2                                       ; preds = %sub_word.exit
  store i8 1, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  br label %Rcon.exit

; <label>:3                                       ; preds = %sub_word.exit
  %tmp_43 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %i_1, i32 3, i32 5)
  %icmp = icmp eq i3 %tmp_43, 0
  br i1 %icmp, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %3, %4
  %a_assign = phi i8 [ %a_assign_2_i, %4 ], [ 2, %3 ]
  %p_0_in_i = phi i8 [ %i_assign_1, %4 ], [ %i_assign_cast1, %3 ]
  %i_assign_1 = add i8 %p_0_in_i, -1
  %tmp_44 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %i_assign_1, i32 1, i32 7)
  %icmp9 = icmp eq i7 %tmp_44, 0
  br i1 %icmp9, label %.loopexit.i.loopexit, label %4

; <label>:4                                       ; preds = %.preheader.i
  %tmp_45 = shl i8 %a_assign, 1
  %tmp_46 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %a_assign, i32 7)
  %a_assign_1_i = xor i8 %tmp_45, 27
  %a_assign_2_i = select i1 %tmp_46, i8 %a_assign_1_i, i8 %tmp_45
  br label %.preheader.i

.loopexit.i.loopexit:                             ; preds = %.preheader.i
  store i8 %a_assign, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %3, %.loopexit.i.loopexit
  br label %Rcon.exit

Rcon.exit:                                        ; preds = %.loopexit.i, %2
  %R_load = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  %tmp_0 = xor i8 %R_load, %tmp_3_6
  %R_load_1 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 1), align 1
  %tmp_1_3 = xor i8 %R_load_1, %tmp_3_3
  %R_load_2 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 2), align 1
  %tmp_2_3 = xor i8 %R_load_2, %a_2_read_assign
  %R_load_3 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 3), align 1
  %tmp_3_9 = xor i8 %R_load_3, %a_3_read_assign
  br label %._crit_edge

._crit_edge:                                      ; preds = %Rcon.exit, %0
  %tmp_3_s = phi i8 [ %tmp_3_9, %Rcon.exit ], [ %tmp_3_1, %0 ]
  %tmp_2_3_2 = phi i8 [ %tmp_2_3, %Rcon.exit ], [ %tmp_2, %0 ]
  %tmp_1_s = phi i8 [ %tmp_1_3, %Rcon.exit ], [ %tmp_1, %0 ]
  %tmp_0_s = phi i8 [ %tmp_0, %Rcon.exit ], [ %tmp_47, %0 ]
  %tmp_21 = add i8 %tmp_s, -16
  %tmp_23 = zext i8 %tmp_21 to i64
  %w_addr_20 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_23
  %w_load = load i8* %w_addr_20, align 1
  %tmp_24 = xor i8 %w_load, %tmp_0_s
  %tmp_25 = zext i8 %tmp_s to i64
  %w_addr_21 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_25
  store i8 %tmp_24, i8* %w_addr_21, align 1
  %tmp_26 = add i8 %tmp_s, -15
  %tmp_27 = zext i8 %tmp_26 to i64
  %w_addr_22 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_27
  %w_load_1 = load i8* %w_addr_22, align 1
  %tmp_28 = xor i8 %w_load_1, %tmp_1_s
  %tmp_29 = or i8 %tmp_s, 1
  %tmp_30 = zext i8 %tmp_29 to i64
  %w_addr_23 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_30
  store i8 %tmp_28, i8* %w_addr_23, align 1
  %tmp_31 = add i8 %tmp_s, -14
  %tmp_32 = zext i8 %tmp_31 to i64
  %w_addr_24 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_32
  %w_load_2 = load i8* %w_addr_24, align 1
  %tmp_33 = xor i8 %w_load_2, %tmp_2_3_2
  %tmp_34 = or i8 %tmp_s, 2
  %tmp_35 = zext i8 %tmp_34 to i64
  %w_addr_25 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_35
  store i8 %tmp_33, i8* %w_addr_25, align 1
  %tmp_36 = add i8 %tmp_s, -13
  %tmp_37 = zext i8 %tmp_36 to i64
  %w_addr_26 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_37
  %w_load_3 = load i8* %w_addr_26, align 1
  %tmp_38 = xor i8 %w_load_3, %tmp_3_s
  %tmp_39 = or i8 %tmp_s, 3
  %tmp_40 = zext i8 %tmp_39 to i64
  %w_addr_27 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_40
  store i8 %tmp_38, i8* %w_addr_27, align 1
  %i = add i6 %i_1, 1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret void
}

define internal fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_aes_cipher(i8 %in_0_read, i8 %in_1_read, i8 %in_2_read, i8 %in_3_read, i8 %in_4_read, i8 %in_5_read, i8 %in_6_read, i8 %in_7_read, i8 %in_8_read, i8 %in_9_read, i8 %in_10_read, i8 %in_11_read, i8 %in_12_read, i8 %in_13_read, i8 %in_14_read, i8 %in_15_read, [176 x i8]* nocapture %w) readonly {
.preheader5.preheader.0:
  %in_15_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_15_read)
  %in_14_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_14_read)
  %in_13_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_13_read)
  %in_12_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_12_read)
  %in_11_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_11_read)
  %in_10_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_10_read)
  %in_9_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_9_read)
  %in_8_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_8_read)
  %in_7_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_7_read)
  %in_6_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_6_read)
  %in_5_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_5_read)
  %in_4_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_4_read)
  %in_3_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_3_read)
  %in_2_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_2_read)
  %in_1_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_1_read)
  %in_0_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %in_0_read)
  %call_ret5 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %in_0_read_1, i8 %in_4_read_1, i8 %in_8_read_1, i8 %in_12_read_1, i8 %in_1_read_1, i8 %in_5_read_1, i8 %in_9_read_1, i8 %in_13_read_1, i8 %in_2_read_1, i8 %in_6_read_1, i8 %in_10_read_1, i8 %in_14_read_1, i8 %in_3_read_1, i8 %in_7_read_1, i8 %in_11_read_1, i8 %in_15_read_1, [176 x i8]* %w, i5 0)
  %state_0 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 0
  %state_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 1
  %state_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 2
  %state_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 3
  %state_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 4
  %state_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 5
  %state_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 6
  %state_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 7
  %state_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 8
  %state_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 9
  %state_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 10
  %state_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 11
  %state_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 12
  %state_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 13
  %state_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 14
  %state_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret5, 15
  %call_ret6 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0, i8 %state_1, i8 %state_2, i8 %state_3, i8 %state_4, i8 %state_5, i8 %state_6, i8 %state_7, i8 %state_8, i8 %state_9, i8 %state_10, i8 %state_11, i8 %state_12, i8 %state_13, i8 %state_14, i8 %state_15)
  %state_0_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 0
  %state_1_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 1
  %state_2_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 2
  %state_3_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 3
  %state_4_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 4
  %state_5_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 5
  %state_6_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 6
  %state_7_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 7
  %state_8_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 8
  %state_9_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 9
  %state_10_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 10
  %state_11_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 11
  %state_12_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 12
  %state_13_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 13
  %state_14_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 14
  %state_15_1 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret6, 15
  %call_ret7 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_1, i8 %state_5_1, i8 %state_6_1, i8 %state_7_1, i8 %state_8_1, i8 %state_9_1, i8 %state_10_1, i8 %state_11_1, i8 %state_12_1, i8 %state_13_1, i8 %state_14_1, i8 %state_15_1)
  %state_4_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 0
  %state_5_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 1
  %state_6_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 2
  %state_7_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 3
  %state_8_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 4
  %state_9_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 5
  %state_10_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 6
  %state_11_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 7
  %state_12_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 8
  %state_13_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 9
  %state_14_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 10
  %state_15_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret7, 11
  %call_ret8 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_1, i8 %state_1_1, i8 %state_2_1, i8 %state_3_1, i8 %state_4_2, i8 %state_5_2, i8 %state_6_2, i8 %state_7_2, i8 %state_8_2, i8 %state_9_2, i8 %state_10_2, i8 %state_11_2, i8 %state_12_2, i8 %state_13_2, i8 %state_14_2, i8 %state_15_2)
  %state_0_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 0
  %state_1_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 1
  %state_2_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 2
  %state_3_2 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 3
  %state_4_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 4
  %state_5_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 5
  %state_6_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 6
  %state_7_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 7
  %state_8_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 8
  %state_9_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 9
  %state_10_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 10
  %state_11_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 11
  %state_12_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 12
  %state_13_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 13
  %state_14_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 14
  %state_15_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret8, 15
  %call_ret9 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_2, i8 %state_1_2, i8 %state_2_2, i8 %state_3_2, i8 %state_4_3, i8 %state_5_3, i8 %state_6_3, i8 %state_7_3, i8 %state_8_3, i8 %state_9_3, i8 %state_10_3, i8 %state_11_3, i8 %state_12_3, i8 %state_13_3, i8 %state_14_3, i8 %state_15_3, [176 x i8]* %w, i5 1)
  %state_0_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 0
  %state_1_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 1
  %state_2_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 2
  %state_3_3 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 3
  %state_4_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 4
  %state_5_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 5
  %state_6_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 6
  %state_7_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 7
  %state_8_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 8
  %state_9_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 9
  %state_10_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 10
  %state_11_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 11
  %state_12_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 12
  %state_13_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 13
  %state_14_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 14
  %state_15_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret9, 15
  %call_ret1 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_3, i8 %state_1_3, i8 %state_2_3, i8 %state_3_3, i8 %state_4_4, i8 %state_5_4, i8 %state_6_4, i8 %state_7_4, i8 %state_8_4, i8 %state_9_4, i8 %state_10_4, i8 %state_11_4, i8 %state_12_4, i8 %state_13_4, i8 %state_14_4, i8 %state_15_4)
  %state_0_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 0
  %state_1_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 1
  %state_2_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 2
  %state_3_4 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 3
  %state_4_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 4
  %state_5_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 5
  %state_6_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 6
  %state_7_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 7
  %state_8_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 8
  %state_9_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 9
  %state_10_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 10
  %state_11_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 11
  %state_12_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 12
  %state_13_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 13
  %state_14_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 14
  %state_15_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret1, 15
  %call_ret2 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_5, i8 %state_5_5, i8 %state_6_5, i8 %state_7_5, i8 %state_8_5, i8 %state_9_5, i8 %state_10_5, i8 %state_11_5, i8 %state_12_5, i8 %state_13_5, i8 %state_14_5, i8 %state_15_5)
  %state_4_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 0
  %state_5_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 1
  %state_6_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 2
  %state_7_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 3
  %state_8_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 4
  %state_9_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 5
  %state_10_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 6
  %state_11_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 7
  %state_12_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 8
  %state_13_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 9
  %state_14_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 10
  %state_15_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret2, 11
  %call_ret3 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_4, i8 %state_1_4, i8 %state_2_4, i8 %state_3_4, i8 %state_4_6, i8 %state_5_6, i8 %state_6_6, i8 %state_7_6, i8 %state_8_6, i8 %state_9_6, i8 %state_10_6, i8 %state_11_6, i8 %state_12_6, i8 %state_13_6, i8 %state_14_6, i8 %state_15_6)
  %state_0_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 0
  %state_1_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 1
  %state_2_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 2
  %state_3_5 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 3
  %state_4_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 4
  %state_5_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 5
  %state_6_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 6
  %state_7_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 7
  %state_8_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 8
  %state_9_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 9
  %state_10_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 10
  %state_11_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 11
  %state_12_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 12
  %state_13_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 13
  %state_14_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 14
  %state_15_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret3, 15
  %call_ret4 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_5, i8 %state_1_5, i8 %state_2_5, i8 %state_3_5, i8 %state_4_7, i8 %state_5_7, i8 %state_6_7, i8 %state_7_7, i8 %state_8_7, i8 %state_9_7, i8 %state_10_7, i8 %state_11_7, i8 %state_12_7, i8 %state_13_7, i8 %state_14_7, i8 %state_15_7, [176 x i8]* %w, i5 2)
  %state_0_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 0
  %state_1_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 1
  %state_2_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 2
  %state_3_6 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 3
  %state_4_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 4
  %state_5_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 5
  %state_6_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 6
  %state_7_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 7
  %state_8_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 8
  %state_9_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 9
  %state_10_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 10
  %state_11_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 11
  %state_12_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 12
  %state_13_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 13
  %state_14_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 14
  %state_15_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret4, 15
  %call_ret10 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_6, i8 %state_1_6, i8 %state_2_6, i8 %state_3_6, i8 %state_4_8, i8 %state_5_8, i8 %state_6_8, i8 %state_7_8, i8 %state_8_8, i8 %state_9_8, i8 %state_10_8, i8 %state_11_8, i8 %state_12_8, i8 %state_13_8, i8 %state_14_8, i8 %state_15_8)
  %state_0_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 0
  %state_1_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 1
  %state_2_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 2
  %state_3_7 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 3
  %state_4_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 4
  %state_5_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 5
  %state_6_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 6
  %state_7_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 7
  %state_8_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 8
  %state_9_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 9
  %state_10_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 10
  %state_11_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 11
  %state_12_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 12
  %state_13_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 13
  %state_14_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 14
  %state_15_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret10, 15
  %call_ret11 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_9, i8 %state_5_9, i8 %state_6_9, i8 %state_7_9, i8 %state_8_9, i8 %state_9_9, i8 %state_10_9, i8 %state_11_9, i8 %state_12_9, i8 %state_13_9, i8 %state_14_9, i8 %state_15_9)
  %state_4_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 0
  %state_5_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 1
  %state_6_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 2
  %state_7_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 3
  %state_8_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 4
  %state_9_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 5
  %state_10_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 6
  %state_11_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 7
  %state_12_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 8
  %state_13_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 9
  %state_14_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 10
  %state_15_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret11, 11
  %call_ret12 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_7, i8 %state_1_7, i8 %state_2_7, i8 %state_3_7, i8 %state_4_10, i8 %state_5_10, i8 %state_6_10, i8 %state_7_10, i8 %state_8_10, i8 %state_9_10, i8 %state_10_10, i8 %state_11_10, i8 %state_12_10, i8 %state_13_10, i8 %state_14_10, i8 %state_15_10)
  %state_0_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 0
  %state_1_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 1
  %state_2_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 2
  %state_3_8 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 3
  %state_4_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 4
  %state_5_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 5
  %state_6_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 6
  %state_7_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 7
  %state_8_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 8
  %state_9_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 9
  %state_10_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 10
  %state_11_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 11
  %state_12_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 12
  %state_13_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 13
  %state_14_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 14
  %state_15_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret12, 15
  %call_ret13 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_8, i8 %state_1_8, i8 %state_2_8, i8 %state_3_8, i8 %state_4_11, i8 %state_5_11, i8 %state_6_11, i8 %state_7_11, i8 %state_8_11, i8 %state_9_11, i8 %state_10_11, i8 %state_11_11, i8 %state_12_11, i8 %state_13_11, i8 %state_14_11, i8 %state_15_11, [176 x i8]* %w, i5 3)
  %state_0_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 0
  %state_1_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 1
  %state_2_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 2
  %state_3_9 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 3
  %state_4_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 4
  %state_5_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 5
  %state_6_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 6
  %state_7_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 7
  %state_8_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 8
  %state_9_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 9
  %state_10_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 10
  %state_11_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 11
  %state_12_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 12
  %state_13_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 13
  %state_14_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 14
  %state_15_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret13, 15
  %call_ret14 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_9, i8 %state_1_9, i8 %state_2_9, i8 %state_3_9, i8 %state_4_12, i8 %state_5_12, i8 %state_6_12, i8 %state_7_12, i8 %state_8_12, i8 %state_9_12, i8 %state_10_12, i8 %state_11_12, i8 %state_12_12, i8 %state_13_12, i8 %state_14_12, i8 %state_15_12)
  %state_0_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 0
  %state_1_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 1
  %state_2_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 2
  %state_3_10 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 3
  %state_4_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 4
  %state_5_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 5
  %state_6_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 6
  %state_7_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 7
  %state_8_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 8
  %state_9_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 9
  %state_10_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 10
  %state_11_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 11
  %state_12_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 12
  %state_13_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 13
  %state_14_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 14
  %state_15_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret14, 15
  %call_ret15 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_13, i8 %state_5_13, i8 %state_6_13, i8 %state_7_13, i8 %state_8_13, i8 %state_9_13, i8 %state_10_13, i8 %state_11_13, i8 %state_12_13, i8 %state_13_13, i8 %state_14_13, i8 %state_15_13)
  %state_4_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 0
  %state_5_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 1
  %state_6_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 2
  %state_7_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 3
  %state_8_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 4
  %state_9_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 5
  %state_10_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 6
  %state_11_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 7
  %state_12_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 8
  %state_13_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 9
  %state_14_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 10
  %state_15_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret15, 11
  %call_ret16 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_10, i8 %state_1_10, i8 %state_2_10, i8 %state_3_10, i8 %state_4_14, i8 %state_5_14, i8 %state_6_14, i8 %state_7_14, i8 %state_8_14, i8 %state_9_14, i8 %state_10_14, i8 %state_11_14, i8 %state_12_14, i8 %state_13_14, i8 %state_14_14, i8 %state_15_14)
  %state_0_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 0
  %state_1_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 1
  %state_2_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 2
  %state_3_11 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 3
  %state_4_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 4
  %state_5_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 5
  %state_6_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 6
  %state_7_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 7
  %state_8_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 8
  %state_9_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 9
  %state_10_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 10
  %state_11_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 11
  %state_12_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 12
  %state_13_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 13
  %state_14_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 14
  %state_15_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret16, 15
  %call_ret17 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_11, i8 %state_1_11, i8 %state_2_11, i8 %state_3_11, i8 %state_4_15, i8 %state_5_15, i8 %state_6_15, i8 %state_7_15, i8 %state_8_15, i8 %state_9_15, i8 %state_10_15, i8 %state_11_15, i8 %state_12_15, i8 %state_13_15, i8 %state_14_15, i8 %state_15_15, [176 x i8]* %w, i5 4)
  %state_0_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 0
  %state_1_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 1
  %state_2_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 2
  %state_3_12 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 3
  %state_4_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 4
  %state_5_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 5
  %state_6_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 6
  %state_7_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 7
  %state_8_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 8
  %state_9_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 9
  %state_10_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 10
  %state_11_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 11
  %state_12_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 12
  %state_13_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 13
  %state_14_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 14
  %state_15_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret17, 15
  %call_ret18 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_12, i8 %state_1_12, i8 %state_2_12, i8 %state_3_12, i8 %state_4_16, i8 %state_5_16, i8 %state_6_16, i8 %state_7_16, i8 %state_8_16, i8 %state_9_16, i8 %state_10_16, i8 %state_11_16, i8 %state_12_16, i8 %state_13_16, i8 %state_14_16, i8 %state_15_16)
  %state_0_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 0
  %state_1_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 1
  %state_2_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 2
  %state_3_13 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 3
  %state_4_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 4
  %state_5_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 5
  %state_6_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 6
  %state_7_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 7
  %state_8_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 8
  %state_9_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 9
  %state_10_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 10
  %state_11_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 11
  %state_12_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 12
  %state_13_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 13
  %state_14_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 14
  %state_15_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret18, 15
  %call_ret19 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_17, i8 %state_5_17, i8 %state_6_17, i8 %state_7_17, i8 %state_8_17, i8 %state_9_17, i8 %state_10_17, i8 %state_11_17, i8 %state_12_17, i8 %state_13_17, i8 %state_14_17, i8 %state_15_17)
  %state_4_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 0
  %state_5_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 1
  %state_6_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 2
  %state_7_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 3
  %state_8_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 4
  %state_9_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 5
  %state_10_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 6
  %state_11_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 7
  %state_12_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 8
  %state_13_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 9
  %state_14_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 10
  %state_15_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret19, 11
  %call_ret20 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_13, i8 %state_1_13, i8 %state_2_13, i8 %state_3_13, i8 %state_4_18, i8 %state_5_18, i8 %state_6_18, i8 %state_7_18, i8 %state_8_18, i8 %state_9_18, i8 %state_10_18, i8 %state_11_18, i8 %state_12_18, i8 %state_13_18, i8 %state_14_18, i8 %state_15_18)
  %state_0_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 0
  %state_1_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 1
  %state_2_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 2
  %state_3_14 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 3
  %state_4_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 4
  %state_5_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 5
  %state_6_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 6
  %state_7_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 7
  %state_8_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 8
  %state_9_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 9
  %state_10_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 10
  %state_11_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 11
  %state_12_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 12
  %state_13_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 13
  %state_14_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 14
  %state_15_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret20, 15
  %call_ret21 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_14, i8 %state_1_14, i8 %state_2_14, i8 %state_3_14, i8 %state_4_19, i8 %state_5_19, i8 %state_6_19, i8 %state_7_19, i8 %state_8_19, i8 %state_9_19, i8 %state_10_19, i8 %state_11_19, i8 %state_12_19, i8 %state_13_19, i8 %state_14_19, i8 %state_15_19, [176 x i8]* %w, i5 5)
  %state_0_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 0
  %state_1_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 1
  %state_2_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 2
  %state_3_15 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 3
  %state_4_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 4
  %state_5_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 5
  %state_6_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 6
  %state_7_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 7
  %state_8_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 8
  %state_9_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 9
  %state_10_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 10
  %state_11_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 11
  %state_12_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 12
  %state_13_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 13
  %state_14_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 14
  %state_15_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret21, 15
  %call_ret22 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_15, i8 %state_1_15, i8 %state_2_15, i8 %state_3_15, i8 %state_4_20, i8 %state_5_20, i8 %state_6_20, i8 %state_7_20, i8 %state_8_20, i8 %state_9_20, i8 %state_10_20, i8 %state_11_20, i8 %state_12_20, i8 %state_13_20, i8 %state_14_20, i8 %state_15_20)
  %state_0_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 0
  %state_1_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 1
  %state_2_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 2
  %state_3_16 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 3
  %state_4_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 4
  %state_5_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 5
  %state_6_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 6
  %state_7_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 7
  %state_8_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 8
  %state_9_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 9
  %state_10_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 10
  %state_11_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 11
  %state_12_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 12
  %state_13_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 13
  %state_14_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 14
  %state_15_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret22, 15
  %call_ret23 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_21, i8 %state_5_21, i8 %state_6_21, i8 %state_7_21, i8 %state_8_21, i8 %state_9_21, i8 %state_10_21, i8 %state_11_21, i8 %state_12_21, i8 %state_13_21, i8 %state_14_21, i8 %state_15_21)
  %state_4_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 0
  %state_5_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 1
  %state_6_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 2
  %state_7_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 3
  %state_8_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 4
  %state_9_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 5
  %state_10_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 6
  %state_11_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 7
  %state_12_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 8
  %state_13_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 9
  %state_14_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 10
  %state_15_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret23, 11
  %call_ret24 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_16, i8 %state_1_16, i8 %state_2_16, i8 %state_3_16, i8 %state_4_22, i8 %state_5_22, i8 %state_6_22, i8 %state_7_22, i8 %state_8_22, i8 %state_9_22, i8 %state_10_22, i8 %state_11_22, i8 %state_12_22, i8 %state_13_22, i8 %state_14_22, i8 %state_15_22)
  %state_0_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 0
  %state_1_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 1
  %state_2_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 2
  %state_3_17 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 3
  %state_4_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 4
  %state_5_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 5
  %state_6_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 6
  %state_7_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 7
  %state_8_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 8
  %state_9_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 9
  %state_10_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 10
  %state_11_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 11
  %state_12_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 12
  %state_13_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 13
  %state_14_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 14
  %state_15_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret24, 15
  %call_ret25 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_17, i8 %state_1_17, i8 %state_2_17, i8 %state_3_17, i8 %state_4_23, i8 %state_5_23, i8 %state_6_23, i8 %state_7_23, i8 %state_8_23, i8 %state_9_23, i8 %state_10_23, i8 %state_11_23, i8 %state_12_23, i8 %state_13_23, i8 %state_14_23, i8 %state_15_23, [176 x i8]* %w, i5 6)
  %state_0_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 0
  %state_1_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 1
  %state_2_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 2
  %state_3_18 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 3
  %state_4_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 4
  %state_5_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 5
  %state_6_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 6
  %state_7_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 7
  %state_8_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 8
  %state_9_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 9
  %state_10_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 10
  %state_11_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 11
  %state_12_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 12
  %state_13_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 13
  %state_14_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 14
  %state_15_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret25, 15
  %call_ret26 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_18, i8 %state_1_18, i8 %state_2_18, i8 %state_3_18, i8 %state_4_24, i8 %state_5_24, i8 %state_6_24, i8 %state_7_24, i8 %state_8_24, i8 %state_9_24, i8 %state_10_24, i8 %state_11_24, i8 %state_12_24, i8 %state_13_24, i8 %state_14_24, i8 %state_15_24)
  %state_0_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 0
  %state_1_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 1
  %state_2_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 2
  %state_3_19 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 3
  %state_4_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 4
  %state_5_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 5
  %state_6_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 6
  %state_7_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 7
  %state_8_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 8
  %state_9_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 9
  %state_10_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 10
  %state_11_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 11
  %state_12_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 12
  %state_13_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 13
  %state_14_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 14
  %state_15_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret26, 15
  %call_ret27 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_25, i8 %state_5_25, i8 %state_6_25, i8 %state_7_25, i8 %state_8_25, i8 %state_9_25, i8 %state_10_25, i8 %state_11_25, i8 %state_12_25, i8 %state_13_25, i8 %state_14_25, i8 %state_15_25)
  %state_4_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 0
  %state_5_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 1
  %state_6_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 2
  %state_7_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 3
  %state_8_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 4
  %state_9_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 5
  %state_10_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 6
  %state_11_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 7
  %state_12_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 8
  %state_13_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 9
  %state_14_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 10
  %state_15_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret27, 11
  %call_ret28 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_19, i8 %state_1_19, i8 %state_2_19, i8 %state_3_19, i8 %state_4_26, i8 %state_5_26, i8 %state_6_26, i8 %state_7_26, i8 %state_8_26, i8 %state_9_26, i8 %state_10_26, i8 %state_11_26, i8 %state_12_26, i8 %state_13_26, i8 %state_14_26, i8 %state_15_26)
  %state_0_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 0
  %state_1_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 1
  %state_2_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 2
  %state_3_20 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 3
  %state_4_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 4
  %state_5_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 5
  %state_6_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 6
  %state_7_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 7
  %state_8_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 8
  %state_9_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 9
  %state_10_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 10
  %state_11_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 11
  %state_12_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 12
  %state_13_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 13
  %state_14_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 14
  %state_15_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret28, 15
  %call_ret29 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_20, i8 %state_1_20, i8 %state_2_20, i8 %state_3_20, i8 %state_4_27, i8 %state_5_27, i8 %state_6_27, i8 %state_7_27, i8 %state_8_27, i8 %state_9_27, i8 %state_10_27, i8 %state_11_27, i8 %state_12_27, i8 %state_13_27, i8 %state_14_27, i8 %state_15_27, [176 x i8]* %w, i5 7)
  %state_0_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 0
  %state_1_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 1
  %state_2_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 2
  %state_3_21 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 3
  %state_4_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 4
  %state_5_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 5
  %state_6_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 6
  %state_7_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 7
  %state_8_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 8
  %state_9_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 9
  %state_10_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 10
  %state_11_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 11
  %state_12_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 12
  %state_13_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 13
  %state_14_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 14
  %state_15_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret29, 15
  %call_ret30 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_21, i8 %state_1_21, i8 %state_2_21, i8 %state_3_21, i8 %state_4_28, i8 %state_5_28, i8 %state_6_28, i8 %state_7_28, i8 %state_8_28, i8 %state_9_28, i8 %state_10_28, i8 %state_11_28, i8 %state_12_28, i8 %state_13_28, i8 %state_14_28, i8 %state_15_28)
  %state_0_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 0
  %state_1_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 1
  %state_2_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 2
  %state_3_22 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 3
  %state_4_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 4
  %state_5_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 5
  %state_6_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 6
  %state_7_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 7
  %state_8_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 8
  %state_9_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 9
  %state_10_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 10
  %state_11_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 11
  %state_12_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 12
  %state_13_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 13
  %state_14_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 14
  %state_15_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret30, 15
  %call_ret31 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_29, i8 %state_5_29, i8 %state_6_29, i8 %state_7_29, i8 %state_8_29, i8 %state_9_29, i8 %state_10_29, i8 %state_11_29, i8 %state_12_29, i8 %state_13_29, i8 %state_14_29, i8 %state_15_29)
  %state_4_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 0
  %state_5_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 1
  %state_6_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 2
  %state_7_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 3
  %state_8_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 4
  %state_9_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 5
  %state_10_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 6
  %state_11_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 7
  %state_12_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 8
  %state_13_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 9
  %state_14_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 10
  %state_15_30 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret31, 11
  %call_ret32 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_22, i8 %state_1_22, i8 %state_2_22, i8 %state_3_22, i8 %state_4_30, i8 %state_5_30, i8 %state_6_30, i8 %state_7_30, i8 %state_8_30, i8 %state_9_30, i8 %state_10_30, i8 %state_11_30, i8 %state_12_30, i8 %state_13_30, i8 %state_14_30, i8 %state_15_30)
  %state_0_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 0
  %state_1_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 1
  %state_2_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 2
  %state_3_23 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 3
  %state_4_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 4
  %state_5_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 5
  %state_6_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 6
  %state_7_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 7
  %state_8_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 8
  %state_9_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 9
  %state_10_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 10
  %state_11_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 11
  %state_12_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 12
  %state_13_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 13
  %state_14_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 14
  %state_15_31 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret32, 15
  %call_ret33 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_23, i8 %state_1_23, i8 %state_2_23, i8 %state_3_23, i8 %state_4_31, i8 %state_5_31, i8 %state_6_31, i8 %state_7_31, i8 %state_8_31, i8 %state_9_31, i8 %state_10_31, i8 %state_11_31, i8 %state_12_31, i8 %state_13_31, i8 %state_14_31, i8 %state_15_31, [176 x i8]* %w, i5 8)
  %state_0_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 0
  %state_1_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 1
  %state_2_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 2
  %state_3_24 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 3
  %state_4_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 4
  %state_5_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 5
  %state_6_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 6
  %state_7_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 7
  %state_8_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 8
  %state_9_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 9
  %state_10_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 10
  %state_11_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 11
  %state_12_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 12
  %state_13_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 13
  %state_14_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 14
  %state_15_32 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret33, 15
  %call_ret34 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_24, i8 %state_1_24, i8 %state_2_24, i8 %state_3_24, i8 %state_4_32, i8 %state_5_32, i8 %state_6_32, i8 %state_7_32, i8 %state_8_32, i8 %state_9_32, i8 %state_10_32, i8 %state_11_32, i8 %state_12_32, i8 %state_13_32, i8 %state_14_32, i8 %state_15_32)
  %state_0_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 0
  %state_1_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 1
  %state_2_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 2
  %state_3_25 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 3
  %state_4_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 4
  %state_5_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 5
  %state_6_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 6
  %state_7_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 7
  %state_8_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 8
  %state_9_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 9
  %state_10_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 10
  %state_11_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 11
  %state_12_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 12
  %state_13_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 13
  %state_14_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 14
  %state_15_33 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret34, 15
  %call_ret35 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_33, i8 %state_5_33, i8 %state_6_33, i8 %state_7_33, i8 %state_8_33, i8 %state_9_33, i8 %state_10_33, i8 %state_11_33, i8 %state_12_33, i8 %state_13_33, i8 %state_14_33, i8 %state_15_33)
  %state_4_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 0
  %state_5_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 1
  %state_6_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 2
  %state_7_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 3
  %state_8_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 4
  %state_9_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 5
  %state_10_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 6
  %state_11_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 7
  %state_12_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 8
  %state_13_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 9
  %state_14_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 10
  %state_15_34 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret35, 11
  %call_ret = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_mix_columns(i8 %state_0_25, i8 %state_1_25, i8 %state_2_25, i8 %state_3_25, i8 %state_4_34, i8 %state_5_34, i8 %state_6_34, i8 %state_7_34, i8 %state_8_34, i8 %state_9_34, i8 %state_10_34, i8 %state_11_34, i8 %state_12_34, i8 %state_13_34, i8 %state_14_34, i8 %state_15_34)
  %state_0_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 0
  %state_1_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 1
  %state_2_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 2
  %state_3_26 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 3
  %state_4_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 4
  %state_5_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 5
  %state_6_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 6
  %state_7_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 7
  %state_8_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 8
  %state_9_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 9
  %state_10_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 10
  %state_11_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 11
  %state_12_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 12
  %state_13_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 13
  %state_14_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 14
  %state_15_35 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret, 15
  %call_ret36 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_26, i8 %state_1_26, i8 %state_2_26, i8 %state_3_26, i8 %state_4_35, i8 %state_5_35, i8 %state_6_35, i8 %state_7_35, i8 %state_8_35, i8 %state_9_35, i8 %state_10_35, i8 %state_11_35, i8 %state_12_35, i8 %state_13_35, i8 %state_14_35, i8 %state_15_35, [176 x i8]* %w, i5 9)
  %state_0_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 0
  %state_1_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 1
  %state_2_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 2
  %state_3_27 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 3
  %state_4_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 4
  %state_5_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 5
  %state_6_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 6
  %state_7_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 7
  %state_8_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 8
  %state_9_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 9
  %state_10_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 10
  %state_11_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 11
  %state_12_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 12
  %state_13_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 13
  %state_14_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 14
  %state_15_36 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret36, 15
  %call_ret37 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_sub_bytes(i8 %state_0_27, i8 %state_1_27, i8 %state_2_27, i8 %state_3_27, i8 %state_4_36, i8 %state_5_36, i8 %state_6_36, i8 %state_7_36, i8 %state_8_36, i8 %state_9_36, i8 %state_10_36, i8 %state_11_36, i8 %state_12_36, i8 %state_13_36, i8 %state_14_36, i8 %state_15_36)
  %state_0_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 0
  %state_1_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 1
  %state_2_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 2
  %state_3_28 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 3
  %state_4_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 4
  %state_5_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 5
  %state_6_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 6
  %state_7_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 7
  %state_8_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 8
  %state_9_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 9
  %state_10_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 10
  %state_11_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 11
  %state_12_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 12
  %state_13_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 13
  %state_14_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 14
  %state_15_37 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret37, 15
  %call_ret38 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_shift_rows(i8 %state_4_37, i8 %state_5_37, i8 %state_6_37, i8 %state_7_37, i8 %state_8_37, i8 %state_9_37, i8 %state_10_37, i8 %state_11_37, i8 %state_12_37, i8 %state_13_37, i8 %state_14_37, i8 %state_15_37)
  %state_4_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 0
  %state_5_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 1
  %state_6_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 2
  %state_7_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 3
  %state_8_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 4
  %state_9_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 5
  %state_10_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 6
  %state_11_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 7
  %state_12_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 8
  %state_13_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 9
  %state_14_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 10
  %state_15_38 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret38, 11
  %call_ret39 = call fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_28, i8 %state_1_28, i8 %state_2_28, i8 %state_3_28, i8 %state_4_38, i8 %state_5_38, i8 %state_6_38, i8 %state_7_38, i8 %state_8_38, i8 %state_9_38, i8 %state_10_38, i8 %state_11_38, i8 %state_12_38, i8 %state_13_38, i8 %state_14_38, i8 %state_15_38, [176 x i8]* %w, i5 10)
  %state_1_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 1
  %state_2_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 2
  %state_3_29 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 3
  %state_4_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 4
  %state_5_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 5
  %state_6_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 6
  %state_7_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 7
  %state_8_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 8
  %state_9_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 9
  %state_10_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 10
  %state_11_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 11
  %state_12_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 12
  %state_13_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 13
  %state_14_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 14
  %state_15_39 = extractvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, 15
  %mrv_1 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %call_ret39, i8 %state_4_39, 1
  %mrv_2 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_1, i8 %state_8_39, 2
  %mrv_3 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_2, i8 %state_12_39, 3
  %mrv_4 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_3, i8 %state_1_29, 4
  %mrv_5 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_4, i8 %state_5_39, 5
  %mrv_6 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_5, i8 %state_9_39, 6
  %mrv_7 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_6, i8 %state_13_39, 7
  %mrv_8 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_7, i8 %state_2_29, 8
  %mrv_9 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_8, i8 %state_6_39, 9
  %mrv_10 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_9, i8 %state_10_39, 10
  %mrv_11 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_10, i8 %state_14_39, 11
  %mrv_12 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_11, i8 %state_3_29, 12
  %mrv_13 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_12, i8 %state_7_39, 13
  %mrv_14 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_13, i8 %state_11_39, 14
  %mrv_s = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_14, i8 %state_15_39, 15
  ret { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_s
}

define internal fastcc { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } @single_block_AES_encrypt_add_round_key(i8 %state_0_read, i8 %state_1_read, i8 %state_2_read, i8 %state_3_read, i8 %state_4_read, i8 %state_5_read, i8 %state_6_read, i8 %state_7_read, i8 %state_8_read, i8 %state_9_read, i8 %state_10_read, i8 %state_11_read, i8 %state_12_read, i8 %state_13_read, i8 %state_14_read, i8 %state_15_read, [176 x i8]* nocapture %w, i5 %r) readonly {
  %r_read = call i5 @_ssdm_op_Read.ap_auto.i5(i5 %r)
  %state_15_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_15_read)
  %state_14_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_14_read)
  %state_13_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_13_read)
  %state_12_read13 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_12_read)
  %state_11_read12 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_11_read)
  %state_10_read11 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_10_read)
  %state_9_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_9_read)
  %state_8_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_8_read)
  %state_7_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_7_read)
  %state_6_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_6_read)
  %state_5_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_5_read)
  %state_4_read_4 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_4_read)
  %state_3_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_3_read)
  %state_2_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_2_read)
  %state_1_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_1_read)
  %state_0_read_3 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %state_0_read)
  %tmp = trunc i5 %r_read to i4
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp, i4 0)
  %tmp_41 = zext i8 %tmp_s to i64
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_41
  %w_load = load i8* %w_addr, align 1
  %state_0_write_assign = xor i8 %w_load, %state_0_read_3
  %tmp_42 = or i8 %tmp_s, 1
  %tmp_43 = zext i8 %tmp_42 to i64
  %w_addr_28 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_43
  %w_load_4 = load i8* %w_addr_28, align 1
  %state_4_write_assign = xor i8 %w_load_4, %state_4_read_4
  %tmp_44 = or i8 %tmp_s, 2
  %tmp_45 = zext i8 %tmp_44 to i64
  %w_addr_29 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_45
  %w_load_5 = load i8* %w_addr_29, align 1
  %state_8_write_assign = xor i8 %w_load_5, %state_8_read_4
  %tmp_46 = or i8 %tmp_s, 3
  %tmp_47 = zext i8 %tmp_46 to i64
  %w_addr_30 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_47
  %w_load_6 = load i8* %w_addr_30, align 1
  %state_12_write_assign = xor i8 %w_load_6, %state_12_read13
  %tmp_114_s = or i8 %tmp_s, 4
  %tmp_115_1 = zext i8 %tmp_114_s to i64
  %w_addr_31 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_115_1
  %w_load_1 = load i8* %w_addr_31, align 1
  %state_1_write_assign = xor i8 %w_load_1, %state_1_read_3
  %tmp_119_1 = or i8 %tmp_s, 5
  %tmp_120_1 = zext i8 %tmp_119_1 to i64
  %w_addr_32 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_120_1
  %w_load_7 = load i8* %w_addr_32, align 1
  %state_5_write_assign = xor i8 %w_load_7, %state_5_read_4
  %tmp_124_1 = or i8 %tmp_s, 6
  %tmp_125_1 = zext i8 %tmp_124_1 to i64
  %w_addr_33 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_125_1
  %w_load_8 = load i8* %w_addr_33, align 1
  %state_9_write_assign = xor i8 %w_load_8, %state_9_read_4
  %tmp_129_1 = or i8 %tmp_s, 7
  %tmp_130_1 = zext i8 %tmp_129_1 to i64
  %w_addr_34 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_130_1
  %w_load_9 = load i8* %w_addr_34, align 1
  %state_13_write_assign = xor i8 %w_load_9, %state_13_read_4
  %tmp_114_1 = or i8 %tmp_s, 8
  %tmp_115_2 = zext i8 %tmp_114_1 to i64
  %w_addr_35 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_115_2
  %w_load_2 = load i8* %w_addr_35, align 1
  %state_2_write_assign = xor i8 %w_load_2, %state_2_read_3
  %tmp_119_2 = or i8 %tmp_s, 9
  %tmp_120_2 = zext i8 %tmp_119_2 to i64
  %w_addr_36 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_120_2
  %w_load_10 = load i8* %w_addr_36, align 1
  %state_6_write_assign = xor i8 %w_load_10, %state_6_read_4
  %tmp_124_2 = or i8 %tmp_s, 10
  %tmp_125_2 = zext i8 %tmp_124_2 to i64
  %w_addr_37 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_125_2
  %w_load_11 = load i8* %w_addr_37, align 1
  %state_10_write_assign = xor i8 %w_load_11, %state_10_read11
  %tmp_129_2 = or i8 %tmp_s, 11
  %tmp_130_2 = zext i8 %tmp_129_2 to i64
  %w_addr_38 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_130_2
  %w_load_12 = load i8* %w_addr_38, align 1
  %state_14_write_assign = xor i8 %w_load_12, %state_14_read_3
  %tmp_114_2 = or i8 %tmp_s, 12
  %tmp_115_3 = zext i8 %tmp_114_2 to i64
  %w_addr_39 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_115_3
  %w_load_3 = load i8* %w_addr_39, align 1
  %state_3_write_assign = xor i8 %w_load_3, %state_3_read_3
  %tmp_119_3 = or i8 %tmp_s, 13
  %tmp_120_3 = zext i8 %tmp_119_3 to i64
  %w_addr_40 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_120_3
  %w_load_13 = load i8* %w_addr_40, align 1
  %state_7_write_assign = xor i8 %w_load_13, %state_7_read_4
  %tmp_124_3 = or i8 %tmp_s, 14
  %tmp_125_3 = zext i8 %tmp_124_3 to i64
  %w_addr_41 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_125_3
  %w_load_14 = load i8* %w_addr_41, align 1
  %state_11_write_assign = xor i8 %w_load_14, %state_11_read12
  %tmp_129_3 = or i8 %tmp_s, 15
  %tmp_130_3 = zext i8 %tmp_129_3 to i64
  %w_addr_42 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_130_3
  %w_load_15 = load i8* %w_addr_42, align 1
  %state_15_write_assign = xor i8 %w_load_15, %state_15_read_4
  %mrv = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } undef, i8 %state_0_write_assign, 0
  %mrv_1 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv, i8 %state_1_write_assign, 1
  %mrv_2 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_1, i8 %state_2_write_assign, 2
  %mrv_3 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_2, i8 %state_3_write_assign, 3
  %mrv_4 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_3, i8 %state_4_write_assign, 4
  %mrv_5 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_4, i8 %state_5_write_assign, 5
  %mrv_6 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_5, i8 %state_6_write_assign, 6
  %mrv_7 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_6, i8 %state_7_write_assign, 7
  %mrv_8 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_7, i8 %state_8_write_assign, 8
  %mrv_9 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_8, i8 %state_9_write_assign, 9
  %mrv_10 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_9, i8 %state_10_write_assign, 10
  %mrv_11 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_10, i8 %state_11_write_assign, 11
  %mrv_12 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_11, i8 %state_12_write_assign, 12
  %mrv_13 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_12, i8 %state_13_write_assign, 13
  %mrv_14 = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_13, i8 %state_14_write_assign, 14
  %mrv_s = insertvalue { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_14, i8 %state_15_write_assign, 15
  ret { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } %mrv_s
}

define weak void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8*, i1*, i1*, i8, i1, i1) {
entry:
  store i8 %3, i8* %0
  store i1 %4, i1* %1
  store i1 %5, i1* %2
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8*, i1*, i1*) {
entry:
  %empty = load i8* %0
  %empty_26 = load i1* %1
  %empty_27 = load i1* %2
  %mrv_0 = insertvalue { i8, i1, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1 } %mrv_0, i1 %empty_26, 1
  %mrv2 = insertvalue { i8, i1, i1 } %mrv1, i1 %empty_27, 2
  ret { i8, i1, i1 } %mrv2
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i5 @_ssdm_op_Read.ap_auto.i5(i5) {
entry:
  ret i5 %0
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_28 = trunc i8 %empty to i7
  ret i7 %empty_28
}

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_29 = trunc i6 %empty to i4
  ret i4 %empty_29
}

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_30 = trunc i6 %empty to i3
  ret i3 %empty_30
}

declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8, i8, i8, i8, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_31 = shl i8 1, %empty
  %empty_32 = and i8 %0, %empty_31
  %empty_33 = icmp ne i8 %empty_32, 0
  ret i1 %empty_33
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_34 = shl i7 1, %empty
  %empty_35 = and i7 %0, %empty_34
  %empty_36 = icmp ne i7 %empty_35, 0
  ret i1 %empty_36
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_37 = shl i6 1, %empty
  %empty_38 = and i6 %0, %empty_37
  %empty_39 = icmp ne i6 %empty_38, 0
  ret i1 %empty_39
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_40 = shl i5 1, %empty
  %empty_41 = and i5 %0, %empty_40
  %empty_42 = icmp ne i5 %empty_41, 0
  ret i1 %empty_42
}

define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4
  %empty_43 = shl i4 1, %empty
  %empty_44 = and i4 %0, %empty_43
  %empty_45 = icmp ne i4 %empty_44, 0
  ret i1 %empty_45
}

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_46 = shl i3 1, %empty
  %empty_47 = and i3 %0, %empty_46
  %empty_48 = icmp ne i3 %empty_47, 0
  ret i1 %empty_48
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_49 = shl i2 1, %empty
  %empty_50 = and i2 %0, %empty_49
  %empty_51 = icmp ne i2 %empty_50, 0
  ret i1 %empty_51
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_52 = zext i2 %1 to i8
  %empty_53 = shl i8 %empty, 2
  %empty_54 = or i8 %empty_53, %empty_52
  ret i8 %empty_54
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_55 = zext i4 %1 to i8
  %empty_56 = shl i8 %empty, 4
  %empty_57 = or i8 %empty_56, %empty_55
  ret i8 %empty_57
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i2.i6(i2, i6) nounwind readnone {
entry:
  %empty = zext i2 %0 to i8
  %empty_58 = zext i6 %1 to i8
  %empty_59 = shl i8 %empty, 6
  %empty_60 = or i8 %empty_59, %empty_58
  ret i8 %empty_60
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %0 to i8
  %empty_61 = zext i7 %1 to i8
  %empty_62 = shl i8 %empty, 7
  %empty_63 = or i8 %empty_62, %empty_61
  ret i8 %empty_63
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2, i5) nounwind readnone {
entry:
  %empty = zext i2 %0 to i7
  %empty_64 = zext i5 %1 to i7
  %empty_65 = shl i7 %empty, 5
  %empty_66 = or i7 %empty_65, %empty_64
  ret i7 %empty_66
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2, i4) nounwind readnone {
entry:
  %empty = zext i2 %0 to i6
  %empty_67 = zext i4 %1 to i6
  %empty_68 = shl i6 %empty, 4
  %empty_69 = or i6 %empty_68, %empty_67
  ret i6 %empty_69
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_70 = zext i3 %1 to i5
  %empty_71 = shl i5 %empty, 3
  %empty_72 = or i5 %empty_71, %empty_70
  ret i5 %empty_72
}

declare i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone

define weak i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2, i1) nounwind readnone {
entry:
  %empty = zext i2 %0 to i3
  %empty_73 = zext i1 %1 to i3
  %empty_74 = shl i3 %empty, 1
  %empty_75 = or i3 %empty_74, %empty_73
  ret i3 %empty_75
}

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !14}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [4 x i8]* @R}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 7, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"R", metadata !12, metadata !"unsigned char", i32 0, i32 7}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 3, i32 1}
!14 = metadata !{metadata !15, i32* @K}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"K", metadata !5, metadata !"int", i32 0, i32 31}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 7, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"i_plaintext.V.data", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"i_plaintext.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"i_plaintext.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 7, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"cipher.V.data", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"cipher.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"cipher.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
