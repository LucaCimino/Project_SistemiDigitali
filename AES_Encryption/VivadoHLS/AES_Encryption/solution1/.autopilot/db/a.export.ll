; ModuleID = 'C:/Users/lucac/VivadoHLS/AES_Encryption/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@single_block_AES_encrypt_str = internal unnamed_addr constant [25 x i8] c"single_block_AES_encrypt\00"
@s_box = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@key = internal unnamed_addr constant [16 x i8] c"c\D3q\E3k\B2\12\85\E7g\D2\FF\11\15\E3\AB", align 16
@R = global [4 x i8] c"\02\00\00\00", align 1
@K = global i32 0, align 4
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define internal fastcc void @single_block_AES_encrypt_sub_bytes([16 x i8]* nocapture %state) {
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %.preheader ]
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_1 = add i3 %i, 1
  br i1 %exitcond1, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp = trunc i3 %i to i2
  %tmp_3 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp, i2 0)
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader.preheader
  %j = phi i3 [ %j_1, %1 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %j, -4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_1 = add i3 %j, 1
  br i1 %exitcond, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_5_cast = zext i3 %j to i4
  %tmp_6 = add i4 %tmp_3, %tmp_5_cast
  %tmp_7 = zext i4 %tmp_6 to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7
  %state_load = load i8* %state_addr, align 1
  %tmp_8 = zext i8 %state_load to i64
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8
  %s_box_load = load i8* %s_box_addr, align 1
  store i8 %s_box_load, i8* %state_addr, align 1
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define void @single_block_AES_encrypt(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %i_plaintext_V_data), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_user_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_last_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %cipher_V_data), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_user_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_last_V), !map !39
  call void (...)* @_ssdm_op_SpecTopModule([25 x i8]* @single_block_AES_encrypt_str) nounwind
  %plaintext = alloca [16 x i8], align 16
  %out = alloca [16 x i8], align 16
  %w = alloca [176 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_2, %2 ]
  %exitcond1 = icmp eq i5 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_2 = add i5 %i, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty_10 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data = extractvalue { i8, i1, i1 } %empty_10, 0
  %tmp = zext i5 %i to i64
  %plaintext_addr = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp
  store i8 %tmp_data, i8* %plaintext_addr, align 1
  br label %1

; <label>:3                                       ; preds = %1
  call fastcc void @single_block_AES_encrypt_aes_key_expansion([176 x i8]* %w)
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i5 [ 0, %3 ], [ %i_3, %5 ]
  %exitcond = icmp eq i5 %i_1, -16
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3 = add i5 %i_1, 1
  br i1 %exitcond, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_s = zext i5 %i_1 to i64
  %out_addr = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_s
  %tmp_data_1 = load i8* %out_addr, align 1
  %tmp_last_V = icmp eq i5 %i_1, 15
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1, i1 true, i1 %tmp_last_V)
  br label %4

; <label>:6                                       ; preds = %4
  ret void
}

define internal fastcc void @single_block_AES_encrypt_shift_rows([16 x i8]* nocapture %state) {
  br label %1

; <label>:1                                       ; preds = %6, %0
  %indvars_iv = phi i3 [ %i, %6 ], [ 1, %0 ]
  %indvars_iv_cast = zext i3 %indvars_iv to i4
  %exitcond2 = icmp eq i3 %indvars_iv, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond2, label %7, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  %tmp_1 = trunc i3 %indvars_iv to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_1, i2 0)
  %tmp_2 = zext i4 %tmp_s to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_2
  %tmp_3 = or i4 %tmp_s, 3
  %tmp_4 = zext i4 %tmp_3 to i64
  %state_addr_1 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_4
  br label %.preheader

.preheader:                                       ; preds = %5, %.preheader.preheader
  %s = phi i2 [ %s_1, %5 ], [ 0, %.preheader.preheader ]
  %s_cast = zext i2 %s to i4
  %exitcond1 = icmp eq i4 %s_cast, %indvars_iv_cast
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 0)
  %s_1 = add i2 %s, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp = load i8* %state_addr, align 1
  br label %3

; <label>:3                                       ; preds = %4, %2
  %k = phi i3 [ 1, %2 ], [ %k_1, %4 ]
  %exitcond = icmp eq i3 %k, -4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %tmp_8 = trunc i3 %k to i2
  %tmp_5_cast = zext i3 %k to i4
  %tmp_6 = add i4 %tmp_5_cast, %tmp_s
  %tmp_7 = zext i4 %tmp_6 to i64
  %state_addr_2 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7
  %state_load = load i8* %state_addr_2, align 1
  %tmp1 = add i2 -1, %tmp_8
  %tmp_9 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_1, i2 %tmp1)
  %tmp_5 = zext i4 %tmp_9 to i64
  %state_addr_3 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_5
  store i8 %state_load, i8* %state_addr_3, align 1
  %k_1 = add i3 1, %k
  br label %3

; <label>:5                                       ; preds = %3
  store i8 %tmp, i8* %state_addr_1, align 1
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  %i = add i3 %indvars_iv, 1
  br label %1

; <label>:7                                       ; preds = %1
  ret void
}

define internal fastcc void @single_block_AES_encrypt_mix_columns([16 x i8]* nocapture %state) {
  %col_0_s = alloca i8
  %col_1_s = alloca i8
  %col_2_s = alloca i8
  %col_3_s = alloca i8
  br label %.loopexit

.loopexit:                                        ; preds = %2, %0
  %j = phi i3 [ 0, %0 ], [ %j_2, %2 ]
  %exitcond2 = icmp eq i3 %j, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_2 = add i3 %j, 1
  br i1 %exitcond2, label %4, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_cast = zext i3 %j to i4
  br label %.preheader

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %i = phi i3 [ 0, %.preheader.preheader ], [ %i_4, %_ifconv ]
  %exitcond1 = icmp eq i3 %i, -4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_4 = add i3 %i, 1
  br i1 %exitcond1, label %1, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %col_0_load_1 = load i8* %col_0_s
  %col_1_load_1 = load i8* %col_1_s
  %col_2_load_1 = load i8* %col_2_s
  %col_3_load_1 = load i8* %col_3_s
  %tmp_10 = trunc i3 %i to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_10, i2 0)
  %tmp_6 = add i4 %tmp_cast, %tmp_s
  %tmp_7 = zext i4 %tmp_6 to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7
  %col_0 = load i8* %state_addr, align 1
  %sel_tmp = icmp eq i2 %tmp_10, -2
  %sel_tmp2 = icmp eq i2 %tmp_10, 1
  %sel_tmp4 = icmp eq i2 %tmp_10, 0
  %or_cond = or i1 %sel_tmp4, %sel_tmp2
  %newSel = select i1 %sel_tmp, i8 %col_3_load_1, i8 %col_0
  %col_3 = select i1 %or_cond, i8 %col_3_load_1, i8 %newSel
  %newSel2 = select i1 %sel_tmp, i8 %col_0, i8 %col_2_load_1
  %col_3_1 = select i1 %or_cond, i8 %col_2_load_1, i8 %newSel2
  %col_3_3 = select i1 %sel_tmp2, i8 %col_0, i8 %col_1_load_1
  %col_3_4 = select i1 %sel_tmp4, i8 %col_1_load_1, i8 %col_3_3
  %col_3_5 = select i1 %sel_tmp4, i8 %col_0, i8 %col_0_load_1
  store i8 %col_3, i8* %col_3_s
  store i8 %col_3_1, i8* %col_2_s
  store i8 %col_3_4, i8* %col_1_s
  store i8 %col_3_5, i8* %col_0_s
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  %col_0_load = load i8* %col_0_s
  %col_1_load = load i8* %col_1_s
  %col_2_load = load i8* %col_2_s
  %col_3_load = load i8* %col_3_s
  %tmp_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_0_load)
  %tmp_i_15 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_1_load)
  %tmp_20_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_2_load)
  %tmp_21_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_3_load)
  %tmp = xor i8 %tmp_i_15, %tmp_i
  %tmp2 = xor i8 %tmp_20_i, %tmp_21_i
  %res_0 = xor i8 %tmp2, %tmp
  %tmp_24_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_0_load)
  %tmp_25_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_1_load)
  %tmp_26_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_2_load)
  %tmp3 = xor i8 %tmp_25_i, %tmp_24_i
  %tmp4 = xor i8 %tmp_26_i, %tmp_21_i
  %res_1 = xor i8 %tmp4, %tmp3
  %tmp_29_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_1_load)
  %tmp_30_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_2_load)
  %tmp_31_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_3_load)
  %tmp5 = xor i8 %tmp_29_i, %tmp_24_i
  %tmp6 = xor i8 %tmp_30_i, %tmp_31_i
  %res_2 = xor i8 %tmp6, %tmp5
  %tmp_34_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_0_load)
  %tmp_35_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_3_load)
  %tmp7 = xor i8 %tmp_29_i, %tmp_34_i
  %tmp8 = xor i8 %tmp_20_i, %tmp_35_i
  %res_3 = xor i8 %tmp8, %tmp7
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i_1 = phi i3 [ 0, %1 ], [ %i_5, %3 ]
  %exitcond = icmp eq i3 %i_1, -4
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_5 = add i3 %i_1, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %2
  %tmp_11 = trunc i3 %i_1 to i2
  %tmp_9 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %res_0, i8 %res_1, i8 %res_2, i8 %res_3, i2 %tmp_11)
  %tmp_8 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_11, i2 0)
  %tmp_1 = add i4 %tmp_cast, %tmp_8
  %tmp_2 = zext i4 %tmp_1 to i64
  %state_addr_4 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_2
  store i8 %tmp_9, i8* %state_addr_4, align 1
  br label %2

; <label>:4                                       ; preds = %.loopexit
  ret void
}

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext %a, i8 %b) readnone {
  %b_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b)
  %a_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %a)
  %a_cast = zext i4 %a_read to i8
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_6, %2 ]
  %p = phi i8 [ 0, %0 ], [ %p_0_s, %2 ]
  %p_s = phi i8 [ %b_read, %0 ], [ %tmp_1, %2 ]
  %p_0 = phi i8 [ %a_cast, %0 ], [ %a_assign_2, %2 ]
  %exitcond = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_6 = add i4 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = trunc i8 %p_s to i1
  %tmp_s = select i1 %tmp, i8 %p_0, i8 0
  %p_0_s = xor i8 %tmp_s, %p
  %tmp_12 = shl i8 %p_0, 1
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0, i32 7)
  %a_assign_1 = xor i8 %tmp_12, 27
  %a_assign_2 = select i1 %tmp_13, i8 %a_assign_1, i8 %tmp_12
  %b_assign = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %p_s, i32 1, i32 7)
  %tmp_1 = zext i7 %b_assign to i8
  br label %1

; <label>:3                                       ; preds = %1
  ret i8 %p
}

define internal fastcc void @single_block_AES_encrypt_aes_key_expansion([176 x i8]* nocapture %w) {
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_7, %2 ]
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_7 = add i3 %i, 1
  br i1 %exitcond1, label %.preheader, label %2

; <label>:2                                       ; preds = %1
  %tmp_23 = trunc i3 %i to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_23, i2 0)
  %tmp_4 = zext i4 %tmp_s to i64
  %key_addr = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_4
  %key_load = load i8* %key_addr, align 4
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_4
  store i8 %key_load, i8* %w_addr, align 1
  %tmp_5 = or i4 %tmp_s, 1
  %tmp_6 = zext i4 %tmp_5 to i64
  %key_addr_1 = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_6
  %key_load_1 = load i8* %key_addr_1, align 1
  %w_addr_1 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_6
  store i8 %key_load_1, i8* %w_addr_1, align 1
  %tmp_7 = or i4 %tmp_s, 2
  %tmp_8 = zext i4 %tmp_7 to i64
  %key_addr_2 = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_8
  %key_load_2 = load i8* %key_addr_2, align 2
  %w_addr_2 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_8
  store i8 %key_load_2, i8* %w_addr_2, align 1
  %tmp_9 = or i4 %tmp_s, 3
  %tmp_2 = zext i4 %tmp_9 to i64
  %key_addr_3 = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_2
  %key_load_3 = load i8* %key_addr_3, align 1
  %w_addr_3 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_2
  store i8 %key_load_3, i8* %w_addr_3, align 1
  br label %1

.preheader:                                       ; preds = %1, %._crit_edge
  %i_1 = phi i6 [ %i_11, %._crit_edge ], [ 4, %1 ]
  %exitcond = icmp eq i6 %i_1, -20
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40)
  br i1 %exitcond, label %8, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_3 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %i_1, i2 0)
  %tmp_10 = add i8 -4, %tmp_3
  %tmp_11 = zext i8 %tmp_10 to i64
  %w_addr_4 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_11
  %tmp_52 = load i8* %w_addr_4, align 1
  %tmp_12 = add i8 -3, %tmp_3
  %tmp_13 = zext i8 %tmp_12 to i64
  %w_addr_5 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_13
  %tmp_1 = load i8* %w_addr_5, align 1
  %tmp_14 = add i8 -2, %tmp_3
  %tmp_15 = zext i8 %tmp_14 to i64
  %w_addr_6 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_15
  %tmp_2_18 = load i8* %w_addr_6, align 1
  %tmp_16 = add i8 -1, %tmp_3
  %tmp_17 = zext i8 %tmp_16 to i64
  %w_addr_7 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_17
  %tmp_3_1 = load i8* %w_addr_7, align 1
  %tmp_44 = trunc i6 %i_1 to i2
  %tmp_18 = icmp eq i2 %tmp_44, 0
  br i1 %tmp_18, label %.preheader50, label %._crit_edge

.preheader50:                                     ; preds = %3, %_ifconv.i
  %write_flag_i = phi i1 [ %write_flag_1_i, %_ifconv.i ], [ false, %3 ]
  %w_3_read_assign_2 = phi i8 [ %w_3_read_assign_3, %_ifconv.i ], [ undef, %3 ]
  %tmp_2_1 = phi i8 [ %w_3_read_assign_5, %_ifconv.i ], [ %tmp_2_18, %3 ]
  %tmp_1_1 = phi i8 [ %w_3_read_assign_7, %_ifconv.i ], [ %tmp_1, %3 ]
  %i_i2 = phi i2 [ %i_8, %_ifconv.i ], [ 0, %3 ]
  %exitcond_i2 = icmp eq i2 %i_i2, -1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %i_8 = add i2 %i_i2, 1
  br i1 %exitcond_i2, label %rot_word.exit, label %_ifconv.i

_ifconv.i:                                        ; preds = %.preheader50
  %sel_tmp_i = icmp eq i2 %i_i2, 1
  %w_3_read_assign = select i1 %sel_tmp_i, i8 %tmp_2_1, i8 %tmp_3_1
  %sel_tmp2_i = icmp eq i2 %i_i2, 0
  %w_3_read_assign_1 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign
  %write_flag_1_i = or i1 %sel_tmp2_i, %write_flag_i
  %w_3_read_assign_3 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign_2
  %w_3_read_assign_4 = select i1 %sel_tmp_i, i8 %tmp_2_1, i8 %w_3_read_assign_1
  %w_3_read_assign_5 = select i1 %sel_tmp2_i, i8 %tmp_2_1, i8 %w_3_read_assign_4
  %w_3_read_assign_6 = select i1 %sel_tmp_i, i8 %w_3_read_assign_1, i8 %tmp_1_1
  %w_3_read_assign_7 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign_6
  br label %.preheader50

rot_word.exit:                                    ; preds = %.preheader50
  %tmp_0_1 = select i1 %write_flag_i, i8 %w_3_read_assign_2, i8 %tmp_52
  br label %4

; <label>:4                                       ; preds = %_ifconv, %rot_word.exit
  %a_3_read_assign = phi i8 [ %tmp_52, %rot_word.exit ], [ %tmp_3_21, %_ifconv ]
  %a_2_read_assign = phi i8 [ %tmp_2_1, %rot_word.exit ], [ %tmp_3_4, %_ifconv ]
  %tmp_3_3 = phi i8 [ %tmp_1_1, %rot_word.exit ], [ %tmp_3_7, %_ifconv ]
  %tmp_3_6 = phi i8 [ %tmp_0_1, %rot_word.exit ], [ %tmp_3_8, %_ifconv ]
  %i_i = phi i3 [ 0, %rot_word.exit ], [ %i_9, %_ifconv ]
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_9 = add i3 %i_i, 1
  br i1 %exitcond_i, label %sub_word.exit, label %_ifconv

_ifconv:                                          ; preds = %4
  %tmp_45 = trunc i3 %i_i to i2
  %tmp = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %tmp_3_6, i8 %tmp_3_3, i8 %a_2_read_assign, i8 %a_3_read_assign, i2 %tmp_45)
  %tmp_1_i = zext i8 %tmp to i64
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_1_i
  %tmp_3_11 = load i8* %s_box_addr, align 1
  %sel_tmp = icmp eq i2 %tmp_45, -2
  %sel_tmp8 = icmp eq i2 %tmp_45, 1
  %sel_tmp2 = icmp eq i2 %tmp_45, 0
  %or_cond = or i1 %sel_tmp2, %sel_tmp8
  %newSel = select i1 %sel_tmp, i8 %a_3_read_assign, i8 %tmp_3_11
  %tmp_3_21 = select i1 %or_cond, i8 %a_3_read_assign, i8 %newSel
  %newSel5 = select i1 %sel_tmp, i8 %tmp_3_11, i8 %a_2_read_assign
  %tmp_3_4 = select i1 %or_cond, i8 %a_2_read_assign, i8 %newSel5
  %tmp_3_5 = select i1 %sel_tmp8, i8 %tmp_3_11, i8 %tmp_3_3
  %tmp_3_7 = select i1 %sel_tmp2, i8 %tmp_3_3, i8 %tmp_3_5
  %tmp_3_8 = select i1 %sel_tmp2, i8 %tmp_3_11, i8 %tmp_3_6
  br label %4

sub_word.exit:                                    ; preds = %4
  %i_assign = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5)
  %i_assign_cast1 = zext i4 %i_assign to i8
  %tmp_19 = icmp eq i4 %i_assign, 1
  br i1 %tmp_19, label %5, label %6

; <label>:5                                       ; preds = %sub_word.exit
  store i8 1, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  br label %Rcon.exit

; <label>:6                                       ; preds = %sub_word.exit
  %tmp_46 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %i_1, i32 3, i32 5)
  %icmp = icmp eq i3 %tmp_46, 0
  br i1 %icmp, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader72, %6
  %a_assign = phi i8 [ 2, %6 ], [ %p_i, %.preheader72 ]
  %p_0_in_i = phi i8 [ %i_assign_cast1, %6 ], [ %i_assign_1, %.preheader72 ]
  %i_assign_1 = add i8 %p_0_in_i, -1
  %tmp_47 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %i_assign_1, i32 1, i32 7)
  %icmp1 = icmp eq i7 %tmp_47, 0
  br i1 %icmp1, label %.loopexit.i.loopexit, label %.preheader72

.preheader72:                                     ; preds = %.preheader.i, %7
  %i_i1 = phi i4 [ %i_10, %7 ], [ 0, %.preheader.i ]
  %p_i = phi i8 [ %p_0_i_24, %7 ], [ 0, %.preheader.i ]
  %p_i_22 = phi i5 [ %b_assign, %7 ], [ 2, %.preheader.i ]
  %p_0_i = phi i8 [ %a_assign_5, %7 ], [ %a_assign, %.preheader.i ]
  %exitcond_i1 = icmp eq i4 %i_i1, -8
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_10 = add i4 %i_i1, 1
  br i1 %exitcond_i1, label %.preheader.i, label %7

; <label>:7                                       ; preds = %.preheader72
  %tmp_48 = trunc i5 %p_i_22 to i1
  %tmp_18_i = select i1 %tmp_48, i8 %p_0_i, i8 0
  %p_0_i_24 = xor i8 %tmp_18_i, %p_i
  %tmp_49 = shl i8 %p_0_i, 1
  %tmp_50 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0_i, i32 7)
  %a_assign_4 = xor i8 %tmp_49, 27
  %a_assign_5 = select i1 %tmp_50, i8 %a_assign_4, i8 %tmp_49
  %tmp_51 = call i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5 %p_i_22, i32 1, i32 4)
  %b_assign = zext i4 %tmp_51 to i5
  br label %.preheader72

.loopexit.i.loopexit:                             ; preds = %.preheader.i
  store i8 %a_assign, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %6, %.loopexit.i.loopexit
  br label %Rcon.exit

Rcon.exit:                                        ; preds = %.loopexit.i, %5
  %R_load = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  %tmp_0 = xor i8 %R_load, %tmp_3_6
  %R_load_1 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 1), align 1
  %tmp_1_3 = xor i8 %R_load_1, %tmp_3_3
  %R_load_2 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 2), align 1
  %tmp_2_3 = xor i8 %R_load_2, %a_2_read_assign
  %R_load_3 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 3), align 1
  %tmp_3_9 = xor i8 %R_load_3, %a_3_read_assign
  br label %._crit_edge

._crit_edge:                                      ; preds = %Rcon.exit, %3
  %tmp_3_s = phi i8 [ %tmp_3_9, %Rcon.exit ], [ %tmp_3_1, %3 ]
  %tmp_2_3_2 = phi i8 [ %tmp_2_3, %Rcon.exit ], [ %tmp_2_18, %3 ]
  %tmp_1_s = phi i8 [ %tmp_1_3, %Rcon.exit ], [ %tmp_1, %3 ]
  %tmp_0_s = phi i8 [ %tmp_0, %Rcon.exit ], [ %tmp_52, %3 ]
  %tmp_20 = add i8 %tmp_3, -16
  %tmp_21 = zext i8 %tmp_20 to i64
  %w_addr_8 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_21
  %w_load = load i8* %w_addr_8, align 1
  %tmp_22 = xor i8 %w_load, %tmp_0_s
  %tmp_24 = zext i8 %tmp_3 to i64
  %w_addr_9 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_24
  store i8 %tmp_22, i8* %w_addr_9, align 1
  %tmp_25 = add i8 %tmp_3, -15
  %tmp_26 = zext i8 %tmp_25 to i64
  %w_addr_10 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_26
  %w_load_1 = load i8* %w_addr_10, align 1
  %tmp_27 = xor i8 %w_load_1, %tmp_1_s
  %tmp_28 = or i8 %tmp_3, 1
  %tmp_29 = zext i8 %tmp_28 to i64
  %w_addr_11 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_29
  store i8 %tmp_27, i8* %w_addr_11, align 1
  %tmp_30 = add i8 %tmp_3, -14
  %tmp_31 = zext i8 %tmp_30 to i64
  %w_addr_12 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_31
  %w_load_2 = load i8* %w_addr_12, align 1
  %tmp_32 = xor i8 %w_load_2, %tmp_2_3_2
  %tmp_33 = or i8 %tmp_3, 2
  %tmp_34 = zext i8 %tmp_33 to i64
  %w_addr_13 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_34
  store i8 %tmp_32, i8* %w_addr_13, align 1
  %tmp_35 = add i8 %tmp_3, -13
  %tmp_36 = zext i8 %tmp_35 to i64
  %w_addr_14 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_36
  %w_load_3 = load i8* %w_addr_14, align 1
  %tmp_37 = xor i8 %w_load_3, %tmp_3_s
  %tmp_38 = or i8 %tmp_3, 3
  %tmp_39 = zext i8 %tmp_38 to i64
  %w_addr_15 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_39
  store i8 %tmp_37, i8* %w_addr_15, align 1
  %i_11 = add i6 %i_1, 1
  br label %.preheader

; <label>:8                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* nocapture %in_r, [16 x i8]* nocapture %out_r, [176 x i8]* nocapture %w) {
  %state = alloca [16 x i8], align 16
  br label %.loopexit1

.loopexit1:                                       ; preds = %.preheader5, %0
  %i = phi i3 [ 0, %0 ], [ %i_12, %.preheader5 ]
  %exitcond4 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_12 = add i3 %i, 1
  br i1 %exitcond4, label %2, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %.loopexit1
  %tmp_cast = zext i3 %i to i4
  %tmp = trunc i3 %i to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp, i2 0)
  br label %.preheader5

.preheader5:                                      ; preds = %1, %.preheader5.preheader
  %j = phi i3 [ %j_3, %1 ], [ 0, %.preheader5.preheader ]
  %exitcond3 = icmp eq i3 %j, -4
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_3 = add i3 %j, 1
  br i1 %exitcond3, label %.loopexit1, label %1

; <label>:1                                       ; preds = %.preheader5
  %tmp_63_cast = zext i3 %j to i4
  %tmp_55 = trunc i3 %j to i2
  %tmp_40 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_55, i2 0)
  %tmp_41 = add i4 %tmp_cast, %tmp_40
  %tmp_42 = zext i4 %tmp_41 to i64
  %in_addr = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_42
  %in_load = load i8* %in_addr, align 1
  %tmp_43 = add i4 %tmp_63_cast, %tmp_s
  %tmp_44 = zext i4 %tmp_43 to i64
  %state_addr = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_44
  store i8 %in_load, i8* %state_addr, align 1
  br label %.preheader5

; <label>:2                                       ; preds = %.loopexit1
  call fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext 0)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %r = phi i4 [ 1, %2 ], [ %r_1, %4 ]
  %exitcond2 = icmp eq i4 %r, -6
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  br i1 %exitcond2, label %5, label %4

; <label>:4                                       ; preds = %3
  call fastcc void @single_block_AES_encrypt_sub_bytes([16 x i8]* %state)
  call fastcc void @single_block_AES_encrypt_shift_rows([16 x i8]* %state)
  call fastcc void @single_block_AES_encrypt_mix_columns([16 x i8]* %state)
  %r_cast3_cast = zext i4 %r to i6
  call fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext %r_cast3_cast)
  %r_1 = add i4 %r, 1
  br label %3

; <label>:5                                       ; preds = %3
  call fastcc void @single_block_AES_encrypt_sub_bytes([16 x i8]* %state)
  call fastcc void @single_block_AES_encrypt_shift_rows([16 x i8]* %state)
  call fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext 10)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %5
  %i_1 = phi i3 [ 0, %5 ], [ %i_13, %.preheader ]
  %exitcond1 = icmp eq i3 %i_1, -4
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_13 = add i3 %i_1, 1
  br i1 %exitcond1, label %7, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_69_cast = zext i3 %i_1 to i4
  %tmp_56 = trunc i3 %i_1 to i2
  %tmp_45 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_56, i2 0)
  br label %.preheader

.preheader:                                       ; preds = %6, %.preheader.preheader
  %j_1 = phi i3 [ %j_4, %6 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %j_1, -4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_4 = add i3 %j_1, 1
  br i1 %exitcond, label %.loopexit, label %6

; <label>:6                                       ; preds = %.preheader
  %tmp_71_cast = zext i3 %j_1 to i4
  %tmp_46 = add i4 %tmp_71_cast, %tmp_45
  %tmp_47 = zext i4 %tmp_46 to i64
  %state_addr_5 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_47
  %state_load = load i8* %state_addr_5, align 1
  %tmp_57 = trunc i3 %j_1 to i2
  %tmp_48 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_57, i2 0)
  %tmp_49 = add i4 %tmp_69_cast, %tmp_48
  %tmp_50 = zext i4 %tmp_49 to i64
  %out_addr = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_50
  store i8 %state_load, i8* %out_addr, align 1
  br label %.preheader

; <label>:7                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* nocapture %state, [176 x i8]* nocapture %w, i6 %r) {
  %r_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %r)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %c = phi i3 [ 0, %0 ], [ %c_1, %2 ]
  %exitcond = icmp eq i3 %c, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %c_1 = add i3 %c, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_s = zext i3 %c to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_s
  %state_load = load i8* %state_addr, align 1
  %tmp = trunc i3 %c to i2
  %tmp_72 = trunc i6 %r_read to i4
  %tmp_51 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4 %tmp_72, i2 %tmp, i2 0)
  %tmp_52 = zext i8 %tmp_51 to i64
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_52
  %w_load = load i8* %w_addr, align 1
  %tmp_53 = xor i8 %w_load, %state_load
  store i8 %tmp_53, i8* %state_addr, align 1
  %tmp_54 = xor i3 %c, -4
  %tmp_55 = zext i3 %tmp_54 to i64
  %state_addr_6 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_55
  %state_load_1 = load i8* %state_addr_6, align 1
  %tmp_56 = or i8 %tmp_51, 1
  %tmp_57 = zext i8 %tmp_56 to i64
  %w_addr_16 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_57
  %w_load_4 = load i8* %w_addr_16, align 1
  %tmp_58 = xor i8 %w_load_4, %state_load_1
  store i8 %tmp_58, i8* %state_addr_6, align 1
  %tmp_59 = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %c)
  %tmp_60 = zext i4 %tmp_59 to i64
  %state_addr_7 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_60
  %state_load_2 = load i8* %state_addr_7, align 1
  %tmp_61 = or i8 %tmp_51, 2
  %tmp_62 = zext i8 %tmp_61 to i64
  %w_addr_17 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_62
  %w_load_5 = load i8* %w_addr_17, align 1
  %tmp_63 = xor i8 %w_load_5, %state_load_2
  store i8 %tmp_63, i8* %state_addr_7, align 1
  %tmp_93_cast3 = sext i3 %tmp_54 to i4
  %tmp_64 = zext i4 %tmp_93_cast3 to i64
  %state_addr_8 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_64
  %state_load_3 = load i8* %state_addr_8, align 1
  %tmp_65 = or i8 %tmp_51, 3
  %tmp_66 = zext i8 %tmp_65 to i64
  %w_addr_18 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_66
  %w_load_6 = load i8* %w_addr_18, align 1
  %tmp_67 = xor i8 %w_load_6, %state_load_3
  store i8 %tmp_67, i8* %state_addr_8, align 1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
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
  %empty_29 = load i1* %1
  %empty_30 = load i1* %2
  %mrv_0 = insertvalue { i8, i1, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1 } %mrv_0, i1 %empty_29, 1
  %mrv2 = insertvalue { i8, i1, i1 } %mrv1, i1 %empty_30, 2
  ret { i8, i1, i1 } %mrv2
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_31 = trunc i8 %empty to i7
  ret i7 %empty_31
}

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_32 = trunc i6 %empty to i4
  ret i4 %empty_32
}

define weak i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2)
  %empty_33 = trunc i5 %empty to i4
  ret i4 %empty_33
}

define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_34 = trunc i6 %empty to i3
  ret i3 %empty_34
}

declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i5.i32.i32(i5, i32, i32) nounwind readnone

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
  %empty_35 = shl i8 1, %empty
  %empty_36 = and i8 %0, %empty_35
  %empty_37 = icmp ne i8 %empty_36, 0
  ret i1 %empty_37
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_38 = zext i2 %1 to i8
  %empty_39 = shl i8 %empty, 2
  %empty_40 = or i8 %empty_39, %empty_38
  ret i8 %empty_40
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4, i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %1 to i4
  %empty_41 = zext i2 %2 to i4
  %empty_42 = shl i4 %empty, 2
  %empty_43 = or i4 %empty_42, %empty_41
  %empty_44 = zext i4 %0 to i8
  %empty_45 = zext i4 %empty_43 to i8
  %empty_46 = shl i8 %empty_44, 4
  %empty_47 = or i8 %empty_46, %empty_45
  ret i8 %empty_47
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_48 = zext i2 %1 to i4
  %empty_49 = shl i4 %empty, 2
  %empty_50 = or i4 %empty_49, %empty_48
  ret i4 %empty_50
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4
  %empty_51 = zext i3 %1 to i4
  %empty_52 = shl i4 %empty, 3
  %empty_53 = or i4 %empty_52, %empty_51
  ret i4 %empty_53
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
