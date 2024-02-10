; ModuleID = 'C:/Users/lucac/VivadoHLS/AES_Encryption/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@s_box = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@R = global [4 x i8] c"\02\00\00\00", align 1
@K = global i32 0, align 4
@AES_encryption_str = internal unnamed_addr constant [15 x i8] c"AES_encryption\00"
@p_str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define internal fastcc void @AES_encryption_sub_bytes([16 x i8]* nocapture %state) {
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

define internal fastcc void @AES_encryption_shift_rows([16 x i8]* nocapture %state) {
  br label %1

; <label>:1                                       ; preds = %6, %0
  %indvars_iv = phi i3 [ %i, %6 ], [ 1, %0 ]
  %indvars_iv_cast = zext i3 %indvars_iv to i4
  %exitcond2 = icmp eq i3 %indvars_iv, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond2, label %7, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  %tmp_4 = trunc i3 %indvars_iv to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_4, i2 0)
  %tmp_1 = zext i4 %tmp_s to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_1
  %tmp_2 = or i4 %tmp_s, 3
  %tmp_3 = zext i4 %tmp_2 to i64
  %state_addr_1 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_3
  br label %.preheader

.preheader:                                       ; preds = %5, %.preheader.preheader
  %s = phi i2 [ %s_1, %5 ], [ 0, %.preheader.preheader ]
  %s_cast = zext i2 %s to i4
  %exitcond1 = icmp eq i4 %s_cast, %indvars_iv_cast
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 0)
  %s_1 = add i2 %s, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp = load i8* %state_addr, align 1
  br label %3

; <label>:3                                       ; preds = %4, %2
  %k = phi i3 [ 1, %2 ], [ %k_1, %4 ]
  %exitcond = icmp eq i3 %k, -4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %tmp_8 = trunc i3 %k to i2
  %tmp_5_cast = zext i3 %k to i4
  %tmp_6 = add i4 %tmp_5_cast, %tmp_s
  %tmp_7 = zext i4 %tmp_6 to i64
  %state_addr_2 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7
  %state_load = load i8* %state_addr_2, align 1
  %tmp1 = add i2 -1, %tmp_8
  %tmp_9 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_4, i2 %tmp1)
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

define internal fastcc void @AES_encryption_mix_columns([16 x i8]* nocapture %state) {
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
  %i = phi i3 [ 0, %.preheader.preheader ], [ %i_2, %_ifconv ]
  %exitcond1 = icmp eq i3 %i, -4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_2 = add i3 %i, 1
  br i1 %exitcond1, label %1, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %col_0_load_1 = load i8* %col_0_s
  %col_1_load_1 = load i8* %col_1_s
  %col_2_load_1 = load i8* %col_2_s
  %col_3_load_1 = load i8* %col_3_s
  %tmp_12 = trunc i3 %i to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_12, i2 0)
  %tmp_6 = add i4 %tmp_cast, %tmp_s
  %tmp_7 = zext i4 %tmp_6 to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7
  %col_0 = load i8* %state_addr, align 1
  %sel_tmp = icmp eq i2 %tmp_12, -2
  %sel_tmp2 = icmp eq i2 %tmp_12, 1
  %sel_tmp4 = icmp eq i2 %tmp_12, 0
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
  %tmp_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 2, i8 zeroext %col_0_load)
  %tmp_i_13 = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 3, i8 zeroext %col_1_load)
  %tmp_20_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 1, i8 zeroext %col_2_load)
  %tmp_21_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 1, i8 zeroext %col_3_load)
  %tmp = xor i8 %tmp_i_13, %tmp_i
  %tmp5 = xor i8 %tmp_20_i, %tmp_21_i
  %res_0 = xor i8 %tmp5, %tmp
  %tmp_24_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 1, i8 zeroext %col_0_load)
  %tmp_25_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 2, i8 zeroext %col_1_load)
  %tmp_26_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 3, i8 zeroext %col_2_load)
  %tmp6 = xor i8 %tmp_25_i, %tmp_24_i
  %tmp7 = xor i8 %tmp_26_i, %tmp_21_i
  %res_1 = xor i8 %tmp7, %tmp6
  %tmp_29_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 1, i8 zeroext %col_1_load)
  %tmp_30_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 2, i8 zeroext %col_2_load)
  %tmp_31_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 3, i8 zeroext %col_3_load)
  %tmp8 = xor i8 %tmp_29_i, %tmp_24_i
  %tmp9 = xor i8 %tmp_30_i, %tmp_31_i
  %res_2 = xor i8 %tmp9, %tmp8
  %tmp_34_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 3, i8 zeroext %col_0_load)
  %tmp_35_i = call fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext 2, i8 zeroext %col_3_load)
  %tmp10 = xor i8 %tmp_29_i, %tmp_34_i
  %tmp11 = xor i8 %tmp_20_i, %tmp_35_i
  %res_3 = xor i8 %tmp11, %tmp10
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i_1 = phi i3 [ 0, %1 ], [ %i_3, %3 ]
  %exitcond = icmp eq i3 %i_1, -4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_3 = add i3 %i_1, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %2
  %tmp_13 = trunc i3 %i_1 to i2
  %tmp_1 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %res_0, i8 %res_1, i8 %res_2, i8 %res_3, i2 %tmp_13)
  %tmp_8 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_13, i2 0)
  %tmp_9 = add i4 %tmp_cast, %tmp_8
  %tmp_2 = zext i4 %tmp_9 to i64
  %state_addr_4 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_2
  store i8 %tmp_1, i8* %state_addr_4, align 1
  br label %2

; <label>:4                                       ; preds = %.loopexit
  ret void
}

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc zeroext i8 @AES_encryption_gmult(i4 zeroext %a, i8 %b) readnone {
  %b_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b)
  %a_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %a)
  %a_cast = zext i4 %a_read to i8
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %p = phi i8 [ 0, %0 ], [ %p_0_s, %2 ]
  %p_s = phi i8 [ %b_read, %0 ], [ %tmp_1, %2 ]
  %p_0 = phi i8 [ %a_cast, %0 ], [ %a_assign_2, %2 ]
  %exitcond = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_4 = add i4 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = trunc i8 %p_s to i1
  %tmp_s = select i1 %tmp, i8 %p_0, i8 0
  %p_0_s = xor i8 %tmp_s, %p
  %tmp_14 = shl i8 %p_0, 1
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0, i32 7)
  %a_assign_1 = xor i8 %tmp_14, 27
  %a_assign_2 = select i1 %tmp_16, i8 %a_assign_1, i8 %tmp_14
  %b_assign = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %p_s, i32 1, i32 7)
  %tmp_1 = zext i7 %b_assign to i8
  br label %1

; <label>:3                                       ; preds = %1
  ret i8 %p
}

define internal fastcc void @AES_encryption_aes_key_expansion([176 x i8]* %w) {
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
  %tmp_4 = add i8 -4, %tmp_s
  %tmp_5 = zext i8 %tmp_4 to i64
  %w_addr_16 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_5
  %tmp_44 = load i8* %w_addr_16, align 1
  %tmp_6 = add i8 -3, %tmp_s
  %tmp_7 = zext i8 %tmp_6 to i64
  %w_addr_17 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_7
  %tmp_1 = load i8* %w_addr_17, align 1
  %tmp_8 = add i8 -2, %tmp_s
  %tmp_9 = zext i8 %tmp_8 to i64
  %w_addr_18 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_9
  %tmp_2 = load i8* %w_addr_18, align 1
  %tmp_2_15 = add i8 -1, %tmp_s
  %tmp_3 = zext i8 %tmp_2_15 to i64
  %w_addr_19 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_3
  %tmp_3_1 = load i8* %w_addr_19, align 1
  %tmp_36 = trunc i6 %i_1 to i2
  %tmp_10 = icmp eq i2 %tmp_36, 0
  br i1 %tmp_10, label %.preheader49, label %._crit_edge

.preheader49:                                     ; preds = %0, %_ifconv.i
  %write_flag_i = phi i1 [ %write_flag_1_i, %_ifconv.i ], [ false, %0 ]
  %w_3_read_assign_2 = phi i8 [ %w_3_read_assign_3, %_ifconv.i ], [ undef, %0 ]
  %tmp_2_1 = phi i8 [ %w_3_read_assign_5, %_ifconv.i ], [ %tmp_2, %0 ]
  %tmp_1_1 = phi i8 [ %w_3_read_assign_7, %_ifconv.i ], [ %tmp_1, %0 ]
  %i_i2 = phi i2 [ %i_5, %_ifconv.i ], [ 0, %0 ]
  %exitcond_i2 = icmp eq i2 %i_i2, -1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %i_5 = add i2 %i_i2, 1
  br i1 %exitcond_i2, label %rot_word.exit, label %_ifconv.i

_ifconv.i:                                        ; preds = %.preheader49
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
  br label %.preheader49

rot_word.exit:                                    ; preds = %.preheader49
  %tmp_0_1 = select i1 %write_flag_i, i8 %w_3_read_assign_2, i8 %tmp_44
  br label %1

; <label>:1                                       ; preds = %_ifconv, %rot_word.exit
  %a_3_read_assign = phi i8 [ %tmp_44, %rot_word.exit ], [ %tmp_3_18, %_ifconv ]
  %a_2_read_assign = phi i8 [ %tmp_2_1, %rot_word.exit ], [ %tmp_3_4, %_ifconv ]
  %tmp_3_3 = phi i8 [ %tmp_1_1, %rot_word.exit ], [ %tmp_3_7, %_ifconv ]
  %tmp_3_6 = phi i8 [ %tmp_0_1, %rot_word.exit ], [ %tmp_3_8, %_ifconv ]
  %i_i = phi i3 [ 0, %rot_word.exit ], [ %i_6, %_ifconv ]
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_6 = add i3 %i_i, 1
  br i1 %exitcond_i, label %sub_word.exit, label %_ifconv

_ifconv:                                          ; preds = %1
  %tmp_37 = trunc i3 %i_i to i2
  %tmp = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %tmp_3_6, i8 %tmp_3_3, i8 %a_2_read_assign, i8 %a_3_read_assign, i2 %tmp_37)
  %tmp_1_i = zext i8 %tmp to i64
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_1_i
  %tmp_3_11 = load i8* %s_box_addr, align 1
  %sel_tmp = icmp eq i2 %tmp_37, -2
  %sel_tmp8 = icmp eq i2 %tmp_37, 1
  %sel_tmp2 = icmp eq i2 %tmp_37, 0
  %or_cond = or i1 %sel_tmp2, %sel_tmp8
  %newSel = select i1 %sel_tmp, i8 %a_3_read_assign, i8 %tmp_3_11
  %tmp_3_18 = select i1 %or_cond, i8 %a_3_read_assign, i8 %newSel
  %newSel5 = select i1 %sel_tmp, i8 %tmp_3_11, i8 %a_2_read_assign
  %tmp_3_4 = select i1 %or_cond, i8 %a_2_read_assign, i8 %newSel5
  %tmp_3_5 = select i1 %sel_tmp8, i8 %tmp_3_11, i8 %tmp_3_3
  %tmp_3_7 = select i1 %sel_tmp2, i8 %tmp_3_3, i8 %tmp_3_5
  %tmp_3_8 = select i1 %sel_tmp2, i8 %tmp_3_11, i8 %tmp_3_6
  br label %1

sub_word.exit:                                    ; preds = %1
  %i_assign = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5)
  %i_assign_cast1 = zext i4 %i_assign to i8
  %tmp_11 = icmp eq i4 %i_assign, 1
  br i1 %tmp_11, label %2, label %3

; <label>:2                                       ; preds = %sub_word.exit
  store i8 1, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  br label %Rcon.exit

; <label>:3                                       ; preds = %sub_word.exit
  %tmp_38 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %i_1, i32 3, i32 5)
  %icmp = icmp eq i3 %tmp_38, 0
  br i1 %icmp, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader76, %3
  %a_assign = phi i8 [ 2, %3 ], [ %p_i, %.preheader76 ]
  %p_0_in_i = phi i8 [ %i_assign_cast1, %3 ], [ %i_assign_1, %.preheader76 ]
  %i_assign_1 = add i8 %p_0_in_i, -1
  %tmp_39 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %i_assign_1, i32 1, i32 7)
  %icmp1 = icmp eq i7 %tmp_39, 0
  br i1 %icmp1, label %.loopexit.i.loopexit, label %.preheader76

.preheader76:                                     ; preds = %.preheader.i, %4
  %i_i1 = phi i4 [ %i_7, %4 ], [ 0, %.preheader.i ]
  %p_i = phi i8 [ %p_0_i_21, %4 ], [ 0, %.preheader.i ]
  %p_i_19 = phi i5 [ %b_assign, %4 ], [ 2, %.preheader.i ]
  %p_0_i = phi i8 [ %a_assign_5, %4 ], [ %a_assign, %.preheader.i ]
  %exitcond_i1 = icmp eq i4 %i_i1, -8
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_7 = add i4 %i_i1, 1
  br i1 %exitcond_i1, label %.preheader.i, label %4

; <label>:4                                       ; preds = %.preheader76
  %tmp_40 = trunc i5 %p_i_19 to i1
  %tmp_18_i = select i1 %tmp_40, i8 %p_0_i, i8 0
  %p_0_i_21 = xor i8 %tmp_18_i, %p_i
  %tmp_41 = shl i8 %p_0_i, 1
  %tmp_42 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0_i, i32 7)
  %a_assign_4 = xor i8 %tmp_41, 27
  %a_assign_5 = select i1 %tmp_42, i8 %a_assign_4, i8 %tmp_41
  %tmp_43 = call i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5 %p_i_19, i32 1, i32 4)
  %b_assign = zext i4 %tmp_43 to i5
  br label %.preheader76

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
  %tmp_0_s = phi i8 [ %tmp_0, %Rcon.exit ], [ %tmp_44, %0 ]
  %tmp_12 = add i8 %tmp_s, -16
  %tmp_13 = zext i8 %tmp_12 to i64
  %w_addr_20 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_13
  %w_load = load i8* %w_addr_20, align 1
  %tmp_14 = xor i8 %w_load, %tmp_0_s
  %tmp_15 = zext i8 %tmp_s to i64
  %w_addr_21 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_15
  store i8 %tmp_14, i8* %w_addr_21, align 1
  %tmp_16 = add i8 %tmp_s, -15
  %tmp_17 = zext i8 %tmp_16 to i64
  %w_addr_22 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_17
  %w_load_1 = load i8* %w_addr_22, align 1
  %tmp_18 = xor i8 %w_load_1, %tmp_1_s
  %tmp_19 = or i8 %tmp_s, 1
  %tmp_20 = zext i8 %tmp_19 to i64
  %w_addr_23 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_20
  store i8 %tmp_18, i8* %w_addr_23, align 1
  %tmp_21 = add i8 %tmp_s, -14
  %tmp_22 = zext i8 %tmp_21 to i64
  %w_addr_24 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_22
  %w_load_2 = load i8* %w_addr_24, align 1
  %tmp_23 = xor i8 %w_load_2, %tmp_2_3_2
  %tmp_24 = or i8 %tmp_s, 2
  %tmp_25 = zext i8 %tmp_24 to i64
  %w_addr_25 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_25
  store i8 %tmp_23, i8* %w_addr_25, align 1
  %tmp_26 = add i8 %tmp_s, -13
  %tmp_27 = zext i8 %tmp_26 to i64
  %w_addr_26 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_27
  %w_load_3 = load i8* %w_addr_26, align 1
  %tmp_28 = xor i8 %w_load_3, %tmp_3_s
  %tmp_29 = or i8 %tmp_s, 3
  %tmp_30 = zext i8 %tmp_29 to i64
  %w_addr_27 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_30
  store i8 %tmp_28, i8* %w_addr_27, align 1
  %i = add i6 %i_1, 1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @AES_encryption_aes_cipher([16 x i8]* nocapture %in_r, [16 x i8]* nocapture %out_r, [176 x i8]* nocapture %w) {
  %state = alloca [16 x i8], align 16
  br label %1

; <label>:1                                       ; preds = %.preheader5.preheader, %0
  %i = phi i3 [ 0, %0 ], [ %i_7, %.preheader5.preheader ]
  %exitcond4 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_7 = add i3 %i, 1
  br i1 %exitcond4, label %2, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %1
  %tmp = trunc i3 %i to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp, i2 0)
  %tmp_31 = zext i3 %i to i64
  %in_addr = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_31
  %in_load = load i8* %in_addr, align 1
  %tmp_32 = zext i4 %tmp_s to i64
  %state_addr = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_32
  store i8 %in_load, i8* %state_addr, align 4
  %tmp_98_1 = xor i3 %i, -4
  %tmp_99_1 = zext i3 %tmp_98_1 to i64
  %in_addr_1 = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_99_1
  %in_load_1 = load i8* %in_addr_1, align 1
  %tmp_100_s = or i4 %tmp_s, 1
  %tmp_101_1 = zext i4 %tmp_100_s to i64
  %state_addr_5 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_101_1
  store i8 %in_load_1, i8* %state_addr_5, align 1
  %tmp_98_s = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i)
  %tmp_99_2 = zext i4 %tmp_98_s to i64
  %in_addr_2 = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_99_2
  %in_load_2 = load i8* %in_addr_2, align 1
  %tmp_100_1 = or i4 %tmp_s, 2
  %tmp_101_2 = zext i4 %tmp_100_1 to i64
  %state_addr_6 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_101_2
  store i8 %in_load_2, i8* %state_addr_6, align 2
  %tmp_98_3_cast7 = sext i3 %tmp_98_1 to i4
  %tmp_99_3 = zext i4 %tmp_98_3_cast7 to i64
  %in_addr_3 = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_99_3
  %in_load_3 = load i8* %in_addr_3, align 1
  %tmp_100_2 = or i4 %tmp_s, 3
  %tmp_101_3 = zext i4 %tmp_100_2 to i64
  %state_addr_7 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_101_3
  store i8 %in_load_3, i8* %state_addr_7, align 1
  br label %1

; <label>:2                                       ; preds = %1
  call fastcc void @AES_encryption_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext 0)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %r = phi i4 [ 1, %2 ], [ %r_1, %4 ]
  %exitcond2 = icmp eq i4 %r, -6
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  br i1 %exitcond2, label %5, label %4

; <label>:4                                       ; preds = %3
  call fastcc void @AES_encryption_sub_bytes([16 x i8]* %state)
  call fastcc void @AES_encryption_shift_rows([16 x i8]* %state)
  call fastcc void @AES_encryption_mix_columns([16 x i8]* %state)
  %r_cast3_cast = zext i4 %r to i6
  call fastcc void @AES_encryption_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext %r_cast3_cast)
  %r_1 = add i4 %r, 1
  br label %3

; <label>:5                                       ; preds = %3
  call fastcc void @AES_encryption_sub_bytes([16 x i8]* %state)
  call fastcc void @AES_encryption_shift_rows([16 x i8]* %state)
  call fastcc void @AES_encryption_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext 10)
  br label %6

; <label>:6                                       ; preds = %.preheader.preheader, %5
  %i_1 = phi i3 [ 0, %5 ], [ %i_8, %.preheader.preheader ]
  %exitcond1 = icmp eq i3 %i_1, -4
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_8 = add i3 %i_1, 1
  br i1 %exitcond1, label %7, label %.preheader.preheader

.preheader.preheader:                             ; preds = %6
  %tmp_45 = trunc i3 %i_1 to i2
  %tmp_33 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_45, i2 0)
  %tmp_34 = zext i4 %tmp_33 to i64
  %state_addr_8 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_34
  %state_load = load i8* %state_addr_8, align 4
  %tmp_35 = zext i3 %i_1 to i64
  %out_addr = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_35
  store i8 %state_load, i8* %out_addr, align 1
  %tmp_105_s = or i4 %tmp_33, 1
  %tmp_106_1 = zext i4 %tmp_105_s to i64
  %state_addr_9 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_106_1
  %state_load_1 = load i8* %state_addr_9, align 1
  %tmp_108_1 = xor i3 %i_1, -4
  %tmp_109_1 = zext i3 %tmp_108_1 to i64
  %out_addr_1 = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_109_1
  store i8 %state_load_1, i8* %out_addr_1, align 1
  %tmp_105_1 = or i4 %tmp_33, 2
  %tmp_106_2 = zext i4 %tmp_105_1 to i64
  %state_addr_10 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_106_2
  %state_load_2 = load i8* %state_addr_10, align 2
  %tmp_108_s = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i_1)
  %tmp_109_2 = zext i4 %tmp_108_s to i64
  %out_addr_2 = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_109_2
  store i8 %state_load_2, i8* %out_addr_2, align 1
  %tmp_105_2 = or i4 %tmp_33, 3
  %tmp_106_3 = zext i4 %tmp_105_2 to i64
  %state_addr_11 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_106_3
  %state_load_3 = load i8* %state_addr_11, align 1
  %tmp_108_3_cast6 = sext i3 %tmp_108_1 to i4
  %tmp_109_3 = zext i4 %tmp_108_3_cast6 to i64
  %out_addr_3 = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_109_3
  store i8 %state_load_3, i8* %out_addr_3, align 1
  br label %6

; <label>:7                                       ; preds = %6
  ret void
}

define internal fastcc void @AES_encryption_add_round_key([16 x i8]* nocapture %state, [176 x i8]* nocapture %w, i6 %r) {
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
  %tmp_57 = trunc i6 %r_read to i4
  %tmp_36 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4 %tmp_57, i2 %tmp, i2 0)
  %tmp_37 = zext i8 %tmp_36 to i64
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_37
  %w_load = load i8* %w_addr, align 1
  %tmp_38 = xor i8 %w_load, %state_load
  store i8 %tmp_38, i8* %state_addr, align 1
  %tmp_39 = xor i3 %c, -4
  %tmp_40 = zext i3 %tmp_39 to i64
  %state_addr_12 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_40
  %state_load_1 = load i8* %state_addr_12, align 1
  %tmp_41 = or i8 %tmp_36, 1
  %tmp_42 = zext i8 %tmp_41 to i64
  %w_addr_28 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_42
  %w_load_4 = load i8* %w_addr_28, align 1
  %tmp_43 = xor i8 %w_load_4, %state_load_1
  store i8 %tmp_43, i8* %state_addr_12, align 1
  %tmp_44 = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %c)
  %tmp_45 = zext i4 %tmp_44 to i64
  %state_addr_13 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_45
  %state_load_2 = load i8* %state_addr_13, align 1
  %tmp_46 = or i8 %tmp_36, 2
  %tmp_47 = zext i8 %tmp_46 to i64
  %w_addr_29 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_47
  %w_load_5 = load i8* %w_addr_29, align 1
  %tmp_48 = xor i8 %w_load_5, %state_load_2
  store i8 %tmp_48, i8* %state_addr_13, align 1
  %tmp_76_cast3 = sext i3 %tmp_39 to i4
  %tmp_49 = zext i4 %tmp_76_cast3 to i64
  %state_addr_14 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_49
  %state_load_3 = load i8* %state_addr_14, align 1
  %tmp_50 = or i8 %tmp_36, 3
  %tmp_51 = zext i8 %tmp_50 to i64
  %w_addr_30 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_51
  %w_load_6 = load i8* %w_addr_30, align 1
  %tmp_52 = xor i8 %w_load_6, %state_load_3
  store i8 %tmp_52, i8* %state_addr_14, align 1
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

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
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
  %empty_24 = load i1* %1
  %empty_25 = load i1* %2
  %mrv_0 = insertvalue { i8, i1, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1 } %mrv_0, i1 %empty_24, 1
  %mrv2 = insertvalue { i8, i1, i1 } %mrv1, i1 %empty_25, 2
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
  %empty_26 = trunc i8 %empty to i7
  ret i7 %empty_26
}

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_27 = trunc i6 %empty to i4
  ret i4 %empty_27
}

define weak i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2)
  %empty_28 = trunc i5 %empty to i4
  ret i4 %empty_28
}

define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_29 = trunc i6 %empty to i3
  ret i3 %empty_29
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
  %empty_30 = shl i8 1, %empty
  %empty_31 = and i8 %0, %empty_30
  %empty_32 = icmp ne i8 %empty_31, 0
  ret i1 %empty_32
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_33 = zext i2 %1 to i8
  %empty_34 = shl i8 %empty, 2
  %empty_35 = or i8 %empty_34, %empty_33
  ret i8 %empty_35
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4, i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %1 to i4
  %empty_36 = zext i2 %2 to i4
  %empty_37 = shl i4 %empty, 2
  %empty_38 = or i4 %empty_37, %empty_36
  %empty_39 = zext i4 %0 to i8
  %empty_40 = zext i4 %empty_38 to i8
  %empty_41 = shl i8 %empty_39, 4
  %empty_42 = or i8 %empty_41, %empty_40
  ret i8 %empty_42
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_43 = zext i2 %1 to i4
  %empty_44 = shl i4 %empty, 2
  %empty_45 = or i4 %empty_44, %empty_43
  ret i4 %empty_45
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4
  %empty_46 = zext i3 %1 to i4
  %empty_47 = shl i4 %empty, 3
  %empty_48 = or i4 %empty_47, %empty_46
  ret i4 %empty_48
}

declare void @_GLOBAL__I_a() nounwind

define void @AES_encryption(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %i_plaintext_V_data), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_user_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_last_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %cipher_V_data), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_user_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_last_V), !map !39
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @AES_encryption_str) nounwind
  %plaintext = alloca [16 x i8], align 16
  %out = alloca [16 x i8], align 16
  %w = alloca [176 x i8], align 16
  call void (...)* @_ssdm_op_SpecInterface(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call fastcc void @AES_encryption_aes_key_expansion([176 x i8]* %w)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %4

; <label>:1                                       ; preds = %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp)
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %10

; <label>:2                                       ; preds = %6, %3
  %i_1 = phi i5 [ 0, %3 ], [ %i_12, %6 ]
  %exitcond = icmp eq i5 %i_1, -16
  %empty_49 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12 = add i5 %i_1, 1
  br i1 %exitcond, label %1, label %6

; <label>:3                                       ; preds = %4
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2

; <label>:4                                       ; preds = %5, %0
  %i = phi i5 [ 0, %0 ], [ %i_11, %5 ]
  %exitcond2 = icmp eq i5 %i, -16
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11 = add i5 %i, 1
  br i1 %exitcond2, label %3, label %5

; <label>:5                                       ; preds = %4
  %empty_51 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data = extractvalue { i8, i1, i1 } %empty_51, 0
  %tmp_s = zext i5 %i to i64
  %plaintext_addr = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_s
  store i8 %tmp_data, i8* %plaintext_addr, align 1
  br label %4

; <label>:6                                       ; preds = %2
  %tmp_131 = zext i5 %i_1 to i64
  %out_addr = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131
  %tmp_data_1 = load i8* %out_addr, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1, i1 true, i1 false)
  br label %2

; <label>:7                                       ; preds = %8
  %empty_52 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_17)
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %16

; <label>:8                                       ; preds = %12, %9
  %i_1_1 = phi i5 [ 0, %9 ], [ %i_12_1, %12 ]
  %exitcond_1 = icmp eq i5 %i_1_1, -16
  %empty_53 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_1 = add i5 %i_1_1, 1
  br i1 %exitcond_1, label %7, label %12

; <label>:9                                       ; preds = %10
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %8

; <label>:10                                      ; preds = %11, %1
  %i_s = phi i5 [ 0, %1 ], [ %i_11_1, %11 ]
  %exitcond2_1 = icmp eq i5 %i_s, -16
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_1 = add i5 %i_s, 1
  br i1 %exitcond2_1, label %9, label %11

; <label>:11                                      ; preds = %10
  %empty_55 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_2 = extractvalue { i8, i1, i1 } %empty_55, 0
  %tmp_1 = zext i5 %i_s to i64
  %plaintext_addr_1 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_1
  store i8 %tmp_data_2, i8* %plaintext_addr_1, align 1
  br label %10

; <label>:12                                      ; preds = %8
  %tmp_131_1 = zext i5 %i_1_1 to i64
  %out_addr_4 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_1
  %tmp_data_3 = load i8* %out_addr_4, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_3, i1 true, i1 false)
  br label %8

; <label>:13                                      ; preds = %14
  %empty_56 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_18)
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %22

; <label>:14                                      ; preds = %18, %15
  %i_1_2 = phi i5 [ 0, %15 ], [ %i_12_2, %18 ]
  %exitcond_2 = icmp eq i5 %i_1_2, -16
  %empty_57 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_2 = add i5 %i_1_2, 1
  br i1 %exitcond_2, label %13, label %18

; <label>:15                                      ; preds = %16
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %14

; <label>:16                                      ; preds = %17, %7
  %i_2 = phi i5 [ 0, %7 ], [ %i_11_2, %17 ]
  %exitcond2_2 = icmp eq i5 %i_2, -16
  %empty_58 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_2 = add i5 %i_2, 1
  br i1 %exitcond2_2, label %15, label %17

; <label>:17                                      ; preds = %16
  %empty_59 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_452 = extractvalue { i8, i1, i1 } %empty_59, 0
  %tmp_2 = zext i5 %i_2 to i64
  %plaintext_addr_2 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_2
  store i8 %tmp_data_452, i8* %plaintext_addr_2, align 1
  br label %16

; <label>:18                                      ; preds = %14
  %tmp_131_2 = zext i5 %i_1_2 to i64
  %out_addr_5 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_2
  %tmp_data_453 = load i8* %out_addr_5, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_453, i1 true, i1 false)
  br label %14

; <label>:19                                      ; preds = %20
  %empty_60 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_19)
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %28

; <label>:20                                      ; preds = %24, %21
  %i_1_3 = phi i5 [ 0, %21 ], [ %i_12_3, %24 ]
  %exitcond_3 = icmp eq i5 %i_1_3, -16
  %empty_61 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_3 = add i5 %i_1_3, 1
  br i1 %exitcond_3, label %19, label %24

; <label>:21                                      ; preds = %22
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %20

; <label>:22                                      ; preds = %23, %13
  %i_3 = phi i5 [ 0, %13 ], [ %i_11_3, %23 ]
  %exitcond2_3 = icmp eq i5 %i_3, -16
  %empty_62 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_3 = add i5 %i_3, 1
  br i1 %exitcond2_3, label %21, label %23

; <label>:23                                      ; preds = %22
  %empty_63 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_454 = extractvalue { i8, i1, i1 } %empty_63, 0
  %tmp_3 = zext i5 %i_3 to i64
  %plaintext_addr_3 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_3
  store i8 %tmp_data_454, i8* %plaintext_addr_3, align 1
  br label %22

; <label>:24                                      ; preds = %20
  %tmp_131_3 = zext i5 %i_1_3 to i64
  %out_addr_6 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_3
  %tmp_data_455 = load i8* %out_addr_6, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_455, i1 true, i1 false)
  br label %20

; <label>:25                                      ; preds = %26
  %empty_64 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_20)
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %34

; <label>:26                                      ; preds = %30, %27
  %i_1_4 = phi i5 [ 0, %27 ], [ %i_12_4, %30 ]
  %exitcond_4 = icmp eq i5 %i_1_4, -16
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_4 = add i5 %i_1_4, 1
  br i1 %exitcond_4, label %25, label %30

; <label>:27                                      ; preds = %28
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %26

; <label>:28                                      ; preds = %29, %19
  %i_4 = phi i5 [ 0, %19 ], [ %i_11_4, %29 ]
  %exitcond2_4 = icmp eq i5 %i_4, -16
  %empty_66 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_4 = add i5 %i_4, 1
  br i1 %exitcond2_4, label %27, label %29

; <label>:29                                      ; preds = %28
  %empty_67 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_456 = extractvalue { i8, i1, i1 } %empty_67, 0
  %tmp_4 = zext i5 %i_4 to i64
  %plaintext_addr_4 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_4
  store i8 %tmp_data_456, i8* %plaintext_addr_4, align 1
  br label %28

; <label>:30                                      ; preds = %26
  %tmp_131_4 = zext i5 %i_1_4 to i64
  %out_addr_7 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_4
  %tmp_data_457 = load i8* %out_addr_7, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_457, i1 true, i1 false)
  br label %26

; <label>:31                                      ; preds = %32
  %empty_68 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_21)
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %40

; <label>:32                                      ; preds = %36, %33
  %i_1_5 = phi i5 [ 0, %33 ], [ %i_12_5, %36 ]
  %exitcond_5 = icmp eq i5 %i_1_5, -16
  %empty_69 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_5 = add i5 %i_1_5, 1
  br i1 %exitcond_5, label %31, label %36

; <label>:33                                      ; preds = %34
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %32

; <label>:34                                      ; preds = %35, %25
  %i_5 = phi i5 [ 0, %25 ], [ %i_11_5, %35 ]
  %exitcond2_5 = icmp eq i5 %i_5, -16
  %empty_70 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_5 = add i5 %i_5, 1
  br i1 %exitcond2_5, label %33, label %35

; <label>:35                                      ; preds = %34
  %empty_71 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_458 = extractvalue { i8, i1, i1 } %empty_71, 0
  %tmp_5 = zext i5 %i_5 to i64
  %plaintext_addr_5 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_5
  store i8 %tmp_data_458, i8* %plaintext_addr_5, align 1
  br label %34

; <label>:36                                      ; preds = %32
  %tmp_131_5 = zext i5 %i_1_5 to i64
  %out_addr_8 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_5
  %tmp_data_459 = load i8* %out_addr_8, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_459, i1 true, i1 false)
  br label %32

; <label>:37                                      ; preds = %38
  %empty_72 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_22)
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %46

; <label>:38                                      ; preds = %42, %39
  %i_1_6 = phi i5 [ 0, %39 ], [ %i_12_6, %42 ]
  %exitcond_6 = icmp eq i5 %i_1_6, -16
  %empty_73 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_6 = add i5 %i_1_6, 1
  br i1 %exitcond_6, label %37, label %42

; <label>:39                                      ; preds = %40
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %38

; <label>:40                                      ; preds = %41, %31
  %i_6 = phi i5 [ 0, %31 ], [ %i_11_6, %41 ]
  %exitcond2_6 = icmp eq i5 %i_6, -16
  %empty_74 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_6 = add i5 %i_6, 1
  br i1 %exitcond2_6, label %39, label %41

; <label>:41                                      ; preds = %40
  %empty_75 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_460 = extractvalue { i8, i1, i1 } %empty_75, 0
  %tmp_6 = zext i5 %i_6 to i64
  %plaintext_addr_6 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_6
  store i8 %tmp_data_460, i8* %plaintext_addr_6, align 1
  br label %40

; <label>:42                                      ; preds = %38
  %tmp_131_6 = zext i5 %i_1_6 to i64
  %out_addr_9 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_6
  %tmp_data_461 = load i8* %out_addr_9, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_461, i1 true, i1 false)
  br label %38

; <label>:43                                      ; preds = %44
  %empty_76 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_23)
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %52

; <label>:44                                      ; preds = %48, %45
  %i_1_7 = phi i5 [ 0, %45 ], [ %i_12_7, %48 ]
  %exitcond_7 = icmp eq i5 %i_1_7, -16
  %empty_77 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_7 = add i5 %i_1_7, 1
  br i1 %exitcond_7, label %43, label %48

; <label>:45                                      ; preds = %46
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %44

; <label>:46                                      ; preds = %47, %37
  %i_7 = phi i5 [ 0, %37 ], [ %i_11_7, %47 ]
  %exitcond2_7 = icmp eq i5 %i_7, -16
  %empty_78 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_7 = add i5 %i_7, 1
  br i1 %exitcond2_7, label %45, label %47

; <label>:47                                      ; preds = %46
  %empty_79 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_462 = extractvalue { i8, i1, i1 } %empty_79, 0
  %tmp_7 = zext i5 %i_7 to i64
  %plaintext_addr_7 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_7
  store i8 %tmp_data_462, i8* %plaintext_addr_7, align 1
  br label %46

; <label>:48                                      ; preds = %44
  %tmp_131_7 = zext i5 %i_1_7 to i64
  %out_addr_10 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_7
  %tmp_data_463 = load i8* %out_addr_10, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_463, i1 true, i1 false)
  br label %44

; <label>:49                                      ; preds = %50
  %empty_80 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_24)
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %58

; <label>:50                                      ; preds = %54, %51
  %i_1_8 = phi i5 [ 0, %51 ], [ %i_12_8, %54 ]
  %exitcond_8 = icmp eq i5 %i_1_8, -16
  %empty_81 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_8 = add i5 %i_1_8, 1
  br i1 %exitcond_8, label %49, label %54

; <label>:51                                      ; preds = %52
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %50

; <label>:52                                      ; preds = %53, %43
  %i_8 = phi i5 [ 0, %43 ], [ %i_11_8, %53 ]
  %exitcond2_8 = icmp eq i5 %i_8, -16
  %empty_82 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_8 = add i5 %i_8, 1
  br i1 %exitcond2_8, label %51, label %53

; <label>:53                                      ; preds = %52
  %empty_83 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_464 = extractvalue { i8, i1, i1 } %empty_83, 0
  %tmp_8 = zext i5 %i_8 to i64
  %plaintext_addr_8 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_8
  store i8 %tmp_data_464, i8* %plaintext_addr_8, align 1
  br label %52

; <label>:54                                      ; preds = %50
  %tmp_131_8 = zext i5 %i_1_8 to i64
  %out_addr_11 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_8
  %tmp_data_465 = load i8* %out_addr_11, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_465, i1 true, i1 false)
  br label %50

; <label>:55                                      ; preds = %56
  %empty_84 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_25)
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %64

; <label>:56                                      ; preds = %60, %57
  %i_1_9 = phi i5 [ 0, %57 ], [ %i_12_9, %60 ]
  %exitcond_9 = icmp eq i5 %i_1_9, -16
  %empty_85 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_9 = add i5 %i_1_9, 1
  br i1 %exitcond_9, label %55, label %60

; <label>:57                                      ; preds = %58
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %56

; <label>:58                                      ; preds = %59, %49
  %i_9 = phi i5 [ 0, %49 ], [ %i_11_9, %59 ]
  %exitcond2_9 = icmp eq i5 %i_9, -16
  %empty_86 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_9 = add i5 %i_9, 1
  br i1 %exitcond2_9, label %57, label %59

; <label>:59                                      ; preds = %58
  %empty_87 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_466 = extractvalue { i8, i1, i1 } %empty_87, 0
  %tmp_9 = zext i5 %i_9 to i64
  %plaintext_addr_9 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_9
  store i8 %tmp_data_466, i8* %plaintext_addr_9, align 1
  br label %58

; <label>:60                                      ; preds = %56
  %tmp_131_9 = zext i5 %i_1_9 to i64
  %out_addr_12 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_9
  %tmp_data_467 = load i8* %out_addr_12, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_467, i1 true, i1 false)
  br label %56

; <label>:61                                      ; preds = %62
  %empty_88 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_26)
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %70

; <label>:62                                      ; preds = %66, %63
  %i_1_s = phi i5 [ 0, %63 ], [ %i_12_s, %66 ]
  %exitcond_s = icmp eq i5 %i_1_s, -16
  %empty_89 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_s = add i5 %i_1_s, 1
  br i1 %exitcond_s, label %61, label %66

; <label>:63                                      ; preds = %64
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %62

; <label>:64                                      ; preds = %65, %55
  %i_10 = phi i5 [ 0, %55 ], [ %i_11_s, %65 ]
  %exitcond2_s = icmp eq i5 %i_10, -16
  %empty_90 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_s = add i5 %i_10, 1
  br i1 %exitcond2_s, label %63, label %65

; <label>:65                                      ; preds = %64
  %empty_91 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_468 = extractvalue { i8, i1, i1 } %empty_91, 0
  %tmp_s_92 = zext i5 %i_10 to i64
  %plaintext_addr_10 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_s_92
  store i8 %tmp_data_468, i8* %plaintext_addr_10, align 1
  br label %64

; <label>:66                                      ; preds = %62
  %tmp_131_s = zext i5 %i_1_s to i64
  %out_addr_13 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_s
  %tmp_data_469 = load i8* %out_addr_13, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_469, i1 true, i1 false)
  br label %62

; <label>:67                                      ; preds = %68
  %empty_93 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_27)
  %tmp_28 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %76

; <label>:68                                      ; preds = %72, %69
  %i_1_10 = phi i5 [ 0, %69 ], [ %i_12_10, %72 ]
  %exitcond_10 = icmp eq i5 %i_1_10, -16
  %empty_94 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_10 = add i5 %i_1_10, 1
  br i1 %exitcond_10, label %67, label %72

; <label>:69                                      ; preds = %70
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %68

; <label>:70                                      ; preds = %71, %61
  %i_13 = phi i5 [ 0, %61 ], [ %i_11_10, %71 ]
  %exitcond2_10 = icmp eq i5 %i_13, -16
  %empty_95 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_10 = add i5 %i_13, 1
  br i1 %exitcond2_10, label %69, label %71

; <label>:71                                      ; preds = %70
  %empty_96 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_470 = extractvalue { i8, i1, i1 } %empty_96, 0
  %tmp_10 = zext i5 %i_13 to i64
  %plaintext_addr_11 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_10
  store i8 %tmp_data_470, i8* %plaintext_addr_11, align 1
  br label %70

; <label>:72                                      ; preds = %68
  %tmp_131_10 = zext i5 %i_1_10 to i64
  %out_addr_14 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_10
  %tmp_data_471 = load i8* %out_addr_14, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_471, i1 true, i1 false)
  br label %68

; <label>:73                                      ; preds = %74
  %empty_97 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_28)
  %tmp_29 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %82

; <label>:74                                      ; preds = %78, %75
  %i_1_11 = phi i5 [ 0, %75 ], [ %i_12_11, %78 ]
  %exitcond_11 = icmp eq i5 %i_1_11, -16
  %empty_98 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_11 = add i5 %i_1_11, 1
  br i1 %exitcond_11, label %73, label %78

; <label>:75                                      ; preds = %76
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %74

; <label>:76                                      ; preds = %77, %67
  %i_115 = phi i5 [ 0, %67 ], [ %i_11_11, %77 ]
  %exitcond2_11 = icmp eq i5 %i_115, -16
  %empty_99 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_11 = add i5 %i_115, 1
  br i1 %exitcond2_11, label %75, label %77

; <label>:77                                      ; preds = %76
  %empty_100 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_472 = extractvalue { i8, i1, i1 } %empty_100, 0
  %tmp_11 = zext i5 %i_115 to i64
  %plaintext_addr_12 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_11
  store i8 %tmp_data_472, i8* %plaintext_addr_12, align 1
  br label %76

; <label>:78                                      ; preds = %74
  %tmp_131_11 = zext i5 %i_1_11 to i64
  %out_addr_15 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_11
  %tmp_data_473 = load i8* %out_addr_15, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_473, i1 true, i1 false)
  br label %74

; <label>:79                                      ; preds = %80
  %empty_101 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_29)
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %88

; <label>:80                                      ; preds = %84, %81
  %i_1_12 = phi i5 [ 0, %81 ], [ %i_12_12, %84 ]
  %exitcond_12 = icmp eq i5 %i_1_12, -16
  %empty_102 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_12 = add i5 %i_1_12, 1
  br i1 %exitcond_12, label %79, label %84

; <label>:81                                      ; preds = %82
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %80

; <label>:82                                      ; preds = %83, %73
  %i_126 = phi i5 [ 0, %73 ], [ %i_11_12, %83 ]
  %exitcond2_12 = icmp eq i5 %i_126, -16
  %empty_103 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_12 = add i5 %i_126, 1
  br i1 %exitcond2_12, label %81, label %83

; <label>:83                                      ; preds = %82
  %empty_104 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_474 = extractvalue { i8, i1, i1 } %empty_104, 0
  %tmp_12 = zext i5 %i_126 to i64
  %plaintext_addr_13 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_12
  store i8 %tmp_data_474, i8* %plaintext_addr_13, align 1
  br label %82

; <label>:84                                      ; preds = %80
  %tmp_131_12 = zext i5 %i_1_12 to i64
  %out_addr_16 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_12
  %tmp_data_475 = load i8* %out_addr_16, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_475, i1 true, i1 false)
  br label %80

; <label>:85                                      ; preds = %86
  %empty_105 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_30)
  %tmp_31 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %94

; <label>:86                                      ; preds = %90, %87
  %i_1_13 = phi i5 [ 0, %87 ], [ %i_12_13, %90 ]
  %exitcond_13 = icmp eq i5 %i_1_13, -16
  %empty_106 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_13 = add i5 %i_1_13, 1
  br i1 %exitcond_13, label %85, label %90

; <label>:87                                      ; preds = %88
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %86

; <label>:88                                      ; preds = %89, %79
  %i_14 = phi i5 [ 0, %79 ], [ %i_11_13, %89 ]
  %exitcond2_13 = icmp eq i5 %i_14, -16
  %empty_107 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_13 = add i5 %i_14, 1
  br i1 %exitcond2_13, label %87, label %89

; <label>:89                                      ; preds = %88
  %empty_108 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_476 = extractvalue { i8, i1, i1 } %empty_108, 0
  %tmp_13 = zext i5 %i_14 to i64
  %plaintext_addr_14 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_13
  store i8 %tmp_data_476, i8* %plaintext_addr_14, align 1
  br label %88

; <label>:90                                      ; preds = %86
  %tmp_131_13 = zext i5 %i_1_13 to i64
  %out_addr_17 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_13
  %tmp_data_477 = load i8* %out_addr_17, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_477, i1 true, i1 false)
  br label %86

; <label>:91                                      ; preds = %92
  %empty_109 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_31)
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %100

; <label>:92                                      ; preds = %96, %93
  %i_1_14 = phi i5 [ 0, %93 ], [ %i_12_14, %96 ]
  %exitcond_14 = icmp eq i5 %i_1_14, -16
  %empty_110 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_14 = add i5 %i_1_14, 1
  br i1 %exitcond_14, label %91, label %96

; <label>:93                                      ; preds = %94
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %92

; <label>:94                                      ; preds = %95, %85
  %i_15 = phi i5 [ 0, %85 ], [ %i_11_14, %95 ]
  %exitcond2_14 = icmp eq i5 %i_15, -16
  %empty_111 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_14 = add i5 %i_15, 1
  br i1 %exitcond2_14, label %93, label %95

; <label>:95                                      ; preds = %94
  %empty_112 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_478 = extractvalue { i8, i1, i1 } %empty_112, 0
  %tmp_14 = zext i5 %i_15 to i64
  %plaintext_addr_15 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_14
  store i8 %tmp_data_478, i8* %plaintext_addr_15, align 1
  br label %94

; <label>:96                                      ; preds = %92
  %tmp_131_14 = zext i5 %i_1_14 to i64
  %out_addr_18 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_14
  %tmp_data_479 = load i8* %out_addr_18, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_479, i1 true, i1 false)
  br label %92

; <label>:97                                      ; preds = %98
  %empty_113 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_32)
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %106

; <label>:98                                      ; preds = %102, %99
  %i_1_15 = phi i5 [ 0, %99 ], [ %i_12_15, %102 ]
  %exitcond_15 = icmp eq i5 %i_1_15, -16
  %empty_114 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_15 = add i5 %i_1_15, 1
  br i1 %exitcond_15, label %97, label %102

; <label>:99                                      ; preds = %100
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %98

; <label>:100                                     ; preds = %101, %91
  %i_16 = phi i5 [ 0, %91 ], [ %i_11_15, %101 ]
  %exitcond2_15 = icmp eq i5 %i_16, -16
  %empty_115 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_15 = add i5 %i_16, 1
  br i1 %exitcond2_15, label %99, label %101

; <label>:101                                     ; preds = %100
  %empty_116 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_480 = extractvalue { i8, i1, i1 } %empty_116, 0
  %tmp_15 = zext i5 %i_16 to i64
  %plaintext_addr_16 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_15
  store i8 %tmp_data_480, i8* %plaintext_addr_16, align 1
  br label %100

; <label>:102                                     ; preds = %98
  %tmp_131_15 = zext i5 %i_1_15 to i64
  %out_addr_19 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_15
  %tmp_data_481 = load i8* %out_addr_19, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_481, i1 true, i1 false)
  br label %98

; <label>:103                                     ; preds = %104
  %empty_117 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_33)
  %tmp_34 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %112

; <label>:104                                     ; preds = %108, %105
  %i_1_16 = phi i5 [ 0, %105 ], [ %i_12_16, %108 ]
  %exitcond_16 = icmp eq i5 %i_1_16, -16
  %empty_118 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_16 = add i5 %i_1_16, 1
  br i1 %exitcond_16, label %103, label %108

; <label>:105                                     ; preds = %106
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %104

; <label>:106                                     ; preds = %107, %97
  %i_17 = phi i5 [ 0, %97 ], [ %i_11_16, %107 ]
  %exitcond2_16 = icmp eq i5 %i_17, -16
  %empty_119 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_16 = add i5 %i_17, 1
  br i1 %exitcond2_16, label %105, label %107

; <label>:107                                     ; preds = %106
  %empty_120 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_482 = extractvalue { i8, i1, i1 } %empty_120, 0
  %tmp_16 = zext i5 %i_17 to i64
  %plaintext_addr_17 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_16
  store i8 %tmp_data_482, i8* %plaintext_addr_17, align 1
  br label %106

; <label>:108                                     ; preds = %104
  %tmp_131_16 = zext i5 %i_1_16 to i64
  %out_addr_20 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_16
  %tmp_data_483 = load i8* %out_addr_20, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_483, i1 true, i1 false)
  br label %104

; <label>:109                                     ; preds = %110
  %empty_121 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_34)
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %118

; <label>:110                                     ; preds = %114, %111
  %i_1_17 = phi i5 [ 0, %111 ], [ %i_12_17, %114 ]
  %exitcond_17 = icmp eq i5 %i_1_17, -16
  %empty_122 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_17 = add i5 %i_1_17, 1
  br i1 %exitcond_17, label %109, label %114

; <label>:111                                     ; preds = %112
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %110

; <label>:112                                     ; preds = %113, %103
  %i_18 = phi i5 [ 0, %103 ], [ %i_11_17, %113 ]
  %exitcond2_17 = icmp eq i5 %i_18, -16
  %empty_123 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_17 = add i5 %i_18, 1
  br i1 %exitcond2_17, label %111, label %113

; <label>:113                                     ; preds = %112
  %empty_124 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_484 = extractvalue { i8, i1, i1 } %empty_124, 0
  %tmp_17_125 = zext i5 %i_18 to i64
  %plaintext_addr_18 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_17_125
  store i8 %tmp_data_484, i8* %plaintext_addr_18, align 1
  br label %112

; <label>:114                                     ; preds = %110
  %tmp_131_17 = zext i5 %i_1_17 to i64
  %out_addr_21 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_17
  %tmp_data_485 = load i8* %out_addr_21, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_485, i1 true, i1 false)
  br label %110

; <label>:115                                     ; preds = %116
  %empty_126 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_35)
  %tmp_36 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %124

; <label>:116                                     ; preds = %120, %117
  %i_1_18 = phi i5 [ 0, %117 ], [ %i_12_18, %120 ]
  %exitcond_18 = icmp eq i5 %i_1_18, -16
  %empty_127 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_18 = add i5 %i_1_18, 1
  br i1 %exitcond_18, label %115, label %120

; <label>:117                                     ; preds = %118
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %116

; <label>:118                                     ; preds = %119, %109
  %i_19 = phi i5 [ 0, %109 ], [ %i_11_18, %119 ]
  %exitcond2_18 = icmp eq i5 %i_19, -16
  %empty_128 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_18 = add i5 %i_19, 1
  br i1 %exitcond2_18, label %117, label %119

; <label>:119                                     ; preds = %118
  %empty_129 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_486 = extractvalue { i8, i1, i1 } %empty_129, 0
  %tmp_18_130 = zext i5 %i_19 to i64
  %plaintext_addr_19 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_18_130
  store i8 %tmp_data_486, i8* %plaintext_addr_19, align 1
  br label %118

; <label>:120                                     ; preds = %116
  %tmp_131_18 = zext i5 %i_1_18 to i64
  %out_addr_22 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_18
  %tmp_data_487 = load i8* %out_addr_22, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_487, i1 true, i1 false)
  br label %116

; <label>:121                                     ; preds = %122
  %empty_131 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_36)
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %130

; <label>:122                                     ; preds = %126, %123
  %i_1_19 = phi i5 [ 0, %123 ], [ %i_12_19, %126 ]
  %exitcond_19 = icmp eq i5 %i_1_19, -16
  %empty_132 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_19 = add i5 %i_1_19, 1
  br i1 %exitcond_19, label %121, label %126

; <label>:123                                     ; preds = %124
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %122

; <label>:124                                     ; preds = %125, %115
  %i_20 = phi i5 [ 0, %115 ], [ %i_11_19, %125 ]
  %exitcond2_19 = icmp eq i5 %i_20, -16
  %empty_133 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_19 = add i5 %i_20, 1
  br i1 %exitcond2_19, label %123, label %125

; <label>:125                                     ; preds = %124
  %empty_134 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_488 = extractvalue { i8, i1, i1 } %empty_134, 0
  %tmp_19_135 = zext i5 %i_20 to i64
  %plaintext_addr_20 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_19_135
  store i8 %tmp_data_488, i8* %plaintext_addr_20, align 1
  br label %124

; <label>:126                                     ; preds = %122
  %tmp_131_19 = zext i5 %i_1_19 to i64
  %out_addr_23 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_19
  %tmp_data_489 = load i8* %out_addr_23, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_489, i1 true, i1 false)
  br label %122

; <label>:127                                     ; preds = %128
  %empty_136 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_37)
  %tmp_38 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %136

; <label>:128                                     ; preds = %132, %129
  %i_1_20 = phi i5 [ 0, %129 ], [ %i_12_20, %132 ]
  %exitcond_20 = icmp eq i5 %i_1_20, -16
  %empty_137 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_20 = add i5 %i_1_20, 1
  br i1 %exitcond_20, label %127, label %132

; <label>:129                                     ; preds = %130
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %128

; <label>:130                                     ; preds = %131, %121
  %i_21 = phi i5 [ 0, %121 ], [ %i_11_20, %131 ]
  %exitcond2_20 = icmp eq i5 %i_21, -16
  %empty_138 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_20 = add i5 %i_21, 1
  br i1 %exitcond2_20, label %129, label %131

; <label>:131                                     ; preds = %130
  %empty_139 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_490 = extractvalue { i8, i1, i1 } %empty_139, 0
  %tmp_20_140 = zext i5 %i_21 to i64
  %plaintext_addr_21 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_20_140
  store i8 %tmp_data_490, i8* %plaintext_addr_21, align 1
  br label %130

; <label>:132                                     ; preds = %128
  %tmp_131_20 = zext i5 %i_1_20 to i64
  %out_addr_24 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_20
  %tmp_data_491 = load i8* %out_addr_24, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_491, i1 true, i1 false)
  br label %128

; <label>:133                                     ; preds = %134
  %empty_141 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_38)
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %142

; <label>:134                                     ; preds = %138, %135
  %i_1_21 = phi i5 [ 0, %135 ], [ %i_12_21, %138 ]
  %exitcond_21 = icmp eq i5 %i_1_21, -16
  %empty_142 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_21 = add i5 %i_1_21, 1
  br i1 %exitcond_21, label %133, label %138

; <label>:135                                     ; preds = %136
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %134

; <label>:136                                     ; preds = %137, %127
  %i_22 = phi i5 [ 0, %127 ], [ %i_11_21, %137 ]
  %exitcond2_21 = icmp eq i5 %i_22, -16
  %empty_143 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_21 = add i5 %i_22, 1
  br i1 %exitcond2_21, label %135, label %137

; <label>:137                                     ; preds = %136
  %empty_144 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_492 = extractvalue { i8, i1, i1 } %empty_144, 0
  %tmp_21_145 = zext i5 %i_22 to i64
  %plaintext_addr_22 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_21_145
  store i8 %tmp_data_492, i8* %plaintext_addr_22, align 1
  br label %136

; <label>:138                                     ; preds = %134
  %tmp_131_21 = zext i5 %i_1_21 to i64
  %out_addr_25 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_21
  %tmp_data_493 = load i8* %out_addr_25, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_493, i1 true, i1 false)
  br label %134

; <label>:139                                     ; preds = %140
  %empty_146 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_39)
  %tmp_40 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %148

; <label>:140                                     ; preds = %144, %141
  %i_1_22 = phi i5 [ 0, %141 ], [ %i_12_22, %144 ]
  %exitcond_22 = icmp eq i5 %i_1_22, -16
  %empty_147 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_22 = add i5 %i_1_22, 1
  br i1 %exitcond_22, label %139, label %144

; <label>:141                                     ; preds = %142
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %140

; <label>:142                                     ; preds = %143, %133
  %i_23 = phi i5 [ 0, %133 ], [ %i_11_22, %143 ]
  %exitcond2_22 = icmp eq i5 %i_23, -16
  %empty_148 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_22 = add i5 %i_23, 1
  br i1 %exitcond2_22, label %141, label %143

; <label>:143                                     ; preds = %142
  %empty_149 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_494 = extractvalue { i8, i1, i1 } %empty_149, 0
  %tmp_22_150 = zext i5 %i_23 to i64
  %plaintext_addr_23 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_22_150
  store i8 %tmp_data_494, i8* %plaintext_addr_23, align 1
  br label %142

; <label>:144                                     ; preds = %140
  %tmp_131_22 = zext i5 %i_1_22 to i64
  %out_addr_26 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_22
  %tmp_data_495 = load i8* %out_addr_26, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_495, i1 true, i1 false)
  br label %140

; <label>:145                                     ; preds = %146
  %empty_151 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_40)
  %tmp_41 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %154

; <label>:146                                     ; preds = %150, %147
  %i_1_23 = phi i5 [ 0, %147 ], [ %i_12_23, %150 ]
  %exitcond_23 = icmp eq i5 %i_1_23, -16
  %empty_152 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_23 = add i5 %i_1_23, 1
  br i1 %exitcond_23, label %145, label %150

; <label>:147                                     ; preds = %148
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %146

; <label>:148                                     ; preds = %149, %139
  %i_24 = phi i5 [ 0, %139 ], [ %i_11_23, %149 ]
  %exitcond2_23 = icmp eq i5 %i_24, -16
  %empty_153 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_23 = add i5 %i_24, 1
  br i1 %exitcond2_23, label %147, label %149

; <label>:149                                     ; preds = %148
  %empty_154 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_496 = extractvalue { i8, i1, i1 } %empty_154, 0
  %tmp_23_155 = zext i5 %i_24 to i64
  %plaintext_addr_24 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_23_155
  store i8 %tmp_data_496, i8* %plaintext_addr_24, align 1
  br label %148

; <label>:150                                     ; preds = %146
  %tmp_131_23 = zext i5 %i_1_23 to i64
  %out_addr_27 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_23
  %tmp_data_497 = load i8* %out_addr_27, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_497, i1 true, i1 false)
  br label %146

; <label>:151                                     ; preds = %152
  %empty_156 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_41)
  %tmp_42 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %160

; <label>:152                                     ; preds = %156, %153
  %i_1_24 = phi i5 [ 0, %153 ], [ %i_12_24, %156 ]
  %exitcond_24 = icmp eq i5 %i_1_24, -16
  %empty_157 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_24 = add i5 %i_1_24, 1
  br i1 %exitcond_24, label %151, label %156

; <label>:153                                     ; preds = %154
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %152

; <label>:154                                     ; preds = %155, %145
  %i_25 = phi i5 [ 0, %145 ], [ %i_11_24, %155 ]
  %exitcond2_24 = icmp eq i5 %i_25, -16
  %empty_158 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_24 = add i5 %i_25, 1
  br i1 %exitcond2_24, label %153, label %155

; <label>:155                                     ; preds = %154
  %empty_159 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_498 = extractvalue { i8, i1, i1 } %empty_159, 0
  %tmp_24_160 = zext i5 %i_25 to i64
  %plaintext_addr_25 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_24_160
  store i8 %tmp_data_498, i8* %plaintext_addr_25, align 1
  br label %154

; <label>:156                                     ; preds = %152
  %tmp_131_24 = zext i5 %i_1_24 to i64
  %out_addr_28 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_24
  %tmp_data_499 = load i8* %out_addr_28, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_499, i1 true, i1 false)
  br label %152

; <label>:157                                     ; preds = %158
  %empty_161 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_42)
  %tmp_43 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %166

; <label>:158                                     ; preds = %162, %159
  %i_1_25 = phi i5 [ 0, %159 ], [ %i_12_25, %162 ]
  %exitcond_25 = icmp eq i5 %i_1_25, -16
  %empty_162 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_25 = add i5 %i_1_25, 1
  br i1 %exitcond_25, label %157, label %162

; <label>:159                                     ; preds = %160
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %158

; <label>:160                                     ; preds = %161, %151
  %i_26 = phi i5 [ 0, %151 ], [ %i_11_25, %161 ]
  %exitcond2_25 = icmp eq i5 %i_26, -16
  %empty_163 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_25 = add i5 %i_26, 1
  br i1 %exitcond2_25, label %159, label %161

; <label>:161                                     ; preds = %160
  %empty_164 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_500 = extractvalue { i8, i1, i1 } %empty_164, 0
  %tmp_25_165 = zext i5 %i_26 to i64
  %plaintext_addr_26 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_25_165
  store i8 %tmp_data_500, i8* %plaintext_addr_26, align 1
  br label %160

; <label>:162                                     ; preds = %158
  %tmp_131_25 = zext i5 %i_1_25 to i64
  %out_addr_29 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_25
  %tmp_data_501 = load i8* %out_addr_29, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_501, i1 true, i1 false)
  br label %158

; <label>:163                                     ; preds = %164
  %empty_166 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_43)
  %tmp_44 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %172

; <label>:164                                     ; preds = %168, %165
  %i_1_26 = phi i5 [ 0, %165 ], [ %i_12_26, %168 ]
  %exitcond_26 = icmp eq i5 %i_1_26, -16
  %empty_167 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_26 = add i5 %i_1_26, 1
  br i1 %exitcond_26, label %163, label %168

; <label>:165                                     ; preds = %166
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %164

; <label>:166                                     ; preds = %167, %157
  %i_27 = phi i5 [ 0, %157 ], [ %i_11_26, %167 ]
  %exitcond2_26 = icmp eq i5 %i_27, -16
  %empty_168 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_26 = add i5 %i_27, 1
  br i1 %exitcond2_26, label %165, label %167

; <label>:167                                     ; preds = %166
  %empty_169 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_502 = extractvalue { i8, i1, i1 } %empty_169, 0
  %tmp_26_170 = zext i5 %i_27 to i64
  %plaintext_addr_27 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_26_170
  store i8 %tmp_data_502, i8* %plaintext_addr_27, align 1
  br label %166

; <label>:168                                     ; preds = %164
  %tmp_131_26 = zext i5 %i_1_26 to i64
  %out_addr_30 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_26
  %tmp_data_503 = load i8* %out_addr_30, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_503, i1 true, i1 false)
  br label %164

; <label>:169                                     ; preds = %170
  %empty_171 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_44)
  %tmp_45 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %178

; <label>:170                                     ; preds = %174, %171
  %i_1_27 = phi i5 [ 0, %171 ], [ %i_12_27, %174 ]
  %exitcond_27 = icmp eq i5 %i_1_27, -16
  %empty_172 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_27 = add i5 %i_1_27, 1
  br i1 %exitcond_27, label %169, label %174

; <label>:171                                     ; preds = %172
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %170

; <label>:172                                     ; preds = %173, %163
  %i_28 = phi i5 [ 0, %163 ], [ %i_11_27, %173 ]
  %exitcond2_27 = icmp eq i5 %i_28, -16
  %empty_173 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_27 = add i5 %i_28, 1
  br i1 %exitcond2_27, label %171, label %173

; <label>:173                                     ; preds = %172
  %empty_174 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_504 = extractvalue { i8, i1, i1 } %empty_174, 0
  %tmp_27_175 = zext i5 %i_28 to i64
  %plaintext_addr_28 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_27_175
  store i8 %tmp_data_504, i8* %plaintext_addr_28, align 1
  br label %172

; <label>:174                                     ; preds = %170
  %tmp_131_27 = zext i5 %i_1_27 to i64
  %out_addr_31 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_27
  %tmp_data_505 = load i8* %out_addr_31, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_505, i1 true, i1 false)
  br label %170

; <label>:175                                     ; preds = %176
  %empty_176 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_45)
  %tmp_46 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %184

; <label>:176                                     ; preds = %180, %177
  %i_1_28 = phi i5 [ 0, %177 ], [ %i_12_28, %180 ]
  %exitcond_28 = icmp eq i5 %i_1_28, -16
  %empty_177 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_28 = add i5 %i_1_28, 1
  br i1 %exitcond_28, label %175, label %180

; <label>:177                                     ; preds = %178
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %176

; <label>:178                                     ; preds = %179, %169
  %i_29 = phi i5 [ 0, %169 ], [ %i_11_28, %179 ]
  %exitcond2_28 = icmp eq i5 %i_29, -16
  %empty_178 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_28 = add i5 %i_29, 1
  br i1 %exitcond2_28, label %177, label %179

; <label>:179                                     ; preds = %178
  %empty_179 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_506 = extractvalue { i8, i1, i1 } %empty_179, 0
  %tmp_28_180 = zext i5 %i_29 to i64
  %plaintext_addr_29 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_28_180
  store i8 %tmp_data_506, i8* %plaintext_addr_29, align 1
  br label %178

; <label>:180                                     ; preds = %176
  %tmp_131_28 = zext i5 %i_1_28 to i64
  %out_addr_32 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_28
  %tmp_data_507 = load i8* %out_addr_32, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_507, i1 true, i1 false)
  br label %176

; <label>:181                                     ; preds = %182
  %empty_181 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_46)
  %tmp_47 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %190

; <label>:182                                     ; preds = %186, %183
  %i_1_29 = phi i5 [ 0, %183 ], [ %i_12_29, %186 ]
  %exitcond_29 = icmp eq i5 %i_1_29, -16
  %empty_182 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_29 = add i5 %i_1_29, 1
  br i1 %exitcond_29, label %181, label %186

; <label>:183                                     ; preds = %184
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %182

; <label>:184                                     ; preds = %185, %175
  %i_30 = phi i5 [ 0, %175 ], [ %i_11_29, %185 ]
  %exitcond2_29 = icmp eq i5 %i_30, -16
  %empty_183 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_29 = add i5 %i_30, 1
  br i1 %exitcond2_29, label %183, label %185

; <label>:185                                     ; preds = %184
  %empty_184 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_508 = extractvalue { i8, i1, i1 } %empty_184, 0
  %tmp_29_185 = zext i5 %i_30 to i64
  %plaintext_addr_30 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_29_185
  store i8 %tmp_data_508, i8* %plaintext_addr_30, align 1
  br label %184

; <label>:186                                     ; preds = %182
  %tmp_131_29 = zext i5 %i_1_29 to i64
  %out_addr_33 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_29
  %tmp_data_509 = load i8* %out_addr_33, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_509, i1 true, i1 false)
  br label %182

; <label>:187                                     ; preds = %188
  %empty_186 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_47)
  %tmp_48 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %196

; <label>:188                                     ; preds = %192, %189
  %i_1_30 = phi i5 [ 0, %189 ], [ %i_12_30, %192 ]
  %exitcond_30 = icmp eq i5 %i_1_30, -16
  %empty_187 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_30 = add i5 %i_1_30, 1
  br i1 %exitcond_30, label %187, label %192

; <label>:189                                     ; preds = %190
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %188

; <label>:190                                     ; preds = %191, %181
  %i_31 = phi i5 [ 0, %181 ], [ %i_11_30, %191 ]
  %exitcond2_30 = icmp eq i5 %i_31, -16
  %empty_188 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_30 = add i5 %i_31, 1
  br i1 %exitcond2_30, label %189, label %191

; <label>:191                                     ; preds = %190
  %empty_189 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_510 = extractvalue { i8, i1, i1 } %empty_189, 0
  %tmp_30_190 = zext i5 %i_31 to i64
  %plaintext_addr_31 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_30_190
  store i8 %tmp_data_510, i8* %plaintext_addr_31, align 1
  br label %190

; <label>:192                                     ; preds = %188
  %tmp_131_30 = zext i5 %i_1_30 to i64
  %out_addr_34 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_30
  %tmp_data_511 = load i8* %out_addr_34, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_511, i1 true, i1 false)
  br label %188

; <label>:193                                     ; preds = %194
  %empty_191 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_48)
  %tmp_49 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %202

; <label>:194                                     ; preds = %198, %195
  %i_1_31 = phi i5 [ 0, %195 ], [ %i_12_31, %198 ]
  %exitcond_31 = icmp eq i5 %i_1_31, -16
  %empty_192 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_31 = add i5 %i_1_31, 1
  br i1 %exitcond_31, label %193, label %198

; <label>:195                                     ; preds = %196
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %194

; <label>:196                                     ; preds = %197, %187
  %i_32 = phi i5 [ 0, %187 ], [ %i_11_31, %197 ]
  %exitcond2_31 = icmp eq i5 %i_32, -16
  %empty_193 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_31 = add i5 %i_32, 1
  br i1 %exitcond2_31, label %195, label %197

; <label>:197                                     ; preds = %196
  %empty_194 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_512 = extractvalue { i8, i1, i1 } %empty_194, 0
  %tmp_31_195 = zext i5 %i_32 to i64
  %plaintext_addr_32 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_31_195
  store i8 %tmp_data_512, i8* %plaintext_addr_32, align 1
  br label %196

; <label>:198                                     ; preds = %194
  %tmp_131_31 = zext i5 %i_1_31 to i64
  %out_addr_35 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_31
  %tmp_data_513 = load i8* %out_addr_35, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_513, i1 true, i1 false)
  br label %194

; <label>:199                                     ; preds = %200
  %empty_196 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_49)
  %tmp_50 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %208

; <label>:200                                     ; preds = %204, %201
  %i_1_32 = phi i5 [ 0, %201 ], [ %i_12_32, %204 ]
  %exitcond_32 = icmp eq i5 %i_1_32, -16
  %empty_197 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_32 = add i5 %i_1_32, 1
  br i1 %exitcond_32, label %199, label %204

; <label>:201                                     ; preds = %202
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %200

; <label>:202                                     ; preds = %203, %193
  %i_33 = phi i5 [ 0, %193 ], [ %i_11_32, %203 ]
  %exitcond2_32 = icmp eq i5 %i_33, -16
  %empty_198 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_32 = add i5 %i_33, 1
  br i1 %exitcond2_32, label %201, label %203

; <label>:203                                     ; preds = %202
  %empty_199 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_514 = extractvalue { i8, i1, i1 } %empty_199, 0
  %tmp_32_200 = zext i5 %i_33 to i64
  %plaintext_addr_33 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_32_200
  store i8 %tmp_data_514, i8* %plaintext_addr_33, align 1
  br label %202

; <label>:204                                     ; preds = %200
  %tmp_131_32 = zext i5 %i_1_32 to i64
  %out_addr_36 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_32
  %tmp_data_515 = load i8* %out_addr_36, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_515, i1 true, i1 false)
  br label %200

; <label>:205                                     ; preds = %206
  %empty_201 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_50)
  %tmp_51 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %214

; <label>:206                                     ; preds = %210, %207
  %i_1_33 = phi i5 [ 0, %207 ], [ %i_12_33, %210 ]
  %exitcond_33 = icmp eq i5 %i_1_33, -16
  %empty_202 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_33 = add i5 %i_1_33, 1
  br i1 %exitcond_33, label %205, label %210

; <label>:207                                     ; preds = %208
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %206

; <label>:208                                     ; preds = %209, %199
  %i_34 = phi i5 [ 0, %199 ], [ %i_11_33, %209 ]
  %exitcond2_33 = icmp eq i5 %i_34, -16
  %empty_203 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_33 = add i5 %i_34, 1
  br i1 %exitcond2_33, label %207, label %209

; <label>:209                                     ; preds = %208
  %empty_204 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_516 = extractvalue { i8, i1, i1 } %empty_204, 0
  %tmp_33_205 = zext i5 %i_34 to i64
  %plaintext_addr_34 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_33_205
  store i8 %tmp_data_516, i8* %plaintext_addr_34, align 1
  br label %208

; <label>:210                                     ; preds = %206
  %tmp_131_33 = zext i5 %i_1_33 to i64
  %out_addr_37 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_33
  %tmp_data_517 = load i8* %out_addr_37, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_517, i1 true, i1 false)
  br label %206

; <label>:211                                     ; preds = %212
  %empty_206 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_51)
  %tmp_52 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %220

; <label>:212                                     ; preds = %216, %213
  %i_1_34 = phi i5 [ 0, %213 ], [ %i_12_34, %216 ]
  %exitcond_34 = icmp eq i5 %i_1_34, -16
  %empty_207 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_34 = add i5 %i_1_34, 1
  br i1 %exitcond_34, label %211, label %216

; <label>:213                                     ; preds = %214
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %212

; <label>:214                                     ; preds = %215, %205
  %i_35 = phi i5 [ 0, %205 ], [ %i_11_34, %215 ]
  %exitcond2_34 = icmp eq i5 %i_35, -16
  %empty_208 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_34 = add i5 %i_35, 1
  br i1 %exitcond2_34, label %213, label %215

; <label>:215                                     ; preds = %214
  %empty_209 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_518 = extractvalue { i8, i1, i1 } %empty_209, 0
  %tmp_34_210 = zext i5 %i_35 to i64
  %plaintext_addr_35 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_34_210
  store i8 %tmp_data_518, i8* %plaintext_addr_35, align 1
  br label %214

; <label>:216                                     ; preds = %212
  %tmp_131_34 = zext i5 %i_1_34 to i64
  %out_addr_38 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_34
  %tmp_data_519 = load i8* %out_addr_38, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_519, i1 true, i1 false)
  br label %212

; <label>:217                                     ; preds = %218
  %empty_211 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_52)
  %tmp_53 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %226

; <label>:218                                     ; preds = %222, %219
  %i_1_35 = phi i5 [ 0, %219 ], [ %i_12_35, %222 ]
  %exitcond_35 = icmp eq i5 %i_1_35, -16
  %empty_212 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_35 = add i5 %i_1_35, 1
  br i1 %exitcond_35, label %217, label %222

; <label>:219                                     ; preds = %220
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %218

; <label>:220                                     ; preds = %221, %211
  %i_36 = phi i5 [ 0, %211 ], [ %i_11_35, %221 ]
  %exitcond2_35 = icmp eq i5 %i_36, -16
  %empty_213 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_35 = add i5 %i_36, 1
  br i1 %exitcond2_35, label %219, label %221

; <label>:221                                     ; preds = %220
  %empty_214 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_520 = extractvalue { i8, i1, i1 } %empty_214, 0
  %tmp_35_215 = zext i5 %i_36 to i64
  %plaintext_addr_36 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_35_215
  store i8 %tmp_data_520, i8* %plaintext_addr_36, align 1
  br label %220

; <label>:222                                     ; preds = %218
  %tmp_131_35 = zext i5 %i_1_35 to i64
  %out_addr_39 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_35
  %tmp_data_521 = load i8* %out_addr_39, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_521, i1 true, i1 false)
  br label %218

; <label>:223                                     ; preds = %224
  %empty_216 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_53)
  %tmp_54 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %232

; <label>:224                                     ; preds = %228, %225
  %i_1_36 = phi i5 [ 0, %225 ], [ %i_12_36, %228 ]
  %exitcond_36 = icmp eq i5 %i_1_36, -16
  %empty_217 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_36 = add i5 %i_1_36, 1
  br i1 %exitcond_36, label %223, label %228

; <label>:225                                     ; preds = %226
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %224

; <label>:226                                     ; preds = %227, %217
  %i_37 = phi i5 [ 0, %217 ], [ %i_11_36, %227 ]
  %exitcond2_36 = icmp eq i5 %i_37, -16
  %empty_218 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_36 = add i5 %i_37, 1
  br i1 %exitcond2_36, label %225, label %227

; <label>:227                                     ; preds = %226
  %empty_219 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_522 = extractvalue { i8, i1, i1 } %empty_219, 0
  %tmp_36_220 = zext i5 %i_37 to i64
  %plaintext_addr_37 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_36_220
  store i8 %tmp_data_522, i8* %plaintext_addr_37, align 1
  br label %226

; <label>:228                                     ; preds = %224
  %tmp_131_36 = zext i5 %i_1_36 to i64
  %out_addr_40 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_36
  %tmp_data_523 = load i8* %out_addr_40, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_523, i1 true, i1 false)
  br label %224

; <label>:229                                     ; preds = %230
  %empty_221 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_54)
  %tmp_55 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %238

; <label>:230                                     ; preds = %234, %231
  %i_1_37 = phi i5 [ 0, %231 ], [ %i_12_37, %234 ]
  %exitcond_37 = icmp eq i5 %i_1_37, -16
  %empty_222 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_37 = add i5 %i_1_37, 1
  br i1 %exitcond_37, label %229, label %234

; <label>:231                                     ; preds = %232
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %230

; <label>:232                                     ; preds = %233, %223
  %i_38 = phi i5 [ 0, %223 ], [ %i_11_37, %233 ]
  %exitcond2_37 = icmp eq i5 %i_38, -16
  %empty_223 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_37 = add i5 %i_38, 1
  br i1 %exitcond2_37, label %231, label %233

; <label>:233                                     ; preds = %232
  %empty_224 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_524 = extractvalue { i8, i1, i1 } %empty_224, 0
  %tmp_37_225 = zext i5 %i_38 to i64
  %plaintext_addr_38 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_37_225
  store i8 %tmp_data_524, i8* %plaintext_addr_38, align 1
  br label %232

; <label>:234                                     ; preds = %230
  %tmp_131_37 = zext i5 %i_1_37 to i64
  %out_addr_41 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_37
  %tmp_data_525 = load i8* %out_addr_41, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_525, i1 true, i1 false)
  br label %230

; <label>:235                                     ; preds = %236
  %empty_226 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_55)
  %tmp_56 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %244

; <label>:236                                     ; preds = %240, %237
  %i_1_38 = phi i5 [ 0, %237 ], [ %i_12_38, %240 ]
  %exitcond_38 = icmp eq i5 %i_1_38, -16
  %empty_227 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_38 = add i5 %i_1_38, 1
  br i1 %exitcond_38, label %235, label %240

; <label>:237                                     ; preds = %238
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %236

; <label>:238                                     ; preds = %239, %229
  %i_39 = phi i5 [ 0, %229 ], [ %i_11_38, %239 ]
  %exitcond2_38 = icmp eq i5 %i_39, -16
  %empty_228 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_38 = add i5 %i_39, 1
  br i1 %exitcond2_38, label %237, label %239

; <label>:239                                     ; preds = %238
  %empty_229 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_526 = extractvalue { i8, i1, i1 } %empty_229, 0
  %tmp_38_230 = zext i5 %i_39 to i64
  %plaintext_addr_39 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_38_230
  store i8 %tmp_data_526, i8* %plaintext_addr_39, align 1
  br label %238

; <label>:240                                     ; preds = %236
  %tmp_131_38 = zext i5 %i_1_38 to i64
  %out_addr_42 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_38
  %tmp_data_527 = load i8* %out_addr_42, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_527, i1 true, i1 false)
  br label %236

; <label>:241                                     ; preds = %242
  %empty_231 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_56)
  %tmp_57 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %250

; <label>:242                                     ; preds = %246, %243
  %i_1_39 = phi i5 [ 0, %243 ], [ %i_12_39, %246 ]
  %exitcond_39 = icmp eq i5 %i_1_39, -16
  %empty_232 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_39 = add i5 %i_1_39, 1
  br i1 %exitcond_39, label %241, label %246

; <label>:243                                     ; preds = %244
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %242

; <label>:244                                     ; preds = %245, %235
  %i_40 = phi i5 [ 0, %235 ], [ %i_11_39, %245 ]
  %exitcond2_39 = icmp eq i5 %i_40, -16
  %empty_233 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_39 = add i5 %i_40, 1
  br i1 %exitcond2_39, label %243, label %245

; <label>:245                                     ; preds = %244
  %empty_234 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_528 = extractvalue { i8, i1, i1 } %empty_234, 0
  %tmp_39_235 = zext i5 %i_40 to i64
  %plaintext_addr_40 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_39_235
  store i8 %tmp_data_528, i8* %plaintext_addr_40, align 1
  br label %244

; <label>:246                                     ; preds = %242
  %tmp_131_39 = zext i5 %i_1_39 to i64
  %out_addr_43 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_39
  %tmp_data_529 = load i8* %out_addr_43, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_529, i1 true, i1 false)
  br label %242

; <label>:247                                     ; preds = %248
  %empty_236 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_57)
  %tmp_58 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %256

; <label>:248                                     ; preds = %252, %249
  %i_1_40 = phi i5 [ 0, %249 ], [ %i_12_40, %252 ]
  %exitcond_40 = icmp eq i5 %i_1_40, -16
  %empty_237 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_40 = add i5 %i_1_40, 1
  br i1 %exitcond_40, label %247, label %252

; <label>:249                                     ; preds = %250
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %248

; <label>:250                                     ; preds = %251, %241
  %i_41 = phi i5 [ 0, %241 ], [ %i_11_40, %251 ]
  %exitcond2_40 = icmp eq i5 %i_41, -16
  %empty_238 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_40 = add i5 %i_41, 1
  br i1 %exitcond2_40, label %249, label %251

; <label>:251                                     ; preds = %250
  %empty_239 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_530 = extractvalue { i8, i1, i1 } %empty_239, 0
  %tmp_40_240 = zext i5 %i_41 to i64
  %plaintext_addr_41 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_40_240
  store i8 %tmp_data_530, i8* %plaintext_addr_41, align 1
  br label %250

; <label>:252                                     ; preds = %248
  %tmp_131_40 = zext i5 %i_1_40 to i64
  %out_addr_44 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_40
  %tmp_data_531 = load i8* %out_addr_44, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_531, i1 true, i1 false)
  br label %248

; <label>:253                                     ; preds = %254
  %empty_241 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_58)
  %tmp_59 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %262

; <label>:254                                     ; preds = %258, %255
  %i_1_41 = phi i5 [ 0, %255 ], [ %i_12_41, %258 ]
  %exitcond_41 = icmp eq i5 %i_1_41, -16
  %empty_242 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_41 = add i5 %i_1_41, 1
  br i1 %exitcond_41, label %253, label %258

; <label>:255                                     ; preds = %256
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %254

; <label>:256                                     ; preds = %257, %247
  %i_42 = phi i5 [ 0, %247 ], [ %i_11_41, %257 ]
  %exitcond2_41 = icmp eq i5 %i_42, -16
  %empty_243 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_41 = add i5 %i_42, 1
  br i1 %exitcond2_41, label %255, label %257

; <label>:257                                     ; preds = %256
  %empty_244 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_532 = extractvalue { i8, i1, i1 } %empty_244, 0
  %tmp_41_245 = zext i5 %i_42 to i64
  %plaintext_addr_42 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_41_245
  store i8 %tmp_data_532, i8* %plaintext_addr_42, align 1
  br label %256

; <label>:258                                     ; preds = %254
  %tmp_131_41 = zext i5 %i_1_41 to i64
  %out_addr_45 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_41
  %tmp_data_533 = load i8* %out_addr_45, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_533, i1 true, i1 false)
  br label %254

; <label>:259                                     ; preds = %260
  %empty_246 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_59)
  %tmp_60 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %268

; <label>:260                                     ; preds = %264, %261
  %i_1_42 = phi i5 [ 0, %261 ], [ %i_12_42, %264 ]
  %exitcond_42 = icmp eq i5 %i_1_42, -16
  %empty_247 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_42 = add i5 %i_1_42, 1
  br i1 %exitcond_42, label %259, label %264

; <label>:261                                     ; preds = %262
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %260

; <label>:262                                     ; preds = %263, %253
  %i_43 = phi i5 [ 0, %253 ], [ %i_11_42, %263 ]
  %exitcond2_42 = icmp eq i5 %i_43, -16
  %empty_248 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_42 = add i5 %i_43, 1
  br i1 %exitcond2_42, label %261, label %263

; <label>:263                                     ; preds = %262
  %empty_249 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_534 = extractvalue { i8, i1, i1 } %empty_249, 0
  %tmp_42_250 = zext i5 %i_43 to i64
  %plaintext_addr_43 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_42_250
  store i8 %tmp_data_534, i8* %plaintext_addr_43, align 1
  br label %262

; <label>:264                                     ; preds = %260
  %tmp_131_42 = zext i5 %i_1_42 to i64
  %out_addr_46 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_42
  %tmp_data_535 = load i8* %out_addr_46, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_535, i1 true, i1 false)
  br label %260

; <label>:265                                     ; preds = %266
  %empty_251 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_60)
  %tmp_61 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %274

; <label>:266                                     ; preds = %270, %267
  %i_1_43 = phi i5 [ 0, %267 ], [ %i_12_43, %270 ]
  %exitcond_43 = icmp eq i5 %i_1_43, -16
  %empty_252 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_43 = add i5 %i_1_43, 1
  br i1 %exitcond_43, label %265, label %270

; <label>:267                                     ; preds = %268
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %266

; <label>:268                                     ; preds = %269, %259
  %i_44 = phi i5 [ 0, %259 ], [ %i_11_43, %269 ]
  %exitcond2_43 = icmp eq i5 %i_44, -16
  %empty_253 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_43 = add i5 %i_44, 1
  br i1 %exitcond2_43, label %267, label %269

; <label>:269                                     ; preds = %268
  %empty_254 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_536 = extractvalue { i8, i1, i1 } %empty_254, 0
  %tmp_43_255 = zext i5 %i_44 to i64
  %plaintext_addr_44 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_43_255
  store i8 %tmp_data_536, i8* %plaintext_addr_44, align 1
  br label %268

; <label>:270                                     ; preds = %266
  %tmp_131_43 = zext i5 %i_1_43 to i64
  %out_addr_47 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_43
  %tmp_data_537 = load i8* %out_addr_47, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_537, i1 true, i1 false)
  br label %266

; <label>:271                                     ; preds = %272
  %empty_256 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_61)
  %tmp_62 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %280

; <label>:272                                     ; preds = %276, %273
  %i_1_44 = phi i5 [ 0, %273 ], [ %i_12_44, %276 ]
  %exitcond_44 = icmp eq i5 %i_1_44, -16
  %empty_257 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_44 = add i5 %i_1_44, 1
  br i1 %exitcond_44, label %271, label %276

; <label>:273                                     ; preds = %274
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %272

; <label>:274                                     ; preds = %275, %265
  %i_45 = phi i5 [ 0, %265 ], [ %i_11_44, %275 ]
  %exitcond2_44 = icmp eq i5 %i_45, -16
  %empty_258 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_44 = add i5 %i_45, 1
  br i1 %exitcond2_44, label %273, label %275

; <label>:275                                     ; preds = %274
  %empty_259 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_538 = extractvalue { i8, i1, i1 } %empty_259, 0
  %tmp_44_260 = zext i5 %i_45 to i64
  %plaintext_addr_45 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_44_260
  store i8 %tmp_data_538, i8* %plaintext_addr_45, align 1
  br label %274

; <label>:276                                     ; preds = %272
  %tmp_131_44 = zext i5 %i_1_44 to i64
  %out_addr_48 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_44
  %tmp_data_539 = load i8* %out_addr_48, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_539, i1 true, i1 false)
  br label %272

; <label>:277                                     ; preds = %278
  %empty_261 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_62)
  %tmp_63 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %286

; <label>:278                                     ; preds = %282, %279
  %i_1_45 = phi i5 [ 0, %279 ], [ %i_12_45, %282 ]
  %exitcond_45 = icmp eq i5 %i_1_45, -16
  %empty_262 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_45 = add i5 %i_1_45, 1
  br i1 %exitcond_45, label %277, label %282

; <label>:279                                     ; preds = %280
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %278

; <label>:280                                     ; preds = %281, %271
  %i_46 = phi i5 [ 0, %271 ], [ %i_11_45, %281 ]
  %exitcond2_45 = icmp eq i5 %i_46, -16
  %empty_263 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_45 = add i5 %i_46, 1
  br i1 %exitcond2_45, label %279, label %281

; <label>:281                                     ; preds = %280
  %empty_264 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_540 = extractvalue { i8, i1, i1 } %empty_264, 0
  %tmp_45_265 = zext i5 %i_46 to i64
  %plaintext_addr_46 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_45_265
  store i8 %tmp_data_540, i8* %plaintext_addr_46, align 1
  br label %280

; <label>:282                                     ; preds = %278
  %tmp_131_45 = zext i5 %i_1_45 to i64
  %out_addr_49 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_45
  %tmp_data_541 = load i8* %out_addr_49, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_541, i1 true, i1 false)
  br label %278

; <label>:283                                     ; preds = %284
  %empty_266 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_63)
  %tmp_64 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %292

; <label>:284                                     ; preds = %288, %285
  %i_1_46 = phi i5 [ 0, %285 ], [ %i_12_46, %288 ]
  %exitcond_46 = icmp eq i5 %i_1_46, -16
  %empty_267 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_46 = add i5 %i_1_46, 1
  br i1 %exitcond_46, label %283, label %288

; <label>:285                                     ; preds = %286
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %284

; <label>:286                                     ; preds = %287, %277
  %i_47 = phi i5 [ 0, %277 ], [ %i_11_46, %287 ]
  %exitcond2_46 = icmp eq i5 %i_47, -16
  %empty_268 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_46 = add i5 %i_47, 1
  br i1 %exitcond2_46, label %285, label %287

; <label>:287                                     ; preds = %286
  %empty_269 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_542 = extractvalue { i8, i1, i1 } %empty_269, 0
  %tmp_46_270 = zext i5 %i_47 to i64
  %plaintext_addr_47 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_46_270
  store i8 %tmp_data_542, i8* %plaintext_addr_47, align 1
  br label %286

; <label>:288                                     ; preds = %284
  %tmp_131_46 = zext i5 %i_1_46 to i64
  %out_addr_50 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_46
  %tmp_data_543 = load i8* %out_addr_50, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_543, i1 true, i1 false)
  br label %284

; <label>:289                                     ; preds = %290
  %empty_271 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_64)
  %tmp_65 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %298

; <label>:290                                     ; preds = %294, %291
  %i_1_47 = phi i5 [ 0, %291 ], [ %i_12_47, %294 ]
  %exitcond_47 = icmp eq i5 %i_1_47, -16
  %empty_272 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_47 = add i5 %i_1_47, 1
  br i1 %exitcond_47, label %289, label %294

; <label>:291                                     ; preds = %292
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %290

; <label>:292                                     ; preds = %293, %283
  %i_48 = phi i5 [ 0, %283 ], [ %i_11_47, %293 ]
  %exitcond2_47 = icmp eq i5 %i_48, -16
  %empty_273 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_47 = add i5 %i_48, 1
  br i1 %exitcond2_47, label %291, label %293

; <label>:293                                     ; preds = %292
  %empty_274 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_544 = extractvalue { i8, i1, i1 } %empty_274, 0
  %tmp_47_275 = zext i5 %i_48 to i64
  %plaintext_addr_48 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_47_275
  store i8 %tmp_data_544, i8* %plaintext_addr_48, align 1
  br label %292

; <label>:294                                     ; preds = %290
  %tmp_131_47 = zext i5 %i_1_47 to i64
  %out_addr_51 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_47
  %tmp_data_545 = load i8* %out_addr_51, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_545, i1 true, i1 false)
  br label %290

; <label>:295                                     ; preds = %296
  %empty_276 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_65)
  %tmp_66 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %304

; <label>:296                                     ; preds = %300, %297
  %i_1_48 = phi i5 [ 0, %297 ], [ %i_12_48, %300 ]
  %exitcond_48 = icmp eq i5 %i_1_48, -16
  %empty_277 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_48 = add i5 %i_1_48, 1
  br i1 %exitcond_48, label %295, label %300

; <label>:297                                     ; preds = %298
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %296

; <label>:298                                     ; preds = %299, %289
  %i_49 = phi i5 [ 0, %289 ], [ %i_11_48, %299 ]
  %exitcond2_48 = icmp eq i5 %i_49, -16
  %empty_278 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_48 = add i5 %i_49, 1
  br i1 %exitcond2_48, label %297, label %299

; <label>:299                                     ; preds = %298
  %empty_279 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_546 = extractvalue { i8, i1, i1 } %empty_279, 0
  %tmp_48_280 = zext i5 %i_49 to i64
  %plaintext_addr_49 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_48_280
  store i8 %tmp_data_546, i8* %plaintext_addr_49, align 1
  br label %298

; <label>:300                                     ; preds = %296
  %tmp_131_48 = zext i5 %i_1_48 to i64
  %out_addr_52 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_48
  %tmp_data_547 = load i8* %out_addr_52, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_547, i1 true, i1 false)
  br label %296

; <label>:301                                     ; preds = %302
  %empty_281 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_66)
  %tmp_67 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %310

; <label>:302                                     ; preds = %306, %303
  %i_1_49 = phi i5 [ 0, %303 ], [ %i_12_49, %306 ]
  %exitcond_49 = icmp eq i5 %i_1_49, -16
  %empty_282 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_49 = add i5 %i_1_49, 1
  br i1 %exitcond_49, label %301, label %306

; <label>:303                                     ; preds = %304
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %302

; <label>:304                                     ; preds = %305, %295
  %i_50 = phi i5 [ 0, %295 ], [ %i_11_49, %305 ]
  %exitcond2_49 = icmp eq i5 %i_50, -16
  %empty_283 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_49 = add i5 %i_50, 1
  br i1 %exitcond2_49, label %303, label %305

; <label>:305                                     ; preds = %304
  %empty_284 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_548 = extractvalue { i8, i1, i1 } %empty_284, 0
  %tmp_49_285 = zext i5 %i_50 to i64
  %plaintext_addr_50 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_49_285
  store i8 %tmp_data_548, i8* %plaintext_addr_50, align 1
  br label %304

; <label>:306                                     ; preds = %302
  %tmp_131_49 = zext i5 %i_1_49 to i64
  %out_addr_53 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_49
  %tmp_data_549 = load i8* %out_addr_53, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_549, i1 true, i1 false)
  br label %302

; <label>:307                                     ; preds = %308
  %empty_286 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_67)
  %tmp_68 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %316

; <label>:308                                     ; preds = %312, %309
  %i_1_50 = phi i5 [ 0, %309 ], [ %i_12_50, %312 ]
  %exitcond_50 = icmp eq i5 %i_1_50, -16
  %empty_287 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_50 = add i5 %i_1_50, 1
  br i1 %exitcond_50, label %307, label %312

; <label>:309                                     ; preds = %310
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %308

; <label>:310                                     ; preds = %311, %301
  %i_51 = phi i5 [ 0, %301 ], [ %i_11_50, %311 ]
  %exitcond2_50 = icmp eq i5 %i_51, -16
  %empty_288 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_50 = add i5 %i_51, 1
  br i1 %exitcond2_50, label %309, label %311

; <label>:311                                     ; preds = %310
  %empty_289 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_550 = extractvalue { i8, i1, i1 } %empty_289, 0
  %tmp_50_290 = zext i5 %i_51 to i64
  %plaintext_addr_51 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_50_290
  store i8 %tmp_data_550, i8* %plaintext_addr_51, align 1
  br label %310

; <label>:312                                     ; preds = %308
  %tmp_131_50 = zext i5 %i_1_50 to i64
  %out_addr_54 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_50
  %tmp_data_551 = load i8* %out_addr_54, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_551, i1 true, i1 false)
  br label %308

; <label>:313                                     ; preds = %314
  %empty_291 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_68)
  %tmp_69 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %322

; <label>:314                                     ; preds = %318, %315
  %i_1_51 = phi i5 [ 0, %315 ], [ %i_12_51, %318 ]
  %exitcond_51 = icmp eq i5 %i_1_51, -16
  %empty_292 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_51 = add i5 %i_1_51, 1
  br i1 %exitcond_51, label %313, label %318

; <label>:315                                     ; preds = %316
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %314

; <label>:316                                     ; preds = %317, %307
  %i_52 = phi i5 [ 0, %307 ], [ %i_11_51, %317 ]
  %exitcond2_51 = icmp eq i5 %i_52, -16
  %empty_293 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_51 = add i5 %i_52, 1
  br i1 %exitcond2_51, label %315, label %317

; <label>:317                                     ; preds = %316
  %empty_294 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_552 = extractvalue { i8, i1, i1 } %empty_294, 0
  %tmp_51_295 = zext i5 %i_52 to i64
  %plaintext_addr_52 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_51_295
  store i8 %tmp_data_552, i8* %plaintext_addr_52, align 1
  br label %316

; <label>:318                                     ; preds = %314
  %tmp_131_51 = zext i5 %i_1_51 to i64
  %out_addr_55 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_51
  %tmp_data_553 = load i8* %out_addr_55, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_553, i1 true, i1 false)
  br label %314

; <label>:319                                     ; preds = %320
  %empty_296 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_69)
  %tmp_70 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %328

; <label>:320                                     ; preds = %324, %321
  %i_1_52 = phi i5 [ 0, %321 ], [ %i_12_52, %324 ]
  %exitcond_52 = icmp eq i5 %i_1_52, -16
  %empty_297 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_52 = add i5 %i_1_52, 1
  br i1 %exitcond_52, label %319, label %324

; <label>:321                                     ; preds = %322
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %320

; <label>:322                                     ; preds = %323, %313
  %i_53 = phi i5 [ 0, %313 ], [ %i_11_52, %323 ]
  %exitcond2_52 = icmp eq i5 %i_53, -16
  %empty_298 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_52 = add i5 %i_53, 1
  br i1 %exitcond2_52, label %321, label %323

; <label>:323                                     ; preds = %322
  %empty_299 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_554 = extractvalue { i8, i1, i1 } %empty_299, 0
  %tmp_52_300 = zext i5 %i_53 to i64
  %plaintext_addr_53 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_52_300
  store i8 %tmp_data_554, i8* %plaintext_addr_53, align 1
  br label %322

; <label>:324                                     ; preds = %320
  %tmp_131_52 = zext i5 %i_1_52 to i64
  %out_addr_56 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_52
  %tmp_data_555 = load i8* %out_addr_56, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_555, i1 true, i1 false)
  br label %320

; <label>:325                                     ; preds = %326
  %empty_301 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_70)
  %tmp_71 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %334

; <label>:326                                     ; preds = %330, %327
  %i_1_53 = phi i5 [ 0, %327 ], [ %i_12_53, %330 ]
  %exitcond_53 = icmp eq i5 %i_1_53, -16
  %empty_302 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_53 = add i5 %i_1_53, 1
  br i1 %exitcond_53, label %325, label %330

; <label>:327                                     ; preds = %328
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %326

; <label>:328                                     ; preds = %329, %319
  %i_54 = phi i5 [ 0, %319 ], [ %i_11_53, %329 ]
  %exitcond2_53 = icmp eq i5 %i_54, -16
  %empty_303 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_53 = add i5 %i_54, 1
  br i1 %exitcond2_53, label %327, label %329

; <label>:329                                     ; preds = %328
  %empty_304 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_556 = extractvalue { i8, i1, i1 } %empty_304, 0
  %tmp_53_305 = zext i5 %i_54 to i64
  %plaintext_addr_54 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_53_305
  store i8 %tmp_data_556, i8* %plaintext_addr_54, align 1
  br label %328

; <label>:330                                     ; preds = %326
  %tmp_131_53 = zext i5 %i_1_53 to i64
  %out_addr_57 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_53
  %tmp_data_557 = load i8* %out_addr_57, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_557, i1 true, i1 false)
  br label %326

; <label>:331                                     ; preds = %332
  %empty_306 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_71)
  %tmp_72 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %340

; <label>:332                                     ; preds = %336, %333
  %i_1_54 = phi i5 [ 0, %333 ], [ %i_12_54, %336 ]
  %exitcond_54 = icmp eq i5 %i_1_54, -16
  %empty_307 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_54 = add i5 %i_1_54, 1
  br i1 %exitcond_54, label %331, label %336

; <label>:333                                     ; preds = %334
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %332

; <label>:334                                     ; preds = %335, %325
  %i_55 = phi i5 [ 0, %325 ], [ %i_11_54, %335 ]
  %exitcond2_54 = icmp eq i5 %i_55, -16
  %empty_308 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_54 = add i5 %i_55, 1
  br i1 %exitcond2_54, label %333, label %335

; <label>:335                                     ; preds = %334
  %empty_309 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_558 = extractvalue { i8, i1, i1 } %empty_309, 0
  %tmp_54_310 = zext i5 %i_55 to i64
  %plaintext_addr_55 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_54_310
  store i8 %tmp_data_558, i8* %plaintext_addr_55, align 1
  br label %334

; <label>:336                                     ; preds = %332
  %tmp_131_54 = zext i5 %i_1_54 to i64
  %out_addr_58 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_54
  %tmp_data_559 = load i8* %out_addr_58, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_559, i1 true, i1 false)
  br label %332

; <label>:337                                     ; preds = %338
  %empty_311 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_72)
  %tmp_73 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %346

; <label>:338                                     ; preds = %342, %339
  %i_1_55 = phi i5 [ 0, %339 ], [ %i_12_55, %342 ]
  %exitcond_55 = icmp eq i5 %i_1_55, -16
  %empty_312 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_55 = add i5 %i_1_55, 1
  br i1 %exitcond_55, label %337, label %342

; <label>:339                                     ; preds = %340
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %338

; <label>:340                                     ; preds = %341, %331
  %i_56 = phi i5 [ 0, %331 ], [ %i_11_55, %341 ]
  %exitcond2_55 = icmp eq i5 %i_56, -16
  %empty_313 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_55 = add i5 %i_56, 1
  br i1 %exitcond2_55, label %339, label %341

; <label>:341                                     ; preds = %340
  %empty_314 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_560 = extractvalue { i8, i1, i1 } %empty_314, 0
  %tmp_55_315 = zext i5 %i_56 to i64
  %plaintext_addr_56 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_55_315
  store i8 %tmp_data_560, i8* %plaintext_addr_56, align 1
  br label %340

; <label>:342                                     ; preds = %338
  %tmp_131_55 = zext i5 %i_1_55 to i64
  %out_addr_59 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_55
  %tmp_data_561 = load i8* %out_addr_59, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_561, i1 true, i1 false)
  br label %338

; <label>:343                                     ; preds = %344
  %empty_316 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_73)
  %tmp_74 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %352

; <label>:344                                     ; preds = %348, %345
  %i_1_56 = phi i5 [ 0, %345 ], [ %i_12_56, %348 ]
  %exitcond_56 = icmp eq i5 %i_1_56, -16
  %empty_317 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_56 = add i5 %i_1_56, 1
  br i1 %exitcond_56, label %343, label %348

; <label>:345                                     ; preds = %346
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %344

; <label>:346                                     ; preds = %347, %337
  %i_57 = phi i5 [ 0, %337 ], [ %i_11_56, %347 ]
  %exitcond2_56 = icmp eq i5 %i_57, -16
  %empty_318 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_56 = add i5 %i_57, 1
  br i1 %exitcond2_56, label %345, label %347

; <label>:347                                     ; preds = %346
  %empty_319 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_562 = extractvalue { i8, i1, i1 } %empty_319, 0
  %tmp_56_320 = zext i5 %i_57 to i64
  %plaintext_addr_57 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_56_320
  store i8 %tmp_data_562, i8* %plaintext_addr_57, align 1
  br label %346

; <label>:348                                     ; preds = %344
  %tmp_131_56 = zext i5 %i_1_56 to i64
  %out_addr_60 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_56
  %tmp_data_563 = load i8* %out_addr_60, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_563, i1 true, i1 false)
  br label %344

; <label>:349                                     ; preds = %350
  %empty_321 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_74)
  %tmp_75 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %358

; <label>:350                                     ; preds = %354, %351
  %i_1_57 = phi i5 [ 0, %351 ], [ %i_12_57, %354 ]
  %exitcond_57 = icmp eq i5 %i_1_57, -16
  %empty_322 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_57 = add i5 %i_1_57, 1
  br i1 %exitcond_57, label %349, label %354

; <label>:351                                     ; preds = %352
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %350

; <label>:352                                     ; preds = %353, %343
  %i_58 = phi i5 [ 0, %343 ], [ %i_11_57, %353 ]
  %exitcond2_57 = icmp eq i5 %i_58, -16
  %empty_323 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_57 = add i5 %i_58, 1
  br i1 %exitcond2_57, label %351, label %353

; <label>:353                                     ; preds = %352
  %empty_324 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_564 = extractvalue { i8, i1, i1 } %empty_324, 0
  %tmp_57_325 = zext i5 %i_58 to i64
  %plaintext_addr_58 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_57_325
  store i8 %tmp_data_564, i8* %plaintext_addr_58, align 1
  br label %352

; <label>:354                                     ; preds = %350
  %tmp_131_57 = zext i5 %i_1_57 to i64
  %out_addr_61 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_57
  %tmp_data_565 = load i8* %out_addr_61, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_565, i1 true, i1 false)
  br label %350

; <label>:355                                     ; preds = %356
  %empty_326 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_75)
  %tmp_76 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %364

; <label>:356                                     ; preds = %360, %357
  %i_1_58 = phi i5 [ 0, %357 ], [ %i_12_58, %360 ]
  %exitcond_58 = icmp eq i5 %i_1_58, -16
  %empty_327 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_58 = add i5 %i_1_58, 1
  br i1 %exitcond_58, label %355, label %360

; <label>:357                                     ; preds = %358
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %356

; <label>:358                                     ; preds = %359, %349
  %i_59 = phi i5 [ 0, %349 ], [ %i_11_58, %359 ]
  %exitcond2_58 = icmp eq i5 %i_59, -16
  %empty_328 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_58 = add i5 %i_59, 1
  br i1 %exitcond2_58, label %357, label %359

; <label>:359                                     ; preds = %358
  %empty_329 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_566 = extractvalue { i8, i1, i1 } %empty_329, 0
  %tmp_58_330 = zext i5 %i_59 to i64
  %plaintext_addr_59 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_58_330
  store i8 %tmp_data_566, i8* %plaintext_addr_59, align 1
  br label %358

; <label>:360                                     ; preds = %356
  %tmp_131_58 = zext i5 %i_1_58 to i64
  %out_addr_62 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_58
  %tmp_data_567 = load i8* %out_addr_62, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_567, i1 true, i1 false)
  br label %356

; <label>:361                                     ; preds = %362
  %empty_331 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_76)
  %tmp_77 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %370

; <label>:362                                     ; preds = %366, %363
  %i_1_59 = phi i5 [ 0, %363 ], [ %i_12_59, %366 ]
  %exitcond_59 = icmp eq i5 %i_1_59, -16
  %empty_332 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_59 = add i5 %i_1_59, 1
  br i1 %exitcond_59, label %361, label %366

; <label>:363                                     ; preds = %364
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %362

; <label>:364                                     ; preds = %365, %355
  %i_60 = phi i5 [ 0, %355 ], [ %i_11_59, %365 ]
  %exitcond2_59 = icmp eq i5 %i_60, -16
  %empty_333 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_59 = add i5 %i_60, 1
  br i1 %exitcond2_59, label %363, label %365

; <label>:365                                     ; preds = %364
  %empty_334 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_568 = extractvalue { i8, i1, i1 } %empty_334, 0
  %tmp_59_335 = zext i5 %i_60 to i64
  %plaintext_addr_60 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_59_335
  store i8 %tmp_data_568, i8* %plaintext_addr_60, align 1
  br label %364

; <label>:366                                     ; preds = %362
  %tmp_131_59 = zext i5 %i_1_59 to i64
  %out_addr_63 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_59
  %tmp_data_569 = load i8* %out_addr_63, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_569, i1 true, i1 false)
  br label %362

; <label>:367                                     ; preds = %368
  %empty_336 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_77)
  %tmp_78 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %376

; <label>:368                                     ; preds = %372, %369
  %i_1_60 = phi i5 [ 0, %369 ], [ %i_12_60, %372 ]
  %exitcond_60 = icmp eq i5 %i_1_60, -16
  %empty_337 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_60 = add i5 %i_1_60, 1
  br i1 %exitcond_60, label %367, label %372

; <label>:369                                     ; preds = %370
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %368

; <label>:370                                     ; preds = %371, %361
  %i_61 = phi i5 [ 0, %361 ], [ %i_11_60, %371 ]
  %exitcond2_60 = icmp eq i5 %i_61, -16
  %empty_338 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_60 = add i5 %i_61, 1
  br i1 %exitcond2_60, label %369, label %371

; <label>:371                                     ; preds = %370
  %empty_339 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_570 = extractvalue { i8, i1, i1 } %empty_339, 0
  %tmp_60_340 = zext i5 %i_61 to i64
  %plaintext_addr_61 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_60_340
  store i8 %tmp_data_570, i8* %plaintext_addr_61, align 1
  br label %370

; <label>:372                                     ; preds = %368
  %tmp_131_60 = zext i5 %i_1_60 to i64
  %out_addr_64 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_60
  %tmp_data_571 = load i8* %out_addr_64, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_571, i1 true, i1 false)
  br label %368

; <label>:373                                     ; preds = %374
  %empty_341 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_78)
  %tmp_79 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %382

; <label>:374                                     ; preds = %378, %375
  %i_1_61 = phi i5 [ 0, %375 ], [ %i_12_61, %378 ]
  %exitcond_61 = icmp eq i5 %i_1_61, -16
  %empty_342 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_61 = add i5 %i_1_61, 1
  br i1 %exitcond_61, label %373, label %378

; <label>:375                                     ; preds = %376
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %374

; <label>:376                                     ; preds = %377, %367
  %i_62 = phi i5 [ 0, %367 ], [ %i_11_61, %377 ]
  %exitcond2_61 = icmp eq i5 %i_62, -16
  %empty_343 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_61 = add i5 %i_62, 1
  br i1 %exitcond2_61, label %375, label %377

; <label>:377                                     ; preds = %376
  %empty_344 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_572 = extractvalue { i8, i1, i1 } %empty_344, 0
  %tmp_61_345 = zext i5 %i_62 to i64
  %plaintext_addr_62 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_61_345
  store i8 %tmp_data_572, i8* %plaintext_addr_62, align 1
  br label %376

; <label>:378                                     ; preds = %374
  %tmp_131_61 = zext i5 %i_1_61 to i64
  %out_addr_65 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_61
  %tmp_data_573 = load i8* %out_addr_65, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_573, i1 true, i1 false)
  br label %374

; <label>:379                                     ; preds = %380
  %empty_346 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_79)
  %tmp_80 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %388

; <label>:380                                     ; preds = %384, %381
  %i_1_62 = phi i5 [ 0, %381 ], [ %i_12_62, %384 ]
  %exitcond_62 = icmp eq i5 %i_1_62, -16
  %empty_347 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_62 = add i5 %i_1_62, 1
  br i1 %exitcond_62, label %379, label %384

; <label>:381                                     ; preds = %382
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %380

; <label>:382                                     ; preds = %383, %373
  %i_63 = phi i5 [ 0, %373 ], [ %i_11_62, %383 ]
  %exitcond2_62 = icmp eq i5 %i_63, -16
  %empty_348 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_62 = add i5 %i_63, 1
  br i1 %exitcond2_62, label %381, label %383

; <label>:383                                     ; preds = %382
  %empty_349 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_574 = extractvalue { i8, i1, i1 } %empty_349, 0
  %tmp_62_350 = zext i5 %i_63 to i64
  %plaintext_addr_63 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_62_350
  store i8 %tmp_data_574, i8* %plaintext_addr_63, align 1
  br label %382

; <label>:384                                     ; preds = %380
  %tmp_131_62 = zext i5 %i_1_62 to i64
  %out_addr_66 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_62
  %tmp_data_575 = load i8* %out_addr_66, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_575, i1 true, i1 false)
  br label %380

; <label>:385                                     ; preds = %386
  %empty_351 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_80)
  %tmp_81 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %394

; <label>:386                                     ; preds = %390, %387
  %i_1_63 = phi i5 [ 0, %387 ], [ %i_12_63, %390 ]
  %exitcond_63 = icmp eq i5 %i_1_63, -16
  %empty_352 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_63 = add i5 %i_1_63, 1
  br i1 %exitcond_63, label %385, label %390

; <label>:387                                     ; preds = %388
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %386

; <label>:388                                     ; preds = %389, %379
  %i_64 = phi i5 [ 0, %379 ], [ %i_11_63, %389 ]
  %exitcond2_63 = icmp eq i5 %i_64, -16
  %empty_353 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_63 = add i5 %i_64, 1
  br i1 %exitcond2_63, label %387, label %389

; <label>:389                                     ; preds = %388
  %empty_354 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_576 = extractvalue { i8, i1, i1 } %empty_354, 0
  %tmp_63_355 = zext i5 %i_64 to i64
  %plaintext_addr_64 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_63_355
  store i8 %tmp_data_576, i8* %plaintext_addr_64, align 1
  br label %388

; <label>:390                                     ; preds = %386
  %tmp_131_63 = zext i5 %i_1_63 to i64
  %out_addr_67 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_63
  %tmp_data_577 = load i8* %out_addr_67, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_577, i1 true, i1 false)
  br label %386

; <label>:391                                     ; preds = %392
  %empty_356 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_81)
  %tmp_82 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %400

; <label>:392                                     ; preds = %396, %393
  %i_1_64 = phi i5 [ 0, %393 ], [ %i_12_64, %396 ]
  %exitcond_64 = icmp eq i5 %i_1_64, -16
  %empty_357 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_64 = add i5 %i_1_64, 1
  br i1 %exitcond_64, label %391, label %396

; <label>:393                                     ; preds = %394
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %392

; <label>:394                                     ; preds = %395, %385
  %i_65 = phi i5 [ 0, %385 ], [ %i_11_64, %395 ]
  %exitcond2_64 = icmp eq i5 %i_65, -16
  %empty_358 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_64 = add i5 %i_65, 1
  br i1 %exitcond2_64, label %393, label %395

; <label>:395                                     ; preds = %394
  %empty_359 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_578 = extractvalue { i8, i1, i1 } %empty_359, 0
  %tmp_64_360 = zext i5 %i_65 to i64
  %plaintext_addr_65 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_64_360
  store i8 %tmp_data_578, i8* %plaintext_addr_65, align 1
  br label %394

; <label>:396                                     ; preds = %392
  %tmp_131_64 = zext i5 %i_1_64 to i64
  %out_addr_68 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_64
  %tmp_data_579 = load i8* %out_addr_68, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_579, i1 true, i1 false)
  br label %392

; <label>:397                                     ; preds = %398
  %empty_361 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_82)
  %tmp_83 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %406

; <label>:398                                     ; preds = %402, %399
  %i_1_65 = phi i5 [ 0, %399 ], [ %i_12_65, %402 ]
  %exitcond_65 = icmp eq i5 %i_1_65, -16
  %empty_362 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_65 = add i5 %i_1_65, 1
  br i1 %exitcond_65, label %397, label %402

; <label>:399                                     ; preds = %400
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %398

; <label>:400                                     ; preds = %401, %391
  %i_66 = phi i5 [ 0, %391 ], [ %i_11_65, %401 ]
  %exitcond2_65 = icmp eq i5 %i_66, -16
  %empty_363 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_65 = add i5 %i_66, 1
  br i1 %exitcond2_65, label %399, label %401

; <label>:401                                     ; preds = %400
  %empty_364 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_580 = extractvalue { i8, i1, i1 } %empty_364, 0
  %tmp_65_365 = zext i5 %i_66 to i64
  %plaintext_addr_66 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_65_365
  store i8 %tmp_data_580, i8* %plaintext_addr_66, align 1
  br label %400

; <label>:402                                     ; preds = %398
  %tmp_131_65 = zext i5 %i_1_65 to i64
  %out_addr_69 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_65
  %tmp_data_581 = load i8* %out_addr_69, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_581, i1 true, i1 false)
  br label %398

; <label>:403                                     ; preds = %404
  %empty_366 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_83)
  %tmp_84 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %412

; <label>:404                                     ; preds = %408, %405
  %i_1_66 = phi i5 [ 0, %405 ], [ %i_12_66, %408 ]
  %exitcond_66 = icmp eq i5 %i_1_66, -16
  %empty_367 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_66 = add i5 %i_1_66, 1
  br i1 %exitcond_66, label %403, label %408

; <label>:405                                     ; preds = %406
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %404

; <label>:406                                     ; preds = %407, %397
  %i_67 = phi i5 [ 0, %397 ], [ %i_11_66, %407 ]
  %exitcond2_66 = icmp eq i5 %i_67, -16
  %empty_368 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_66 = add i5 %i_67, 1
  br i1 %exitcond2_66, label %405, label %407

; <label>:407                                     ; preds = %406
  %empty_369 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_582 = extractvalue { i8, i1, i1 } %empty_369, 0
  %tmp_66_370 = zext i5 %i_67 to i64
  %plaintext_addr_67 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_66_370
  store i8 %tmp_data_582, i8* %plaintext_addr_67, align 1
  br label %406

; <label>:408                                     ; preds = %404
  %tmp_131_66 = zext i5 %i_1_66 to i64
  %out_addr_70 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_66
  %tmp_data_583 = load i8* %out_addr_70, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_583, i1 true, i1 false)
  br label %404

; <label>:409                                     ; preds = %410
  %empty_371 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_84)
  %tmp_85 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %418

; <label>:410                                     ; preds = %414, %411
  %i_1_67 = phi i5 [ 0, %411 ], [ %i_12_67, %414 ]
  %exitcond_67 = icmp eq i5 %i_1_67, -16
  %empty_372 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_67 = add i5 %i_1_67, 1
  br i1 %exitcond_67, label %409, label %414

; <label>:411                                     ; preds = %412
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %410

; <label>:412                                     ; preds = %413, %403
  %i_68 = phi i5 [ 0, %403 ], [ %i_11_67, %413 ]
  %exitcond2_67 = icmp eq i5 %i_68, -16
  %empty_373 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_67 = add i5 %i_68, 1
  br i1 %exitcond2_67, label %411, label %413

; <label>:413                                     ; preds = %412
  %empty_374 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_584 = extractvalue { i8, i1, i1 } %empty_374, 0
  %tmp_67_375 = zext i5 %i_68 to i64
  %plaintext_addr_68 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_67_375
  store i8 %tmp_data_584, i8* %plaintext_addr_68, align 1
  br label %412

; <label>:414                                     ; preds = %410
  %tmp_131_67 = zext i5 %i_1_67 to i64
  %out_addr_71 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_67
  %tmp_data_585 = load i8* %out_addr_71, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_585, i1 true, i1 false)
  br label %410

; <label>:415                                     ; preds = %416
  %empty_376 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_85)
  %tmp_86 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %424

; <label>:416                                     ; preds = %420, %417
  %i_1_68 = phi i5 [ 0, %417 ], [ %i_12_68, %420 ]
  %exitcond_68 = icmp eq i5 %i_1_68, -16
  %empty_377 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_68 = add i5 %i_1_68, 1
  br i1 %exitcond_68, label %415, label %420

; <label>:417                                     ; preds = %418
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %416

; <label>:418                                     ; preds = %419, %409
  %i_69 = phi i5 [ 0, %409 ], [ %i_11_68, %419 ]
  %exitcond2_68 = icmp eq i5 %i_69, -16
  %empty_378 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_68 = add i5 %i_69, 1
  br i1 %exitcond2_68, label %417, label %419

; <label>:419                                     ; preds = %418
  %empty_379 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_586 = extractvalue { i8, i1, i1 } %empty_379, 0
  %tmp_68_380 = zext i5 %i_69 to i64
  %plaintext_addr_69 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_68_380
  store i8 %tmp_data_586, i8* %plaintext_addr_69, align 1
  br label %418

; <label>:420                                     ; preds = %416
  %tmp_131_68 = zext i5 %i_1_68 to i64
  %out_addr_72 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_68
  %tmp_data_587 = load i8* %out_addr_72, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_587, i1 true, i1 false)
  br label %416

; <label>:421                                     ; preds = %422
  %empty_381 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_86)
  %tmp_87 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %430

; <label>:422                                     ; preds = %426, %423
  %i_1_69 = phi i5 [ 0, %423 ], [ %i_12_69, %426 ]
  %exitcond_69 = icmp eq i5 %i_1_69, -16
  %empty_382 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_69 = add i5 %i_1_69, 1
  br i1 %exitcond_69, label %421, label %426

; <label>:423                                     ; preds = %424
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %422

; <label>:424                                     ; preds = %425, %415
  %i_70 = phi i5 [ 0, %415 ], [ %i_11_69, %425 ]
  %exitcond2_69 = icmp eq i5 %i_70, -16
  %empty_383 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_69 = add i5 %i_70, 1
  br i1 %exitcond2_69, label %423, label %425

; <label>:425                                     ; preds = %424
  %empty_384 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_588 = extractvalue { i8, i1, i1 } %empty_384, 0
  %tmp_69_385 = zext i5 %i_70 to i64
  %plaintext_addr_70 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_69_385
  store i8 %tmp_data_588, i8* %plaintext_addr_70, align 1
  br label %424

; <label>:426                                     ; preds = %422
  %tmp_131_69 = zext i5 %i_1_69 to i64
  %out_addr_73 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_69
  %tmp_data_589 = load i8* %out_addr_73, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_589, i1 true, i1 false)
  br label %422

; <label>:427                                     ; preds = %428
  %empty_386 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_87)
  %tmp_88 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %436

; <label>:428                                     ; preds = %432, %429
  %i_1_70 = phi i5 [ 0, %429 ], [ %i_12_70, %432 ]
  %exitcond_70 = icmp eq i5 %i_1_70, -16
  %empty_387 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_70 = add i5 %i_1_70, 1
  br i1 %exitcond_70, label %427, label %432

; <label>:429                                     ; preds = %430
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %428

; <label>:430                                     ; preds = %431, %421
  %i_71 = phi i5 [ 0, %421 ], [ %i_11_70, %431 ]
  %exitcond2_70 = icmp eq i5 %i_71, -16
  %empty_388 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_70 = add i5 %i_71, 1
  br i1 %exitcond2_70, label %429, label %431

; <label>:431                                     ; preds = %430
  %empty_389 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_590 = extractvalue { i8, i1, i1 } %empty_389, 0
  %tmp_70_390 = zext i5 %i_71 to i64
  %plaintext_addr_71 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_70_390
  store i8 %tmp_data_590, i8* %plaintext_addr_71, align 1
  br label %430

; <label>:432                                     ; preds = %428
  %tmp_131_70 = zext i5 %i_1_70 to i64
  %out_addr_74 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_70
  %tmp_data_591 = load i8* %out_addr_74, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_591, i1 true, i1 false)
  br label %428

; <label>:433                                     ; preds = %434
  %empty_391 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_88)
  %tmp_89 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %442

; <label>:434                                     ; preds = %438, %435
  %i_1_71 = phi i5 [ 0, %435 ], [ %i_12_71, %438 ]
  %exitcond_71 = icmp eq i5 %i_1_71, -16
  %empty_392 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_71 = add i5 %i_1_71, 1
  br i1 %exitcond_71, label %433, label %438

; <label>:435                                     ; preds = %436
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %434

; <label>:436                                     ; preds = %437, %427
  %i_72 = phi i5 [ 0, %427 ], [ %i_11_71, %437 ]
  %exitcond2_71 = icmp eq i5 %i_72, -16
  %empty_393 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_71 = add i5 %i_72, 1
  br i1 %exitcond2_71, label %435, label %437

; <label>:437                                     ; preds = %436
  %empty_394 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_592 = extractvalue { i8, i1, i1 } %empty_394, 0
  %tmp_71_395 = zext i5 %i_72 to i64
  %plaintext_addr_72 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_71_395
  store i8 %tmp_data_592, i8* %plaintext_addr_72, align 1
  br label %436

; <label>:438                                     ; preds = %434
  %tmp_131_71 = zext i5 %i_1_71 to i64
  %out_addr_75 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_71
  %tmp_data_593 = load i8* %out_addr_75, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_593, i1 true, i1 false)
  br label %434

; <label>:439                                     ; preds = %440
  %empty_396 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_89)
  %tmp_90 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %448

; <label>:440                                     ; preds = %444, %441
  %i_1_72 = phi i5 [ 0, %441 ], [ %i_12_72, %444 ]
  %exitcond_72 = icmp eq i5 %i_1_72, -16
  %empty_397 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_72 = add i5 %i_1_72, 1
  br i1 %exitcond_72, label %439, label %444

; <label>:441                                     ; preds = %442
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %440

; <label>:442                                     ; preds = %443, %433
  %i_73 = phi i5 [ 0, %433 ], [ %i_11_72, %443 ]
  %exitcond2_72 = icmp eq i5 %i_73, -16
  %empty_398 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_72 = add i5 %i_73, 1
  br i1 %exitcond2_72, label %441, label %443

; <label>:443                                     ; preds = %442
  %empty_399 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_594 = extractvalue { i8, i1, i1 } %empty_399, 0
  %tmp_72_400 = zext i5 %i_73 to i64
  %plaintext_addr_73 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_72_400
  store i8 %tmp_data_594, i8* %plaintext_addr_73, align 1
  br label %442

; <label>:444                                     ; preds = %440
  %tmp_131_72 = zext i5 %i_1_72 to i64
  %out_addr_76 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_72
  %tmp_data_595 = load i8* %out_addr_76, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_595, i1 true, i1 false)
  br label %440

; <label>:445                                     ; preds = %446
  %empty_401 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_90)
  %tmp_91 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %454

; <label>:446                                     ; preds = %450, %447
  %i_1_73 = phi i5 [ 0, %447 ], [ %i_12_73, %450 ]
  %exitcond_73 = icmp eq i5 %i_1_73, -16
  %empty_402 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_73 = add i5 %i_1_73, 1
  br i1 %exitcond_73, label %445, label %450

; <label>:447                                     ; preds = %448
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %446

; <label>:448                                     ; preds = %449, %439
  %i_74 = phi i5 [ 0, %439 ], [ %i_11_73, %449 ]
  %exitcond2_73 = icmp eq i5 %i_74, -16
  %empty_403 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_73 = add i5 %i_74, 1
  br i1 %exitcond2_73, label %447, label %449

; <label>:449                                     ; preds = %448
  %empty_404 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_596 = extractvalue { i8, i1, i1 } %empty_404, 0
  %tmp_73_405 = zext i5 %i_74 to i64
  %plaintext_addr_74 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_73_405
  store i8 %tmp_data_596, i8* %plaintext_addr_74, align 1
  br label %448

; <label>:450                                     ; preds = %446
  %tmp_131_73 = zext i5 %i_1_73 to i64
  %out_addr_77 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_73
  %tmp_data_597 = load i8* %out_addr_77, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_597, i1 true, i1 false)
  br label %446

; <label>:451                                     ; preds = %452
  %empty_406 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_91)
  %tmp_92 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %460

; <label>:452                                     ; preds = %456, %453
  %i_1_74 = phi i5 [ 0, %453 ], [ %i_12_74, %456 ]
  %exitcond_74 = icmp eq i5 %i_1_74, -16
  %empty_407 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_74 = add i5 %i_1_74, 1
  br i1 %exitcond_74, label %451, label %456

; <label>:453                                     ; preds = %454
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %452

; <label>:454                                     ; preds = %455, %445
  %i_75 = phi i5 [ 0, %445 ], [ %i_11_74, %455 ]
  %exitcond2_74 = icmp eq i5 %i_75, -16
  %empty_408 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_74 = add i5 %i_75, 1
  br i1 %exitcond2_74, label %453, label %455

; <label>:455                                     ; preds = %454
  %empty_409 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_598 = extractvalue { i8, i1, i1 } %empty_409, 0
  %tmp_74_410 = zext i5 %i_75 to i64
  %plaintext_addr_75 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_74_410
  store i8 %tmp_data_598, i8* %plaintext_addr_75, align 1
  br label %454

; <label>:456                                     ; preds = %452
  %tmp_131_74 = zext i5 %i_1_74 to i64
  %out_addr_78 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_74
  %tmp_data_599 = load i8* %out_addr_78, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_599, i1 true, i1 false)
  br label %452

; <label>:457                                     ; preds = %458
  %empty_411 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_92)
  %tmp_93 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %466

; <label>:458                                     ; preds = %462, %459
  %i_1_75 = phi i5 [ 0, %459 ], [ %i_12_75, %462 ]
  %exitcond_75 = icmp eq i5 %i_1_75, -16
  %empty_412 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_75 = add i5 %i_1_75, 1
  br i1 %exitcond_75, label %457, label %462

; <label>:459                                     ; preds = %460
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %458

; <label>:460                                     ; preds = %461, %451
  %i_76 = phi i5 [ 0, %451 ], [ %i_11_75, %461 ]
  %exitcond2_75 = icmp eq i5 %i_76, -16
  %empty_413 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_75 = add i5 %i_76, 1
  br i1 %exitcond2_75, label %459, label %461

; <label>:461                                     ; preds = %460
  %empty_414 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_600 = extractvalue { i8, i1, i1 } %empty_414, 0
  %tmp_75_415 = zext i5 %i_76 to i64
  %plaintext_addr_76 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_75_415
  store i8 %tmp_data_600, i8* %plaintext_addr_76, align 1
  br label %460

; <label>:462                                     ; preds = %458
  %tmp_131_75 = zext i5 %i_1_75 to i64
  %out_addr_79 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_75
  %tmp_data_601 = load i8* %out_addr_79, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_601, i1 true, i1 false)
  br label %458

; <label>:463                                     ; preds = %464
  %empty_416 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_93)
  %tmp_94 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %472

; <label>:464                                     ; preds = %468, %465
  %i_1_76 = phi i5 [ 0, %465 ], [ %i_12_76, %468 ]
  %exitcond_76 = icmp eq i5 %i_1_76, -16
  %empty_417 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_76 = add i5 %i_1_76, 1
  br i1 %exitcond_76, label %463, label %468

; <label>:465                                     ; preds = %466
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %464

; <label>:466                                     ; preds = %467, %457
  %i_77 = phi i5 [ 0, %457 ], [ %i_11_76, %467 ]
  %exitcond2_76 = icmp eq i5 %i_77, -16
  %empty_418 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_76 = add i5 %i_77, 1
  br i1 %exitcond2_76, label %465, label %467

; <label>:467                                     ; preds = %466
  %empty_419 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_602 = extractvalue { i8, i1, i1 } %empty_419, 0
  %tmp_76_420 = zext i5 %i_77 to i64
  %plaintext_addr_77 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_76_420
  store i8 %tmp_data_602, i8* %plaintext_addr_77, align 1
  br label %466

; <label>:468                                     ; preds = %464
  %tmp_131_76 = zext i5 %i_1_76 to i64
  %out_addr_80 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_76
  %tmp_data_603 = load i8* %out_addr_80, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_603, i1 true, i1 false)
  br label %464

; <label>:469                                     ; preds = %470
  %empty_421 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_94)
  %tmp_95 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %478

; <label>:470                                     ; preds = %474, %471
  %i_1_77 = phi i5 [ 0, %471 ], [ %i_12_77, %474 ]
  %exitcond_77 = icmp eq i5 %i_1_77, -16
  %empty_422 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_77 = add i5 %i_1_77, 1
  br i1 %exitcond_77, label %469, label %474

; <label>:471                                     ; preds = %472
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %470

; <label>:472                                     ; preds = %473, %463
  %i_78 = phi i5 [ 0, %463 ], [ %i_11_77, %473 ]
  %exitcond2_77 = icmp eq i5 %i_78, -16
  %empty_423 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_77 = add i5 %i_78, 1
  br i1 %exitcond2_77, label %471, label %473

; <label>:473                                     ; preds = %472
  %empty_424 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_604 = extractvalue { i8, i1, i1 } %empty_424, 0
  %tmp_77_425 = zext i5 %i_78 to i64
  %plaintext_addr_78 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_77_425
  store i8 %tmp_data_604, i8* %plaintext_addr_78, align 1
  br label %472

; <label>:474                                     ; preds = %470
  %tmp_131_77 = zext i5 %i_1_77 to i64
  %out_addr_81 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_77
  %tmp_data_605 = load i8* %out_addr_81, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_605, i1 true, i1 false)
  br label %470

; <label>:475                                     ; preds = %476
  %empty_426 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_95)
  %tmp_96 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %484

; <label>:476                                     ; preds = %480, %477
  %i_1_78 = phi i5 [ 0, %477 ], [ %i_12_78, %480 ]
  %exitcond_78 = icmp eq i5 %i_1_78, -16
  %empty_427 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_78 = add i5 %i_1_78, 1
  br i1 %exitcond_78, label %475, label %480

; <label>:477                                     ; preds = %478
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %476

; <label>:478                                     ; preds = %479, %469
  %i_79 = phi i5 [ 0, %469 ], [ %i_11_78, %479 ]
  %exitcond2_78 = icmp eq i5 %i_79, -16
  %empty_428 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_78 = add i5 %i_79, 1
  br i1 %exitcond2_78, label %477, label %479

; <label>:479                                     ; preds = %478
  %empty_429 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_606 = extractvalue { i8, i1, i1 } %empty_429, 0
  %tmp_78_430 = zext i5 %i_79 to i64
  %plaintext_addr_79 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_78_430
  store i8 %tmp_data_606, i8* %plaintext_addr_79, align 1
  br label %478

; <label>:480                                     ; preds = %476
  %tmp_131_78 = zext i5 %i_1_78 to i64
  %out_addr_82 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_78
  %tmp_data_607 = load i8* %out_addr_82, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_607, i1 true, i1 false)
  br label %476

; <label>:481                                     ; preds = %482
  %empty_431 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_96)
  %tmp_97 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %490

; <label>:482                                     ; preds = %486, %483
  %i_1_79 = phi i5 [ 0, %483 ], [ %i_12_79, %486 ]
  %exitcond_79 = icmp eq i5 %i_1_79, -16
  %empty_432 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_79 = add i5 %i_1_79, 1
  br i1 %exitcond_79, label %481, label %486

; <label>:483                                     ; preds = %484
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %482

; <label>:484                                     ; preds = %485, %475
  %i_80 = phi i5 [ 0, %475 ], [ %i_11_79, %485 ]
  %exitcond2_79 = icmp eq i5 %i_80, -16
  %empty_433 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_79 = add i5 %i_80, 1
  br i1 %exitcond2_79, label %483, label %485

; <label>:485                                     ; preds = %484
  %empty_434 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_608 = extractvalue { i8, i1, i1 } %empty_434, 0
  %tmp_79_435 = zext i5 %i_80 to i64
  %plaintext_addr_80 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_79_435
  store i8 %tmp_data_608, i8* %plaintext_addr_80, align 1
  br label %484

; <label>:486                                     ; preds = %482
  %tmp_131_79 = zext i5 %i_1_79 to i64
  %out_addr_83 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_79
  %tmp_data_609 = load i8* %out_addr_83, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_609, i1 true, i1 false)
  br label %482

; <label>:487                                     ; preds = %488
  %empty_436 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_97)
  %tmp_98 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %496

; <label>:488                                     ; preds = %492, %489
  %i_1_80 = phi i5 [ 0, %489 ], [ %i_12_80, %492 ]
  %exitcond_80 = icmp eq i5 %i_1_80, -16
  %empty_437 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_80 = add i5 %i_1_80, 1
  br i1 %exitcond_80, label %487, label %492

; <label>:489                                     ; preds = %490
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %488

; <label>:490                                     ; preds = %491, %481
  %i_81 = phi i5 [ 0, %481 ], [ %i_11_80, %491 ]
  %exitcond2_80 = icmp eq i5 %i_81, -16
  %empty_438 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_80 = add i5 %i_81, 1
  br i1 %exitcond2_80, label %489, label %491

; <label>:491                                     ; preds = %490
  %empty_439 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_610 = extractvalue { i8, i1, i1 } %empty_439, 0
  %tmp_80_440 = zext i5 %i_81 to i64
  %plaintext_addr_81 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_80_440
  store i8 %tmp_data_610, i8* %plaintext_addr_81, align 1
  br label %490

; <label>:492                                     ; preds = %488
  %tmp_131_80 = zext i5 %i_1_80 to i64
  %out_addr_84 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_80
  %tmp_data_611 = load i8* %out_addr_84, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_611, i1 true, i1 false)
  br label %488

; <label>:493                                     ; preds = %494
  %empty_441 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_98)
  %tmp_99 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %502

; <label>:494                                     ; preds = %498, %495
  %i_1_81 = phi i5 [ 0, %495 ], [ %i_12_81, %498 ]
  %exitcond_81 = icmp eq i5 %i_1_81, -16
  %empty_442 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_81 = add i5 %i_1_81, 1
  br i1 %exitcond_81, label %493, label %498

; <label>:495                                     ; preds = %496
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %494

; <label>:496                                     ; preds = %497, %487
  %i_82 = phi i5 [ 0, %487 ], [ %i_11_81, %497 ]
  %exitcond2_81 = icmp eq i5 %i_82, -16
  %empty_443 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_81 = add i5 %i_82, 1
  br i1 %exitcond2_81, label %495, label %497

; <label>:497                                     ; preds = %496
  %empty_444 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_612 = extractvalue { i8, i1, i1 } %empty_444, 0
  %tmp_81_445 = zext i5 %i_82 to i64
  %plaintext_addr_82 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_81_445
  store i8 %tmp_data_612, i8* %plaintext_addr_82, align 1
  br label %496

; <label>:498                                     ; preds = %494
  %tmp_131_81 = zext i5 %i_1_81 to i64
  %out_addr_85 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_81
  %tmp_data_613 = load i8* %out_addr_85, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_613, i1 true, i1 false)
  br label %494

; <label>:499                                     ; preds = %500
  %empty_446 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_99)
  %tmp_100 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %508

; <label>:500                                     ; preds = %504, %501
  %i_1_82 = phi i5 [ 0, %501 ], [ %i_12_82, %504 ]
  %exitcond_82 = icmp eq i5 %i_1_82, -16
  %empty_447 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_82 = add i5 %i_1_82, 1
  br i1 %exitcond_82, label %499, label %504

; <label>:501                                     ; preds = %502
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %500

; <label>:502                                     ; preds = %503, %493
  %i_83 = phi i5 [ 0, %493 ], [ %i_11_82, %503 ]
  %exitcond2_82 = icmp eq i5 %i_83, -16
  %empty_448 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_82 = add i5 %i_83, 1
  br i1 %exitcond2_82, label %501, label %503

; <label>:503                                     ; preds = %502
  %empty_449 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_614 = extractvalue { i8, i1, i1 } %empty_449, 0
  %tmp_82_450 = zext i5 %i_83 to i64
  %plaintext_addr_83 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_82_450
  store i8 %tmp_data_614, i8* %plaintext_addr_83, align 1
  br label %502

; <label>:504                                     ; preds = %500
  %tmp_131_82 = zext i5 %i_1_82 to i64
  %out_addr_86 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_82
  %tmp_data_615 = load i8* %out_addr_86, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_615, i1 true, i1 false)
  br label %500

; <label>:505                                     ; preds = %506
  %empty_451 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_100)
  %tmp_101 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %514

; <label>:506                                     ; preds = %510, %507
  %i_1_83 = phi i5 [ 0, %507 ], [ %i_12_83, %510 ]
  %exitcond_83 = icmp eq i5 %i_1_83, -16
  %empty_452 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_83 = add i5 %i_1_83, 1
  br i1 %exitcond_83, label %505, label %510

; <label>:507                                     ; preds = %508
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %506

; <label>:508                                     ; preds = %509, %499
  %i_84 = phi i5 [ 0, %499 ], [ %i_11_83, %509 ]
  %exitcond2_83 = icmp eq i5 %i_84, -16
  %empty_453 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_83 = add i5 %i_84, 1
  br i1 %exitcond2_83, label %507, label %509

; <label>:509                                     ; preds = %508
  %empty_454 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_616 = extractvalue { i8, i1, i1 } %empty_454, 0
  %tmp_83_455 = zext i5 %i_84 to i64
  %plaintext_addr_84 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_83_455
  store i8 %tmp_data_616, i8* %plaintext_addr_84, align 1
  br label %508

; <label>:510                                     ; preds = %506
  %tmp_131_83 = zext i5 %i_1_83 to i64
  %out_addr_87 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_83
  %tmp_data_617 = load i8* %out_addr_87, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_617, i1 true, i1 false)
  br label %506

; <label>:511                                     ; preds = %512
  %empty_456 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_101)
  %tmp_102 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %520

; <label>:512                                     ; preds = %516, %513
  %i_1_84 = phi i5 [ 0, %513 ], [ %i_12_84, %516 ]
  %exitcond_84 = icmp eq i5 %i_1_84, -16
  %empty_457 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_84 = add i5 %i_1_84, 1
  br i1 %exitcond_84, label %511, label %516

; <label>:513                                     ; preds = %514
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %512

; <label>:514                                     ; preds = %515, %505
  %i_85 = phi i5 [ 0, %505 ], [ %i_11_84, %515 ]
  %exitcond2_84 = icmp eq i5 %i_85, -16
  %empty_458 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_84 = add i5 %i_85, 1
  br i1 %exitcond2_84, label %513, label %515

; <label>:515                                     ; preds = %514
  %empty_459 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_618 = extractvalue { i8, i1, i1 } %empty_459, 0
  %tmp_84_460 = zext i5 %i_85 to i64
  %plaintext_addr_85 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_84_460
  store i8 %tmp_data_618, i8* %plaintext_addr_85, align 1
  br label %514

; <label>:516                                     ; preds = %512
  %tmp_131_84 = zext i5 %i_1_84 to i64
  %out_addr_88 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_84
  %tmp_data_619 = load i8* %out_addr_88, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_619, i1 true, i1 false)
  br label %512

; <label>:517                                     ; preds = %518
  %empty_461 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_102)
  %tmp_103 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %526

; <label>:518                                     ; preds = %522, %519
  %i_1_85 = phi i5 [ 0, %519 ], [ %i_12_85, %522 ]
  %exitcond_85 = icmp eq i5 %i_1_85, -16
  %empty_462 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_85 = add i5 %i_1_85, 1
  br i1 %exitcond_85, label %517, label %522

; <label>:519                                     ; preds = %520
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %518

; <label>:520                                     ; preds = %521, %511
  %i_86 = phi i5 [ 0, %511 ], [ %i_11_85, %521 ]
  %exitcond2_85 = icmp eq i5 %i_86, -16
  %empty_463 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_85 = add i5 %i_86, 1
  br i1 %exitcond2_85, label %519, label %521

; <label>:521                                     ; preds = %520
  %empty_464 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_620 = extractvalue { i8, i1, i1 } %empty_464, 0
  %tmp_85_465 = zext i5 %i_86 to i64
  %plaintext_addr_86 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_85_465
  store i8 %tmp_data_620, i8* %plaintext_addr_86, align 1
  br label %520

; <label>:522                                     ; preds = %518
  %tmp_131_85 = zext i5 %i_1_85 to i64
  %out_addr_89 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_85
  %tmp_data_621 = load i8* %out_addr_89, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_621, i1 true, i1 false)
  br label %518

; <label>:523                                     ; preds = %524
  %empty_466 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_103)
  %tmp_104 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %532

; <label>:524                                     ; preds = %528, %525
  %i_1_86 = phi i5 [ 0, %525 ], [ %i_12_86, %528 ]
  %exitcond_86 = icmp eq i5 %i_1_86, -16
  %empty_467 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_86 = add i5 %i_1_86, 1
  br i1 %exitcond_86, label %523, label %528

; <label>:525                                     ; preds = %526
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %524

; <label>:526                                     ; preds = %527, %517
  %i_87 = phi i5 [ 0, %517 ], [ %i_11_86, %527 ]
  %exitcond2_86 = icmp eq i5 %i_87, -16
  %empty_468 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_86 = add i5 %i_87, 1
  br i1 %exitcond2_86, label %525, label %527

; <label>:527                                     ; preds = %526
  %empty_469 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_622 = extractvalue { i8, i1, i1 } %empty_469, 0
  %tmp_86_470 = zext i5 %i_87 to i64
  %plaintext_addr_87 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_86_470
  store i8 %tmp_data_622, i8* %plaintext_addr_87, align 1
  br label %526

; <label>:528                                     ; preds = %524
  %tmp_131_86 = zext i5 %i_1_86 to i64
  %out_addr_90 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_86
  %tmp_data_623 = load i8* %out_addr_90, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_623, i1 true, i1 false)
  br label %524

; <label>:529                                     ; preds = %530
  %empty_471 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_104)
  %tmp_105 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %538

; <label>:530                                     ; preds = %534, %531
  %i_1_87 = phi i5 [ 0, %531 ], [ %i_12_87, %534 ]
  %exitcond_87 = icmp eq i5 %i_1_87, -16
  %empty_472 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_87 = add i5 %i_1_87, 1
  br i1 %exitcond_87, label %529, label %534

; <label>:531                                     ; preds = %532
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %530

; <label>:532                                     ; preds = %533, %523
  %i_88 = phi i5 [ 0, %523 ], [ %i_11_87, %533 ]
  %exitcond2_87 = icmp eq i5 %i_88, -16
  %empty_473 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_87 = add i5 %i_88, 1
  br i1 %exitcond2_87, label %531, label %533

; <label>:533                                     ; preds = %532
  %empty_474 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_624 = extractvalue { i8, i1, i1 } %empty_474, 0
  %tmp_87_475 = zext i5 %i_88 to i64
  %plaintext_addr_88 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_87_475
  store i8 %tmp_data_624, i8* %plaintext_addr_88, align 1
  br label %532

; <label>:534                                     ; preds = %530
  %tmp_131_87 = zext i5 %i_1_87 to i64
  %out_addr_91 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_87
  %tmp_data_625 = load i8* %out_addr_91, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_625, i1 true, i1 false)
  br label %530

; <label>:535                                     ; preds = %536
  %empty_476 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_105)
  %tmp_106 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %544

; <label>:536                                     ; preds = %540, %537
  %i_1_88 = phi i5 [ 0, %537 ], [ %i_12_88, %540 ]
  %exitcond_88 = icmp eq i5 %i_1_88, -16
  %empty_477 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_88 = add i5 %i_1_88, 1
  br i1 %exitcond_88, label %535, label %540

; <label>:537                                     ; preds = %538
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %536

; <label>:538                                     ; preds = %539, %529
  %i_89 = phi i5 [ 0, %529 ], [ %i_11_88, %539 ]
  %exitcond2_88 = icmp eq i5 %i_89, -16
  %empty_478 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_88 = add i5 %i_89, 1
  br i1 %exitcond2_88, label %537, label %539

; <label>:539                                     ; preds = %538
  %empty_479 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_626 = extractvalue { i8, i1, i1 } %empty_479, 0
  %tmp_88_480 = zext i5 %i_89 to i64
  %plaintext_addr_89 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_88_480
  store i8 %tmp_data_626, i8* %plaintext_addr_89, align 1
  br label %538

; <label>:540                                     ; preds = %536
  %tmp_131_88 = zext i5 %i_1_88 to i64
  %out_addr_92 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_88
  %tmp_data_627 = load i8* %out_addr_92, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_627, i1 true, i1 false)
  br label %536

; <label>:541                                     ; preds = %542
  %empty_481 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_106)
  %tmp_107 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %550

; <label>:542                                     ; preds = %546, %543
  %i_1_89 = phi i5 [ 0, %543 ], [ %i_12_89, %546 ]
  %exitcond_89 = icmp eq i5 %i_1_89, -16
  %empty_482 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_89 = add i5 %i_1_89, 1
  br i1 %exitcond_89, label %541, label %546

; <label>:543                                     ; preds = %544
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %542

; <label>:544                                     ; preds = %545, %535
  %i_90 = phi i5 [ 0, %535 ], [ %i_11_89, %545 ]
  %exitcond2_89 = icmp eq i5 %i_90, -16
  %empty_483 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_89 = add i5 %i_90, 1
  br i1 %exitcond2_89, label %543, label %545

; <label>:545                                     ; preds = %544
  %empty_484 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_628 = extractvalue { i8, i1, i1 } %empty_484, 0
  %tmp_89_485 = zext i5 %i_90 to i64
  %plaintext_addr_90 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_89_485
  store i8 %tmp_data_628, i8* %plaintext_addr_90, align 1
  br label %544

; <label>:546                                     ; preds = %542
  %tmp_131_89 = zext i5 %i_1_89 to i64
  %out_addr_93 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_89
  %tmp_data_629 = load i8* %out_addr_93, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_629, i1 true, i1 false)
  br label %542

; <label>:547                                     ; preds = %548
  %empty_486 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_107)
  %tmp_108 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %556

; <label>:548                                     ; preds = %552, %549
  %i_1_90 = phi i5 [ 0, %549 ], [ %i_12_90, %552 ]
  %exitcond_90 = icmp eq i5 %i_1_90, -16
  %empty_487 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_90 = add i5 %i_1_90, 1
  br i1 %exitcond_90, label %547, label %552

; <label>:549                                     ; preds = %550
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %548

; <label>:550                                     ; preds = %551, %541
  %i_91 = phi i5 [ 0, %541 ], [ %i_11_90, %551 ]
  %exitcond2_90 = icmp eq i5 %i_91, -16
  %empty_488 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_90 = add i5 %i_91, 1
  br i1 %exitcond2_90, label %549, label %551

; <label>:551                                     ; preds = %550
  %empty_489 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_630 = extractvalue { i8, i1, i1 } %empty_489, 0
  %tmp_90_490 = zext i5 %i_91 to i64
  %plaintext_addr_91 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_90_490
  store i8 %tmp_data_630, i8* %plaintext_addr_91, align 1
  br label %550

; <label>:552                                     ; preds = %548
  %tmp_131_90 = zext i5 %i_1_90 to i64
  %out_addr_94 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_90
  %tmp_data_631 = load i8* %out_addr_94, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_631, i1 true, i1 false)
  br label %548

; <label>:553                                     ; preds = %554
  %empty_491 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_108)
  %tmp_109 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %562

; <label>:554                                     ; preds = %558, %555
  %i_1_91 = phi i5 [ 0, %555 ], [ %i_12_91, %558 ]
  %exitcond_91 = icmp eq i5 %i_1_91, -16
  %empty_492 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_91 = add i5 %i_1_91, 1
  br i1 %exitcond_91, label %553, label %558

; <label>:555                                     ; preds = %556
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %554

; <label>:556                                     ; preds = %557, %547
  %i_92 = phi i5 [ 0, %547 ], [ %i_11_91, %557 ]
  %exitcond2_91 = icmp eq i5 %i_92, -16
  %empty_493 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_91 = add i5 %i_92, 1
  br i1 %exitcond2_91, label %555, label %557

; <label>:557                                     ; preds = %556
  %empty_494 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_632 = extractvalue { i8, i1, i1 } %empty_494, 0
  %tmp_91_495 = zext i5 %i_92 to i64
  %plaintext_addr_92 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_91_495
  store i8 %tmp_data_632, i8* %plaintext_addr_92, align 1
  br label %556

; <label>:558                                     ; preds = %554
  %tmp_131_91 = zext i5 %i_1_91 to i64
  %out_addr_95 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_91
  %tmp_data_633 = load i8* %out_addr_95, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_633, i1 true, i1 false)
  br label %554

; <label>:559                                     ; preds = %560
  %empty_496 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_109)
  %tmp_110 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %568

; <label>:560                                     ; preds = %564, %561
  %i_1_92 = phi i5 [ 0, %561 ], [ %i_12_92, %564 ]
  %exitcond_92 = icmp eq i5 %i_1_92, -16
  %empty_497 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_92 = add i5 %i_1_92, 1
  br i1 %exitcond_92, label %559, label %564

; <label>:561                                     ; preds = %562
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %560

; <label>:562                                     ; preds = %563, %553
  %i_93 = phi i5 [ 0, %553 ], [ %i_11_92, %563 ]
  %exitcond2_92 = icmp eq i5 %i_93, -16
  %empty_498 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_92 = add i5 %i_93, 1
  br i1 %exitcond2_92, label %561, label %563

; <label>:563                                     ; preds = %562
  %empty_499 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_634 = extractvalue { i8, i1, i1 } %empty_499, 0
  %tmp_92_500 = zext i5 %i_93 to i64
  %plaintext_addr_93 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_92_500
  store i8 %tmp_data_634, i8* %plaintext_addr_93, align 1
  br label %562

; <label>:564                                     ; preds = %560
  %tmp_131_92 = zext i5 %i_1_92 to i64
  %out_addr_96 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_92
  %tmp_data_635 = load i8* %out_addr_96, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_635, i1 true, i1 false)
  br label %560

; <label>:565                                     ; preds = %566
  %empty_501 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_110)
  %tmp_111 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %574

; <label>:566                                     ; preds = %570, %567
  %i_1_93 = phi i5 [ 0, %567 ], [ %i_12_93, %570 ]
  %exitcond_93 = icmp eq i5 %i_1_93, -16
  %empty_502 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_93 = add i5 %i_1_93, 1
  br i1 %exitcond_93, label %565, label %570

; <label>:567                                     ; preds = %568
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %566

; <label>:568                                     ; preds = %569, %559
  %i_94 = phi i5 [ 0, %559 ], [ %i_11_93, %569 ]
  %exitcond2_93 = icmp eq i5 %i_94, -16
  %empty_503 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_93 = add i5 %i_94, 1
  br i1 %exitcond2_93, label %567, label %569

; <label>:569                                     ; preds = %568
  %empty_504 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_636 = extractvalue { i8, i1, i1 } %empty_504, 0
  %tmp_93_505 = zext i5 %i_94 to i64
  %plaintext_addr_94 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_93_505
  store i8 %tmp_data_636, i8* %plaintext_addr_94, align 1
  br label %568

; <label>:570                                     ; preds = %566
  %tmp_131_93 = zext i5 %i_1_93 to i64
  %out_addr_97 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_93
  %tmp_data_637 = load i8* %out_addr_97, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_637, i1 true, i1 false)
  br label %566

; <label>:571                                     ; preds = %572
  %empty_506 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_111)
  %tmp_112 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %580

; <label>:572                                     ; preds = %576, %573
  %i_1_94 = phi i5 [ 0, %573 ], [ %i_12_94, %576 ]
  %exitcond_94 = icmp eq i5 %i_1_94, -16
  %empty_507 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_94 = add i5 %i_1_94, 1
  br i1 %exitcond_94, label %571, label %576

; <label>:573                                     ; preds = %574
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %572

; <label>:574                                     ; preds = %575, %565
  %i_95 = phi i5 [ 0, %565 ], [ %i_11_94, %575 ]
  %exitcond2_94 = icmp eq i5 %i_95, -16
  %empty_508 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_94 = add i5 %i_95, 1
  br i1 %exitcond2_94, label %573, label %575

; <label>:575                                     ; preds = %574
  %empty_509 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_638 = extractvalue { i8, i1, i1 } %empty_509, 0
  %tmp_94_510 = zext i5 %i_95 to i64
  %plaintext_addr_95 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_94_510
  store i8 %tmp_data_638, i8* %plaintext_addr_95, align 1
  br label %574

; <label>:576                                     ; preds = %572
  %tmp_131_94 = zext i5 %i_1_94 to i64
  %out_addr_98 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_94
  %tmp_data_639 = load i8* %out_addr_98, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_639, i1 true, i1 false)
  br label %572

; <label>:577                                     ; preds = %578
  %empty_511 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_112)
  %tmp_113 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %586

; <label>:578                                     ; preds = %582, %579
  %i_1_95 = phi i5 [ 0, %579 ], [ %i_12_95, %582 ]
  %exitcond_95 = icmp eq i5 %i_1_95, -16
  %empty_512 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_95 = add i5 %i_1_95, 1
  br i1 %exitcond_95, label %577, label %582

; <label>:579                                     ; preds = %580
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %578

; <label>:580                                     ; preds = %581, %571
  %i_96 = phi i5 [ 0, %571 ], [ %i_11_95, %581 ]
  %exitcond2_95 = icmp eq i5 %i_96, -16
  %empty_513 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_95 = add i5 %i_96, 1
  br i1 %exitcond2_95, label %579, label %581

; <label>:581                                     ; preds = %580
  %empty_514 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_640 = extractvalue { i8, i1, i1 } %empty_514, 0
  %tmp_95_515 = zext i5 %i_96 to i64
  %plaintext_addr_96 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_95_515
  store i8 %tmp_data_640, i8* %plaintext_addr_96, align 1
  br label %580

; <label>:582                                     ; preds = %578
  %tmp_131_95 = zext i5 %i_1_95 to i64
  %out_addr_99 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_95
  %tmp_data_641 = load i8* %out_addr_99, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_641, i1 true, i1 false)
  br label %578

; <label>:583                                     ; preds = %584
  %empty_516 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_113)
  %tmp_114 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %592

; <label>:584                                     ; preds = %588, %585
  %i_1_96 = phi i5 [ 0, %585 ], [ %i_12_96, %588 ]
  %exitcond_96 = icmp eq i5 %i_1_96, -16
  %empty_517 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_96 = add i5 %i_1_96, 1
  br i1 %exitcond_96, label %583, label %588

; <label>:585                                     ; preds = %586
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %584

; <label>:586                                     ; preds = %587, %577
  %i_97 = phi i5 [ 0, %577 ], [ %i_11_96, %587 ]
  %exitcond2_96 = icmp eq i5 %i_97, -16
  %empty_518 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_96 = add i5 %i_97, 1
  br i1 %exitcond2_96, label %585, label %587

; <label>:587                                     ; preds = %586
  %empty_519 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_642 = extractvalue { i8, i1, i1 } %empty_519, 0
  %tmp_96_520 = zext i5 %i_97 to i64
  %plaintext_addr_97 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_96_520
  store i8 %tmp_data_642, i8* %plaintext_addr_97, align 1
  br label %586

; <label>:588                                     ; preds = %584
  %tmp_131_96 = zext i5 %i_1_96 to i64
  %out_addr_100 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_96
  %tmp_data_643 = load i8* %out_addr_100, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_643, i1 true, i1 false)
  br label %584

; <label>:589                                     ; preds = %590
  %empty_521 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_114)
  %tmp_115 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %598

; <label>:590                                     ; preds = %594, %591
  %i_1_97 = phi i5 [ 0, %591 ], [ %i_12_97, %594 ]
  %exitcond_97 = icmp eq i5 %i_1_97, -16
  %empty_522 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_97 = add i5 %i_1_97, 1
  br i1 %exitcond_97, label %589, label %594

; <label>:591                                     ; preds = %592
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %590

; <label>:592                                     ; preds = %593, %583
  %i_98 = phi i5 [ 0, %583 ], [ %i_11_97, %593 ]
  %exitcond2_97 = icmp eq i5 %i_98, -16
  %empty_523 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_97 = add i5 %i_98, 1
  br i1 %exitcond2_97, label %591, label %593

; <label>:593                                     ; preds = %592
  %empty_524 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_644 = extractvalue { i8, i1, i1 } %empty_524, 0
  %tmp_97_525 = zext i5 %i_98 to i64
  %plaintext_addr_98 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_97_525
  store i8 %tmp_data_644, i8* %plaintext_addr_98, align 1
  br label %592

; <label>:594                                     ; preds = %590
  %tmp_131_97 = zext i5 %i_1_97 to i64
  %out_addr_101 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_97
  %tmp_data_645 = load i8* %out_addr_101, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_645, i1 true, i1 false)
  br label %590

; <label>:595                                     ; preds = %596
  %empty_526 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_115)
  %tmp_116 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %604

; <label>:596                                     ; preds = %600, %597
  %i_1_98 = phi i5 [ 0, %597 ], [ %i_12_98, %600 ]
  %exitcond_98 = icmp eq i5 %i_1_98, -16
  %empty_527 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_98 = add i5 %i_1_98, 1
  br i1 %exitcond_98, label %595, label %600

; <label>:597                                     ; preds = %598
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %596

; <label>:598                                     ; preds = %599, %589
  %i_99 = phi i5 [ 0, %589 ], [ %i_11_98, %599 ]
  %exitcond2_98 = icmp eq i5 %i_99, -16
  %empty_528 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_98 = add i5 %i_99, 1
  br i1 %exitcond2_98, label %597, label %599

; <label>:599                                     ; preds = %598
  %empty_529 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_646 = extractvalue { i8, i1, i1 } %empty_529, 0
  %tmp_98_530 = zext i5 %i_99 to i64
  %plaintext_addr_99 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_98_530
  store i8 %tmp_data_646, i8* %plaintext_addr_99, align 1
  br label %598

; <label>:600                                     ; preds = %596
  %tmp_131_98 = zext i5 %i_1_98 to i64
  %out_addr_102 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_98
  %tmp_data_647 = load i8* %out_addr_102, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_647, i1 true, i1 false)
  br label %596

; <label>:601                                     ; preds = %602
  %empty_531 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_116)
  %tmp_117 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %610

; <label>:602                                     ; preds = %606, %603
  %i_1_99 = phi i5 [ 0, %603 ], [ %i_12_99, %606 ]
  %exitcond_99 = icmp eq i5 %i_1_99, -16
  %empty_532 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_99 = add i5 %i_1_99, 1
  br i1 %exitcond_99, label %601, label %606

; <label>:603                                     ; preds = %604
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %602

; <label>:604                                     ; preds = %605, %595
  %i_100 = phi i5 [ 0, %595 ], [ %i_11_99, %605 ]
  %exitcond2_99 = icmp eq i5 %i_100, -16
  %empty_533 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_99 = add i5 %i_100, 1
  br i1 %exitcond2_99, label %603, label %605

; <label>:605                                     ; preds = %604
  %empty_534 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_648 = extractvalue { i8, i1, i1 } %empty_534, 0
  %tmp_99_535 = zext i5 %i_100 to i64
  %plaintext_addr_100 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_99_535
  store i8 %tmp_data_648, i8* %plaintext_addr_100, align 1
  br label %604

; <label>:606                                     ; preds = %602
  %tmp_131_99 = zext i5 %i_1_99 to i64
  %out_addr_103 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_99
  %tmp_data_649 = load i8* %out_addr_103, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_649, i1 true, i1 false)
  br label %602

; <label>:607                                     ; preds = %608
  %empty_536 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_117)
  %tmp_118 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %616

; <label>:608                                     ; preds = %612, %609
  %i_1_100 = phi i5 [ 0, %609 ], [ %i_12_100, %612 ]
  %exitcond_100 = icmp eq i5 %i_1_100, -16
  %empty_537 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_100 = add i5 %i_1_100, 1
  br i1 %exitcond_100, label %607, label %612

; <label>:609                                     ; preds = %610
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %608

; <label>:610                                     ; preds = %611, %601
  %i_101 = phi i5 [ 0, %601 ], [ %i_11_100, %611 ]
  %exitcond2_100 = icmp eq i5 %i_101, -16
  %empty_538 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_100 = add i5 %i_101, 1
  br i1 %exitcond2_100, label %609, label %611

; <label>:611                                     ; preds = %610
  %empty_539 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_650 = extractvalue { i8, i1, i1 } %empty_539, 0
  %tmp_100_540 = zext i5 %i_101 to i64
  %plaintext_addr_101 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_100_540
  store i8 %tmp_data_650, i8* %plaintext_addr_101, align 1
  br label %610

; <label>:612                                     ; preds = %608
  %tmp_131_100 = zext i5 %i_1_100 to i64
  %out_addr_104 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_100
  %tmp_data_651 = load i8* %out_addr_104, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_651, i1 true, i1 false)
  br label %608

; <label>:613                                     ; preds = %614
  %empty_541 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_118)
  %tmp_119 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %622

; <label>:614                                     ; preds = %618, %615
  %i_1_101 = phi i5 [ 0, %615 ], [ %i_12_101, %618 ]
  %exitcond_101 = icmp eq i5 %i_1_101, -16
  %empty_542 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_101 = add i5 %i_1_101, 1
  br i1 %exitcond_101, label %613, label %618

; <label>:615                                     ; preds = %616
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %614

; <label>:616                                     ; preds = %617, %607
  %i_102 = phi i5 [ 0, %607 ], [ %i_11_101, %617 ]
  %exitcond2_101 = icmp eq i5 %i_102, -16
  %empty_543 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_101 = add i5 %i_102, 1
  br i1 %exitcond2_101, label %615, label %617

; <label>:617                                     ; preds = %616
  %empty_544 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_652 = extractvalue { i8, i1, i1 } %empty_544, 0
  %tmp_101_545 = zext i5 %i_102 to i64
  %plaintext_addr_102 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_101_545
  store i8 %tmp_data_652, i8* %plaintext_addr_102, align 1
  br label %616

; <label>:618                                     ; preds = %614
  %tmp_131_101 = zext i5 %i_1_101 to i64
  %out_addr_105 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_101
  %tmp_data_653 = load i8* %out_addr_105, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_653, i1 true, i1 false)
  br label %614

; <label>:619                                     ; preds = %620
  %empty_546 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_119)
  %tmp_120 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %628

; <label>:620                                     ; preds = %624, %621
  %i_1_102 = phi i5 [ 0, %621 ], [ %i_12_102, %624 ]
  %exitcond_102 = icmp eq i5 %i_1_102, -16
  %empty_547 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_102 = add i5 %i_1_102, 1
  br i1 %exitcond_102, label %619, label %624

; <label>:621                                     ; preds = %622
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %620

; <label>:622                                     ; preds = %623, %613
  %i_103 = phi i5 [ 0, %613 ], [ %i_11_102, %623 ]
  %exitcond2_102 = icmp eq i5 %i_103, -16
  %empty_548 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_102 = add i5 %i_103, 1
  br i1 %exitcond2_102, label %621, label %623

; <label>:623                                     ; preds = %622
  %empty_549 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_654 = extractvalue { i8, i1, i1 } %empty_549, 0
  %tmp_102_550 = zext i5 %i_103 to i64
  %plaintext_addr_103 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_102_550
  store i8 %tmp_data_654, i8* %plaintext_addr_103, align 1
  br label %622

; <label>:624                                     ; preds = %620
  %tmp_131_102 = zext i5 %i_1_102 to i64
  %out_addr_106 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_102
  %tmp_data_655 = load i8* %out_addr_106, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_655, i1 true, i1 false)
  br label %620

; <label>:625                                     ; preds = %626
  %empty_551 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_120)
  %tmp_121 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %634

; <label>:626                                     ; preds = %630, %627
  %i_1_103 = phi i5 [ 0, %627 ], [ %i_12_103, %630 ]
  %exitcond_103 = icmp eq i5 %i_1_103, -16
  %empty_552 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_103 = add i5 %i_1_103, 1
  br i1 %exitcond_103, label %625, label %630

; <label>:627                                     ; preds = %628
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %626

; <label>:628                                     ; preds = %629, %619
  %i_104 = phi i5 [ 0, %619 ], [ %i_11_103, %629 ]
  %exitcond2_103 = icmp eq i5 %i_104, -16
  %empty_553 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_103 = add i5 %i_104, 1
  br i1 %exitcond2_103, label %627, label %629

; <label>:629                                     ; preds = %628
  %empty_554 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_656 = extractvalue { i8, i1, i1 } %empty_554, 0
  %tmp_103_555 = zext i5 %i_104 to i64
  %plaintext_addr_104 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_103_555
  store i8 %tmp_data_656, i8* %plaintext_addr_104, align 1
  br label %628

; <label>:630                                     ; preds = %626
  %tmp_131_103 = zext i5 %i_1_103 to i64
  %out_addr_107 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_103
  %tmp_data_657 = load i8* %out_addr_107, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_657, i1 true, i1 false)
  br label %626

; <label>:631                                     ; preds = %632
  %empty_556 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_121)
  %tmp_122 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %640

; <label>:632                                     ; preds = %636, %633
  %i_1_104 = phi i5 [ 0, %633 ], [ %i_12_104, %636 ]
  %exitcond_104 = icmp eq i5 %i_1_104, -16
  %empty_557 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_104 = add i5 %i_1_104, 1
  br i1 %exitcond_104, label %631, label %636

; <label>:633                                     ; preds = %634
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %632

; <label>:634                                     ; preds = %635, %625
  %i_105 = phi i5 [ 0, %625 ], [ %i_11_104, %635 ]
  %exitcond2_104 = icmp eq i5 %i_105, -16
  %empty_558 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_104 = add i5 %i_105, 1
  br i1 %exitcond2_104, label %633, label %635

; <label>:635                                     ; preds = %634
  %empty_559 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_658 = extractvalue { i8, i1, i1 } %empty_559, 0
  %tmp_104_560 = zext i5 %i_105 to i64
  %plaintext_addr_105 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_104_560
  store i8 %tmp_data_658, i8* %plaintext_addr_105, align 1
  br label %634

; <label>:636                                     ; preds = %632
  %tmp_131_104 = zext i5 %i_1_104 to i64
  %out_addr_108 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_104
  %tmp_data_659 = load i8* %out_addr_108, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_659, i1 true, i1 false)
  br label %632

; <label>:637                                     ; preds = %638
  %empty_561 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_122)
  %tmp_123 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %646

; <label>:638                                     ; preds = %642, %639
  %i_1_105 = phi i5 [ 0, %639 ], [ %i_12_105, %642 ]
  %exitcond_105 = icmp eq i5 %i_1_105, -16
  %empty_562 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_105 = add i5 %i_1_105, 1
  br i1 %exitcond_105, label %637, label %642

; <label>:639                                     ; preds = %640
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %638

; <label>:640                                     ; preds = %641, %631
  %i_106 = phi i5 [ 0, %631 ], [ %i_11_105, %641 ]
  %exitcond2_105 = icmp eq i5 %i_106, -16
  %empty_563 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_105 = add i5 %i_106, 1
  br i1 %exitcond2_105, label %639, label %641

; <label>:641                                     ; preds = %640
  %empty_564 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_660 = extractvalue { i8, i1, i1 } %empty_564, 0
  %tmp_105_565 = zext i5 %i_106 to i64
  %plaintext_addr_106 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_105_565
  store i8 %tmp_data_660, i8* %plaintext_addr_106, align 1
  br label %640

; <label>:642                                     ; preds = %638
  %tmp_131_105 = zext i5 %i_1_105 to i64
  %out_addr_109 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_105
  %tmp_data_661 = load i8* %out_addr_109, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_661, i1 true, i1 false)
  br label %638

; <label>:643                                     ; preds = %644
  %empty_566 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_123)
  %tmp_124 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %652

; <label>:644                                     ; preds = %648, %645
  %i_1_106 = phi i5 [ 0, %645 ], [ %i_12_106, %648 ]
  %exitcond_106 = icmp eq i5 %i_1_106, -16
  %empty_567 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_106 = add i5 %i_1_106, 1
  br i1 %exitcond_106, label %643, label %648

; <label>:645                                     ; preds = %646
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %644

; <label>:646                                     ; preds = %647, %637
  %i_107 = phi i5 [ 0, %637 ], [ %i_11_106, %647 ]
  %exitcond2_106 = icmp eq i5 %i_107, -16
  %empty_568 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_106 = add i5 %i_107, 1
  br i1 %exitcond2_106, label %645, label %647

; <label>:647                                     ; preds = %646
  %empty_569 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_662 = extractvalue { i8, i1, i1 } %empty_569, 0
  %tmp_106_570 = zext i5 %i_107 to i64
  %plaintext_addr_107 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_106_570
  store i8 %tmp_data_662, i8* %plaintext_addr_107, align 1
  br label %646

; <label>:648                                     ; preds = %644
  %tmp_131_106 = zext i5 %i_1_106 to i64
  %out_addr_110 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_106
  %tmp_data_663 = load i8* %out_addr_110, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_663, i1 true, i1 false)
  br label %644

; <label>:649                                     ; preds = %650
  %empty_571 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_124)
  %tmp_125 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %658

; <label>:650                                     ; preds = %654, %651
  %i_1_107 = phi i5 [ 0, %651 ], [ %i_12_107, %654 ]
  %exitcond_107 = icmp eq i5 %i_1_107, -16
  %empty_572 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_107 = add i5 %i_1_107, 1
  br i1 %exitcond_107, label %649, label %654

; <label>:651                                     ; preds = %652
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %650

; <label>:652                                     ; preds = %653, %643
  %i_108 = phi i5 [ 0, %643 ], [ %i_11_107, %653 ]
  %exitcond2_107 = icmp eq i5 %i_108, -16
  %empty_573 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_107 = add i5 %i_108, 1
  br i1 %exitcond2_107, label %651, label %653

; <label>:653                                     ; preds = %652
  %empty_574 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_664 = extractvalue { i8, i1, i1 } %empty_574, 0
  %tmp_107_575 = zext i5 %i_108 to i64
  %plaintext_addr_108 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_107_575
  store i8 %tmp_data_664, i8* %plaintext_addr_108, align 1
  br label %652

; <label>:654                                     ; preds = %650
  %tmp_131_107 = zext i5 %i_1_107 to i64
  %out_addr_111 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_107
  %tmp_data_665 = load i8* %out_addr_111, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_665, i1 true, i1 false)
  br label %650

; <label>:655                                     ; preds = %656
  %empty_576 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_125)
  %tmp_126 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %664

; <label>:656                                     ; preds = %660, %657
  %i_1_108 = phi i5 [ 0, %657 ], [ %i_12_108, %660 ]
  %exitcond_108 = icmp eq i5 %i_1_108, -16
  %empty_577 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_108 = add i5 %i_1_108, 1
  br i1 %exitcond_108, label %655, label %660

; <label>:657                                     ; preds = %658
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %656

; <label>:658                                     ; preds = %659, %649
  %i_109 = phi i5 [ 0, %649 ], [ %i_11_108, %659 ]
  %exitcond2_108 = icmp eq i5 %i_109, -16
  %empty_578 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_108 = add i5 %i_109, 1
  br i1 %exitcond2_108, label %657, label %659

; <label>:659                                     ; preds = %658
  %empty_579 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_666 = extractvalue { i8, i1, i1 } %empty_579, 0
  %tmp_108_580 = zext i5 %i_109 to i64
  %plaintext_addr_109 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_108_580
  store i8 %tmp_data_666, i8* %plaintext_addr_109, align 1
  br label %658

; <label>:660                                     ; preds = %656
  %tmp_131_108 = zext i5 %i_1_108 to i64
  %out_addr_112 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_108
  %tmp_data_667 = load i8* %out_addr_112, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_667, i1 true, i1 false)
  br label %656

; <label>:661                                     ; preds = %662
  %empty_581 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_126)
  %tmp_127 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %670

; <label>:662                                     ; preds = %666, %663
  %i_1_109 = phi i5 [ 0, %663 ], [ %i_12_109, %666 ]
  %exitcond_109 = icmp eq i5 %i_1_109, -16
  %empty_582 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_109 = add i5 %i_1_109, 1
  br i1 %exitcond_109, label %661, label %666

; <label>:663                                     ; preds = %664
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %662

; <label>:664                                     ; preds = %665, %655
  %i_110 = phi i5 [ 0, %655 ], [ %i_11_109, %665 ]
  %exitcond2_109 = icmp eq i5 %i_110, -16
  %empty_583 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_109 = add i5 %i_110, 1
  br i1 %exitcond2_109, label %663, label %665

; <label>:665                                     ; preds = %664
  %empty_584 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_668 = extractvalue { i8, i1, i1 } %empty_584, 0
  %tmp_109_585 = zext i5 %i_110 to i64
  %plaintext_addr_110 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_109_585
  store i8 %tmp_data_668, i8* %plaintext_addr_110, align 1
  br label %664

; <label>:666                                     ; preds = %662
  %tmp_131_109 = zext i5 %i_1_109 to i64
  %out_addr_113 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_109
  %tmp_data_669 = load i8* %out_addr_113, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_669, i1 true, i1 false)
  br label %662

; <label>:667                                     ; preds = %668
  %empty_586 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_127)
  %tmp_128 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %676

; <label>:668                                     ; preds = %672, %669
  %i_1_110 = phi i5 [ 0, %669 ], [ %i_12_110, %672 ]
  %exitcond_110 = icmp eq i5 %i_1_110, -16
  %empty_587 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_110 = add i5 %i_1_110, 1
  br i1 %exitcond_110, label %667, label %672

; <label>:669                                     ; preds = %670
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %668

; <label>:670                                     ; preds = %671, %661
  %i_111 = phi i5 [ 0, %661 ], [ %i_11_110, %671 ]
  %exitcond2_110 = icmp eq i5 %i_111, -16
  %empty_588 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_110 = add i5 %i_111, 1
  br i1 %exitcond2_110, label %669, label %671

; <label>:671                                     ; preds = %670
  %empty_589 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_670 = extractvalue { i8, i1, i1 } %empty_589, 0
  %tmp_110_590 = zext i5 %i_111 to i64
  %plaintext_addr_111 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_110_590
  store i8 %tmp_data_670, i8* %plaintext_addr_111, align 1
  br label %670

; <label>:672                                     ; preds = %668
  %tmp_131_110 = zext i5 %i_1_110 to i64
  %out_addr_114 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_110
  %tmp_data_671 = load i8* %out_addr_114, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_671, i1 true, i1 false)
  br label %668

; <label>:673                                     ; preds = %674
  %empty_591 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_128)
  %tmp_129 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %682

; <label>:674                                     ; preds = %678, %675
  %i_1_111 = phi i5 [ 0, %675 ], [ %i_12_111, %678 ]
  %exitcond_111 = icmp eq i5 %i_1_111, -16
  %empty_592 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_111 = add i5 %i_1_111, 1
  br i1 %exitcond_111, label %673, label %678

; <label>:675                                     ; preds = %676
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %674

; <label>:676                                     ; preds = %677, %667
  %i_112 = phi i5 [ 0, %667 ], [ %i_11_111, %677 ]
  %exitcond2_111 = icmp eq i5 %i_112, -16
  %empty_593 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_111 = add i5 %i_112, 1
  br i1 %exitcond2_111, label %675, label %677

; <label>:677                                     ; preds = %676
  %empty_594 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_672 = extractvalue { i8, i1, i1 } %empty_594, 0
  %tmp_111_595 = zext i5 %i_112 to i64
  %plaintext_addr_112 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_111_595
  store i8 %tmp_data_672, i8* %plaintext_addr_112, align 1
  br label %676

; <label>:678                                     ; preds = %674
  %tmp_131_111 = zext i5 %i_1_111 to i64
  %out_addr_115 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_111
  %tmp_data_673 = load i8* %out_addr_115, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_673, i1 true, i1 false)
  br label %674

; <label>:679                                     ; preds = %680
  %empty_596 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_129)
  %tmp_130 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %688

; <label>:680                                     ; preds = %684, %681
  %i_1_112 = phi i5 [ 0, %681 ], [ %i_12_112, %684 ]
  %exitcond_112 = icmp eq i5 %i_1_112, -16
  %empty_597 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_112 = add i5 %i_1_112, 1
  br i1 %exitcond_112, label %679, label %684

; <label>:681                                     ; preds = %682
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %680

; <label>:682                                     ; preds = %683, %673
  %i_113 = phi i5 [ 0, %673 ], [ %i_11_112, %683 ]
  %exitcond2_112 = icmp eq i5 %i_113, -16
  %empty_598 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_112 = add i5 %i_113, 1
  br i1 %exitcond2_112, label %681, label %683

; <label>:683                                     ; preds = %682
  %empty_599 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_674 = extractvalue { i8, i1, i1 } %empty_599, 0
  %tmp_112_600 = zext i5 %i_113 to i64
  %plaintext_addr_113 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_112_600
  store i8 %tmp_data_674, i8* %plaintext_addr_113, align 1
  br label %682

; <label>:684                                     ; preds = %680
  %tmp_131_112 = zext i5 %i_1_112 to i64
  %out_addr_116 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_112
  %tmp_data_675 = load i8* %out_addr_116, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_675, i1 true, i1 false)
  br label %680

; <label>:685                                     ; preds = %686
  %empty_601 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_130)
  %tmp_132 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %694

; <label>:686                                     ; preds = %690, %687
  %i_1_113 = phi i5 [ 0, %687 ], [ %i_12_113, %690 ]
  %exitcond_113 = icmp eq i5 %i_1_113, -16
  %empty_602 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_113 = add i5 %i_1_113, 1
  br i1 %exitcond_113, label %685, label %690

; <label>:687                                     ; preds = %688
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %686

; <label>:688                                     ; preds = %689, %679
  %i_114 = phi i5 [ 0, %679 ], [ %i_11_113, %689 ]
  %exitcond2_113 = icmp eq i5 %i_114, -16
  %empty_603 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_113 = add i5 %i_114, 1
  br i1 %exitcond2_113, label %687, label %689

; <label>:689                                     ; preds = %688
  %empty_604 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_676 = extractvalue { i8, i1, i1 } %empty_604, 0
  %tmp_113_605 = zext i5 %i_114 to i64
  %plaintext_addr_114 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_113_605
  store i8 %tmp_data_676, i8* %plaintext_addr_114, align 1
  br label %688

; <label>:690                                     ; preds = %686
  %tmp_131_113 = zext i5 %i_1_113 to i64
  %out_addr_117 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_113
  %tmp_data_677 = load i8* %out_addr_117, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_677, i1 true, i1 false)
  br label %686

; <label>:691                                     ; preds = %692
  %empty_606 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_132)
  %tmp_133 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %700

; <label>:692                                     ; preds = %696, %693
  %i_1_114 = phi i5 [ 0, %693 ], [ %i_12_114, %696 ]
  %exitcond_114 = icmp eq i5 %i_1_114, -16
  %empty_607 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_114 = add i5 %i_1_114, 1
  br i1 %exitcond_114, label %691, label %696

; <label>:693                                     ; preds = %694
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %692

; <label>:694                                     ; preds = %695, %685
  %i_137 = phi i5 [ 0, %685 ], [ %i_11_114, %695 ]
  %exitcond2_114 = icmp eq i5 %i_137, -16
  %empty_608 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_114 = add i5 %i_137, 1
  br i1 %exitcond2_114, label %693, label %695

; <label>:695                                     ; preds = %694
  %empty_609 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_678 = extractvalue { i8, i1, i1 } %empty_609, 0
  %tmp_114_610 = zext i5 %i_137 to i64
  %plaintext_addr_115 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_114_610
  store i8 %tmp_data_678, i8* %plaintext_addr_115, align 1
  br label %694

; <label>:696                                     ; preds = %692
  %tmp_131_114 = zext i5 %i_1_114 to i64
  %out_addr_118 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_114
  %tmp_data_679 = load i8* %out_addr_118, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_679, i1 true, i1 false)
  br label %692

; <label>:697                                     ; preds = %698
  %empty_611 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_133)
  %tmp_134 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %706

; <label>:698                                     ; preds = %702, %699
  %i_1_115 = phi i5 [ 0, %699 ], [ %i_12_115, %702 ]
  %exitcond_115 = icmp eq i5 %i_1_115, -16
  %empty_612 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_115 = add i5 %i_1_115, 1
  br i1 %exitcond_115, label %697, label %702

; <label>:699                                     ; preds = %700
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %698

; <label>:700                                     ; preds = %701, %691
  %i_116 = phi i5 [ 0, %691 ], [ %i_11_115, %701 ]
  %exitcond2_115 = icmp eq i5 %i_116, -16
  %empty_613 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_115 = add i5 %i_116, 1
  br i1 %exitcond2_115, label %699, label %701

; <label>:701                                     ; preds = %700
  %empty_614 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_680 = extractvalue { i8, i1, i1 } %empty_614, 0
  %tmp_115_615 = zext i5 %i_116 to i64
  %plaintext_addr_116 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_115_615
  store i8 %tmp_data_680, i8* %plaintext_addr_116, align 1
  br label %700

; <label>:702                                     ; preds = %698
  %tmp_131_115 = zext i5 %i_1_115 to i64
  %out_addr_119 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_115
  %tmp_data_681 = load i8* %out_addr_119, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_681, i1 true, i1 false)
  br label %698

; <label>:703                                     ; preds = %704
  %empty_616 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_134)
  %tmp_135 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %712

; <label>:704                                     ; preds = %708, %705
  %i_1_116 = phi i5 [ 0, %705 ], [ %i_12_116, %708 ]
  %exitcond_116 = icmp eq i5 %i_1_116, -16
  %empty_617 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_116 = add i5 %i_1_116, 1
  br i1 %exitcond_116, label %703, label %708

; <label>:705                                     ; preds = %706
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %704

; <label>:706                                     ; preds = %707, %697
  %i_117 = phi i5 [ 0, %697 ], [ %i_11_116, %707 ]
  %exitcond2_116 = icmp eq i5 %i_117, -16
  %empty_618 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_116 = add i5 %i_117, 1
  br i1 %exitcond2_116, label %705, label %707

; <label>:707                                     ; preds = %706
  %empty_619 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_682 = extractvalue { i8, i1, i1 } %empty_619, 0
  %tmp_116_620 = zext i5 %i_117 to i64
  %plaintext_addr_117 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_116_620
  store i8 %tmp_data_682, i8* %plaintext_addr_117, align 1
  br label %706

; <label>:708                                     ; preds = %704
  %tmp_131_116 = zext i5 %i_1_116 to i64
  %out_addr_120 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_116
  %tmp_data_683 = load i8* %out_addr_120, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_683, i1 true, i1 false)
  br label %704

; <label>:709                                     ; preds = %710
  %empty_621 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_135)
  %tmp_136 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %718

; <label>:710                                     ; preds = %714, %711
  %i_1_117 = phi i5 [ 0, %711 ], [ %i_12_117, %714 ]
  %exitcond_117 = icmp eq i5 %i_1_117, -16
  %empty_622 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_117 = add i5 %i_1_117, 1
  br i1 %exitcond_117, label %709, label %714

; <label>:711                                     ; preds = %712
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %710

; <label>:712                                     ; preds = %713, %703
  %i_118 = phi i5 [ 0, %703 ], [ %i_11_117, %713 ]
  %exitcond2_117 = icmp eq i5 %i_118, -16
  %empty_623 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_117 = add i5 %i_118, 1
  br i1 %exitcond2_117, label %711, label %713

; <label>:713                                     ; preds = %712
  %empty_624 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_684 = extractvalue { i8, i1, i1 } %empty_624, 0
  %tmp_117_625 = zext i5 %i_118 to i64
  %plaintext_addr_118 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_117_625
  store i8 %tmp_data_684, i8* %plaintext_addr_118, align 1
  br label %712

; <label>:714                                     ; preds = %710
  %tmp_131_117 = zext i5 %i_1_117 to i64
  %out_addr_121 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_117
  %tmp_data_685 = load i8* %out_addr_121, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_685, i1 true, i1 false)
  br label %710

; <label>:715                                     ; preds = %716
  %empty_626 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_136)
  %tmp_137 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %724

; <label>:716                                     ; preds = %720, %717
  %i_1_118 = phi i5 [ 0, %717 ], [ %i_12_118, %720 ]
  %exitcond_118 = icmp eq i5 %i_1_118, -16
  %empty_627 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_118 = add i5 %i_1_118, 1
  br i1 %exitcond_118, label %715, label %720

; <label>:717                                     ; preds = %718
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %716

; <label>:718                                     ; preds = %719, %709
  %i_119 = phi i5 [ 0, %709 ], [ %i_11_118, %719 ]
  %exitcond2_118 = icmp eq i5 %i_119, -16
  %empty_628 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_118 = add i5 %i_119, 1
  br i1 %exitcond2_118, label %717, label %719

; <label>:719                                     ; preds = %718
  %empty_629 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_686 = extractvalue { i8, i1, i1 } %empty_629, 0
  %tmp_118_630 = zext i5 %i_119 to i64
  %plaintext_addr_119 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_118_630
  store i8 %tmp_data_686, i8* %plaintext_addr_119, align 1
  br label %718

; <label>:720                                     ; preds = %716
  %tmp_131_118 = zext i5 %i_1_118 to i64
  %out_addr_122 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_118
  %tmp_data_687 = load i8* %out_addr_122, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_687, i1 true, i1 false)
  br label %716

; <label>:721                                     ; preds = %722
  %empty_631 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_137)
  %tmp_138 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %730

; <label>:722                                     ; preds = %726, %723
  %i_1_119 = phi i5 [ 0, %723 ], [ %i_12_119, %726 ]
  %exitcond_119 = icmp eq i5 %i_1_119, -16
  %empty_632 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_119 = add i5 %i_1_119, 1
  br i1 %exitcond_119, label %721, label %726

; <label>:723                                     ; preds = %724
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %722

; <label>:724                                     ; preds = %725, %715
  %i_120 = phi i5 [ 0, %715 ], [ %i_11_119, %725 ]
  %exitcond2_119 = icmp eq i5 %i_120, -16
  %empty_633 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_119 = add i5 %i_120, 1
  br i1 %exitcond2_119, label %723, label %725

; <label>:725                                     ; preds = %724
  %empty_634 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_688 = extractvalue { i8, i1, i1 } %empty_634, 0
  %tmp_119_635 = zext i5 %i_120 to i64
  %plaintext_addr_120 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_119_635
  store i8 %tmp_data_688, i8* %plaintext_addr_120, align 1
  br label %724

; <label>:726                                     ; preds = %722
  %tmp_131_119 = zext i5 %i_1_119 to i64
  %out_addr_123 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_119
  %tmp_data_689 = load i8* %out_addr_123, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_689, i1 true, i1 false)
  br label %722

; <label>:727                                     ; preds = %728
  %empty_636 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_138)
  %tmp_139 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %736

; <label>:728                                     ; preds = %732, %729
  %i_1_120 = phi i5 [ 0, %729 ], [ %i_12_120, %732 ]
  %exitcond_120 = icmp eq i5 %i_1_120, -16
  %empty_637 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_120 = add i5 %i_1_120, 1
  br i1 %exitcond_120, label %727, label %732

; <label>:729                                     ; preds = %730
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %728

; <label>:730                                     ; preds = %731, %721
  %i_121 = phi i5 [ 0, %721 ], [ %i_11_120, %731 ]
  %exitcond2_120 = icmp eq i5 %i_121, -16
  %empty_638 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_120 = add i5 %i_121, 1
  br i1 %exitcond2_120, label %729, label %731

; <label>:731                                     ; preds = %730
  %empty_639 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_690 = extractvalue { i8, i1, i1 } %empty_639, 0
  %tmp_120_640 = zext i5 %i_121 to i64
  %plaintext_addr_121 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_120_640
  store i8 %tmp_data_690, i8* %plaintext_addr_121, align 1
  br label %730

; <label>:732                                     ; preds = %728
  %tmp_131_120 = zext i5 %i_1_120 to i64
  %out_addr_124 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_120
  %tmp_data_691 = load i8* %out_addr_124, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_691, i1 true, i1 false)
  br label %728

; <label>:733                                     ; preds = %734
  %empty_641 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_139)
  %tmp_140 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %742

; <label>:734                                     ; preds = %738, %735
  %i_1_121 = phi i5 [ 0, %735 ], [ %i_12_121, %738 ]
  %exitcond_121 = icmp eq i5 %i_1_121, -16
  %empty_642 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_121 = add i5 %i_1_121, 1
  br i1 %exitcond_121, label %733, label %738

; <label>:735                                     ; preds = %736
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %734

; <label>:736                                     ; preds = %737, %727
  %i_122 = phi i5 [ 0, %727 ], [ %i_11_121, %737 ]
  %exitcond2_121 = icmp eq i5 %i_122, -16
  %empty_643 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_121 = add i5 %i_122, 1
  br i1 %exitcond2_121, label %735, label %737

; <label>:737                                     ; preds = %736
  %empty_644 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_692 = extractvalue { i8, i1, i1 } %empty_644, 0
  %tmp_121_645 = zext i5 %i_122 to i64
  %plaintext_addr_122 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_121_645
  store i8 %tmp_data_692, i8* %plaintext_addr_122, align 1
  br label %736

; <label>:738                                     ; preds = %734
  %tmp_131_121 = zext i5 %i_1_121 to i64
  %out_addr_125 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_121
  %tmp_data_693 = load i8* %out_addr_125, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_693, i1 true, i1 false)
  br label %734

; <label>:739                                     ; preds = %740
  %empty_646 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_140)
  %tmp_141 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %748

; <label>:740                                     ; preds = %744, %741
  %i_1_122 = phi i5 [ 0, %741 ], [ %i_12_122, %744 ]
  %exitcond_122 = icmp eq i5 %i_1_122, -16
  %empty_647 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_122 = add i5 %i_1_122, 1
  br i1 %exitcond_122, label %739, label %744

; <label>:741                                     ; preds = %742
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %740

; <label>:742                                     ; preds = %743, %733
  %i_123 = phi i5 [ 0, %733 ], [ %i_11_122, %743 ]
  %exitcond2_122 = icmp eq i5 %i_123, -16
  %empty_648 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_122 = add i5 %i_123, 1
  br i1 %exitcond2_122, label %741, label %743

; <label>:743                                     ; preds = %742
  %empty_649 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_694 = extractvalue { i8, i1, i1 } %empty_649, 0
  %tmp_122_650 = zext i5 %i_123 to i64
  %plaintext_addr_123 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_122_650
  store i8 %tmp_data_694, i8* %plaintext_addr_123, align 1
  br label %742

; <label>:744                                     ; preds = %740
  %tmp_131_122 = zext i5 %i_1_122 to i64
  %out_addr_126 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_122
  %tmp_data_695 = load i8* %out_addr_126, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_695, i1 true, i1 false)
  br label %740

; <label>:745                                     ; preds = %746
  %empty_651 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_141)
  %tmp_142 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %754

; <label>:746                                     ; preds = %750, %747
  %i_1_123 = phi i5 [ 0, %747 ], [ %i_12_123, %750 ]
  %exitcond_123 = icmp eq i5 %i_1_123, -16
  %empty_652 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_123 = add i5 %i_1_123, 1
  br i1 %exitcond_123, label %745, label %750

; <label>:747                                     ; preds = %748
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %746

; <label>:748                                     ; preds = %749, %739
  %i_124 = phi i5 [ 0, %739 ], [ %i_11_123, %749 ]
  %exitcond2_123 = icmp eq i5 %i_124, -16
  %empty_653 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_123 = add i5 %i_124, 1
  br i1 %exitcond2_123, label %747, label %749

; <label>:749                                     ; preds = %748
  %empty_654 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_696 = extractvalue { i8, i1, i1 } %empty_654, 0
  %tmp_123_655 = zext i5 %i_124 to i64
  %plaintext_addr_124 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_123_655
  store i8 %tmp_data_696, i8* %plaintext_addr_124, align 1
  br label %748

; <label>:750                                     ; preds = %746
  %tmp_131_123 = zext i5 %i_1_123 to i64
  %out_addr_127 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_123
  %tmp_data_697 = load i8* %out_addr_127, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_697, i1 true, i1 false)
  br label %746

; <label>:751                                     ; preds = %752
  %empty_656 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_142)
  %tmp_143 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %760

; <label>:752                                     ; preds = %756, %753
  %i_1_124 = phi i5 [ 0, %753 ], [ %i_12_124, %756 ]
  %exitcond_124 = icmp eq i5 %i_1_124, -16
  %empty_657 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_124 = add i5 %i_1_124, 1
  br i1 %exitcond_124, label %751, label %756

; <label>:753                                     ; preds = %754
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %752

; <label>:754                                     ; preds = %755, %745
  %i_125 = phi i5 [ 0, %745 ], [ %i_11_124, %755 ]
  %exitcond2_124 = icmp eq i5 %i_125, -16
  %empty_658 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_124 = add i5 %i_125, 1
  br i1 %exitcond2_124, label %753, label %755

; <label>:755                                     ; preds = %754
  %empty_659 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_698 = extractvalue { i8, i1, i1 } %empty_659, 0
  %tmp_124_660 = zext i5 %i_125 to i64
  %plaintext_addr_125 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_124_660
  store i8 %tmp_data_698, i8* %plaintext_addr_125, align 1
  br label %754

; <label>:756                                     ; preds = %752
  %tmp_131_124 = zext i5 %i_1_124 to i64
  %out_addr_128 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_124
  %tmp_data_699 = load i8* %out_addr_128, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_699, i1 true, i1 false)
  br label %752

; <label>:757                                     ; preds = %758
  %empty_661 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_143)
  %tmp_144 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %766

; <label>:758                                     ; preds = %762, %759
  %i_1_125 = phi i5 [ 0, %759 ], [ %i_12_125, %762 ]
  %exitcond_125 = icmp eq i5 %i_1_125, -16
  %empty_662 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_125 = add i5 %i_1_125, 1
  br i1 %exitcond_125, label %757, label %762

; <label>:759                                     ; preds = %760
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %758

; <label>:760                                     ; preds = %761, %751
  %i_450 = phi i5 [ 0, %751 ], [ %i_11_125, %761 ]
  %exitcond2_125 = icmp eq i5 %i_450, -16
  %empty_663 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_125 = add i5 %i_450, 1
  br i1 %exitcond2_125, label %759, label %761

; <label>:761                                     ; preds = %760
  %empty_664 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_700 = extractvalue { i8, i1, i1 } %empty_664, 0
  %tmp_125_665 = zext i5 %i_450 to i64
  %plaintext_addr_126 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_125_665
  store i8 %tmp_data_700, i8* %plaintext_addr_126, align 1
  br label %760

; <label>:762                                     ; preds = %758
  %tmp_131_125 = zext i5 %i_1_125 to i64
  %out_addr_129 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_125
  %tmp_data_701 = load i8* %out_addr_129, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_701, i1 true, i1 false)
  br label %758

; <label>:763                                     ; preds = %764
  %empty_666 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_144)
  %tmp_145 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %772

; <label>:764                                     ; preds = %768, %765
  %i_1_126 = phi i5 [ 0, %765 ], [ %i_12_126, %768 ]
  %exitcond_126 = icmp eq i5 %i_1_126, -16
  %empty_667 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_126 = add i5 %i_1_126, 1
  br i1 %exitcond_126, label %763, label %768

; <label>:765                                     ; preds = %766
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %764

; <label>:766                                     ; preds = %767, %757
  %i_127 = phi i5 [ 0, %757 ], [ %i_11_126, %767 ]
  %exitcond2_126 = icmp eq i5 %i_127, -16
  %empty_668 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_126 = add i5 %i_127, 1
  br i1 %exitcond2_126, label %765, label %767

; <label>:767                                     ; preds = %766
  %empty_669 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_702 = extractvalue { i8, i1, i1 } %empty_669, 0
  %tmp_126_670 = zext i5 %i_127 to i64
  %plaintext_addr_127 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_126_670
  store i8 %tmp_data_702, i8* %plaintext_addr_127, align 1
  br label %766

; <label>:768                                     ; preds = %764
  %tmp_131_126 = zext i5 %i_1_126 to i64
  %out_addr_130 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_126
  %tmp_data_703 = load i8* %out_addr_130, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_703, i1 true, i1 false)
  br label %764

; <label>:769                                     ; preds = %770
  %empty_671 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_145)
  %tmp_146 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %778

; <label>:770                                     ; preds = %774, %771
  %i_1_127 = phi i5 [ 0, %771 ], [ %i_12_127, %774 ]
  %exitcond_127 = icmp eq i5 %i_1_127, -16
  %empty_672 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_127 = add i5 %i_1_127, 1
  br i1 %exitcond_127, label %769, label %774

; <label>:771                                     ; preds = %772
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %770

; <label>:772                                     ; preds = %773, %763
  %i_128 = phi i5 [ 0, %763 ], [ %i_11_127, %773 ]
  %exitcond2_127 = icmp eq i5 %i_128, -16
  %empty_673 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_127 = add i5 %i_128, 1
  br i1 %exitcond2_127, label %771, label %773

; <label>:773                                     ; preds = %772
  %empty_674 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_704 = extractvalue { i8, i1, i1 } %empty_674, 0
  %tmp_127_675 = zext i5 %i_128 to i64
  %plaintext_addr_128 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_127_675
  store i8 %tmp_data_704, i8* %plaintext_addr_128, align 1
  br label %772

; <label>:774                                     ; preds = %770
  %tmp_131_127 = zext i5 %i_1_127 to i64
  %out_addr_131 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_127
  %tmp_data_705 = load i8* %out_addr_131, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_705, i1 true, i1 false)
  br label %770

; <label>:775                                     ; preds = %776
  %empty_676 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_146)
  %tmp_147 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %784

; <label>:776                                     ; preds = %780, %777
  %i_1_128 = phi i5 [ 0, %777 ], [ %i_12_128, %780 ]
  %exitcond_128 = icmp eq i5 %i_1_128, -16
  %empty_677 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_128 = add i5 %i_1_128, 1
  br i1 %exitcond_128, label %775, label %780

; <label>:777                                     ; preds = %778
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %776

; <label>:778                                     ; preds = %779, %769
  %i_129 = phi i5 [ 0, %769 ], [ %i_11_128, %779 ]
  %exitcond2_128 = icmp eq i5 %i_129, -16
  %empty_678 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_128 = add i5 %i_129, 1
  br i1 %exitcond2_128, label %777, label %779

; <label>:779                                     ; preds = %778
  %empty_679 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_706 = extractvalue { i8, i1, i1 } %empty_679, 0
  %tmp_128_680 = zext i5 %i_129 to i64
  %plaintext_addr_129 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_128_680
  store i8 %tmp_data_706, i8* %plaintext_addr_129, align 1
  br label %778

; <label>:780                                     ; preds = %776
  %tmp_131_128 = zext i5 %i_1_128 to i64
  %out_addr_132 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_128
  %tmp_data_707 = load i8* %out_addr_132, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_707, i1 true, i1 false)
  br label %776

; <label>:781                                     ; preds = %782
  %empty_681 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_147)
  %tmp_148 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %790

; <label>:782                                     ; preds = %786, %783
  %i_1_129 = phi i5 [ 0, %783 ], [ %i_12_129, %786 ]
  %exitcond_129 = icmp eq i5 %i_1_129, -16
  %empty_682 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_129 = add i5 %i_1_129, 1
  br i1 %exitcond_129, label %781, label %786

; <label>:783                                     ; preds = %784
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %782

; <label>:784                                     ; preds = %785, %775
  %i_130 = phi i5 [ 0, %775 ], [ %i_11_129, %785 ]
  %exitcond2_129 = icmp eq i5 %i_130, -16
  %empty_683 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_129 = add i5 %i_130, 1
  br i1 %exitcond2_129, label %783, label %785

; <label>:785                                     ; preds = %784
  %empty_684 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_708 = extractvalue { i8, i1, i1 } %empty_684, 0
  %tmp_129_685 = zext i5 %i_130 to i64
  %plaintext_addr_130 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_129_685
  store i8 %tmp_data_708, i8* %plaintext_addr_130, align 1
  br label %784

; <label>:786                                     ; preds = %782
  %tmp_131_129 = zext i5 %i_1_129 to i64
  %out_addr_133 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_129
  %tmp_data_709 = load i8* %out_addr_133, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_709, i1 true, i1 false)
  br label %782

; <label>:787                                     ; preds = %788
  %empty_686 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_148)
  %tmp_149 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %796

; <label>:788                                     ; preds = %792, %789
  %i_1_130 = phi i5 [ 0, %789 ], [ %i_12_130, %792 ]
  %exitcond_130 = icmp eq i5 %i_1_130, -16
  %empty_687 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_130 = add i5 %i_1_130, 1
  br i1 %exitcond_130, label %787, label %792

; <label>:789                                     ; preds = %790
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %788

; <label>:790                                     ; preds = %791, %781
  %i_131 = phi i5 [ 0, %781 ], [ %i_11_130, %791 ]
  %exitcond2_130 = icmp eq i5 %i_131, -16
  %empty_688 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_130 = add i5 %i_131, 1
  br i1 %exitcond2_130, label %789, label %791

; <label>:791                                     ; preds = %790
  %empty_689 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_710 = extractvalue { i8, i1, i1 } %empty_689, 0
  %tmp_130_690 = zext i5 %i_131 to i64
  %plaintext_addr_131 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_130_690
  store i8 %tmp_data_710, i8* %plaintext_addr_131, align 1
  br label %790

; <label>:792                                     ; preds = %788
  %tmp_131_130 = zext i5 %i_1_130 to i64
  %out_addr_134 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_130
  %tmp_data_711 = load i8* %out_addr_134, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_711, i1 true, i1 false)
  br label %788

; <label>:793                                     ; preds = %794
  %empty_691 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_149)
  %tmp_150 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %802

; <label>:794                                     ; preds = %798, %795
  %i_1_131 = phi i5 [ 0, %795 ], [ %i_12_131, %798 ]
  %exitcond_131 = icmp eq i5 %i_1_131, -16
  %empty_692 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_131 = add i5 %i_1_131, 1
  br i1 %exitcond_131, label %793, label %798

; <label>:795                                     ; preds = %796
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %794

; <label>:796                                     ; preds = %797, %787
  %i_132 = phi i5 [ 0, %787 ], [ %i_11_131, %797 ]
  %exitcond2_131 = icmp eq i5 %i_132, -16
  %empty_693 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_131 = add i5 %i_132, 1
  br i1 %exitcond2_131, label %795, label %797

; <label>:797                                     ; preds = %796
  %empty_694 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_712 = extractvalue { i8, i1, i1 } %empty_694, 0
  %tmp_131_695 = zext i5 %i_132 to i64
  %plaintext_addr_132 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_131_695
  store i8 %tmp_data_712, i8* %plaintext_addr_132, align 1
  br label %796

; <label>:798                                     ; preds = %794
  %tmp_131_131 = zext i5 %i_1_131 to i64
  %out_addr_135 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_131
  %tmp_data_713 = load i8* %out_addr_135, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_713, i1 true, i1 false)
  br label %794

; <label>:799                                     ; preds = %800
  %empty_696 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_150)
  %tmp_151 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %808

; <label>:800                                     ; preds = %804, %801
  %i_1_132 = phi i5 [ 0, %801 ], [ %i_12_132, %804 ]
  %exitcond_132 = icmp eq i5 %i_1_132, -16
  %empty_697 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_132 = add i5 %i_1_132, 1
  br i1 %exitcond_132, label %799, label %804

; <label>:801                                     ; preds = %802
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %800

; <label>:802                                     ; preds = %803, %793
  %i_133 = phi i5 [ 0, %793 ], [ %i_11_132, %803 ]
  %exitcond2_132 = icmp eq i5 %i_133, -16
  %empty_698 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_132 = add i5 %i_133, 1
  br i1 %exitcond2_132, label %801, label %803

; <label>:803                                     ; preds = %802
  %empty_699 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_714 = extractvalue { i8, i1, i1 } %empty_699, 0
  %tmp_132_700 = zext i5 %i_133 to i64
  %plaintext_addr_133 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_132_700
  store i8 %tmp_data_714, i8* %plaintext_addr_133, align 1
  br label %802

; <label>:804                                     ; preds = %800
  %tmp_131_132 = zext i5 %i_1_132 to i64
  %out_addr_136 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_132
  %tmp_data_715 = load i8* %out_addr_136, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_715, i1 true, i1 false)
  br label %800

; <label>:805                                     ; preds = %806
  %empty_701 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_151)
  %tmp_152 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %814

; <label>:806                                     ; preds = %810, %807
  %i_1_133 = phi i5 [ 0, %807 ], [ %i_12_133, %810 ]
  %exitcond_133 = icmp eq i5 %i_1_133, -16
  %empty_702 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_133 = add i5 %i_1_133, 1
  br i1 %exitcond_133, label %805, label %810

; <label>:807                                     ; preds = %808
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %806

; <label>:808                                     ; preds = %809, %799
  %i_134 = phi i5 [ 0, %799 ], [ %i_11_133, %809 ]
  %exitcond2_133 = icmp eq i5 %i_134, -16
  %empty_703 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_133 = add i5 %i_134, 1
  br i1 %exitcond2_133, label %807, label %809

; <label>:809                                     ; preds = %808
  %empty_704 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_716 = extractvalue { i8, i1, i1 } %empty_704, 0
  %tmp_133_705 = zext i5 %i_134 to i64
  %plaintext_addr_134 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_133_705
  store i8 %tmp_data_716, i8* %plaintext_addr_134, align 1
  br label %808

; <label>:810                                     ; preds = %806
  %tmp_131_133 = zext i5 %i_1_133 to i64
  %out_addr_137 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_133
  %tmp_data_717 = load i8* %out_addr_137, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_717, i1 true, i1 false)
  br label %806

; <label>:811                                     ; preds = %812
  %empty_706 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_152)
  %tmp_153 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %820

; <label>:812                                     ; preds = %816, %813
  %i_1_134 = phi i5 [ 0, %813 ], [ %i_12_134, %816 ]
  %exitcond_134 = icmp eq i5 %i_1_134, -16
  %empty_707 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_134 = add i5 %i_1_134, 1
  br i1 %exitcond_134, label %811, label %816

; <label>:813                                     ; preds = %814
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %812

; <label>:814                                     ; preds = %815, %805
  %i_135 = phi i5 [ 0, %805 ], [ %i_11_134, %815 ]
  %exitcond2_134 = icmp eq i5 %i_135, -16
  %empty_708 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_134 = add i5 %i_135, 1
  br i1 %exitcond2_134, label %813, label %815

; <label>:815                                     ; preds = %814
  %empty_709 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_718 = extractvalue { i8, i1, i1 } %empty_709, 0
  %tmp_134_710 = zext i5 %i_135 to i64
  %plaintext_addr_135 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_134_710
  store i8 %tmp_data_718, i8* %plaintext_addr_135, align 1
  br label %814

; <label>:816                                     ; preds = %812
  %tmp_131_134 = zext i5 %i_1_134 to i64
  %out_addr_138 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_134
  %tmp_data_719 = load i8* %out_addr_138, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_719, i1 true, i1 false)
  br label %812

; <label>:817                                     ; preds = %818
  %empty_711 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_153)
  %tmp_154 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %826

; <label>:818                                     ; preds = %822, %819
  %i_1_135 = phi i5 [ 0, %819 ], [ %i_12_135, %822 ]
  %exitcond_135 = icmp eq i5 %i_1_135, -16
  %empty_712 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_135 = add i5 %i_1_135, 1
  br i1 %exitcond_135, label %817, label %822

; <label>:819                                     ; preds = %820
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %818

; <label>:820                                     ; preds = %821, %811
  %i_136 = phi i5 [ 0, %811 ], [ %i_11_135, %821 ]
  %exitcond2_135 = icmp eq i5 %i_136, -16
  %empty_713 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_135 = add i5 %i_136, 1
  br i1 %exitcond2_135, label %819, label %821

; <label>:821                                     ; preds = %820
  %empty_714 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_720 = extractvalue { i8, i1, i1 } %empty_714, 0
  %tmp_135_715 = zext i5 %i_136 to i64
  %plaintext_addr_136 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_135_715
  store i8 %tmp_data_720, i8* %plaintext_addr_136, align 1
  br label %820

; <label>:822                                     ; preds = %818
  %tmp_131_135 = zext i5 %i_1_135 to i64
  %out_addr_139 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_135
  %tmp_data_721 = load i8* %out_addr_139, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_721, i1 true, i1 false)
  br label %818

; <label>:823                                     ; preds = %824
  %empty_716 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_154)
  %tmp_155 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %832

; <label>:824                                     ; preds = %828, %825
  %i_1_136 = phi i5 [ 0, %825 ], [ %i_12_136, %828 ]
  %exitcond_136 = icmp eq i5 %i_1_136, -16
  %empty_717 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_136 = add i5 %i_1_136, 1
  br i1 %exitcond_136, label %823, label %828

; <label>:825                                     ; preds = %826
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %824

; <label>:826                                     ; preds = %827, %817
  %i_451 = phi i5 [ 0, %817 ], [ %i_11_136, %827 ]
  %exitcond2_136 = icmp eq i5 %i_451, -16
  %empty_718 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_136 = add i5 %i_451, 1
  br i1 %exitcond2_136, label %825, label %827

; <label>:827                                     ; preds = %826
  %empty_719 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_722 = extractvalue { i8, i1, i1 } %empty_719, 0
  %tmp_136_720 = zext i5 %i_451 to i64
  %plaintext_addr_137 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_136_720
  store i8 %tmp_data_722, i8* %plaintext_addr_137, align 1
  br label %826

; <label>:828                                     ; preds = %824
  %tmp_131_136 = zext i5 %i_1_136 to i64
  %out_addr_140 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_136
  %tmp_data_723 = load i8* %out_addr_140, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_723, i1 true, i1 false)
  br label %824

; <label>:829                                     ; preds = %830
  %empty_721 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_155)
  %tmp_156 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %838

; <label>:830                                     ; preds = %834, %831
  %i_1_137 = phi i5 [ 0, %831 ], [ %i_12_137, %834 ]
  %exitcond_137 = icmp eq i5 %i_1_137, -16
  %empty_722 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_137 = add i5 %i_1_137, 1
  br i1 %exitcond_137, label %829, label %834

; <label>:831                                     ; preds = %832
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %830

; <label>:832                                     ; preds = %833, %823
  %i_138 = phi i5 [ 0, %823 ], [ %i_11_137, %833 ]
  %exitcond2_137 = icmp eq i5 %i_138, -16
  %empty_723 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_137 = add i5 %i_138, 1
  br i1 %exitcond2_137, label %831, label %833

; <label>:833                                     ; preds = %832
  %empty_724 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_724 = extractvalue { i8, i1, i1 } %empty_724, 0
  %tmp_137_725 = zext i5 %i_138 to i64
  %plaintext_addr_138 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_137_725
  store i8 %tmp_data_724, i8* %plaintext_addr_138, align 1
  br label %832

; <label>:834                                     ; preds = %830
  %tmp_131_137 = zext i5 %i_1_137 to i64
  %out_addr_141 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_137
  %tmp_data_725 = load i8* %out_addr_141, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_725, i1 true, i1 false)
  br label %830

; <label>:835                                     ; preds = %836
  %empty_726 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_156)
  %tmp_157 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %844

; <label>:836                                     ; preds = %840, %837
  %i_1_138 = phi i5 [ 0, %837 ], [ %i_12_138, %840 ]
  %exitcond_138 = icmp eq i5 %i_1_138, -16
  %empty_727 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_138 = add i5 %i_1_138, 1
  br i1 %exitcond_138, label %835, label %840

; <label>:837                                     ; preds = %838
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %836

; <label>:838                                     ; preds = %839, %829
  %i_139 = phi i5 [ 0, %829 ], [ %i_11_138, %839 ]
  %exitcond2_138 = icmp eq i5 %i_139, -16
  %empty_728 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_138 = add i5 %i_139, 1
  br i1 %exitcond2_138, label %837, label %839

; <label>:839                                     ; preds = %838
  %empty_729 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_726 = extractvalue { i8, i1, i1 } %empty_729, 0
  %tmp_138_730 = zext i5 %i_139 to i64
  %plaintext_addr_139 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_138_730
  store i8 %tmp_data_726, i8* %plaintext_addr_139, align 1
  br label %838

; <label>:840                                     ; preds = %836
  %tmp_131_138 = zext i5 %i_1_138 to i64
  %out_addr_142 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_138
  %tmp_data_727 = load i8* %out_addr_142, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_727, i1 true, i1 false)
  br label %836

; <label>:841                                     ; preds = %842
  %empty_731 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_157)
  %tmp_158 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %850

; <label>:842                                     ; preds = %846, %843
  %i_1_139 = phi i5 [ 0, %843 ], [ %i_12_139, %846 ]
  %exitcond_139 = icmp eq i5 %i_1_139, -16
  %empty_732 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_139 = add i5 %i_1_139, 1
  br i1 %exitcond_139, label %841, label %846

; <label>:843                                     ; preds = %844
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %842

; <label>:844                                     ; preds = %845, %835
  %i_140 = phi i5 [ 0, %835 ], [ %i_11_139, %845 ]
  %exitcond2_139 = icmp eq i5 %i_140, -16
  %empty_733 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_139 = add i5 %i_140, 1
  br i1 %exitcond2_139, label %843, label %845

; <label>:845                                     ; preds = %844
  %empty_734 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_728 = extractvalue { i8, i1, i1 } %empty_734, 0
  %tmp_139_735 = zext i5 %i_140 to i64
  %plaintext_addr_140 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_139_735
  store i8 %tmp_data_728, i8* %plaintext_addr_140, align 1
  br label %844

; <label>:846                                     ; preds = %842
  %tmp_131_139 = zext i5 %i_1_139 to i64
  %out_addr_143 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_139
  %tmp_data_729 = load i8* %out_addr_143, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_729, i1 true, i1 false)
  br label %842

; <label>:847                                     ; preds = %848
  %empty_736 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_158)
  %tmp_159 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %856

; <label>:848                                     ; preds = %852, %849
  %i_1_140 = phi i5 [ 0, %849 ], [ %i_12_140, %852 ]
  %exitcond_140 = icmp eq i5 %i_1_140, -16
  %empty_737 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_140 = add i5 %i_1_140, 1
  br i1 %exitcond_140, label %847, label %852

; <label>:849                                     ; preds = %850
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %848

; <label>:850                                     ; preds = %851, %841
  %i_141 = phi i5 [ 0, %841 ], [ %i_11_140, %851 ]
  %exitcond2_140 = icmp eq i5 %i_141, -16
  %empty_738 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_140 = add i5 %i_141, 1
  br i1 %exitcond2_140, label %849, label %851

; <label>:851                                     ; preds = %850
  %empty_739 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_730 = extractvalue { i8, i1, i1 } %empty_739, 0
  %tmp_140_740 = zext i5 %i_141 to i64
  %plaintext_addr_141 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_140_740
  store i8 %tmp_data_730, i8* %plaintext_addr_141, align 1
  br label %850

; <label>:852                                     ; preds = %848
  %tmp_131_140 = zext i5 %i_1_140 to i64
  %out_addr_144 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_140
  %tmp_data_731 = load i8* %out_addr_144, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_731, i1 true, i1 false)
  br label %848

; <label>:853                                     ; preds = %854
  %empty_741 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_159)
  %tmp_160 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %862

; <label>:854                                     ; preds = %858, %855
  %i_1_141 = phi i5 [ 0, %855 ], [ %i_12_141, %858 ]
  %exitcond_141 = icmp eq i5 %i_1_141, -16
  %empty_742 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_141 = add i5 %i_1_141, 1
  br i1 %exitcond_141, label %853, label %858

; <label>:855                                     ; preds = %856
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %854

; <label>:856                                     ; preds = %857, %847
  %i_142 = phi i5 [ 0, %847 ], [ %i_11_141, %857 ]
  %exitcond2_141 = icmp eq i5 %i_142, -16
  %empty_743 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_141 = add i5 %i_142, 1
  br i1 %exitcond2_141, label %855, label %857

; <label>:857                                     ; preds = %856
  %empty_744 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_732 = extractvalue { i8, i1, i1 } %empty_744, 0
  %tmp_141_745 = zext i5 %i_142 to i64
  %plaintext_addr_142 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_141_745
  store i8 %tmp_data_732, i8* %plaintext_addr_142, align 1
  br label %856

; <label>:858                                     ; preds = %854
  %tmp_131_141 = zext i5 %i_1_141 to i64
  %out_addr_145 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_141
  %tmp_data_733 = load i8* %out_addr_145, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_733, i1 true, i1 false)
  br label %854

; <label>:859                                     ; preds = %860
  %empty_746 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_160)
  %tmp_161 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %868

; <label>:860                                     ; preds = %864, %861
  %i_1_142 = phi i5 [ 0, %861 ], [ %i_12_142, %864 ]
  %exitcond_142 = icmp eq i5 %i_1_142, -16
  %empty_747 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_142 = add i5 %i_1_142, 1
  br i1 %exitcond_142, label %859, label %864

; <label>:861                                     ; preds = %862
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %860

; <label>:862                                     ; preds = %863, %853
  %i_143 = phi i5 [ 0, %853 ], [ %i_11_142, %863 ]
  %exitcond2_142 = icmp eq i5 %i_143, -16
  %empty_748 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_142 = add i5 %i_143, 1
  br i1 %exitcond2_142, label %861, label %863

; <label>:863                                     ; preds = %862
  %empty_749 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_734 = extractvalue { i8, i1, i1 } %empty_749, 0
  %tmp_142_750 = zext i5 %i_143 to i64
  %plaintext_addr_143 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_142_750
  store i8 %tmp_data_734, i8* %plaintext_addr_143, align 1
  br label %862

; <label>:864                                     ; preds = %860
  %tmp_131_142 = zext i5 %i_1_142 to i64
  %out_addr_146 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_142
  %tmp_data_735 = load i8* %out_addr_146, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_735, i1 true, i1 false)
  br label %860

; <label>:865                                     ; preds = %866
  %empty_751 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_161)
  %tmp_162 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %874

; <label>:866                                     ; preds = %870, %867
  %i_1_143 = phi i5 [ 0, %867 ], [ %i_12_143, %870 ]
  %exitcond_143 = icmp eq i5 %i_1_143, -16
  %empty_752 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_143 = add i5 %i_1_143, 1
  br i1 %exitcond_143, label %865, label %870

; <label>:867                                     ; preds = %868
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %866

; <label>:868                                     ; preds = %869, %859
  %i_144 = phi i5 [ 0, %859 ], [ %i_11_143, %869 ]
  %exitcond2_143 = icmp eq i5 %i_144, -16
  %empty_753 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_143 = add i5 %i_144, 1
  br i1 %exitcond2_143, label %867, label %869

; <label>:869                                     ; preds = %868
  %empty_754 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_736 = extractvalue { i8, i1, i1 } %empty_754, 0
  %tmp_143_755 = zext i5 %i_144 to i64
  %plaintext_addr_144 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_143_755
  store i8 %tmp_data_736, i8* %plaintext_addr_144, align 1
  br label %868

; <label>:870                                     ; preds = %866
  %tmp_131_143 = zext i5 %i_1_143 to i64
  %out_addr_147 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_143
  %tmp_data_737 = load i8* %out_addr_147, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_737, i1 true, i1 false)
  br label %866

; <label>:871                                     ; preds = %872
  %empty_756 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_162)
  %tmp_163 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %880

; <label>:872                                     ; preds = %876, %873
  %i_1_144 = phi i5 [ 0, %873 ], [ %i_12_144, %876 ]
  %exitcond_144 = icmp eq i5 %i_1_144, -16
  %empty_757 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_144 = add i5 %i_1_144, 1
  br i1 %exitcond_144, label %871, label %876

; <label>:873                                     ; preds = %874
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %872

; <label>:874                                     ; preds = %875, %865
  %i_145 = phi i5 [ 0, %865 ], [ %i_11_144, %875 ]
  %exitcond2_144 = icmp eq i5 %i_145, -16
  %empty_758 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_144 = add i5 %i_145, 1
  br i1 %exitcond2_144, label %873, label %875

; <label>:875                                     ; preds = %874
  %empty_759 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_738 = extractvalue { i8, i1, i1 } %empty_759, 0
  %tmp_144_760 = zext i5 %i_145 to i64
  %plaintext_addr_145 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_144_760
  store i8 %tmp_data_738, i8* %plaintext_addr_145, align 1
  br label %874

; <label>:876                                     ; preds = %872
  %tmp_131_144 = zext i5 %i_1_144 to i64
  %out_addr_148 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_144
  %tmp_data_739 = load i8* %out_addr_148, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_739, i1 true, i1 false)
  br label %872

; <label>:877                                     ; preds = %878
  %empty_761 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_163)
  %tmp_164 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %886

; <label>:878                                     ; preds = %882, %879
  %i_1_145 = phi i5 [ 0, %879 ], [ %i_12_145, %882 ]
  %exitcond_145 = icmp eq i5 %i_1_145, -16
  %empty_762 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_145 = add i5 %i_1_145, 1
  br i1 %exitcond_145, label %877, label %882

; <label>:879                                     ; preds = %880
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %878

; <label>:880                                     ; preds = %881, %871
  %i_146 = phi i5 [ 0, %871 ], [ %i_11_145, %881 ]
  %exitcond2_145 = icmp eq i5 %i_146, -16
  %empty_763 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_145 = add i5 %i_146, 1
  br i1 %exitcond2_145, label %879, label %881

; <label>:881                                     ; preds = %880
  %empty_764 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_740 = extractvalue { i8, i1, i1 } %empty_764, 0
  %tmp_145_765 = zext i5 %i_146 to i64
  %plaintext_addr_146 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_145_765
  store i8 %tmp_data_740, i8* %plaintext_addr_146, align 1
  br label %880

; <label>:882                                     ; preds = %878
  %tmp_131_145 = zext i5 %i_1_145 to i64
  %out_addr_149 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_145
  %tmp_data_741 = load i8* %out_addr_149, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_741, i1 true, i1 false)
  br label %878

; <label>:883                                     ; preds = %884
  %empty_766 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_164)
  %tmp_165 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %892

; <label>:884                                     ; preds = %888, %885
  %i_1_146 = phi i5 [ 0, %885 ], [ %i_12_146, %888 ]
  %exitcond_146 = icmp eq i5 %i_1_146, -16
  %empty_767 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_146 = add i5 %i_1_146, 1
  br i1 %exitcond_146, label %883, label %888

; <label>:885                                     ; preds = %886
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %884

; <label>:886                                     ; preds = %887, %877
  %i_147 = phi i5 [ 0, %877 ], [ %i_11_146, %887 ]
  %exitcond2_146 = icmp eq i5 %i_147, -16
  %empty_768 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_146 = add i5 %i_147, 1
  br i1 %exitcond2_146, label %885, label %887

; <label>:887                                     ; preds = %886
  %empty_769 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_742 = extractvalue { i8, i1, i1 } %empty_769, 0
  %tmp_146_770 = zext i5 %i_147 to i64
  %plaintext_addr_147 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_146_770
  store i8 %tmp_data_742, i8* %plaintext_addr_147, align 1
  br label %886

; <label>:888                                     ; preds = %884
  %tmp_131_146 = zext i5 %i_1_146 to i64
  %out_addr_150 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_146
  %tmp_data_743 = load i8* %out_addr_150, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_743, i1 true, i1 false)
  br label %884

; <label>:889                                     ; preds = %890
  %empty_771 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_165)
  %tmp_166 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %898

; <label>:890                                     ; preds = %894, %891
  %i_1_147 = phi i5 [ 0, %891 ], [ %i_12_147, %894 ]
  %exitcond_147 = icmp eq i5 %i_1_147, -16
  %empty_772 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_147 = add i5 %i_1_147, 1
  br i1 %exitcond_147, label %889, label %894

; <label>:891                                     ; preds = %892
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %890

; <label>:892                                     ; preds = %893, %883
  %i_148 = phi i5 [ 0, %883 ], [ %i_11_147, %893 ]
  %exitcond2_147 = icmp eq i5 %i_148, -16
  %empty_773 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_147 = add i5 %i_148, 1
  br i1 %exitcond2_147, label %891, label %893

; <label>:893                                     ; preds = %892
  %empty_774 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_744 = extractvalue { i8, i1, i1 } %empty_774, 0
  %tmp_147_775 = zext i5 %i_148 to i64
  %plaintext_addr_148 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_147_775
  store i8 %tmp_data_744, i8* %plaintext_addr_148, align 1
  br label %892

; <label>:894                                     ; preds = %890
  %tmp_131_147 = zext i5 %i_1_147 to i64
  %out_addr_151 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_147
  %tmp_data_745 = load i8* %out_addr_151, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_745, i1 true, i1 false)
  br label %890

; <label>:895                                     ; preds = %896
  %empty_776 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_166)
  %tmp_167 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %904

; <label>:896                                     ; preds = %900, %897
  %i_1_148 = phi i5 [ 0, %897 ], [ %i_12_148, %900 ]
  %exitcond_148 = icmp eq i5 %i_1_148, -16
  %empty_777 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_148 = add i5 %i_1_148, 1
  br i1 %exitcond_148, label %895, label %900

; <label>:897                                     ; preds = %898
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %896

; <label>:898                                     ; preds = %899, %889
  %i_149 = phi i5 [ 0, %889 ], [ %i_11_148, %899 ]
  %exitcond2_148 = icmp eq i5 %i_149, -16
  %empty_778 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_148 = add i5 %i_149, 1
  br i1 %exitcond2_148, label %897, label %899

; <label>:899                                     ; preds = %898
  %empty_779 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_746 = extractvalue { i8, i1, i1 } %empty_779, 0
  %tmp_148_780 = zext i5 %i_149 to i64
  %plaintext_addr_149 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_148_780
  store i8 %tmp_data_746, i8* %plaintext_addr_149, align 1
  br label %898

; <label>:900                                     ; preds = %896
  %tmp_131_148 = zext i5 %i_1_148 to i64
  %out_addr_152 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_148
  %tmp_data_747 = load i8* %out_addr_152, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_747, i1 true, i1 false)
  br label %896

; <label>:901                                     ; preds = %902
  %empty_781 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_167)
  %tmp_168 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %910

; <label>:902                                     ; preds = %906, %903
  %i_1_149 = phi i5 [ 0, %903 ], [ %i_12_149, %906 ]
  %exitcond_149 = icmp eq i5 %i_1_149, -16
  %empty_782 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_149 = add i5 %i_1_149, 1
  br i1 %exitcond_149, label %901, label %906

; <label>:903                                     ; preds = %904
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %902

; <label>:904                                     ; preds = %905, %895
  %i_150 = phi i5 [ 0, %895 ], [ %i_11_149, %905 ]
  %exitcond2_149 = icmp eq i5 %i_150, -16
  %empty_783 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_149 = add i5 %i_150, 1
  br i1 %exitcond2_149, label %903, label %905

; <label>:905                                     ; preds = %904
  %empty_784 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_748 = extractvalue { i8, i1, i1 } %empty_784, 0
  %tmp_149_785 = zext i5 %i_150 to i64
  %plaintext_addr_150 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_149_785
  store i8 %tmp_data_748, i8* %plaintext_addr_150, align 1
  br label %904

; <label>:906                                     ; preds = %902
  %tmp_131_149 = zext i5 %i_1_149 to i64
  %out_addr_153 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_149
  %tmp_data_749 = load i8* %out_addr_153, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_749, i1 true, i1 false)
  br label %902

; <label>:907                                     ; preds = %908
  %empty_786 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_168)
  %tmp_169 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %916

; <label>:908                                     ; preds = %912, %909
  %i_1_150 = phi i5 [ 0, %909 ], [ %i_12_150, %912 ]
  %exitcond_150 = icmp eq i5 %i_1_150, -16
  %empty_787 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_150 = add i5 %i_1_150, 1
  br i1 %exitcond_150, label %907, label %912

; <label>:909                                     ; preds = %910
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %908

; <label>:910                                     ; preds = %911, %901
  %i_151 = phi i5 [ 0, %901 ], [ %i_11_150, %911 ]
  %exitcond2_150 = icmp eq i5 %i_151, -16
  %empty_788 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_150 = add i5 %i_151, 1
  br i1 %exitcond2_150, label %909, label %911

; <label>:911                                     ; preds = %910
  %empty_789 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_750 = extractvalue { i8, i1, i1 } %empty_789, 0
  %tmp_150_790 = zext i5 %i_151 to i64
  %plaintext_addr_151 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_150_790
  store i8 %tmp_data_750, i8* %plaintext_addr_151, align 1
  br label %910

; <label>:912                                     ; preds = %908
  %tmp_131_150 = zext i5 %i_1_150 to i64
  %out_addr_154 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_150
  %tmp_data_751 = load i8* %out_addr_154, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_751, i1 true, i1 false)
  br label %908

; <label>:913                                     ; preds = %914
  %empty_791 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_169)
  %tmp_170 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %922

; <label>:914                                     ; preds = %918, %915
  %i_1_151 = phi i5 [ 0, %915 ], [ %i_12_151, %918 ]
  %exitcond_151 = icmp eq i5 %i_1_151, -16
  %empty_792 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_151 = add i5 %i_1_151, 1
  br i1 %exitcond_151, label %913, label %918

; <label>:915                                     ; preds = %916
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %914

; <label>:916                                     ; preds = %917, %907
  %i_152 = phi i5 [ 0, %907 ], [ %i_11_151, %917 ]
  %exitcond2_151 = icmp eq i5 %i_152, -16
  %empty_793 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_151 = add i5 %i_152, 1
  br i1 %exitcond2_151, label %915, label %917

; <label>:917                                     ; preds = %916
  %empty_794 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_752 = extractvalue { i8, i1, i1 } %empty_794, 0
  %tmp_151_795 = zext i5 %i_152 to i64
  %plaintext_addr_152 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_151_795
  store i8 %tmp_data_752, i8* %plaintext_addr_152, align 1
  br label %916

; <label>:918                                     ; preds = %914
  %tmp_131_151 = zext i5 %i_1_151 to i64
  %out_addr_155 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_151
  %tmp_data_753 = load i8* %out_addr_155, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_753, i1 true, i1 false)
  br label %914

; <label>:919                                     ; preds = %920
  %empty_796 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_170)
  %tmp_171 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %928

; <label>:920                                     ; preds = %924, %921
  %i_1_152 = phi i5 [ 0, %921 ], [ %i_12_152, %924 ]
  %exitcond_152 = icmp eq i5 %i_1_152, -16
  %empty_797 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_152 = add i5 %i_1_152, 1
  br i1 %exitcond_152, label %919, label %924

; <label>:921                                     ; preds = %922
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %920

; <label>:922                                     ; preds = %923, %913
  %i_153 = phi i5 [ 0, %913 ], [ %i_11_152, %923 ]
  %exitcond2_152 = icmp eq i5 %i_153, -16
  %empty_798 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_152 = add i5 %i_153, 1
  br i1 %exitcond2_152, label %921, label %923

; <label>:923                                     ; preds = %922
  %empty_799 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_754 = extractvalue { i8, i1, i1 } %empty_799, 0
  %tmp_152_800 = zext i5 %i_153 to i64
  %plaintext_addr_153 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_152_800
  store i8 %tmp_data_754, i8* %plaintext_addr_153, align 1
  br label %922

; <label>:924                                     ; preds = %920
  %tmp_131_152 = zext i5 %i_1_152 to i64
  %out_addr_156 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_152
  %tmp_data_755 = load i8* %out_addr_156, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_755, i1 true, i1 false)
  br label %920

; <label>:925                                     ; preds = %926
  %empty_801 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_171)
  %tmp_172 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %934

; <label>:926                                     ; preds = %930, %927
  %i_1_153 = phi i5 [ 0, %927 ], [ %i_12_153, %930 ]
  %exitcond_153 = icmp eq i5 %i_1_153, -16
  %empty_802 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_153 = add i5 %i_1_153, 1
  br i1 %exitcond_153, label %925, label %930

; <label>:927                                     ; preds = %928
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %926

; <label>:928                                     ; preds = %929, %919
  %i_154 = phi i5 [ 0, %919 ], [ %i_11_153, %929 ]
  %exitcond2_153 = icmp eq i5 %i_154, -16
  %empty_803 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_153 = add i5 %i_154, 1
  br i1 %exitcond2_153, label %927, label %929

; <label>:929                                     ; preds = %928
  %empty_804 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_756 = extractvalue { i8, i1, i1 } %empty_804, 0
  %tmp_153_805 = zext i5 %i_154 to i64
  %plaintext_addr_154 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_153_805
  store i8 %tmp_data_756, i8* %plaintext_addr_154, align 1
  br label %928

; <label>:930                                     ; preds = %926
  %tmp_131_153 = zext i5 %i_1_153 to i64
  %out_addr_157 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_153
  %tmp_data_757 = load i8* %out_addr_157, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_757, i1 true, i1 false)
  br label %926

; <label>:931                                     ; preds = %932
  %empty_806 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_172)
  %tmp_173 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %940

; <label>:932                                     ; preds = %936, %933
  %i_1_154 = phi i5 [ 0, %933 ], [ %i_12_154, %936 ]
  %exitcond_154 = icmp eq i5 %i_1_154, -16
  %empty_807 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_154 = add i5 %i_1_154, 1
  br i1 %exitcond_154, label %931, label %936

; <label>:933                                     ; preds = %934
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %932

; <label>:934                                     ; preds = %935, %925
  %i_155 = phi i5 [ 0, %925 ], [ %i_11_154, %935 ]
  %exitcond2_154 = icmp eq i5 %i_155, -16
  %empty_808 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_154 = add i5 %i_155, 1
  br i1 %exitcond2_154, label %933, label %935

; <label>:935                                     ; preds = %934
  %empty_809 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_758 = extractvalue { i8, i1, i1 } %empty_809, 0
  %tmp_154_810 = zext i5 %i_155 to i64
  %plaintext_addr_155 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_154_810
  store i8 %tmp_data_758, i8* %plaintext_addr_155, align 1
  br label %934

; <label>:936                                     ; preds = %932
  %tmp_131_154 = zext i5 %i_1_154 to i64
  %out_addr_158 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_154
  %tmp_data_759 = load i8* %out_addr_158, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_759, i1 true, i1 false)
  br label %932

; <label>:937                                     ; preds = %938
  %empty_811 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_173)
  %tmp_174 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %946

; <label>:938                                     ; preds = %942, %939
  %i_1_155 = phi i5 [ 0, %939 ], [ %i_12_155, %942 ]
  %exitcond_155 = icmp eq i5 %i_1_155, -16
  %empty_812 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_155 = add i5 %i_1_155, 1
  br i1 %exitcond_155, label %937, label %942

; <label>:939                                     ; preds = %940
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %938

; <label>:940                                     ; preds = %941, %931
  %i_156 = phi i5 [ 0, %931 ], [ %i_11_155, %941 ]
  %exitcond2_155 = icmp eq i5 %i_156, -16
  %empty_813 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_155 = add i5 %i_156, 1
  br i1 %exitcond2_155, label %939, label %941

; <label>:941                                     ; preds = %940
  %empty_814 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_760 = extractvalue { i8, i1, i1 } %empty_814, 0
  %tmp_155_815 = zext i5 %i_156 to i64
  %plaintext_addr_156 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_155_815
  store i8 %tmp_data_760, i8* %plaintext_addr_156, align 1
  br label %940

; <label>:942                                     ; preds = %938
  %tmp_131_155 = zext i5 %i_1_155 to i64
  %out_addr_159 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_155
  %tmp_data_761 = load i8* %out_addr_159, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_761, i1 true, i1 false)
  br label %938

; <label>:943                                     ; preds = %944
  %empty_816 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_174)
  %tmp_175 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %952

; <label>:944                                     ; preds = %948, %945
  %i_1_156 = phi i5 [ 0, %945 ], [ %i_12_156, %948 ]
  %exitcond_156 = icmp eq i5 %i_1_156, -16
  %empty_817 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_156 = add i5 %i_1_156, 1
  br i1 %exitcond_156, label %943, label %948

; <label>:945                                     ; preds = %946
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %944

; <label>:946                                     ; preds = %947, %937
  %i_157 = phi i5 [ 0, %937 ], [ %i_11_156, %947 ]
  %exitcond2_156 = icmp eq i5 %i_157, -16
  %empty_818 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_156 = add i5 %i_157, 1
  br i1 %exitcond2_156, label %945, label %947

; <label>:947                                     ; preds = %946
  %empty_819 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_762 = extractvalue { i8, i1, i1 } %empty_819, 0
  %tmp_156_820 = zext i5 %i_157 to i64
  %plaintext_addr_157 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_156_820
  store i8 %tmp_data_762, i8* %plaintext_addr_157, align 1
  br label %946

; <label>:948                                     ; preds = %944
  %tmp_131_156 = zext i5 %i_1_156 to i64
  %out_addr_160 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_156
  %tmp_data_763 = load i8* %out_addr_160, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_763, i1 true, i1 false)
  br label %944

; <label>:949                                     ; preds = %950
  %empty_821 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_175)
  %tmp_176 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %958

; <label>:950                                     ; preds = %954, %951
  %i_1_157 = phi i5 [ 0, %951 ], [ %i_12_157, %954 ]
  %exitcond_157 = icmp eq i5 %i_1_157, -16
  %empty_822 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_157 = add i5 %i_1_157, 1
  br i1 %exitcond_157, label %949, label %954

; <label>:951                                     ; preds = %952
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %950

; <label>:952                                     ; preds = %953, %943
  %i_158 = phi i5 [ 0, %943 ], [ %i_11_157, %953 ]
  %exitcond2_157 = icmp eq i5 %i_158, -16
  %empty_823 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_157 = add i5 %i_158, 1
  br i1 %exitcond2_157, label %951, label %953

; <label>:953                                     ; preds = %952
  %empty_824 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_764 = extractvalue { i8, i1, i1 } %empty_824, 0
  %tmp_157_825 = zext i5 %i_158 to i64
  %plaintext_addr_158 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_157_825
  store i8 %tmp_data_764, i8* %plaintext_addr_158, align 1
  br label %952

; <label>:954                                     ; preds = %950
  %tmp_131_157 = zext i5 %i_1_157 to i64
  %out_addr_161 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_157
  %tmp_data_765 = load i8* %out_addr_161, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_765, i1 true, i1 false)
  br label %950

; <label>:955                                     ; preds = %956
  %empty_826 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_176)
  %tmp_177 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %964

; <label>:956                                     ; preds = %960, %957
  %i_1_158 = phi i5 [ 0, %957 ], [ %i_12_158, %960 ]
  %exitcond_158 = icmp eq i5 %i_1_158, -16
  %empty_827 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_158 = add i5 %i_1_158, 1
  br i1 %exitcond_158, label %955, label %960

; <label>:957                                     ; preds = %958
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %956

; <label>:958                                     ; preds = %959, %949
  %i_159 = phi i5 [ 0, %949 ], [ %i_11_158, %959 ]
  %exitcond2_158 = icmp eq i5 %i_159, -16
  %empty_828 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_158 = add i5 %i_159, 1
  br i1 %exitcond2_158, label %957, label %959

; <label>:959                                     ; preds = %958
  %empty_829 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_766 = extractvalue { i8, i1, i1 } %empty_829, 0
  %tmp_158_830 = zext i5 %i_159 to i64
  %plaintext_addr_159 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_158_830
  store i8 %tmp_data_766, i8* %plaintext_addr_159, align 1
  br label %958

; <label>:960                                     ; preds = %956
  %tmp_131_158 = zext i5 %i_1_158 to i64
  %out_addr_162 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_158
  %tmp_data_767 = load i8* %out_addr_162, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_767, i1 true, i1 false)
  br label %956

; <label>:961                                     ; preds = %962
  %empty_831 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_177)
  %tmp_178 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %970

; <label>:962                                     ; preds = %966, %963
  %i_1_159 = phi i5 [ 0, %963 ], [ %i_12_159, %966 ]
  %exitcond_159 = icmp eq i5 %i_1_159, -16
  %empty_832 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_159 = add i5 %i_1_159, 1
  br i1 %exitcond_159, label %961, label %966

; <label>:963                                     ; preds = %964
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %962

; <label>:964                                     ; preds = %965, %955
  %i_160 = phi i5 [ 0, %955 ], [ %i_11_159, %965 ]
  %exitcond2_159 = icmp eq i5 %i_160, -16
  %empty_833 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_159 = add i5 %i_160, 1
  br i1 %exitcond2_159, label %963, label %965

; <label>:965                                     ; preds = %964
  %empty_834 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_768 = extractvalue { i8, i1, i1 } %empty_834, 0
  %tmp_159_835 = zext i5 %i_160 to i64
  %plaintext_addr_160 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_159_835
  store i8 %tmp_data_768, i8* %plaintext_addr_160, align 1
  br label %964

; <label>:966                                     ; preds = %962
  %tmp_131_159 = zext i5 %i_1_159 to i64
  %out_addr_163 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_159
  %tmp_data_769 = load i8* %out_addr_163, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_769, i1 true, i1 false)
  br label %962

; <label>:967                                     ; preds = %968
  %empty_836 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_178)
  %tmp_179 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %976

; <label>:968                                     ; preds = %972, %969
  %i_1_160 = phi i5 [ 0, %969 ], [ %i_12_160, %972 ]
  %exitcond_160 = icmp eq i5 %i_1_160, -16
  %empty_837 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_160 = add i5 %i_1_160, 1
  br i1 %exitcond_160, label %967, label %972

; <label>:969                                     ; preds = %970
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %968

; <label>:970                                     ; preds = %971, %961
  %i_161 = phi i5 [ 0, %961 ], [ %i_11_160, %971 ]
  %exitcond2_160 = icmp eq i5 %i_161, -16
  %empty_838 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_160 = add i5 %i_161, 1
  br i1 %exitcond2_160, label %969, label %971

; <label>:971                                     ; preds = %970
  %empty_839 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_770 = extractvalue { i8, i1, i1 } %empty_839, 0
  %tmp_160_840 = zext i5 %i_161 to i64
  %plaintext_addr_161 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_160_840
  store i8 %tmp_data_770, i8* %plaintext_addr_161, align 1
  br label %970

; <label>:972                                     ; preds = %968
  %tmp_131_160 = zext i5 %i_1_160 to i64
  %out_addr_164 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_160
  %tmp_data_771 = load i8* %out_addr_164, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_771, i1 true, i1 false)
  br label %968

; <label>:973                                     ; preds = %974
  %empty_841 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_179)
  %tmp_180 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %982

; <label>:974                                     ; preds = %978, %975
  %i_1_161 = phi i5 [ 0, %975 ], [ %i_12_161, %978 ]
  %exitcond_161 = icmp eq i5 %i_1_161, -16
  %empty_842 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_161 = add i5 %i_1_161, 1
  br i1 %exitcond_161, label %973, label %978

; <label>:975                                     ; preds = %976
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %974

; <label>:976                                     ; preds = %977, %967
  %i_162 = phi i5 [ 0, %967 ], [ %i_11_161, %977 ]
  %exitcond2_161 = icmp eq i5 %i_162, -16
  %empty_843 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_161 = add i5 %i_162, 1
  br i1 %exitcond2_161, label %975, label %977

; <label>:977                                     ; preds = %976
  %empty_844 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_772 = extractvalue { i8, i1, i1 } %empty_844, 0
  %tmp_161_845 = zext i5 %i_162 to i64
  %plaintext_addr_162 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_161_845
  store i8 %tmp_data_772, i8* %plaintext_addr_162, align 1
  br label %976

; <label>:978                                     ; preds = %974
  %tmp_131_161 = zext i5 %i_1_161 to i64
  %out_addr_165 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_161
  %tmp_data_773 = load i8* %out_addr_165, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_773, i1 true, i1 false)
  br label %974

; <label>:979                                     ; preds = %980
  %empty_846 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_180)
  %tmp_181 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %988

; <label>:980                                     ; preds = %984, %981
  %i_1_162 = phi i5 [ 0, %981 ], [ %i_12_162, %984 ]
  %exitcond_162 = icmp eq i5 %i_1_162, -16
  %empty_847 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_162 = add i5 %i_1_162, 1
  br i1 %exitcond_162, label %979, label %984

; <label>:981                                     ; preds = %982
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %980

; <label>:982                                     ; preds = %983, %973
  %i_163 = phi i5 [ 0, %973 ], [ %i_11_162, %983 ]
  %exitcond2_162 = icmp eq i5 %i_163, -16
  %empty_848 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_162 = add i5 %i_163, 1
  br i1 %exitcond2_162, label %981, label %983

; <label>:983                                     ; preds = %982
  %empty_849 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_774 = extractvalue { i8, i1, i1 } %empty_849, 0
  %tmp_162_850 = zext i5 %i_163 to i64
  %plaintext_addr_163 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_162_850
  store i8 %tmp_data_774, i8* %plaintext_addr_163, align 1
  br label %982

; <label>:984                                     ; preds = %980
  %tmp_131_162 = zext i5 %i_1_162 to i64
  %out_addr_166 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_162
  %tmp_data_775 = load i8* %out_addr_166, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_775, i1 true, i1 false)
  br label %980

; <label>:985                                     ; preds = %986
  %empty_851 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_181)
  %tmp_182 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %994

; <label>:986                                     ; preds = %990, %987
  %i_1_163 = phi i5 [ 0, %987 ], [ %i_12_163, %990 ]
  %exitcond_163 = icmp eq i5 %i_1_163, -16
  %empty_852 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_163 = add i5 %i_1_163, 1
  br i1 %exitcond_163, label %985, label %990

; <label>:987                                     ; preds = %988
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %986

; <label>:988                                     ; preds = %989, %979
  %i_164 = phi i5 [ 0, %979 ], [ %i_11_163, %989 ]
  %exitcond2_163 = icmp eq i5 %i_164, -16
  %empty_853 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_163 = add i5 %i_164, 1
  br i1 %exitcond2_163, label %987, label %989

; <label>:989                                     ; preds = %988
  %empty_854 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_776 = extractvalue { i8, i1, i1 } %empty_854, 0
  %tmp_163_855 = zext i5 %i_164 to i64
  %plaintext_addr_164 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_163_855
  store i8 %tmp_data_776, i8* %plaintext_addr_164, align 1
  br label %988

; <label>:990                                     ; preds = %986
  %tmp_131_163 = zext i5 %i_1_163 to i64
  %out_addr_167 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_163
  %tmp_data_777 = load i8* %out_addr_167, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_777, i1 true, i1 false)
  br label %986

; <label>:991                                     ; preds = %992
  %empty_856 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_182)
  %tmp_183 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1000

; <label>:992                                     ; preds = %996, %993
  %i_1_164 = phi i5 [ 0, %993 ], [ %i_12_164, %996 ]
  %exitcond_164 = icmp eq i5 %i_1_164, -16
  %empty_857 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_164 = add i5 %i_1_164, 1
  br i1 %exitcond_164, label %991, label %996

; <label>:993                                     ; preds = %994
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %992

; <label>:994                                     ; preds = %995, %985
  %i_165 = phi i5 [ 0, %985 ], [ %i_11_164, %995 ]
  %exitcond2_164 = icmp eq i5 %i_165, -16
  %empty_858 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_164 = add i5 %i_165, 1
  br i1 %exitcond2_164, label %993, label %995

; <label>:995                                     ; preds = %994
  %empty_859 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_778 = extractvalue { i8, i1, i1 } %empty_859, 0
  %tmp_164_860 = zext i5 %i_165 to i64
  %plaintext_addr_165 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_164_860
  store i8 %tmp_data_778, i8* %plaintext_addr_165, align 1
  br label %994

; <label>:996                                     ; preds = %992
  %tmp_131_164 = zext i5 %i_1_164 to i64
  %out_addr_168 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_164
  %tmp_data_779 = load i8* %out_addr_168, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_779, i1 true, i1 false)
  br label %992

; <label>:997                                     ; preds = %998
  %empty_861 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_183)
  %tmp_184 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1006

; <label>:998                                     ; preds = %1002, %999
  %i_1_165 = phi i5 [ 0, %999 ], [ %i_12_165, %1002 ]
  %exitcond_165 = icmp eq i5 %i_1_165, -16
  %empty_862 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_165 = add i5 %i_1_165, 1
  br i1 %exitcond_165, label %997, label %1002

; <label>:999                                     ; preds = %1000
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %998

; <label>:1000                                    ; preds = %1001, %991
  %i_166 = phi i5 [ 0, %991 ], [ %i_11_165, %1001 ]
  %exitcond2_165 = icmp eq i5 %i_166, -16
  %empty_863 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_165 = add i5 %i_166, 1
  br i1 %exitcond2_165, label %999, label %1001

; <label>:1001                                    ; preds = %1000
  %empty_864 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_780 = extractvalue { i8, i1, i1 } %empty_864, 0
  %tmp_165_865 = zext i5 %i_166 to i64
  %plaintext_addr_166 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_165_865
  store i8 %tmp_data_780, i8* %plaintext_addr_166, align 1
  br label %1000

; <label>:1002                                    ; preds = %998
  %tmp_131_165 = zext i5 %i_1_165 to i64
  %out_addr_169 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_165
  %tmp_data_781 = load i8* %out_addr_169, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_781, i1 true, i1 false)
  br label %998

; <label>:1003                                    ; preds = %1004
  %empty_866 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_184)
  %tmp_185 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1012

; <label>:1004                                    ; preds = %1008, %1005
  %i_1_166 = phi i5 [ 0, %1005 ], [ %i_12_166, %1008 ]
  %exitcond_166 = icmp eq i5 %i_1_166, -16
  %empty_867 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_166 = add i5 %i_1_166, 1
  br i1 %exitcond_166, label %1003, label %1008

; <label>:1005                                    ; preds = %1006
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1004

; <label>:1006                                    ; preds = %1007, %997
  %i_167 = phi i5 [ 0, %997 ], [ %i_11_166, %1007 ]
  %exitcond2_166 = icmp eq i5 %i_167, -16
  %empty_868 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_166 = add i5 %i_167, 1
  br i1 %exitcond2_166, label %1005, label %1007

; <label>:1007                                    ; preds = %1006
  %empty_869 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_782 = extractvalue { i8, i1, i1 } %empty_869, 0
  %tmp_166_870 = zext i5 %i_167 to i64
  %plaintext_addr_167 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_166_870
  store i8 %tmp_data_782, i8* %plaintext_addr_167, align 1
  br label %1006

; <label>:1008                                    ; preds = %1004
  %tmp_131_166 = zext i5 %i_1_166 to i64
  %out_addr_170 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_166
  %tmp_data_783 = load i8* %out_addr_170, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_783, i1 true, i1 false)
  br label %1004

; <label>:1009                                    ; preds = %1010
  %empty_871 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_185)
  %tmp_186 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1018

; <label>:1010                                    ; preds = %1014, %1011
  %i_1_167 = phi i5 [ 0, %1011 ], [ %i_12_167, %1014 ]
  %exitcond_167 = icmp eq i5 %i_1_167, -16
  %empty_872 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_167 = add i5 %i_1_167, 1
  br i1 %exitcond_167, label %1009, label %1014

; <label>:1011                                    ; preds = %1012
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1010

; <label>:1012                                    ; preds = %1013, %1003
  %i_168 = phi i5 [ 0, %1003 ], [ %i_11_167, %1013 ]
  %exitcond2_167 = icmp eq i5 %i_168, -16
  %empty_873 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_167 = add i5 %i_168, 1
  br i1 %exitcond2_167, label %1011, label %1013

; <label>:1013                                    ; preds = %1012
  %empty_874 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_784 = extractvalue { i8, i1, i1 } %empty_874, 0
  %tmp_167_875 = zext i5 %i_168 to i64
  %plaintext_addr_168 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_167_875
  store i8 %tmp_data_784, i8* %plaintext_addr_168, align 1
  br label %1012

; <label>:1014                                    ; preds = %1010
  %tmp_131_167 = zext i5 %i_1_167 to i64
  %out_addr_171 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_167
  %tmp_data_785 = load i8* %out_addr_171, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_785, i1 true, i1 false)
  br label %1010

; <label>:1015                                    ; preds = %1016
  %empty_876 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_186)
  %tmp_187 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1024

; <label>:1016                                    ; preds = %1020, %1017
  %i_1_168 = phi i5 [ 0, %1017 ], [ %i_12_168, %1020 ]
  %exitcond_168 = icmp eq i5 %i_1_168, -16
  %empty_877 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_168 = add i5 %i_1_168, 1
  br i1 %exitcond_168, label %1015, label %1020

; <label>:1017                                    ; preds = %1018
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1016

; <label>:1018                                    ; preds = %1019, %1009
  %i_169 = phi i5 [ 0, %1009 ], [ %i_11_168, %1019 ]
  %exitcond2_168 = icmp eq i5 %i_169, -16
  %empty_878 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_168 = add i5 %i_169, 1
  br i1 %exitcond2_168, label %1017, label %1019

; <label>:1019                                    ; preds = %1018
  %empty_879 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_786 = extractvalue { i8, i1, i1 } %empty_879, 0
  %tmp_168_880 = zext i5 %i_169 to i64
  %plaintext_addr_169 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_168_880
  store i8 %tmp_data_786, i8* %plaintext_addr_169, align 1
  br label %1018

; <label>:1020                                    ; preds = %1016
  %tmp_131_168 = zext i5 %i_1_168 to i64
  %out_addr_172 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_168
  %tmp_data_787 = load i8* %out_addr_172, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_787, i1 true, i1 false)
  br label %1016

; <label>:1021                                    ; preds = %1022
  %empty_881 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_187)
  %tmp_188 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1030

; <label>:1022                                    ; preds = %1026, %1023
  %i_1_169 = phi i5 [ 0, %1023 ], [ %i_12_169, %1026 ]
  %exitcond_169 = icmp eq i5 %i_1_169, -16
  %empty_882 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_169 = add i5 %i_1_169, 1
  br i1 %exitcond_169, label %1021, label %1026

; <label>:1023                                    ; preds = %1024
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1022

; <label>:1024                                    ; preds = %1025, %1015
  %i_170 = phi i5 [ 0, %1015 ], [ %i_11_169, %1025 ]
  %exitcond2_169 = icmp eq i5 %i_170, -16
  %empty_883 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_169 = add i5 %i_170, 1
  br i1 %exitcond2_169, label %1023, label %1025

; <label>:1025                                    ; preds = %1024
  %empty_884 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_788 = extractvalue { i8, i1, i1 } %empty_884, 0
  %tmp_169_885 = zext i5 %i_170 to i64
  %plaintext_addr_170 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_169_885
  store i8 %tmp_data_788, i8* %plaintext_addr_170, align 1
  br label %1024

; <label>:1026                                    ; preds = %1022
  %tmp_131_169 = zext i5 %i_1_169 to i64
  %out_addr_173 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_169
  %tmp_data_789 = load i8* %out_addr_173, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_789, i1 true, i1 false)
  br label %1022

; <label>:1027                                    ; preds = %1028
  %empty_886 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_188)
  %tmp_189 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1036

; <label>:1028                                    ; preds = %1032, %1029
  %i_1_170 = phi i5 [ 0, %1029 ], [ %i_12_170, %1032 ]
  %exitcond_170 = icmp eq i5 %i_1_170, -16
  %empty_887 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_170 = add i5 %i_1_170, 1
  br i1 %exitcond_170, label %1027, label %1032

; <label>:1029                                    ; preds = %1030
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1028

; <label>:1030                                    ; preds = %1031, %1021
  %i_171 = phi i5 [ 0, %1021 ], [ %i_11_170, %1031 ]
  %exitcond2_170 = icmp eq i5 %i_171, -16
  %empty_888 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_170 = add i5 %i_171, 1
  br i1 %exitcond2_170, label %1029, label %1031

; <label>:1031                                    ; preds = %1030
  %empty_889 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_790 = extractvalue { i8, i1, i1 } %empty_889, 0
  %tmp_170_890 = zext i5 %i_171 to i64
  %plaintext_addr_171 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_170_890
  store i8 %tmp_data_790, i8* %plaintext_addr_171, align 1
  br label %1030

; <label>:1032                                    ; preds = %1028
  %tmp_131_170 = zext i5 %i_1_170 to i64
  %out_addr_174 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_170
  %tmp_data_791 = load i8* %out_addr_174, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_791, i1 true, i1 false)
  br label %1028

; <label>:1033                                    ; preds = %1034
  %empty_891 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_189)
  %tmp_190 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1042

; <label>:1034                                    ; preds = %1038, %1035
  %i_1_171 = phi i5 [ 0, %1035 ], [ %i_12_171, %1038 ]
  %exitcond_171 = icmp eq i5 %i_1_171, -16
  %empty_892 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_171 = add i5 %i_1_171, 1
  br i1 %exitcond_171, label %1033, label %1038

; <label>:1035                                    ; preds = %1036
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1034

; <label>:1036                                    ; preds = %1037, %1027
  %i_172 = phi i5 [ 0, %1027 ], [ %i_11_171, %1037 ]
  %exitcond2_171 = icmp eq i5 %i_172, -16
  %empty_893 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_171 = add i5 %i_172, 1
  br i1 %exitcond2_171, label %1035, label %1037

; <label>:1037                                    ; preds = %1036
  %empty_894 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_792 = extractvalue { i8, i1, i1 } %empty_894, 0
  %tmp_171_895 = zext i5 %i_172 to i64
  %plaintext_addr_172 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_171_895
  store i8 %tmp_data_792, i8* %plaintext_addr_172, align 1
  br label %1036

; <label>:1038                                    ; preds = %1034
  %tmp_131_171 = zext i5 %i_1_171 to i64
  %out_addr_175 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_171
  %tmp_data_793 = load i8* %out_addr_175, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_793, i1 true, i1 false)
  br label %1034

; <label>:1039                                    ; preds = %1040
  %empty_896 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_190)
  %tmp_191 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1048

; <label>:1040                                    ; preds = %1044, %1041
  %i_1_172 = phi i5 [ 0, %1041 ], [ %i_12_172, %1044 ]
  %exitcond_172 = icmp eq i5 %i_1_172, -16
  %empty_897 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_172 = add i5 %i_1_172, 1
  br i1 %exitcond_172, label %1039, label %1044

; <label>:1041                                    ; preds = %1042
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1040

; <label>:1042                                    ; preds = %1043, %1033
  %i_173 = phi i5 [ 0, %1033 ], [ %i_11_172, %1043 ]
  %exitcond2_172 = icmp eq i5 %i_173, -16
  %empty_898 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_172 = add i5 %i_173, 1
  br i1 %exitcond2_172, label %1041, label %1043

; <label>:1043                                    ; preds = %1042
  %empty_899 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_794 = extractvalue { i8, i1, i1 } %empty_899, 0
  %tmp_172_900 = zext i5 %i_173 to i64
  %plaintext_addr_173 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_172_900
  store i8 %tmp_data_794, i8* %plaintext_addr_173, align 1
  br label %1042

; <label>:1044                                    ; preds = %1040
  %tmp_131_172 = zext i5 %i_1_172 to i64
  %out_addr_176 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_172
  %tmp_data_795 = load i8* %out_addr_176, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_795, i1 true, i1 false)
  br label %1040

; <label>:1045                                    ; preds = %1046
  %empty_901 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_191)
  %tmp_192 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1054

; <label>:1046                                    ; preds = %1050, %1047
  %i_1_173 = phi i5 [ 0, %1047 ], [ %i_12_173, %1050 ]
  %exitcond_173 = icmp eq i5 %i_1_173, -16
  %empty_902 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_173 = add i5 %i_1_173, 1
  br i1 %exitcond_173, label %1045, label %1050

; <label>:1047                                    ; preds = %1048
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1046

; <label>:1048                                    ; preds = %1049, %1039
  %i_174 = phi i5 [ 0, %1039 ], [ %i_11_173, %1049 ]
  %exitcond2_173 = icmp eq i5 %i_174, -16
  %empty_903 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_173 = add i5 %i_174, 1
  br i1 %exitcond2_173, label %1047, label %1049

; <label>:1049                                    ; preds = %1048
  %empty_904 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_796 = extractvalue { i8, i1, i1 } %empty_904, 0
  %tmp_173_905 = zext i5 %i_174 to i64
  %plaintext_addr_174 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_173_905
  store i8 %tmp_data_796, i8* %plaintext_addr_174, align 1
  br label %1048

; <label>:1050                                    ; preds = %1046
  %tmp_131_173 = zext i5 %i_1_173 to i64
  %out_addr_177 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_173
  %tmp_data_797 = load i8* %out_addr_177, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_797, i1 true, i1 false)
  br label %1046

; <label>:1051                                    ; preds = %1052
  %empty_906 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_192)
  %tmp_193 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1060

; <label>:1052                                    ; preds = %1056, %1053
  %i_1_174 = phi i5 [ 0, %1053 ], [ %i_12_174, %1056 ]
  %exitcond_174 = icmp eq i5 %i_1_174, -16
  %empty_907 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_174 = add i5 %i_1_174, 1
  br i1 %exitcond_174, label %1051, label %1056

; <label>:1053                                    ; preds = %1054
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1052

; <label>:1054                                    ; preds = %1055, %1045
  %i_175 = phi i5 [ 0, %1045 ], [ %i_11_174, %1055 ]
  %exitcond2_174 = icmp eq i5 %i_175, -16
  %empty_908 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_174 = add i5 %i_175, 1
  br i1 %exitcond2_174, label %1053, label %1055

; <label>:1055                                    ; preds = %1054
  %empty_909 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_798 = extractvalue { i8, i1, i1 } %empty_909, 0
  %tmp_174_910 = zext i5 %i_175 to i64
  %plaintext_addr_175 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_174_910
  store i8 %tmp_data_798, i8* %plaintext_addr_175, align 1
  br label %1054

; <label>:1056                                    ; preds = %1052
  %tmp_131_174 = zext i5 %i_1_174 to i64
  %out_addr_178 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_174
  %tmp_data_799 = load i8* %out_addr_178, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_799, i1 true, i1 false)
  br label %1052

; <label>:1057                                    ; preds = %1058
  %empty_911 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_193)
  %tmp_194 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1066

; <label>:1058                                    ; preds = %1062, %1059
  %i_1_175 = phi i5 [ 0, %1059 ], [ %i_12_175, %1062 ]
  %exitcond_175 = icmp eq i5 %i_1_175, -16
  %empty_912 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_175 = add i5 %i_1_175, 1
  br i1 %exitcond_175, label %1057, label %1062

; <label>:1059                                    ; preds = %1060
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1058

; <label>:1060                                    ; preds = %1061, %1051
  %i_176 = phi i5 [ 0, %1051 ], [ %i_11_175, %1061 ]
  %exitcond2_175 = icmp eq i5 %i_176, -16
  %empty_913 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_175 = add i5 %i_176, 1
  br i1 %exitcond2_175, label %1059, label %1061

; <label>:1061                                    ; preds = %1060
  %empty_914 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_800 = extractvalue { i8, i1, i1 } %empty_914, 0
  %tmp_175_915 = zext i5 %i_176 to i64
  %plaintext_addr_176 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_175_915
  store i8 %tmp_data_800, i8* %plaintext_addr_176, align 1
  br label %1060

; <label>:1062                                    ; preds = %1058
  %tmp_131_175 = zext i5 %i_1_175 to i64
  %out_addr_179 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_175
  %tmp_data_801 = load i8* %out_addr_179, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_801, i1 true, i1 false)
  br label %1058

; <label>:1063                                    ; preds = %1064
  %empty_916 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_194)
  %tmp_195 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1072

; <label>:1064                                    ; preds = %1068, %1065
  %i_1_176 = phi i5 [ 0, %1065 ], [ %i_12_176, %1068 ]
  %exitcond_176 = icmp eq i5 %i_1_176, -16
  %empty_917 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_176 = add i5 %i_1_176, 1
  br i1 %exitcond_176, label %1063, label %1068

; <label>:1065                                    ; preds = %1066
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1064

; <label>:1066                                    ; preds = %1067, %1057
  %i_177 = phi i5 [ 0, %1057 ], [ %i_11_176, %1067 ]
  %exitcond2_176 = icmp eq i5 %i_177, -16
  %empty_918 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_176 = add i5 %i_177, 1
  br i1 %exitcond2_176, label %1065, label %1067

; <label>:1067                                    ; preds = %1066
  %empty_919 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_802 = extractvalue { i8, i1, i1 } %empty_919, 0
  %tmp_176_920 = zext i5 %i_177 to i64
  %plaintext_addr_177 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_176_920
  store i8 %tmp_data_802, i8* %plaintext_addr_177, align 1
  br label %1066

; <label>:1068                                    ; preds = %1064
  %tmp_131_176 = zext i5 %i_1_176 to i64
  %out_addr_180 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_176
  %tmp_data_803 = load i8* %out_addr_180, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_803, i1 true, i1 false)
  br label %1064

; <label>:1069                                    ; preds = %1070
  %empty_921 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_195)
  %tmp_196 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1078

; <label>:1070                                    ; preds = %1074, %1071
  %i_1_177 = phi i5 [ 0, %1071 ], [ %i_12_177, %1074 ]
  %exitcond_177 = icmp eq i5 %i_1_177, -16
  %empty_922 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_177 = add i5 %i_1_177, 1
  br i1 %exitcond_177, label %1069, label %1074

; <label>:1071                                    ; preds = %1072
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1070

; <label>:1072                                    ; preds = %1073, %1063
  %i_178 = phi i5 [ 0, %1063 ], [ %i_11_177, %1073 ]
  %exitcond2_177 = icmp eq i5 %i_178, -16
  %empty_923 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_177 = add i5 %i_178, 1
  br i1 %exitcond2_177, label %1071, label %1073

; <label>:1073                                    ; preds = %1072
  %empty_924 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_804 = extractvalue { i8, i1, i1 } %empty_924, 0
  %tmp_177_925 = zext i5 %i_178 to i64
  %plaintext_addr_178 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_177_925
  store i8 %tmp_data_804, i8* %plaintext_addr_178, align 1
  br label %1072

; <label>:1074                                    ; preds = %1070
  %tmp_131_177 = zext i5 %i_1_177 to i64
  %out_addr_181 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_177
  %tmp_data_805 = load i8* %out_addr_181, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_805, i1 true, i1 false)
  br label %1070

; <label>:1075                                    ; preds = %1076
  %empty_926 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_196)
  %tmp_197 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1084

; <label>:1076                                    ; preds = %1080, %1077
  %i_1_178 = phi i5 [ 0, %1077 ], [ %i_12_178, %1080 ]
  %exitcond_178 = icmp eq i5 %i_1_178, -16
  %empty_927 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_178 = add i5 %i_1_178, 1
  br i1 %exitcond_178, label %1075, label %1080

; <label>:1077                                    ; preds = %1078
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1076

; <label>:1078                                    ; preds = %1079, %1069
  %i_179 = phi i5 [ 0, %1069 ], [ %i_11_178, %1079 ]
  %exitcond2_178 = icmp eq i5 %i_179, -16
  %empty_928 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_178 = add i5 %i_179, 1
  br i1 %exitcond2_178, label %1077, label %1079

; <label>:1079                                    ; preds = %1078
  %empty_929 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_806 = extractvalue { i8, i1, i1 } %empty_929, 0
  %tmp_178_930 = zext i5 %i_179 to i64
  %plaintext_addr_179 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_178_930
  store i8 %tmp_data_806, i8* %plaintext_addr_179, align 1
  br label %1078

; <label>:1080                                    ; preds = %1076
  %tmp_131_178 = zext i5 %i_1_178 to i64
  %out_addr_182 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_178
  %tmp_data_807 = load i8* %out_addr_182, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_807, i1 true, i1 false)
  br label %1076

; <label>:1081                                    ; preds = %1082
  %empty_931 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_197)
  %tmp_198 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1090

; <label>:1082                                    ; preds = %1086, %1083
  %i_1_179 = phi i5 [ 0, %1083 ], [ %i_12_179, %1086 ]
  %exitcond_179 = icmp eq i5 %i_1_179, -16
  %empty_932 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_179 = add i5 %i_1_179, 1
  br i1 %exitcond_179, label %1081, label %1086

; <label>:1083                                    ; preds = %1084
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1082

; <label>:1084                                    ; preds = %1085, %1075
  %i_180 = phi i5 [ 0, %1075 ], [ %i_11_179, %1085 ]
  %exitcond2_179 = icmp eq i5 %i_180, -16
  %empty_933 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_179 = add i5 %i_180, 1
  br i1 %exitcond2_179, label %1083, label %1085

; <label>:1085                                    ; preds = %1084
  %empty_934 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_808 = extractvalue { i8, i1, i1 } %empty_934, 0
  %tmp_179_935 = zext i5 %i_180 to i64
  %plaintext_addr_180 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_179_935
  store i8 %tmp_data_808, i8* %plaintext_addr_180, align 1
  br label %1084

; <label>:1086                                    ; preds = %1082
  %tmp_131_179 = zext i5 %i_1_179 to i64
  %out_addr_183 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_179
  %tmp_data_809 = load i8* %out_addr_183, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_809, i1 true, i1 false)
  br label %1082

; <label>:1087                                    ; preds = %1088
  %empty_936 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_198)
  %tmp_199 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1096

; <label>:1088                                    ; preds = %1092, %1089
  %i_1_180 = phi i5 [ 0, %1089 ], [ %i_12_180, %1092 ]
  %exitcond_180 = icmp eq i5 %i_1_180, -16
  %empty_937 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_180 = add i5 %i_1_180, 1
  br i1 %exitcond_180, label %1087, label %1092

; <label>:1089                                    ; preds = %1090
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1088

; <label>:1090                                    ; preds = %1091, %1081
  %i_181 = phi i5 [ 0, %1081 ], [ %i_11_180, %1091 ]
  %exitcond2_180 = icmp eq i5 %i_181, -16
  %empty_938 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_180 = add i5 %i_181, 1
  br i1 %exitcond2_180, label %1089, label %1091

; <label>:1091                                    ; preds = %1090
  %empty_939 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_810 = extractvalue { i8, i1, i1 } %empty_939, 0
  %tmp_180_940 = zext i5 %i_181 to i64
  %plaintext_addr_181 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_180_940
  store i8 %tmp_data_810, i8* %plaintext_addr_181, align 1
  br label %1090

; <label>:1092                                    ; preds = %1088
  %tmp_131_180 = zext i5 %i_1_180 to i64
  %out_addr_184 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_180
  %tmp_data_811 = load i8* %out_addr_184, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_811, i1 true, i1 false)
  br label %1088

; <label>:1093                                    ; preds = %1094
  %empty_941 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_199)
  %tmp_200 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1102

; <label>:1094                                    ; preds = %1098, %1095
  %i_1_181 = phi i5 [ 0, %1095 ], [ %i_12_181, %1098 ]
  %exitcond_181 = icmp eq i5 %i_1_181, -16
  %empty_942 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_181 = add i5 %i_1_181, 1
  br i1 %exitcond_181, label %1093, label %1098

; <label>:1095                                    ; preds = %1096
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1094

; <label>:1096                                    ; preds = %1097, %1087
  %i_182 = phi i5 [ 0, %1087 ], [ %i_11_181, %1097 ]
  %exitcond2_181 = icmp eq i5 %i_182, -16
  %empty_943 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_181 = add i5 %i_182, 1
  br i1 %exitcond2_181, label %1095, label %1097

; <label>:1097                                    ; preds = %1096
  %empty_944 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_812 = extractvalue { i8, i1, i1 } %empty_944, 0
  %tmp_181_945 = zext i5 %i_182 to i64
  %plaintext_addr_182 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_181_945
  store i8 %tmp_data_812, i8* %plaintext_addr_182, align 1
  br label %1096

; <label>:1098                                    ; preds = %1094
  %tmp_131_181 = zext i5 %i_1_181 to i64
  %out_addr_185 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_181
  %tmp_data_813 = load i8* %out_addr_185, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_813, i1 true, i1 false)
  br label %1094

; <label>:1099                                    ; preds = %1100
  %empty_946 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_200)
  %tmp_201 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1108

; <label>:1100                                    ; preds = %1104, %1101
  %i_1_182 = phi i5 [ 0, %1101 ], [ %i_12_182, %1104 ]
  %exitcond_182 = icmp eq i5 %i_1_182, -16
  %empty_947 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_182 = add i5 %i_1_182, 1
  br i1 %exitcond_182, label %1099, label %1104

; <label>:1101                                    ; preds = %1102
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1100

; <label>:1102                                    ; preds = %1103, %1093
  %i_183 = phi i5 [ 0, %1093 ], [ %i_11_182, %1103 ]
  %exitcond2_182 = icmp eq i5 %i_183, -16
  %empty_948 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_182 = add i5 %i_183, 1
  br i1 %exitcond2_182, label %1101, label %1103

; <label>:1103                                    ; preds = %1102
  %empty_949 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_814 = extractvalue { i8, i1, i1 } %empty_949, 0
  %tmp_182_950 = zext i5 %i_183 to i64
  %plaintext_addr_183 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_182_950
  store i8 %tmp_data_814, i8* %plaintext_addr_183, align 1
  br label %1102

; <label>:1104                                    ; preds = %1100
  %tmp_131_182 = zext i5 %i_1_182 to i64
  %out_addr_186 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_182
  %tmp_data_815 = load i8* %out_addr_186, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_815, i1 true, i1 false)
  br label %1100

; <label>:1105                                    ; preds = %1106
  %empty_951 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_201)
  %tmp_202 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1114

; <label>:1106                                    ; preds = %1110, %1107
  %i_1_183 = phi i5 [ 0, %1107 ], [ %i_12_183, %1110 ]
  %exitcond_183 = icmp eq i5 %i_1_183, -16
  %empty_952 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_183 = add i5 %i_1_183, 1
  br i1 %exitcond_183, label %1105, label %1110

; <label>:1107                                    ; preds = %1108
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1106

; <label>:1108                                    ; preds = %1109, %1099
  %i_184 = phi i5 [ 0, %1099 ], [ %i_11_183, %1109 ]
  %exitcond2_183 = icmp eq i5 %i_184, -16
  %empty_953 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_183 = add i5 %i_184, 1
  br i1 %exitcond2_183, label %1107, label %1109

; <label>:1109                                    ; preds = %1108
  %empty_954 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_816 = extractvalue { i8, i1, i1 } %empty_954, 0
  %tmp_183_955 = zext i5 %i_184 to i64
  %plaintext_addr_184 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_183_955
  store i8 %tmp_data_816, i8* %plaintext_addr_184, align 1
  br label %1108

; <label>:1110                                    ; preds = %1106
  %tmp_131_183 = zext i5 %i_1_183 to i64
  %out_addr_187 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_183
  %tmp_data_817 = load i8* %out_addr_187, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_817, i1 true, i1 false)
  br label %1106

; <label>:1111                                    ; preds = %1112
  %empty_956 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_202)
  %tmp_203 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1120

; <label>:1112                                    ; preds = %1116, %1113
  %i_1_184 = phi i5 [ 0, %1113 ], [ %i_12_184, %1116 ]
  %exitcond_184 = icmp eq i5 %i_1_184, -16
  %empty_957 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_184 = add i5 %i_1_184, 1
  br i1 %exitcond_184, label %1111, label %1116

; <label>:1113                                    ; preds = %1114
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1112

; <label>:1114                                    ; preds = %1115, %1105
  %i_185 = phi i5 [ 0, %1105 ], [ %i_11_184, %1115 ]
  %exitcond2_184 = icmp eq i5 %i_185, -16
  %empty_958 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_184 = add i5 %i_185, 1
  br i1 %exitcond2_184, label %1113, label %1115

; <label>:1115                                    ; preds = %1114
  %empty_959 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_818 = extractvalue { i8, i1, i1 } %empty_959, 0
  %tmp_184_960 = zext i5 %i_185 to i64
  %plaintext_addr_185 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_184_960
  store i8 %tmp_data_818, i8* %plaintext_addr_185, align 1
  br label %1114

; <label>:1116                                    ; preds = %1112
  %tmp_131_184 = zext i5 %i_1_184 to i64
  %out_addr_188 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_184
  %tmp_data_819 = load i8* %out_addr_188, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_819, i1 true, i1 false)
  br label %1112

; <label>:1117                                    ; preds = %1118
  %empty_961 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_203)
  %tmp_204 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1126

; <label>:1118                                    ; preds = %1122, %1119
  %i_1_185 = phi i5 [ 0, %1119 ], [ %i_12_185, %1122 ]
  %exitcond_185 = icmp eq i5 %i_1_185, -16
  %empty_962 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_185 = add i5 %i_1_185, 1
  br i1 %exitcond_185, label %1117, label %1122

; <label>:1119                                    ; preds = %1120
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1118

; <label>:1120                                    ; preds = %1121, %1111
  %i_186 = phi i5 [ 0, %1111 ], [ %i_11_185, %1121 ]
  %exitcond2_185 = icmp eq i5 %i_186, -16
  %empty_963 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_185 = add i5 %i_186, 1
  br i1 %exitcond2_185, label %1119, label %1121

; <label>:1121                                    ; preds = %1120
  %empty_964 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_820 = extractvalue { i8, i1, i1 } %empty_964, 0
  %tmp_185_965 = zext i5 %i_186 to i64
  %plaintext_addr_186 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_185_965
  store i8 %tmp_data_820, i8* %plaintext_addr_186, align 1
  br label %1120

; <label>:1122                                    ; preds = %1118
  %tmp_131_185 = zext i5 %i_1_185 to i64
  %out_addr_189 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_185
  %tmp_data_821 = load i8* %out_addr_189, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_821, i1 true, i1 false)
  br label %1118

; <label>:1123                                    ; preds = %1124
  %empty_966 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_204)
  %tmp_205 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1132

; <label>:1124                                    ; preds = %1128, %1125
  %i_1_186 = phi i5 [ 0, %1125 ], [ %i_12_186, %1128 ]
  %exitcond_186 = icmp eq i5 %i_1_186, -16
  %empty_967 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_186 = add i5 %i_1_186, 1
  br i1 %exitcond_186, label %1123, label %1128

; <label>:1125                                    ; preds = %1126
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1124

; <label>:1126                                    ; preds = %1127, %1117
  %i_187 = phi i5 [ 0, %1117 ], [ %i_11_186, %1127 ]
  %exitcond2_186 = icmp eq i5 %i_187, -16
  %empty_968 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_186 = add i5 %i_187, 1
  br i1 %exitcond2_186, label %1125, label %1127

; <label>:1127                                    ; preds = %1126
  %empty_969 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_822 = extractvalue { i8, i1, i1 } %empty_969, 0
  %tmp_186_970 = zext i5 %i_187 to i64
  %plaintext_addr_187 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_186_970
  store i8 %tmp_data_822, i8* %plaintext_addr_187, align 1
  br label %1126

; <label>:1128                                    ; preds = %1124
  %tmp_131_186 = zext i5 %i_1_186 to i64
  %out_addr_190 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_186
  %tmp_data_823 = load i8* %out_addr_190, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_823, i1 true, i1 false)
  br label %1124

; <label>:1129                                    ; preds = %1130
  %empty_971 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_205)
  %tmp_206 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1138

; <label>:1130                                    ; preds = %1134, %1131
  %i_1_187 = phi i5 [ 0, %1131 ], [ %i_12_187, %1134 ]
  %exitcond_187 = icmp eq i5 %i_1_187, -16
  %empty_972 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_187 = add i5 %i_1_187, 1
  br i1 %exitcond_187, label %1129, label %1134

; <label>:1131                                    ; preds = %1132
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1130

; <label>:1132                                    ; preds = %1133, %1123
  %i_188 = phi i5 [ 0, %1123 ], [ %i_11_187, %1133 ]
  %exitcond2_187 = icmp eq i5 %i_188, -16
  %empty_973 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_187 = add i5 %i_188, 1
  br i1 %exitcond2_187, label %1131, label %1133

; <label>:1133                                    ; preds = %1132
  %empty_974 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_824 = extractvalue { i8, i1, i1 } %empty_974, 0
  %tmp_187_975 = zext i5 %i_188 to i64
  %plaintext_addr_188 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_187_975
  store i8 %tmp_data_824, i8* %plaintext_addr_188, align 1
  br label %1132

; <label>:1134                                    ; preds = %1130
  %tmp_131_187 = zext i5 %i_1_187 to i64
  %out_addr_191 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_187
  %tmp_data_825 = load i8* %out_addr_191, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_825, i1 true, i1 false)
  br label %1130

; <label>:1135                                    ; preds = %1136
  %empty_976 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_206)
  %tmp_207 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1144

; <label>:1136                                    ; preds = %1140, %1137
  %i_1_188 = phi i5 [ 0, %1137 ], [ %i_12_188, %1140 ]
  %exitcond_188 = icmp eq i5 %i_1_188, -16
  %empty_977 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_188 = add i5 %i_1_188, 1
  br i1 %exitcond_188, label %1135, label %1140

; <label>:1137                                    ; preds = %1138
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1136

; <label>:1138                                    ; preds = %1139, %1129
  %i_189 = phi i5 [ 0, %1129 ], [ %i_11_188, %1139 ]
  %exitcond2_188 = icmp eq i5 %i_189, -16
  %empty_978 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_188 = add i5 %i_189, 1
  br i1 %exitcond2_188, label %1137, label %1139

; <label>:1139                                    ; preds = %1138
  %empty_979 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_826 = extractvalue { i8, i1, i1 } %empty_979, 0
  %tmp_188_980 = zext i5 %i_189 to i64
  %plaintext_addr_189 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_188_980
  store i8 %tmp_data_826, i8* %plaintext_addr_189, align 1
  br label %1138

; <label>:1140                                    ; preds = %1136
  %tmp_131_188 = zext i5 %i_1_188 to i64
  %out_addr_192 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_188
  %tmp_data_827 = load i8* %out_addr_192, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_827, i1 true, i1 false)
  br label %1136

; <label>:1141                                    ; preds = %1142
  %empty_981 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_207)
  %tmp_208 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1150

; <label>:1142                                    ; preds = %1146, %1143
  %i_1_189 = phi i5 [ 0, %1143 ], [ %i_12_189, %1146 ]
  %exitcond_189 = icmp eq i5 %i_1_189, -16
  %empty_982 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_189 = add i5 %i_1_189, 1
  br i1 %exitcond_189, label %1141, label %1146

; <label>:1143                                    ; preds = %1144
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1142

; <label>:1144                                    ; preds = %1145, %1135
  %i_190 = phi i5 [ 0, %1135 ], [ %i_11_189, %1145 ]
  %exitcond2_189 = icmp eq i5 %i_190, -16
  %empty_983 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_189 = add i5 %i_190, 1
  br i1 %exitcond2_189, label %1143, label %1145

; <label>:1145                                    ; preds = %1144
  %empty_984 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_828 = extractvalue { i8, i1, i1 } %empty_984, 0
  %tmp_189_985 = zext i5 %i_190 to i64
  %plaintext_addr_190 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_189_985
  store i8 %tmp_data_828, i8* %plaintext_addr_190, align 1
  br label %1144

; <label>:1146                                    ; preds = %1142
  %tmp_131_189 = zext i5 %i_1_189 to i64
  %out_addr_193 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_189
  %tmp_data_829 = load i8* %out_addr_193, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_829, i1 true, i1 false)
  br label %1142

; <label>:1147                                    ; preds = %1148
  %empty_986 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_208)
  %tmp_209 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1156

; <label>:1148                                    ; preds = %1152, %1149
  %i_1_190 = phi i5 [ 0, %1149 ], [ %i_12_190, %1152 ]
  %exitcond_190 = icmp eq i5 %i_1_190, -16
  %empty_987 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_190 = add i5 %i_1_190, 1
  br i1 %exitcond_190, label %1147, label %1152

; <label>:1149                                    ; preds = %1150
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1148

; <label>:1150                                    ; preds = %1151, %1141
  %i_191 = phi i5 [ 0, %1141 ], [ %i_11_190, %1151 ]
  %exitcond2_190 = icmp eq i5 %i_191, -16
  %empty_988 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_190 = add i5 %i_191, 1
  br i1 %exitcond2_190, label %1149, label %1151

; <label>:1151                                    ; preds = %1150
  %empty_989 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_830 = extractvalue { i8, i1, i1 } %empty_989, 0
  %tmp_190_990 = zext i5 %i_191 to i64
  %plaintext_addr_191 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_190_990
  store i8 %tmp_data_830, i8* %plaintext_addr_191, align 1
  br label %1150

; <label>:1152                                    ; preds = %1148
  %tmp_131_190 = zext i5 %i_1_190 to i64
  %out_addr_194 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_190
  %tmp_data_831 = load i8* %out_addr_194, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_831, i1 true, i1 false)
  br label %1148

; <label>:1153                                    ; preds = %1154
  %empty_991 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_209)
  %tmp_210 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1162

; <label>:1154                                    ; preds = %1158, %1155
  %i_1_191 = phi i5 [ 0, %1155 ], [ %i_12_191, %1158 ]
  %exitcond_191 = icmp eq i5 %i_1_191, -16
  %empty_992 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_191 = add i5 %i_1_191, 1
  br i1 %exitcond_191, label %1153, label %1158

; <label>:1155                                    ; preds = %1156
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1154

; <label>:1156                                    ; preds = %1157, %1147
  %i_192 = phi i5 [ 0, %1147 ], [ %i_11_191, %1157 ]
  %exitcond2_191 = icmp eq i5 %i_192, -16
  %empty_993 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_191 = add i5 %i_192, 1
  br i1 %exitcond2_191, label %1155, label %1157

; <label>:1157                                    ; preds = %1156
  %empty_994 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_832 = extractvalue { i8, i1, i1 } %empty_994, 0
  %tmp_191_995 = zext i5 %i_192 to i64
  %plaintext_addr_192 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_191_995
  store i8 %tmp_data_832, i8* %plaintext_addr_192, align 1
  br label %1156

; <label>:1158                                    ; preds = %1154
  %tmp_131_191 = zext i5 %i_1_191 to i64
  %out_addr_195 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_191
  %tmp_data_833 = load i8* %out_addr_195, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_833, i1 true, i1 false)
  br label %1154

; <label>:1159                                    ; preds = %1160
  %empty_996 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_210)
  %tmp_211 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1168

; <label>:1160                                    ; preds = %1164, %1161
  %i_1_192 = phi i5 [ 0, %1161 ], [ %i_12_192, %1164 ]
  %exitcond_192 = icmp eq i5 %i_1_192, -16
  %empty_997 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_192 = add i5 %i_1_192, 1
  br i1 %exitcond_192, label %1159, label %1164

; <label>:1161                                    ; preds = %1162
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1160

; <label>:1162                                    ; preds = %1163, %1153
  %i_193 = phi i5 [ 0, %1153 ], [ %i_11_192, %1163 ]
  %exitcond2_192 = icmp eq i5 %i_193, -16
  %empty_998 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_192 = add i5 %i_193, 1
  br i1 %exitcond2_192, label %1161, label %1163

; <label>:1163                                    ; preds = %1162
  %empty_999 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_834 = extractvalue { i8, i1, i1 } %empty_999, 0
  %tmp_192_1000 = zext i5 %i_193 to i64
  %plaintext_addr_193 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_192_1000
  store i8 %tmp_data_834, i8* %plaintext_addr_193, align 1
  br label %1162

; <label>:1164                                    ; preds = %1160
  %tmp_131_192 = zext i5 %i_1_192 to i64
  %out_addr_196 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_192
  %tmp_data_835 = load i8* %out_addr_196, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_835, i1 true, i1 false)
  br label %1160

; <label>:1165                                    ; preds = %1166
  %empty_1001 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_211)
  %tmp_212 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1174

; <label>:1166                                    ; preds = %1170, %1167
  %i_1_193 = phi i5 [ 0, %1167 ], [ %i_12_193, %1170 ]
  %exitcond_193 = icmp eq i5 %i_1_193, -16
  %empty_1002 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_193 = add i5 %i_1_193, 1
  br i1 %exitcond_193, label %1165, label %1170

; <label>:1167                                    ; preds = %1168
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1166

; <label>:1168                                    ; preds = %1169, %1159
  %i_194 = phi i5 [ 0, %1159 ], [ %i_11_193, %1169 ]
  %exitcond2_193 = icmp eq i5 %i_194, -16
  %empty_1003 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_193 = add i5 %i_194, 1
  br i1 %exitcond2_193, label %1167, label %1169

; <label>:1169                                    ; preds = %1168
  %empty_1004 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_836 = extractvalue { i8, i1, i1 } %empty_1004, 0
  %tmp_193_1005 = zext i5 %i_194 to i64
  %plaintext_addr_194 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_193_1005
  store i8 %tmp_data_836, i8* %plaintext_addr_194, align 1
  br label %1168

; <label>:1170                                    ; preds = %1166
  %tmp_131_193 = zext i5 %i_1_193 to i64
  %out_addr_197 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_193
  %tmp_data_837 = load i8* %out_addr_197, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_837, i1 true, i1 false)
  br label %1166

; <label>:1171                                    ; preds = %1172
  %empty_1006 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_212)
  %tmp_213 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1180

; <label>:1172                                    ; preds = %1176, %1173
  %i_1_194 = phi i5 [ 0, %1173 ], [ %i_12_194, %1176 ]
  %exitcond_194 = icmp eq i5 %i_1_194, -16
  %empty_1007 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_194 = add i5 %i_1_194, 1
  br i1 %exitcond_194, label %1171, label %1176

; <label>:1173                                    ; preds = %1174
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1172

; <label>:1174                                    ; preds = %1175, %1165
  %i_195 = phi i5 [ 0, %1165 ], [ %i_11_194, %1175 ]
  %exitcond2_194 = icmp eq i5 %i_195, -16
  %empty_1008 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_194 = add i5 %i_195, 1
  br i1 %exitcond2_194, label %1173, label %1175

; <label>:1175                                    ; preds = %1174
  %empty_1009 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_838 = extractvalue { i8, i1, i1 } %empty_1009, 0
  %tmp_194_1010 = zext i5 %i_195 to i64
  %plaintext_addr_195 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_194_1010
  store i8 %tmp_data_838, i8* %plaintext_addr_195, align 1
  br label %1174

; <label>:1176                                    ; preds = %1172
  %tmp_131_194 = zext i5 %i_1_194 to i64
  %out_addr_198 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_194
  %tmp_data_839 = load i8* %out_addr_198, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_839, i1 true, i1 false)
  br label %1172

; <label>:1177                                    ; preds = %1178
  %empty_1011 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_213)
  %tmp_214 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1186

; <label>:1178                                    ; preds = %1182, %1179
  %i_1_195 = phi i5 [ 0, %1179 ], [ %i_12_195, %1182 ]
  %exitcond_195 = icmp eq i5 %i_1_195, -16
  %empty_1012 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_195 = add i5 %i_1_195, 1
  br i1 %exitcond_195, label %1177, label %1182

; <label>:1179                                    ; preds = %1180
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1178

; <label>:1180                                    ; preds = %1181, %1171
  %i_196 = phi i5 [ 0, %1171 ], [ %i_11_195, %1181 ]
  %exitcond2_195 = icmp eq i5 %i_196, -16
  %empty_1013 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_195 = add i5 %i_196, 1
  br i1 %exitcond2_195, label %1179, label %1181

; <label>:1181                                    ; preds = %1180
  %empty_1014 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_840 = extractvalue { i8, i1, i1 } %empty_1014, 0
  %tmp_195_1015 = zext i5 %i_196 to i64
  %plaintext_addr_196 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_195_1015
  store i8 %tmp_data_840, i8* %plaintext_addr_196, align 1
  br label %1180

; <label>:1182                                    ; preds = %1178
  %tmp_131_195 = zext i5 %i_1_195 to i64
  %out_addr_199 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_195
  %tmp_data_841 = load i8* %out_addr_199, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_841, i1 true, i1 false)
  br label %1178

; <label>:1183                                    ; preds = %1184
  %empty_1016 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_214)
  %tmp_215 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1192

; <label>:1184                                    ; preds = %1188, %1185
  %i_1_196 = phi i5 [ 0, %1185 ], [ %i_12_196, %1188 ]
  %exitcond_196 = icmp eq i5 %i_1_196, -16
  %empty_1017 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_196 = add i5 %i_1_196, 1
  br i1 %exitcond_196, label %1183, label %1188

; <label>:1185                                    ; preds = %1186
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1184

; <label>:1186                                    ; preds = %1187, %1177
  %i_197 = phi i5 [ 0, %1177 ], [ %i_11_196, %1187 ]
  %exitcond2_196 = icmp eq i5 %i_197, -16
  %empty_1018 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_196 = add i5 %i_197, 1
  br i1 %exitcond2_196, label %1185, label %1187

; <label>:1187                                    ; preds = %1186
  %empty_1019 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_842 = extractvalue { i8, i1, i1 } %empty_1019, 0
  %tmp_196_1020 = zext i5 %i_197 to i64
  %plaintext_addr_197 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_196_1020
  store i8 %tmp_data_842, i8* %plaintext_addr_197, align 1
  br label %1186

; <label>:1188                                    ; preds = %1184
  %tmp_131_196 = zext i5 %i_1_196 to i64
  %out_addr_200 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_196
  %tmp_data_843 = load i8* %out_addr_200, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_843, i1 true, i1 false)
  br label %1184

; <label>:1189                                    ; preds = %1190
  %empty_1021 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_215)
  %tmp_216 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1198

; <label>:1190                                    ; preds = %1194, %1191
  %i_1_197 = phi i5 [ 0, %1191 ], [ %i_12_197, %1194 ]
  %exitcond_197 = icmp eq i5 %i_1_197, -16
  %empty_1022 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_197 = add i5 %i_1_197, 1
  br i1 %exitcond_197, label %1189, label %1194

; <label>:1191                                    ; preds = %1192
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1190

; <label>:1192                                    ; preds = %1193, %1183
  %i_198 = phi i5 [ 0, %1183 ], [ %i_11_197, %1193 ]
  %exitcond2_197 = icmp eq i5 %i_198, -16
  %empty_1023 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_197 = add i5 %i_198, 1
  br i1 %exitcond2_197, label %1191, label %1193

; <label>:1193                                    ; preds = %1192
  %empty_1024 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_844 = extractvalue { i8, i1, i1 } %empty_1024, 0
  %tmp_197_1025 = zext i5 %i_198 to i64
  %plaintext_addr_198 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_197_1025
  store i8 %tmp_data_844, i8* %plaintext_addr_198, align 1
  br label %1192

; <label>:1194                                    ; preds = %1190
  %tmp_131_197 = zext i5 %i_1_197 to i64
  %out_addr_201 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_197
  %tmp_data_845 = load i8* %out_addr_201, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_845, i1 true, i1 false)
  br label %1190

; <label>:1195                                    ; preds = %1196
  %empty_1026 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_216)
  %tmp_217 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1204

; <label>:1196                                    ; preds = %1200, %1197
  %i_1_198 = phi i5 [ 0, %1197 ], [ %i_12_198, %1200 ]
  %exitcond_198 = icmp eq i5 %i_1_198, -16
  %empty_1027 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_198 = add i5 %i_1_198, 1
  br i1 %exitcond_198, label %1195, label %1200

; <label>:1197                                    ; preds = %1198
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1196

; <label>:1198                                    ; preds = %1199, %1189
  %i_199 = phi i5 [ 0, %1189 ], [ %i_11_198, %1199 ]
  %exitcond2_198 = icmp eq i5 %i_199, -16
  %empty_1028 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_198 = add i5 %i_199, 1
  br i1 %exitcond2_198, label %1197, label %1199

; <label>:1199                                    ; preds = %1198
  %empty_1029 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_846 = extractvalue { i8, i1, i1 } %empty_1029, 0
  %tmp_198_1030 = zext i5 %i_199 to i64
  %plaintext_addr_199 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_198_1030
  store i8 %tmp_data_846, i8* %plaintext_addr_199, align 1
  br label %1198

; <label>:1200                                    ; preds = %1196
  %tmp_131_198 = zext i5 %i_1_198 to i64
  %out_addr_202 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_198
  %tmp_data_847 = load i8* %out_addr_202, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_847, i1 true, i1 false)
  br label %1196

; <label>:1201                                    ; preds = %1202
  %empty_1031 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_217)
  %tmp_218 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1210

; <label>:1202                                    ; preds = %1206, %1203
  %i_1_199 = phi i5 [ 0, %1203 ], [ %i_12_199, %1206 ]
  %exitcond_199 = icmp eq i5 %i_1_199, -16
  %empty_1032 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_199 = add i5 %i_1_199, 1
  br i1 %exitcond_199, label %1201, label %1206

; <label>:1203                                    ; preds = %1204
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1202

; <label>:1204                                    ; preds = %1205, %1195
  %i_200 = phi i5 [ 0, %1195 ], [ %i_11_199, %1205 ]
  %exitcond2_199 = icmp eq i5 %i_200, -16
  %empty_1033 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_199 = add i5 %i_200, 1
  br i1 %exitcond2_199, label %1203, label %1205

; <label>:1205                                    ; preds = %1204
  %empty_1034 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_848 = extractvalue { i8, i1, i1 } %empty_1034, 0
  %tmp_199_1035 = zext i5 %i_200 to i64
  %plaintext_addr_200 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_199_1035
  store i8 %tmp_data_848, i8* %plaintext_addr_200, align 1
  br label %1204

; <label>:1206                                    ; preds = %1202
  %tmp_131_199 = zext i5 %i_1_199 to i64
  %out_addr_203 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_199
  %tmp_data_849 = load i8* %out_addr_203, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_849, i1 true, i1 false)
  br label %1202

; <label>:1207                                    ; preds = %1208
  %empty_1036 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_218)
  %tmp_219 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1216

; <label>:1208                                    ; preds = %1212, %1209
  %i_1_200 = phi i5 [ 0, %1209 ], [ %i_12_200, %1212 ]
  %exitcond_200 = icmp eq i5 %i_1_200, -16
  %empty_1037 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_200 = add i5 %i_1_200, 1
  br i1 %exitcond_200, label %1207, label %1212

; <label>:1209                                    ; preds = %1210
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1208

; <label>:1210                                    ; preds = %1211, %1201
  %i_201 = phi i5 [ 0, %1201 ], [ %i_11_200, %1211 ]
  %exitcond2_200 = icmp eq i5 %i_201, -16
  %empty_1038 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_200 = add i5 %i_201, 1
  br i1 %exitcond2_200, label %1209, label %1211

; <label>:1211                                    ; preds = %1210
  %empty_1039 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_850 = extractvalue { i8, i1, i1 } %empty_1039, 0
  %tmp_200_1040 = zext i5 %i_201 to i64
  %plaintext_addr_201 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_200_1040
  store i8 %tmp_data_850, i8* %plaintext_addr_201, align 1
  br label %1210

; <label>:1212                                    ; preds = %1208
  %tmp_131_200 = zext i5 %i_1_200 to i64
  %out_addr_204 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_200
  %tmp_data_851 = load i8* %out_addr_204, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_851, i1 true, i1 false)
  br label %1208

; <label>:1213                                    ; preds = %1214
  %empty_1041 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_219)
  %tmp_220 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1222

; <label>:1214                                    ; preds = %1218, %1215
  %i_1_201 = phi i5 [ 0, %1215 ], [ %i_12_201, %1218 ]
  %exitcond_201 = icmp eq i5 %i_1_201, -16
  %empty_1042 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_201 = add i5 %i_1_201, 1
  br i1 %exitcond_201, label %1213, label %1218

; <label>:1215                                    ; preds = %1216
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1214

; <label>:1216                                    ; preds = %1217, %1207
  %i_202 = phi i5 [ 0, %1207 ], [ %i_11_201, %1217 ]
  %exitcond2_201 = icmp eq i5 %i_202, -16
  %empty_1043 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_201 = add i5 %i_202, 1
  br i1 %exitcond2_201, label %1215, label %1217

; <label>:1217                                    ; preds = %1216
  %empty_1044 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_852 = extractvalue { i8, i1, i1 } %empty_1044, 0
  %tmp_201_1045 = zext i5 %i_202 to i64
  %plaintext_addr_202 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_201_1045
  store i8 %tmp_data_852, i8* %plaintext_addr_202, align 1
  br label %1216

; <label>:1218                                    ; preds = %1214
  %tmp_131_201 = zext i5 %i_1_201 to i64
  %out_addr_205 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_201
  %tmp_data_853 = load i8* %out_addr_205, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_853, i1 true, i1 false)
  br label %1214

; <label>:1219                                    ; preds = %1220
  %empty_1046 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_220)
  %tmp_221 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1228

; <label>:1220                                    ; preds = %1224, %1221
  %i_1_202 = phi i5 [ 0, %1221 ], [ %i_12_202, %1224 ]
  %exitcond_202 = icmp eq i5 %i_1_202, -16
  %empty_1047 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_202 = add i5 %i_1_202, 1
  br i1 %exitcond_202, label %1219, label %1224

; <label>:1221                                    ; preds = %1222
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1220

; <label>:1222                                    ; preds = %1223, %1213
  %i_203 = phi i5 [ 0, %1213 ], [ %i_11_202, %1223 ]
  %exitcond2_202 = icmp eq i5 %i_203, -16
  %empty_1048 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_202 = add i5 %i_203, 1
  br i1 %exitcond2_202, label %1221, label %1223

; <label>:1223                                    ; preds = %1222
  %empty_1049 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_854 = extractvalue { i8, i1, i1 } %empty_1049, 0
  %tmp_202_1050 = zext i5 %i_203 to i64
  %plaintext_addr_203 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_202_1050
  store i8 %tmp_data_854, i8* %plaintext_addr_203, align 1
  br label %1222

; <label>:1224                                    ; preds = %1220
  %tmp_131_202 = zext i5 %i_1_202 to i64
  %out_addr_206 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_202
  %tmp_data_855 = load i8* %out_addr_206, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_855, i1 true, i1 false)
  br label %1220

; <label>:1225                                    ; preds = %1226
  %empty_1051 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_221)
  %tmp_222 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1234

; <label>:1226                                    ; preds = %1230, %1227
  %i_1_203 = phi i5 [ 0, %1227 ], [ %i_12_203, %1230 ]
  %exitcond_203 = icmp eq i5 %i_1_203, -16
  %empty_1052 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_203 = add i5 %i_1_203, 1
  br i1 %exitcond_203, label %1225, label %1230

; <label>:1227                                    ; preds = %1228
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1226

; <label>:1228                                    ; preds = %1229, %1219
  %i_204 = phi i5 [ 0, %1219 ], [ %i_11_203, %1229 ]
  %exitcond2_203 = icmp eq i5 %i_204, -16
  %empty_1053 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_203 = add i5 %i_204, 1
  br i1 %exitcond2_203, label %1227, label %1229

; <label>:1229                                    ; preds = %1228
  %empty_1054 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_856 = extractvalue { i8, i1, i1 } %empty_1054, 0
  %tmp_203_1055 = zext i5 %i_204 to i64
  %plaintext_addr_204 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_203_1055
  store i8 %tmp_data_856, i8* %plaintext_addr_204, align 1
  br label %1228

; <label>:1230                                    ; preds = %1226
  %tmp_131_203 = zext i5 %i_1_203 to i64
  %out_addr_207 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_203
  %tmp_data_857 = load i8* %out_addr_207, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_857, i1 true, i1 false)
  br label %1226

; <label>:1231                                    ; preds = %1232
  %empty_1056 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_222)
  %tmp_223 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1240

; <label>:1232                                    ; preds = %1236, %1233
  %i_1_204 = phi i5 [ 0, %1233 ], [ %i_12_204, %1236 ]
  %exitcond_204 = icmp eq i5 %i_1_204, -16
  %empty_1057 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_204 = add i5 %i_1_204, 1
  br i1 %exitcond_204, label %1231, label %1236

; <label>:1233                                    ; preds = %1234
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1232

; <label>:1234                                    ; preds = %1235, %1225
  %i_205 = phi i5 [ 0, %1225 ], [ %i_11_204, %1235 ]
  %exitcond2_204 = icmp eq i5 %i_205, -16
  %empty_1058 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_204 = add i5 %i_205, 1
  br i1 %exitcond2_204, label %1233, label %1235

; <label>:1235                                    ; preds = %1234
  %empty_1059 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_858 = extractvalue { i8, i1, i1 } %empty_1059, 0
  %tmp_204_1060 = zext i5 %i_205 to i64
  %plaintext_addr_205 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_204_1060
  store i8 %tmp_data_858, i8* %plaintext_addr_205, align 1
  br label %1234

; <label>:1236                                    ; preds = %1232
  %tmp_131_204 = zext i5 %i_1_204 to i64
  %out_addr_208 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_204
  %tmp_data_859 = load i8* %out_addr_208, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_859, i1 true, i1 false)
  br label %1232

; <label>:1237                                    ; preds = %1238
  %empty_1061 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_223)
  %tmp_224 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1246

; <label>:1238                                    ; preds = %1242, %1239
  %i_1_205 = phi i5 [ 0, %1239 ], [ %i_12_205, %1242 ]
  %exitcond_205 = icmp eq i5 %i_1_205, -16
  %empty_1062 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_205 = add i5 %i_1_205, 1
  br i1 %exitcond_205, label %1237, label %1242

; <label>:1239                                    ; preds = %1240
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1238

; <label>:1240                                    ; preds = %1241, %1231
  %i_206 = phi i5 [ 0, %1231 ], [ %i_11_205, %1241 ]
  %exitcond2_205 = icmp eq i5 %i_206, -16
  %empty_1063 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_205 = add i5 %i_206, 1
  br i1 %exitcond2_205, label %1239, label %1241

; <label>:1241                                    ; preds = %1240
  %empty_1064 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_860 = extractvalue { i8, i1, i1 } %empty_1064, 0
  %tmp_205_1065 = zext i5 %i_206 to i64
  %plaintext_addr_206 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_205_1065
  store i8 %tmp_data_860, i8* %plaintext_addr_206, align 1
  br label %1240

; <label>:1242                                    ; preds = %1238
  %tmp_131_205 = zext i5 %i_1_205 to i64
  %out_addr_209 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_205
  %tmp_data_861 = load i8* %out_addr_209, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_861, i1 true, i1 false)
  br label %1238

; <label>:1243                                    ; preds = %1244
  %empty_1066 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_224)
  %tmp_225 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1252

; <label>:1244                                    ; preds = %1248, %1245
  %i_1_206 = phi i5 [ 0, %1245 ], [ %i_12_206, %1248 ]
  %exitcond_206 = icmp eq i5 %i_1_206, -16
  %empty_1067 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_206 = add i5 %i_1_206, 1
  br i1 %exitcond_206, label %1243, label %1248

; <label>:1245                                    ; preds = %1246
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1244

; <label>:1246                                    ; preds = %1247, %1237
  %i_207 = phi i5 [ 0, %1237 ], [ %i_11_206, %1247 ]
  %exitcond2_206 = icmp eq i5 %i_207, -16
  %empty_1068 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_206 = add i5 %i_207, 1
  br i1 %exitcond2_206, label %1245, label %1247

; <label>:1247                                    ; preds = %1246
  %empty_1069 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_862 = extractvalue { i8, i1, i1 } %empty_1069, 0
  %tmp_206_1070 = zext i5 %i_207 to i64
  %plaintext_addr_207 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_206_1070
  store i8 %tmp_data_862, i8* %plaintext_addr_207, align 1
  br label %1246

; <label>:1248                                    ; preds = %1244
  %tmp_131_206 = zext i5 %i_1_206 to i64
  %out_addr_210 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_206
  %tmp_data_863 = load i8* %out_addr_210, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_863, i1 true, i1 false)
  br label %1244

; <label>:1249                                    ; preds = %1250
  %empty_1071 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_225)
  %tmp_226 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1258

; <label>:1250                                    ; preds = %1254, %1251
  %i_1_207 = phi i5 [ 0, %1251 ], [ %i_12_207, %1254 ]
  %exitcond_207 = icmp eq i5 %i_1_207, -16
  %empty_1072 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_207 = add i5 %i_1_207, 1
  br i1 %exitcond_207, label %1249, label %1254

; <label>:1251                                    ; preds = %1252
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1250

; <label>:1252                                    ; preds = %1253, %1243
  %i_208 = phi i5 [ 0, %1243 ], [ %i_11_207, %1253 ]
  %exitcond2_207 = icmp eq i5 %i_208, -16
  %empty_1073 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_207 = add i5 %i_208, 1
  br i1 %exitcond2_207, label %1251, label %1253

; <label>:1253                                    ; preds = %1252
  %empty_1074 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_864 = extractvalue { i8, i1, i1 } %empty_1074, 0
  %tmp_207_1075 = zext i5 %i_208 to i64
  %plaintext_addr_208 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_207_1075
  store i8 %tmp_data_864, i8* %plaintext_addr_208, align 1
  br label %1252

; <label>:1254                                    ; preds = %1250
  %tmp_131_207 = zext i5 %i_1_207 to i64
  %out_addr_211 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_207
  %tmp_data_865 = load i8* %out_addr_211, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_865, i1 true, i1 false)
  br label %1250

; <label>:1255                                    ; preds = %1256
  %empty_1076 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_226)
  %tmp_227 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1264

; <label>:1256                                    ; preds = %1260, %1257
  %i_1_208 = phi i5 [ 0, %1257 ], [ %i_12_208, %1260 ]
  %exitcond_208 = icmp eq i5 %i_1_208, -16
  %empty_1077 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_208 = add i5 %i_1_208, 1
  br i1 %exitcond_208, label %1255, label %1260

; <label>:1257                                    ; preds = %1258
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1256

; <label>:1258                                    ; preds = %1259, %1249
  %i_209 = phi i5 [ 0, %1249 ], [ %i_11_208, %1259 ]
  %exitcond2_208 = icmp eq i5 %i_209, -16
  %empty_1078 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_208 = add i5 %i_209, 1
  br i1 %exitcond2_208, label %1257, label %1259

; <label>:1259                                    ; preds = %1258
  %empty_1079 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_866 = extractvalue { i8, i1, i1 } %empty_1079, 0
  %tmp_208_1080 = zext i5 %i_209 to i64
  %plaintext_addr_209 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_208_1080
  store i8 %tmp_data_866, i8* %plaintext_addr_209, align 1
  br label %1258

; <label>:1260                                    ; preds = %1256
  %tmp_131_208 = zext i5 %i_1_208 to i64
  %out_addr_212 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_208
  %tmp_data_867 = load i8* %out_addr_212, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_867, i1 true, i1 false)
  br label %1256

; <label>:1261                                    ; preds = %1262
  %empty_1081 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_227)
  %tmp_228 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1270

; <label>:1262                                    ; preds = %1266, %1263
  %i_1_209 = phi i5 [ 0, %1263 ], [ %i_12_209, %1266 ]
  %exitcond_209 = icmp eq i5 %i_1_209, -16
  %empty_1082 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_209 = add i5 %i_1_209, 1
  br i1 %exitcond_209, label %1261, label %1266

; <label>:1263                                    ; preds = %1264
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1262

; <label>:1264                                    ; preds = %1265, %1255
  %i_210 = phi i5 [ 0, %1255 ], [ %i_11_209, %1265 ]
  %exitcond2_209 = icmp eq i5 %i_210, -16
  %empty_1083 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_209 = add i5 %i_210, 1
  br i1 %exitcond2_209, label %1263, label %1265

; <label>:1265                                    ; preds = %1264
  %empty_1084 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_868 = extractvalue { i8, i1, i1 } %empty_1084, 0
  %tmp_209_1085 = zext i5 %i_210 to i64
  %plaintext_addr_210 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_209_1085
  store i8 %tmp_data_868, i8* %plaintext_addr_210, align 1
  br label %1264

; <label>:1266                                    ; preds = %1262
  %tmp_131_209 = zext i5 %i_1_209 to i64
  %out_addr_213 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_209
  %tmp_data_869 = load i8* %out_addr_213, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_869, i1 true, i1 false)
  br label %1262

; <label>:1267                                    ; preds = %1268
  %empty_1086 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_228)
  %tmp_229 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1276

; <label>:1268                                    ; preds = %1272, %1269
  %i_1_210 = phi i5 [ 0, %1269 ], [ %i_12_210, %1272 ]
  %exitcond_210 = icmp eq i5 %i_1_210, -16
  %empty_1087 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_210 = add i5 %i_1_210, 1
  br i1 %exitcond_210, label %1267, label %1272

; <label>:1269                                    ; preds = %1270
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1268

; <label>:1270                                    ; preds = %1271, %1261
  %i_211 = phi i5 [ 0, %1261 ], [ %i_11_210, %1271 ]
  %exitcond2_210 = icmp eq i5 %i_211, -16
  %empty_1088 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_210 = add i5 %i_211, 1
  br i1 %exitcond2_210, label %1269, label %1271

; <label>:1271                                    ; preds = %1270
  %empty_1089 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_870 = extractvalue { i8, i1, i1 } %empty_1089, 0
  %tmp_210_1090 = zext i5 %i_211 to i64
  %plaintext_addr_211 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_210_1090
  store i8 %tmp_data_870, i8* %plaintext_addr_211, align 1
  br label %1270

; <label>:1272                                    ; preds = %1268
  %tmp_131_210 = zext i5 %i_1_210 to i64
  %out_addr_214 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_210
  %tmp_data_871 = load i8* %out_addr_214, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_871, i1 true, i1 false)
  br label %1268

; <label>:1273                                    ; preds = %1274
  %empty_1091 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_229)
  %tmp_230 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1282

; <label>:1274                                    ; preds = %1278, %1275
  %i_1_211 = phi i5 [ 0, %1275 ], [ %i_12_211, %1278 ]
  %exitcond_211 = icmp eq i5 %i_1_211, -16
  %empty_1092 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_211 = add i5 %i_1_211, 1
  br i1 %exitcond_211, label %1273, label %1278

; <label>:1275                                    ; preds = %1276
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1274

; <label>:1276                                    ; preds = %1277, %1267
  %i_212 = phi i5 [ 0, %1267 ], [ %i_11_211, %1277 ]
  %exitcond2_211 = icmp eq i5 %i_212, -16
  %empty_1093 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_211 = add i5 %i_212, 1
  br i1 %exitcond2_211, label %1275, label %1277

; <label>:1277                                    ; preds = %1276
  %empty_1094 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_872 = extractvalue { i8, i1, i1 } %empty_1094, 0
  %tmp_211_1095 = zext i5 %i_212 to i64
  %plaintext_addr_212 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_211_1095
  store i8 %tmp_data_872, i8* %plaintext_addr_212, align 1
  br label %1276

; <label>:1278                                    ; preds = %1274
  %tmp_131_211 = zext i5 %i_1_211 to i64
  %out_addr_215 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_211
  %tmp_data_873 = load i8* %out_addr_215, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_873, i1 true, i1 false)
  br label %1274

; <label>:1279                                    ; preds = %1280
  %empty_1096 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_230)
  %tmp_231 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1288

; <label>:1280                                    ; preds = %1284, %1281
  %i_1_212 = phi i5 [ 0, %1281 ], [ %i_12_212, %1284 ]
  %exitcond_212 = icmp eq i5 %i_1_212, -16
  %empty_1097 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_212 = add i5 %i_1_212, 1
  br i1 %exitcond_212, label %1279, label %1284

; <label>:1281                                    ; preds = %1282
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1280

; <label>:1282                                    ; preds = %1283, %1273
  %i_213 = phi i5 [ 0, %1273 ], [ %i_11_212, %1283 ]
  %exitcond2_212 = icmp eq i5 %i_213, -16
  %empty_1098 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_212 = add i5 %i_213, 1
  br i1 %exitcond2_212, label %1281, label %1283

; <label>:1283                                    ; preds = %1282
  %empty_1099 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_874 = extractvalue { i8, i1, i1 } %empty_1099, 0
  %tmp_212_1100 = zext i5 %i_213 to i64
  %plaintext_addr_213 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_212_1100
  store i8 %tmp_data_874, i8* %plaintext_addr_213, align 1
  br label %1282

; <label>:1284                                    ; preds = %1280
  %tmp_131_212 = zext i5 %i_1_212 to i64
  %out_addr_216 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_212
  %tmp_data_875 = load i8* %out_addr_216, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_875, i1 true, i1 false)
  br label %1280

; <label>:1285                                    ; preds = %1286
  %empty_1101 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_231)
  %tmp_232 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1294

; <label>:1286                                    ; preds = %1290, %1287
  %i_1_213 = phi i5 [ 0, %1287 ], [ %i_12_213, %1290 ]
  %exitcond_213 = icmp eq i5 %i_1_213, -16
  %empty_1102 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_213 = add i5 %i_1_213, 1
  br i1 %exitcond_213, label %1285, label %1290

; <label>:1287                                    ; preds = %1288
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1286

; <label>:1288                                    ; preds = %1289, %1279
  %i_214 = phi i5 [ 0, %1279 ], [ %i_11_213, %1289 ]
  %exitcond2_213 = icmp eq i5 %i_214, -16
  %empty_1103 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_213 = add i5 %i_214, 1
  br i1 %exitcond2_213, label %1287, label %1289

; <label>:1289                                    ; preds = %1288
  %empty_1104 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_876 = extractvalue { i8, i1, i1 } %empty_1104, 0
  %tmp_213_1105 = zext i5 %i_214 to i64
  %plaintext_addr_214 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_213_1105
  store i8 %tmp_data_876, i8* %plaintext_addr_214, align 1
  br label %1288

; <label>:1290                                    ; preds = %1286
  %tmp_131_213 = zext i5 %i_1_213 to i64
  %out_addr_217 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_213
  %tmp_data_877 = load i8* %out_addr_217, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_877, i1 true, i1 false)
  br label %1286

; <label>:1291                                    ; preds = %1292
  %empty_1106 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_232)
  %tmp_233 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1300

; <label>:1292                                    ; preds = %1296, %1293
  %i_1_214 = phi i5 [ 0, %1293 ], [ %i_12_214, %1296 ]
  %exitcond_214 = icmp eq i5 %i_1_214, -16
  %empty_1107 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_214 = add i5 %i_1_214, 1
  br i1 %exitcond_214, label %1291, label %1296

; <label>:1293                                    ; preds = %1294
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1292

; <label>:1294                                    ; preds = %1295, %1285
  %i_215 = phi i5 [ 0, %1285 ], [ %i_11_214, %1295 ]
  %exitcond2_214 = icmp eq i5 %i_215, -16
  %empty_1108 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_214 = add i5 %i_215, 1
  br i1 %exitcond2_214, label %1293, label %1295

; <label>:1295                                    ; preds = %1294
  %empty_1109 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_878 = extractvalue { i8, i1, i1 } %empty_1109, 0
  %tmp_214_1110 = zext i5 %i_215 to i64
  %plaintext_addr_215 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_214_1110
  store i8 %tmp_data_878, i8* %plaintext_addr_215, align 1
  br label %1294

; <label>:1296                                    ; preds = %1292
  %tmp_131_214 = zext i5 %i_1_214 to i64
  %out_addr_218 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_214
  %tmp_data_879 = load i8* %out_addr_218, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_879, i1 true, i1 false)
  br label %1292

; <label>:1297                                    ; preds = %1298
  %empty_1111 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_233)
  %tmp_234 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1306

; <label>:1298                                    ; preds = %1302, %1299
  %i_1_215 = phi i5 [ 0, %1299 ], [ %i_12_215, %1302 ]
  %exitcond_215 = icmp eq i5 %i_1_215, -16
  %empty_1112 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_215 = add i5 %i_1_215, 1
  br i1 %exitcond_215, label %1297, label %1302

; <label>:1299                                    ; preds = %1300
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1298

; <label>:1300                                    ; preds = %1301, %1291
  %i_216 = phi i5 [ 0, %1291 ], [ %i_11_215, %1301 ]
  %exitcond2_215 = icmp eq i5 %i_216, -16
  %empty_1113 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_215 = add i5 %i_216, 1
  br i1 %exitcond2_215, label %1299, label %1301

; <label>:1301                                    ; preds = %1300
  %empty_1114 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_880 = extractvalue { i8, i1, i1 } %empty_1114, 0
  %tmp_215_1115 = zext i5 %i_216 to i64
  %plaintext_addr_216 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_215_1115
  store i8 %tmp_data_880, i8* %plaintext_addr_216, align 1
  br label %1300

; <label>:1302                                    ; preds = %1298
  %tmp_131_215 = zext i5 %i_1_215 to i64
  %out_addr_219 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_215
  %tmp_data_881 = load i8* %out_addr_219, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_881, i1 true, i1 false)
  br label %1298

; <label>:1303                                    ; preds = %1304
  %empty_1116 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_234)
  %tmp_235 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1312

; <label>:1304                                    ; preds = %1308, %1305
  %i_1_216 = phi i5 [ 0, %1305 ], [ %i_12_216, %1308 ]
  %exitcond_216 = icmp eq i5 %i_1_216, -16
  %empty_1117 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_216 = add i5 %i_1_216, 1
  br i1 %exitcond_216, label %1303, label %1308

; <label>:1305                                    ; preds = %1306
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1304

; <label>:1306                                    ; preds = %1307, %1297
  %i_217 = phi i5 [ 0, %1297 ], [ %i_11_216, %1307 ]
  %exitcond2_216 = icmp eq i5 %i_217, -16
  %empty_1118 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_216 = add i5 %i_217, 1
  br i1 %exitcond2_216, label %1305, label %1307

; <label>:1307                                    ; preds = %1306
  %empty_1119 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_882 = extractvalue { i8, i1, i1 } %empty_1119, 0
  %tmp_216_1120 = zext i5 %i_217 to i64
  %plaintext_addr_217 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_216_1120
  store i8 %tmp_data_882, i8* %plaintext_addr_217, align 1
  br label %1306

; <label>:1308                                    ; preds = %1304
  %tmp_131_216 = zext i5 %i_1_216 to i64
  %out_addr_220 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_216
  %tmp_data_883 = load i8* %out_addr_220, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_883, i1 true, i1 false)
  br label %1304

; <label>:1309                                    ; preds = %1310
  %empty_1121 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_235)
  %tmp_236 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1318

; <label>:1310                                    ; preds = %1314, %1311
  %i_1_217 = phi i5 [ 0, %1311 ], [ %i_12_217, %1314 ]
  %exitcond_217 = icmp eq i5 %i_1_217, -16
  %empty_1122 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_217 = add i5 %i_1_217, 1
  br i1 %exitcond_217, label %1309, label %1314

; <label>:1311                                    ; preds = %1312
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1310

; <label>:1312                                    ; preds = %1313, %1303
  %i_218 = phi i5 [ 0, %1303 ], [ %i_11_217, %1313 ]
  %exitcond2_217 = icmp eq i5 %i_218, -16
  %empty_1123 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_217 = add i5 %i_218, 1
  br i1 %exitcond2_217, label %1311, label %1313

; <label>:1313                                    ; preds = %1312
  %empty_1124 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_884 = extractvalue { i8, i1, i1 } %empty_1124, 0
  %tmp_217_1125 = zext i5 %i_218 to i64
  %plaintext_addr_218 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_217_1125
  store i8 %tmp_data_884, i8* %plaintext_addr_218, align 1
  br label %1312

; <label>:1314                                    ; preds = %1310
  %tmp_131_217 = zext i5 %i_1_217 to i64
  %out_addr_221 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_217
  %tmp_data_885 = load i8* %out_addr_221, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_885, i1 true, i1 false)
  br label %1310

; <label>:1315                                    ; preds = %1316
  %empty_1126 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_236)
  %tmp_237 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1324

; <label>:1316                                    ; preds = %1320, %1317
  %i_1_218 = phi i5 [ 0, %1317 ], [ %i_12_218, %1320 ]
  %exitcond_218 = icmp eq i5 %i_1_218, -16
  %empty_1127 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_218 = add i5 %i_1_218, 1
  br i1 %exitcond_218, label %1315, label %1320

; <label>:1317                                    ; preds = %1318
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1316

; <label>:1318                                    ; preds = %1319, %1309
  %i_219 = phi i5 [ 0, %1309 ], [ %i_11_218, %1319 ]
  %exitcond2_218 = icmp eq i5 %i_219, -16
  %empty_1128 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_218 = add i5 %i_219, 1
  br i1 %exitcond2_218, label %1317, label %1319

; <label>:1319                                    ; preds = %1318
  %empty_1129 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_886 = extractvalue { i8, i1, i1 } %empty_1129, 0
  %tmp_218_1130 = zext i5 %i_219 to i64
  %plaintext_addr_219 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_218_1130
  store i8 %tmp_data_886, i8* %plaintext_addr_219, align 1
  br label %1318

; <label>:1320                                    ; preds = %1316
  %tmp_131_218 = zext i5 %i_1_218 to i64
  %out_addr_222 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_218
  %tmp_data_887 = load i8* %out_addr_222, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_887, i1 true, i1 false)
  br label %1316

; <label>:1321                                    ; preds = %1322
  %empty_1131 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_237)
  %tmp_238 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1330

; <label>:1322                                    ; preds = %1326, %1323
  %i_1_219 = phi i5 [ 0, %1323 ], [ %i_12_219, %1326 ]
  %exitcond_219 = icmp eq i5 %i_1_219, -16
  %empty_1132 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_219 = add i5 %i_1_219, 1
  br i1 %exitcond_219, label %1321, label %1326

; <label>:1323                                    ; preds = %1324
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1322

; <label>:1324                                    ; preds = %1325, %1315
  %i_220 = phi i5 [ 0, %1315 ], [ %i_11_219, %1325 ]
  %exitcond2_219 = icmp eq i5 %i_220, -16
  %empty_1133 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_219 = add i5 %i_220, 1
  br i1 %exitcond2_219, label %1323, label %1325

; <label>:1325                                    ; preds = %1324
  %empty_1134 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_888 = extractvalue { i8, i1, i1 } %empty_1134, 0
  %tmp_219_1135 = zext i5 %i_220 to i64
  %plaintext_addr_220 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_219_1135
  store i8 %tmp_data_888, i8* %plaintext_addr_220, align 1
  br label %1324

; <label>:1326                                    ; preds = %1322
  %tmp_131_219 = zext i5 %i_1_219 to i64
  %out_addr_223 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_219
  %tmp_data_889 = load i8* %out_addr_223, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_889, i1 true, i1 false)
  br label %1322

; <label>:1327                                    ; preds = %1328
  %empty_1136 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_238)
  %tmp_239 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1336

; <label>:1328                                    ; preds = %1332, %1329
  %i_1_220 = phi i5 [ 0, %1329 ], [ %i_12_220, %1332 ]
  %exitcond_220 = icmp eq i5 %i_1_220, -16
  %empty_1137 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_220 = add i5 %i_1_220, 1
  br i1 %exitcond_220, label %1327, label %1332

; <label>:1329                                    ; preds = %1330
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1328

; <label>:1330                                    ; preds = %1331, %1321
  %i_221 = phi i5 [ 0, %1321 ], [ %i_11_220, %1331 ]
  %exitcond2_220 = icmp eq i5 %i_221, -16
  %empty_1138 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_220 = add i5 %i_221, 1
  br i1 %exitcond2_220, label %1329, label %1331

; <label>:1331                                    ; preds = %1330
  %empty_1139 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_890 = extractvalue { i8, i1, i1 } %empty_1139, 0
  %tmp_220_1140 = zext i5 %i_221 to i64
  %plaintext_addr_221 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_220_1140
  store i8 %tmp_data_890, i8* %plaintext_addr_221, align 1
  br label %1330

; <label>:1332                                    ; preds = %1328
  %tmp_131_220 = zext i5 %i_1_220 to i64
  %out_addr_224 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_220
  %tmp_data_891 = load i8* %out_addr_224, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_891, i1 true, i1 false)
  br label %1328

; <label>:1333                                    ; preds = %1334
  %empty_1141 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_239)
  %tmp_240 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1342

; <label>:1334                                    ; preds = %1338, %1335
  %i_1_221 = phi i5 [ 0, %1335 ], [ %i_12_221, %1338 ]
  %exitcond_221 = icmp eq i5 %i_1_221, -16
  %empty_1142 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_221 = add i5 %i_1_221, 1
  br i1 %exitcond_221, label %1333, label %1338

; <label>:1335                                    ; preds = %1336
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1334

; <label>:1336                                    ; preds = %1337, %1327
  %i_222 = phi i5 [ 0, %1327 ], [ %i_11_221, %1337 ]
  %exitcond2_221 = icmp eq i5 %i_222, -16
  %empty_1143 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_221 = add i5 %i_222, 1
  br i1 %exitcond2_221, label %1335, label %1337

; <label>:1337                                    ; preds = %1336
  %empty_1144 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_892 = extractvalue { i8, i1, i1 } %empty_1144, 0
  %tmp_221_1145 = zext i5 %i_222 to i64
  %plaintext_addr_222 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_221_1145
  store i8 %tmp_data_892, i8* %plaintext_addr_222, align 1
  br label %1336

; <label>:1338                                    ; preds = %1334
  %tmp_131_221 = zext i5 %i_1_221 to i64
  %out_addr_225 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_221
  %tmp_data_893 = load i8* %out_addr_225, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_893, i1 true, i1 false)
  br label %1334

; <label>:1339                                    ; preds = %1340
  %empty_1146 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_240)
  %tmp_241 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1348

; <label>:1340                                    ; preds = %1344, %1341
  %i_1_222 = phi i5 [ 0, %1341 ], [ %i_12_222, %1344 ]
  %exitcond_222 = icmp eq i5 %i_1_222, -16
  %empty_1147 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_222 = add i5 %i_1_222, 1
  br i1 %exitcond_222, label %1339, label %1344

; <label>:1341                                    ; preds = %1342
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1340

; <label>:1342                                    ; preds = %1343, %1333
  %i_223 = phi i5 [ 0, %1333 ], [ %i_11_222, %1343 ]
  %exitcond2_222 = icmp eq i5 %i_223, -16
  %empty_1148 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_222 = add i5 %i_223, 1
  br i1 %exitcond2_222, label %1341, label %1343

; <label>:1343                                    ; preds = %1342
  %empty_1149 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_894 = extractvalue { i8, i1, i1 } %empty_1149, 0
  %tmp_222_1150 = zext i5 %i_223 to i64
  %plaintext_addr_223 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_222_1150
  store i8 %tmp_data_894, i8* %plaintext_addr_223, align 1
  br label %1342

; <label>:1344                                    ; preds = %1340
  %tmp_131_222 = zext i5 %i_1_222 to i64
  %out_addr_226 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_222
  %tmp_data_895 = load i8* %out_addr_226, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_895, i1 true, i1 false)
  br label %1340

; <label>:1345                                    ; preds = %1346
  %empty_1151 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_241)
  %tmp_242 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1354

; <label>:1346                                    ; preds = %1350, %1347
  %i_1_223 = phi i5 [ 0, %1347 ], [ %i_12_223, %1350 ]
  %exitcond_223 = icmp eq i5 %i_1_223, -16
  %empty_1152 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_223 = add i5 %i_1_223, 1
  br i1 %exitcond_223, label %1345, label %1350

; <label>:1347                                    ; preds = %1348
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1346

; <label>:1348                                    ; preds = %1349, %1339
  %i_224 = phi i5 [ 0, %1339 ], [ %i_11_223, %1349 ]
  %exitcond2_223 = icmp eq i5 %i_224, -16
  %empty_1153 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_223 = add i5 %i_224, 1
  br i1 %exitcond2_223, label %1347, label %1349

; <label>:1349                                    ; preds = %1348
  %empty_1154 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_896 = extractvalue { i8, i1, i1 } %empty_1154, 0
  %tmp_223_1155 = zext i5 %i_224 to i64
  %plaintext_addr_224 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_223_1155
  store i8 %tmp_data_896, i8* %plaintext_addr_224, align 1
  br label %1348

; <label>:1350                                    ; preds = %1346
  %tmp_131_223 = zext i5 %i_1_223 to i64
  %out_addr_227 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_223
  %tmp_data_897 = load i8* %out_addr_227, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_897, i1 true, i1 false)
  br label %1346

; <label>:1351                                    ; preds = %1352
  %empty_1156 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_242)
  %tmp_243 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1360

; <label>:1352                                    ; preds = %1356, %1353
  %i_1_224 = phi i5 [ 0, %1353 ], [ %i_12_224, %1356 ]
  %exitcond_224 = icmp eq i5 %i_1_224, -16
  %empty_1157 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_224 = add i5 %i_1_224, 1
  br i1 %exitcond_224, label %1351, label %1356

; <label>:1353                                    ; preds = %1354
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1352

; <label>:1354                                    ; preds = %1355, %1345
  %i_225 = phi i5 [ 0, %1345 ], [ %i_11_224, %1355 ]
  %exitcond2_224 = icmp eq i5 %i_225, -16
  %empty_1158 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_224 = add i5 %i_225, 1
  br i1 %exitcond2_224, label %1353, label %1355

; <label>:1355                                    ; preds = %1354
  %empty_1159 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_898 = extractvalue { i8, i1, i1 } %empty_1159, 0
  %tmp_224_1160 = zext i5 %i_225 to i64
  %plaintext_addr_225 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_224_1160
  store i8 %tmp_data_898, i8* %plaintext_addr_225, align 1
  br label %1354

; <label>:1356                                    ; preds = %1352
  %tmp_131_224 = zext i5 %i_1_224 to i64
  %out_addr_228 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_224
  %tmp_data_899 = load i8* %out_addr_228, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_899, i1 true, i1 false)
  br label %1352

; <label>:1357                                    ; preds = %1358
  %empty_1161 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_243)
  %tmp_244 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1366

; <label>:1358                                    ; preds = %1362, %1359
  %i_1_225 = phi i5 [ 0, %1359 ], [ %i_12_225, %1362 ]
  %exitcond_225 = icmp eq i5 %i_1_225, -16
  %empty_1162 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_225 = add i5 %i_1_225, 1
  br i1 %exitcond_225, label %1357, label %1362

; <label>:1359                                    ; preds = %1360
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1358

; <label>:1360                                    ; preds = %1361, %1351
  %i_226 = phi i5 [ 0, %1351 ], [ %i_11_225, %1361 ]
  %exitcond2_225 = icmp eq i5 %i_226, -16
  %empty_1163 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_225 = add i5 %i_226, 1
  br i1 %exitcond2_225, label %1359, label %1361

; <label>:1361                                    ; preds = %1360
  %empty_1164 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_900 = extractvalue { i8, i1, i1 } %empty_1164, 0
  %tmp_225_1165 = zext i5 %i_226 to i64
  %plaintext_addr_226 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_225_1165
  store i8 %tmp_data_900, i8* %plaintext_addr_226, align 1
  br label %1360

; <label>:1362                                    ; preds = %1358
  %tmp_131_225 = zext i5 %i_1_225 to i64
  %out_addr_229 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_225
  %tmp_data_901 = load i8* %out_addr_229, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_901, i1 true, i1 false)
  br label %1358

; <label>:1363                                    ; preds = %1364
  %empty_1166 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_244)
  %tmp_245 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1372

; <label>:1364                                    ; preds = %1368, %1365
  %i_1_226 = phi i5 [ 0, %1365 ], [ %i_12_226, %1368 ]
  %exitcond_226 = icmp eq i5 %i_1_226, -16
  %empty_1167 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_226 = add i5 %i_1_226, 1
  br i1 %exitcond_226, label %1363, label %1368

; <label>:1365                                    ; preds = %1366
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1364

; <label>:1366                                    ; preds = %1367, %1357
  %i_227 = phi i5 [ 0, %1357 ], [ %i_11_226, %1367 ]
  %exitcond2_226 = icmp eq i5 %i_227, -16
  %empty_1168 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_226 = add i5 %i_227, 1
  br i1 %exitcond2_226, label %1365, label %1367

; <label>:1367                                    ; preds = %1366
  %empty_1169 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_902 = extractvalue { i8, i1, i1 } %empty_1169, 0
  %tmp_226_1170 = zext i5 %i_227 to i64
  %plaintext_addr_227 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_226_1170
  store i8 %tmp_data_902, i8* %plaintext_addr_227, align 1
  br label %1366

; <label>:1368                                    ; preds = %1364
  %tmp_131_226 = zext i5 %i_1_226 to i64
  %out_addr_230 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_226
  %tmp_data_903 = load i8* %out_addr_230, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_903, i1 true, i1 false)
  br label %1364

; <label>:1369                                    ; preds = %1370
  %empty_1171 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_245)
  %tmp_246 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1378

; <label>:1370                                    ; preds = %1374, %1371
  %i_1_227 = phi i5 [ 0, %1371 ], [ %i_12_227, %1374 ]
  %exitcond_227 = icmp eq i5 %i_1_227, -16
  %empty_1172 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_227 = add i5 %i_1_227, 1
  br i1 %exitcond_227, label %1369, label %1374

; <label>:1371                                    ; preds = %1372
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1370

; <label>:1372                                    ; preds = %1373, %1363
  %i_228 = phi i5 [ 0, %1363 ], [ %i_11_227, %1373 ]
  %exitcond2_227 = icmp eq i5 %i_228, -16
  %empty_1173 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_227 = add i5 %i_228, 1
  br i1 %exitcond2_227, label %1371, label %1373

; <label>:1373                                    ; preds = %1372
  %empty_1174 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_904 = extractvalue { i8, i1, i1 } %empty_1174, 0
  %tmp_227_1175 = zext i5 %i_228 to i64
  %plaintext_addr_228 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_227_1175
  store i8 %tmp_data_904, i8* %plaintext_addr_228, align 1
  br label %1372

; <label>:1374                                    ; preds = %1370
  %tmp_131_227 = zext i5 %i_1_227 to i64
  %out_addr_231 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_227
  %tmp_data_905 = load i8* %out_addr_231, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_905, i1 true, i1 false)
  br label %1370

; <label>:1375                                    ; preds = %1376
  %empty_1176 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_246)
  %tmp_247 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1384

; <label>:1376                                    ; preds = %1380, %1377
  %i_1_228 = phi i5 [ 0, %1377 ], [ %i_12_228, %1380 ]
  %exitcond_228 = icmp eq i5 %i_1_228, -16
  %empty_1177 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_228 = add i5 %i_1_228, 1
  br i1 %exitcond_228, label %1375, label %1380

; <label>:1377                                    ; preds = %1378
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1376

; <label>:1378                                    ; preds = %1379, %1369
  %i_229 = phi i5 [ 0, %1369 ], [ %i_11_228, %1379 ]
  %exitcond2_228 = icmp eq i5 %i_229, -16
  %empty_1178 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_228 = add i5 %i_229, 1
  br i1 %exitcond2_228, label %1377, label %1379

; <label>:1379                                    ; preds = %1378
  %empty_1179 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_906 = extractvalue { i8, i1, i1 } %empty_1179, 0
  %tmp_228_1180 = zext i5 %i_229 to i64
  %plaintext_addr_229 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_228_1180
  store i8 %tmp_data_906, i8* %plaintext_addr_229, align 1
  br label %1378

; <label>:1380                                    ; preds = %1376
  %tmp_131_228 = zext i5 %i_1_228 to i64
  %out_addr_232 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_228
  %tmp_data_907 = load i8* %out_addr_232, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_907, i1 true, i1 false)
  br label %1376

; <label>:1381                                    ; preds = %1382
  %empty_1181 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_247)
  %tmp_248 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1390

; <label>:1382                                    ; preds = %1386, %1383
  %i_1_229 = phi i5 [ 0, %1383 ], [ %i_12_229, %1386 ]
  %exitcond_229 = icmp eq i5 %i_1_229, -16
  %empty_1182 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_229 = add i5 %i_1_229, 1
  br i1 %exitcond_229, label %1381, label %1386

; <label>:1383                                    ; preds = %1384
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1382

; <label>:1384                                    ; preds = %1385, %1375
  %i_230 = phi i5 [ 0, %1375 ], [ %i_11_229, %1385 ]
  %exitcond2_229 = icmp eq i5 %i_230, -16
  %empty_1183 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_229 = add i5 %i_230, 1
  br i1 %exitcond2_229, label %1383, label %1385

; <label>:1385                                    ; preds = %1384
  %empty_1184 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_908 = extractvalue { i8, i1, i1 } %empty_1184, 0
  %tmp_229_1185 = zext i5 %i_230 to i64
  %plaintext_addr_230 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_229_1185
  store i8 %tmp_data_908, i8* %plaintext_addr_230, align 1
  br label %1384

; <label>:1386                                    ; preds = %1382
  %tmp_131_229 = zext i5 %i_1_229 to i64
  %out_addr_233 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_229
  %tmp_data_909 = load i8* %out_addr_233, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_909, i1 true, i1 false)
  br label %1382

; <label>:1387                                    ; preds = %1388
  %empty_1186 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_248)
  %tmp_249 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1396

; <label>:1388                                    ; preds = %1392, %1389
  %i_1_230 = phi i5 [ 0, %1389 ], [ %i_12_230, %1392 ]
  %exitcond_230 = icmp eq i5 %i_1_230, -16
  %empty_1187 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_230 = add i5 %i_1_230, 1
  br i1 %exitcond_230, label %1387, label %1392

; <label>:1389                                    ; preds = %1390
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1388

; <label>:1390                                    ; preds = %1391, %1381
  %i_231 = phi i5 [ 0, %1381 ], [ %i_11_230, %1391 ]
  %exitcond2_230 = icmp eq i5 %i_231, -16
  %empty_1188 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_230 = add i5 %i_231, 1
  br i1 %exitcond2_230, label %1389, label %1391

; <label>:1391                                    ; preds = %1390
  %empty_1189 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_910 = extractvalue { i8, i1, i1 } %empty_1189, 0
  %tmp_230_1190 = zext i5 %i_231 to i64
  %plaintext_addr_231 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_230_1190
  store i8 %tmp_data_910, i8* %plaintext_addr_231, align 1
  br label %1390

; <label>:1392                                    ; preds = %1388
  %tmp_131_230 = zext i5 %i_1_230 to i64
  %out_addr_234 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_230
  %tmp_data_911 = load i8* %out_addr_234, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_911, i1 true, i1 false)
  br label %1388

; <label>:1393                                    ; preds = %1394
  %empty_1191 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_249)
  %tmp_250 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1402

; <label>:1394                                    ; preds = %1398, %1395
  %i_1_231 = phi i5 [ 0, %1395 ], [ %i_12_231, %1398 ]
  %exitcond_231 = icmp eq i5 %i_1_231, -16
  %empty_1192 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_231 = add i5 %i_1_231, 1
  br i1 %exitcond_231, label %1393, label %1398

; <label>:1395                                    ; preds = %1396
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1394

; <label>:1396                                    ; preds = %1397, %1387
  %i_232 = phi i5 [ 0, %1387 ], [ %i_11_231, %1397 ]
  %exitcond2_231 = icmp eq i5 %i_232, -16
  %empty_1193 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_231 = add i5 %i_232, 1
  br i1 %exitcond2_231, label %1395, label %1397

; <label>:1397                                    ; preds = %1396
  %empty_1194 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_912 = extractvalue { i8, i1, i1 } %empty_1194, 0
  %tmp_231_1195 = zext i5 %i_232 to i64
  %plaintext_addr_232 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_231_1195
  store i8 %tmp_data_912, i8* %plaintext_addr_232, align 1
  br label %1396

; <label>:1398                                    ; preds = %1394
  %tmp_131_231 = zext i5 %i_1_231 to i64
  %out_addr_235 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_231
  %tmp_data_913 = load i8* %out_addr_235, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_913, i1 true, i1 false)
  br label %1394

; <label>:1399                                    ; preds = %1400
  %empty_1196 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_250)
  %tmp_251 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1408

; <label>:1400                                    ; preds = %1404, %1401
  %i_1_232 = phi i5 [ 0, %1401 ], [ %i_12_232, %1404 ]
  %exitcond_232 = icmp eq i5 %i_1_232, -16
  %empty_1197 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_232 = add i5 %i_1_232, 1
  br i1 %exitcond_232, label %1399, label %1404

; <label>:1401                                    ; preds = %1402
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1400

; <label>:1402                                    ; preds = %1403, %1393
  %i_233 = phi i5 [ 0, %1393 ], [ %i_11_232, %1403 ]
  %exitcond2_232 = icmp eq i5 %i_233, -16
  %empty_1198 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_232 = add i5 %i_233, 1
  br i1 %exitcond2_232, label %1401, label %1403

; <label>:1403                                    ; preds = %1402
  %empty_1199 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_914 = extractvalue { i8, i1, i1 } %empty_1199, 0
  %tmp_232_1200 = zext i5 %i_233 to i64
  %plaintext_addr_233 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_232_1200
  store i8 %tmp_data_914, i8* %plaintext_addr_233, align 1
  br label %1402

; <label>:1404                                    ; preds = %1400
  %tmp_131_232 = zext i5 %i_1_232 to i64
  %out_addr_236 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_232
  %tmp_data_915 = load i8* %out_addr_236, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_915, i1 true, i1 false)
  br label %1400

; <label>:1405                                    ; preds = %1406
  %empty_1201 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_251)
  %tmp_252 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1414

; <label>:1406                                    ; preds = %1410, %1407
  %i_1_233 = phi i5 [ 0, %1407 ], [ %i_12_233, %1410 ]
  %exitcond_233 = icmp eq i5 %i_1_233, -16
  %empty_1202 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_233 = add i5 %i_1_233, 1
  br i1 %exitcond_233, label %1405, label %1410

; <label>:1407                                    ; preds = %1408
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1406

; <label>:1408                                    ; preds = %1409, %1399
  %i_234 = phi i5 [ 0, %1399 ], [ %i_11_233, %1409 ]
  %exitcond2_233 = icmp eq i5 %i_234, -16
  %empty_1203 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_233 = add i5 %i_234, 1
  br i1 %exitcond2_233, label %1407, label %1409

; <label>:1409                                    ; preds = %1408
  %empty_1204 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_916 = extractvalue { i8, i1, i1 } %empty_1204, 0
  %tmp_233_1205 = zext i5 %i_234 to i64
  %plaintext_addr_234 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_233_1205
  store i8 %tmp_data_916, i8* %plaintext_addr_234, align 1
  br label %1408

; <label>:1410                                    ; preds = %1406
  %tmp_131_233 = zext i5 %i_1_233 to i64
  %out_addr_237 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_233
  %tmp_data_917 = load i8* %out_addr_237, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_917, i1 true, i1 false)
  br label %1406

; <label>:1411                                    ; preds = %1412
  %empty_1206 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_252)
  %tmp_253 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1420

; <label>:1412                                    ; preds = %1416, %1413
  %i_1_234 = phi i5 [ 0, %1413 ], [ %i_12_234, %1416 ]
  %exitcond_234 = icmp eq i5 %i_1_234, -16
  %empty_1207 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_234 = add i5 %i_1_234, 1
  br i1 %exitcond_234, label %1411, label %1416

; <label>:1413                                    ; preds = %1414
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1412

; <label>:1414                                    ; preds = %1415, %1405
  %i_235 = phi i5 [ 0, %1405 ], [ %i_11_234, %1415 ]
  %exitcond2_234 = icmp eq i5 %i_235, -16
  %empty_1208 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_234 = add i5 %i_235, 1
  br i1 %exitcond2_234, label %1413, label %1415

; <label>:1415                                    ; preds = %1414
  %empty_1209 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_918 = extractvalue { i8, i1, i1 } %empty_1209, 0
  %tmp_234_1210 = zext i5 %i_235 to i64
  %plaintext_addr_235 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_234_1210
  store i8 %tmp_data_918, i8* %plaintext_addr_235, align 1
  br label %1414

; <label>:1416                                    ; preds = %1412
  %tmp_131_234 = zext i5 %i_1_234 to i64
  %out_addr_238 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_234
  %tmp_data_919 = load i8* %out_addr_238, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_919, i1 true, i1 false)
  br label %1412

; <label>:1417                                    ; preds = %1418
  %empty_1211 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_253)
  %tmp_254 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1426

; <label>:1418                                    ; preds = %1422, %1419
  %i_1_235 = phi i5 [ 0, %1419 ], [ %i_12_235, %1422 ]
  %exitcond_235 = icmp eq i5 %i_1_235, -16
  %empty_1212 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_235 = add i5 %i_1_235, 1
  br i1 %exitcond_235, label %1417, label %1422

; <label>:1419                                    ; preds = %1420
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1418

; <label>:1420                                    ; preds = %1421, %1411
  %i_236 = phi i5 [ 0, %1411 ], [ %i_11_235, %1421 ]
  %exitcond2_235 = icmp eq i5 %i_236, -16
  %empty_1213 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_235 = add i5 %i_236, 1
  br i1 %exitcond2_235, label %1419, label %1421

; <label>:1421                                    ; preds = %1420
  %empty_1214 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_920 = extractvalue { i8, i1, i1 } %empty_1214, 0
  %tmp_235_1215 = zext i5 %i_236 to i64
  %plaintext_addr_236 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_235_1215
  store i8 %tmp_data_920, i8* %plaintext_addr_236, align 1
  br label %1420

; <label>:1422                                    ; preds = %1418
  %tmp_131_235 = zext i5 %i_1_235 to i64
  %out_addr_239 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_235
  %tmp_data_921 = load i8* %out_addr_239, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_921, i1 true, i1 false)
  br label %1418

; <label>:1423                                    ; preds = %1424
  %empty_1216 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_254)
  %tmp_255 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1432

; <label>:1424                                    ; preds = %1428, %1425
  %i_1_236 = phi i5 [ 0, %1425 ], [ %i_12_236, %1428 ]
  %exitcond_236 = icmp eq i5 %i_1_236, -16
  %empty_1217 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_236 = add i5 %i_1_236, 1
  br i1 %exitcond_236, label %1423, label %1428

; <label>:1425                                    ; preds = %1426
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1424

; <label>:1426                                    ; preds = %1427, %1417
  %i_237 = phi i5 [ 0, %1417 ], [ %i_11_236, %1427 ]
  %exitcond2_236 = icmp eq i5 %i_237, -16
  %empty_1218 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_236 = add i5 %i_237, 1
  br i1 %exitcond2_236, label %1425, label %1427

; <label>:1427                                    ; preds = %1426
  %empty_1219 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_922 = extractvalue { i8, i1, i1 } %empty_1219, 0
  %tmp_236_1220 = zext i5 %i_237 to i64
  %plaintext_addr_237 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_236_1220
  store i8 %tmp_data_922, i8* %plaintext_addr_237, align 1
  br label %1426

; <label>:1428                                    ; preds = %1424
  %tmp_131_236 = zext i5 %i_1_236 to i64
  %out_addr_240 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_236
  %tmp_data_923 = load i8* %out_addr_240, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_923, i1 true, i1 false)
  br label %1424

; <label>:1429                                    ; preds = %1430
  %empty_1221 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_255)
  %tmp_256 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1438

; <label>:1430                                    ; preds = %1434, %1431
  %i_1_237 = phi i5 [ 0, %1431 ], [ %i_12_237, %1434 ]
  %exitcond_237 = icmp eq i5 %i_1_237, -16
  %empty_1222 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_237 = add i5 %i_1_237, 1
  br i1 %exitcond_237, label %1429, label %1434

; <label>:1431                                    ; preds = %1432
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1430

; <label>:1432                                    ; preds = %1433, %1423
  %i_238 = phi i5 [ 0, %1423 ], [ %i_11_237, %1433 ]
  %exitcond2_237 = icmp eq i5 %i_238, -16
  %empty_1223 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_237 = add i5 %i_238, 1
  br i1 %exitcond2_237, label %1431, label %1433

; <label>:1433                                    ; preds = %1432
  %empty_1224 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_924 = extractvalue { i8, i1, i1 } %empty_1224, 0
  %tmp_237_1225 = zext i5 %i_238 to i64
  %plaintext_addr_238 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_237_1225
  store i8 %tmp_data_924, i8* %plaintext_addr_238, align 1
  br label %1432

; <label>:1434                                    ; preds = %1430
  %tmp_131_237 = zext i5 %i_1_237 to i64
  %out_addr_241 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_237
  %tmp_data_925 = load i8* %out_addr_241, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_925, i1 true, i1 false)
  br label %1430

; <label>:1435                                    ; preds = %1436
  %empty_1226 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_256)
  %tmp_257 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1444

; <label>:1436                                    ; preds = %1440, %1437
  %i_1_238 = phi i5 [ 0, %1437 ], [ %i_12_238, %1440 ]
  %exitcond_238 = icmp eq i5 %i_1_238, -16
  %empty_1227 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_238 = add i5 %i_1_238, 1
  br i1 %exitcond_238, label %1435, label %1440

; <label>:1437                                    ; preds = %1438
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1436

; <label>:1438                                    ; preds = %1439, %1429
  %i_239 = phi i5 [ 0, %1429 ], [ %i_11_238, %1439 ]
  %exitcond2_238 = icmp eq i5 %i_239, -16
  %empty_1228 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_238 = add i5 %i_239, 1
  br i1 %exitcond2_238, label %1437, label %1439

; <label>:1439                                    ; preds = %1438
  %empty_1229 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_926 = extractvalue { i8, i1, i1 } %empty_1229, 0
  %tmp_238_1230 = zext i5 %i_239 to i64
  %plaintext_addr_239 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_238_1230
  store i8 %tmp_data_926, i8* %plaintext_addr_239, align 1
  br label %1438

; <label>:1440                                    ; preds = %1436
  %tmp_131_238 = zext i5 %i_1_238 to i64
  %out_addr_242 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_238
  %tmp_data_927 = load i8* %out_addr_242, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_927, i1 true, i1 false)
  br label %1436

; <label>:1441                                    ; preds = %1442
  %empty_1231 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_257)
  %tmp_258 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1450

; <label>:1442                                    ; preds = %1446, %1443
  %i_1_239 = phi i5 [ 0, %1443 ], [ %i_12_239, %1446 ]
  %exitcond_239 = icmp eq i5 %i_1_239, -16
  %empty_1232 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_239 = add i5 %i_1_239, 1
  br i1 %exitcond_239, label %1441, label %1446

; <label>:1443                                    ; preds = %1444
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1442

; <label>:1444                                    ; preds = %1445, %1435
  %i_240 = phi i5 [ 0, %1435 ], [ %i_11_239, %1445 ]
  %exitcond2_239 = icmp eq i5 %i_240, -16
  %empty_1233 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_239 = add i5 %i_240, 1
  br i1 %exitcond2_239, label %1443, label %1445

; <label>:1445                                    ; preds = %1444
  %empty_1234 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_928 = extractvalue { i8, i1, i1 } %empty_1234, 0
  %tmp_239_1235 = zext i5 %i_240 to i64
  %plaintext_addr_240 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_239_1235
  store i8 %tmp_data_928, i8* %plaintext_addr_240, align 1
  br label %1444

; <label>:1446                                    ; preds = %1442
  %tmp_131_239 = zext i5 %i_1_239 to i64
  %out_addr_243 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_239
  %tmp_data_929 = load i8* %out_addr_243, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_929, i1 true, i1 false)
  br label %1442

; <label>:1447                                    ; preds = %1448
  %empty_1236 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_258)
  %tmp_259 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1456

; <label>:1448                                    ; preds = %1452, %1449
  %i_1_240 = phi i5 [ 0, %1449 ], [ %i_12_240, %1452 ]
  %exitcond_240 = icmp eq i5 %i_1_240, -16
  %empty_1237 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_240 = add i5 %i_1_240, 1
  br i1 %exitcond_240, label %1447, label %1452

; <label>:1449                                    ; preds = %1450
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1448

; <label>:1450                                    ; preds = %1451, %1441
  %i_241 = phi i5 [ 0, %1441 ], [ %i_11_240, %1451 ]
  %exitcond2_240 = icmp eq i5 %i_241, -16
  %empty_1238 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_240 = add i5 %i_241, 1
  br i1 %exitcond2_240, label %1449, label %1451

; <label>:1451                                    ; preds = %1450
  %empty_1239 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_930 = extractvalue { i8, i1, i1 } %empty_1239, 0
  %tmp_240_1240 = zext i5 %i_241 to i64
  %plaintext_addr_241 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_240_1240
  store i8 %tmp_data_930, i8* %plaintext_addr_241, align 1
  br label %1450

; <label>:1452                                    ; preds = %1448
  %tmp_131_240 = zext i5 %i_1_240 to i64
  %out_addr_244 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_240
  %tmp_data_931 = load i8* %out_addr_244, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_931, i1 true, i1 false)
  br label %1448

; <label>:1453                                    ; preds = %1454
  %empty_1241 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_259)
  %tmp_260 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1462

; <label>:1454                                    ; preds = %1458, %1455
  %i_1_241 = phi i5 [ 0, %1455 ], [ %i_12_241, %1458 ]
  %exitcond_241 = icmp eq i5 %i_1_241, -16
  %empty_1242 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_241 = add i5 %i_1_241, 1
  br i1 %exitcond_241, label %1453, label %1458

; <label>:1455                                    ; preds = %1456
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1454

; <label>:1456                                    ; preds = %1457, %1447
  %i_242 = phi i5 [ 0, %1447 ], [ %i_11_241, %1457 ]
  %exitcond2_241 = icmp eq i5 %i_242, -16
  %empty_1243 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_241 = add i5 %i_242, 1
  br i1 %exitcond2_241, label %1455, label %1457

; <label>:1457                                    ; preds = %1456
  %empty_1244 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_932 = extractvalue { i8, i1, i1 } %empty_1244, 0
  %tmp_241_1245 = zext i5 %i_242 to i64
  %plaintext_addr_242 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_241_1245
  store i8 %tmp_data_932, i8* %plaintext_addr_242, align 1
  br label %1456

; <label>:1458                                    ; preds = %1454
  %tmp_131_241 = zext i5 %i_1_241 to i64
  %out_addr_245 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_241
  %tmp_data_933 = load i8* %out_addr_245, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_933, i1 true, i1 false)
  br label %1454

; <label>:1459                                    ; preds = %1460
  %empty_1246 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_260)
  %tmp_261 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1468

; <label>:1460                                    ; preds = %1464, %1461
  %i_1_242 = phi i5 [ 0, %1461 ], [ %i_12_242, %1464 ]
  %exitcond_242 = icmp eq i5 %i_1_242, -16
  %empty_1247 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_242 = add i5 %i_1_242, 1
  br i1 %exitcond_242, label %1459, label %1464

; <label>:1461                                    ; preds = %1462
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1460

; <label>:1462                                    ; preds = %1463, %1453
  %i_243 = phi i5 [ 0, %1453 ], [ %i_11_242, %1463 ]
  %exitcond2_242 = icmp eq i5 %i_243, -16
  %empty_1248 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_242 = add i5 %i_243, 1
  br i1 %exitcond2_242, label %1461, label %1463

; <label>:1463                                    ; preds = %1462
  %empty_1249 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_934 = extractvalue { i8, i1, i1 } %empty_1249, 0
  %tmp_242_1250 = zext i5 %i_243 to i64
  %plaintext_addr_243 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_242_1250
  store i8 %tmp_data_934, i8* %plaintext_addr_243, align 1
  br label %1462

; <label>:1464                                    ; preds = %1460
  %tmp_131_242 = zext i5 %i_1_242 to i64
  %out_addr_246 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_242
  %tmp_data_935 = load i8* %out_addr_246, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_935, i1 true, i1 false)
  br label %1460

; <label>:1465                                    ; preds = %1466
  %empty_1251 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_261)
  %tmp_262 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1474

; <label>:1466                                    ; preds = %1470, %1467
  %i_1_243 = phi i5 [ 0, %1467 ], [ %i_12_243, %1470 ]
  %exitcond_243 = icmp eq i5 %i_1_243, -16
  %empty_1252 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_243 = add i5 %i_1_243, 1
  br i1 %exitcond_243, label %1465, label %1470

; <label>:1467                                    ; preds = %1468
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1466

; <label>:1468                                    ; preds = %1469, %1459
  %i_244 = phi i5 [ 0, %1459 ], [ %i_11_243, %1469 ]
  %exitcond2_243 = icmp eq i5 %i_244, -16
  %empty_1253 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_243 = add i5 %i_244, 1
  br i1 %exitcond2_243, label %1467, label %1469

; <label>:1469                                    ; preds = %1468
  %empty_1254 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_936 = extractvalue { i8, i1, i1 } %empty_1254, 0
  %tmp_243_1255 = zext i5 %i_244 to i64
  %plaintext_addr_244 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_243_1255
  store i8 %tmp_data_936, i8* %plaintext_addr_244, align 1
  br label %1468

; <label>:1470                                    ; preds = %1466
  %tmp_131_243 = zext i5 %i_1_243 to i64
  %out_addr_247 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_243
  %tmp_data_937 = load i8* %out_addr_247, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_937, i1 true, i1 false)
  br label %1466

; <label>:1471                                    ; preds = %1472
  %empty_1256 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_262)
  %tmp_263 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1480

; <label>:1472                                    ; preds = %1476, %1473
  %i_1_244 = phi i5 [ 0, %1473 ], [ %i_12_244, %1476 ]
  %exitcond_244 = icmp eq i5 %i_1_244, -16
  %empty_1257 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_244 = add i5 %i_1_244, 1
  br i1 %exitcond_244, label %1471, label %1476

; <label>:1473                                    ; preds = %1474
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1472

; <label>:1474                                    ; preds = %1475, %1465
  %i_245 = phi i5 [ 0, %1465 ], [ %i_11_244, %1475 ]
  %exitcond2_244 = icmp eq i5 %i_245, -16
  %empty_1258 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_244 = add i5 %i_245, 1
  br i1 %exitcond2_244, label %1473, label %1475

; <label>:1475                                    ; preds = %1474
  %empty_1259 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_938 = extractvalue { i8, i1, i1 } %empty_1259, 0
  %tmp_244_1260 = zext i5 %i_245 to i64
  %plaintext_addr_245 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_244_1260
  store i8 %tmp_data_938, i8* %plaintext_addr_245, align 1
  br label %1474

; <label>:1476                                    ; preds = %1472
  %tmp_131_244 = zext i5 %i_1_244 to i64
  %out_addr_248 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_244
  %tmp_data_939 = load i8* %out_addr_248, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_939, i1 true, i1 false)
  br label %1472

; <label>:1477                                    ; preds = %1478
  %empty_1261 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_263)
  %tmp_264 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1486

; <label>:1478                                    ; preds = %1482, %1479
  %i_1_245 = phi i5 [ 0, %1479 ], [ %i_12_245, %1482 ]
  %exitcond_245 = icmp eq i5 %i_1_245, -16
  %empty_1262 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_245 = add i5 %i_1_245, 1
  br i1 %exitcond_245, label %1477, label %1482

; <label>:1479                                    ; preds = %1480
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1478

; <label>:1480                                    ; preds = %1481, %1471
  %i_246 = phi i5 [ 0, %1471 ], [ %i_11_245, %1481 ]
  %exitcond2_245 = icmp eq i5 %i_246, -16
  %empty_1263 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_245 = add i5 %i_246, 1
  br i1 %exitcond2_245, label %1479, label %1481

; <label>:1481                                    ; preds = %1480
  %empty_1264 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_940 = extractvalue { i8, i1, i1 } %empty_1264, 0
  %tmp_245_1265 = zext i5 %i_246 to i64
  %plaintext_addr_246 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_245_1265
  store i8 %tmp_data_940, i8* %plaintext_addr_246, align 1
  br label %1480

; <label>:1482                                    ; preds = %1478
  %tmp_131_245 = zext i5 %i_1_245 to i64
  %out_addr_249 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_245
  %tmp_data_941 = load i8* %out_addr_249, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_941, i1 true, i1 false)
  br label %1478

; <label>:1483                                    ; preds = %1484
  %empty_1266 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_264)
  %tmp_265 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1492

; <label>:1484                                    ; preds = %1488, %1485
  %i_1_246 = phi i5 [ 0, %1485 ], [ %i_12_246, %1488 ]
  %exitcond_246 = icmp eq i5 %i_1_246, -16
  %empty_1267 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_246 = add i5 %i_1_246, 1
  br i1 %exitcond_246, label %1483, label %1488

; <label>:1485                                    ; preds = %1486
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1484

; <label>:1486                                    ; preds = %1487, %1477
  %i_247 = phi i5 [ 0, %1477 ], [ %i_11_246, %1487 ]
  %exitcond2_246 = icmp eq i5 %i_247, -16
  %empty_1268 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_246 = add i5 %i_247, 1
  br i1 %exitcond2_246, label %1485, label %1487

; <label>:1487                                    ; preds = %1486
  %empty_1269 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_942 = extractvalue { i8, i1, i1 } %empty_1269, 0
  %tmp_246_1270 = zext i5 %i_247 to i64
  %plaintext_addr_247 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_246_1270
  store i8 %tmp_data_942, i8* %plaintext_addr_247, align 1
  br label %1486

; <label>:1488                                    ; preds = %1484
  %tmp_131_246 = zext i5 %i_1_246 to i64
  %out_addr_250 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_246
  %tmp_data_943 = load i8* %out_addr_250, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_943, i1 true, i1 false)
  br label %1484

; <label>:1489                                    ; preds = %1490
  %empty_1271 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_265)
  %tmp_266 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1498

; <label>:1490                                    ; preds = %1494, %1491
  %i_1_247 = phi i5 [ 0, %1491 ], [ %i_12_247, %1494 ]
  %exitcond_247 = icmp eq i5 %i_1_247, -16
  %empty_1272 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_247 = add i5 %i_1_247, 1
  br i1 %exitcond_247, label %1489, label %1494

; <label>:1491                                    ; preds = %1492
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1490

; <label>:1492                                    ; preds = %1493, %1483
  %i_248 = phi i5 [ 0, %1483 ], [ %i_11_247, %1493 ]
  %exitcond2_247 = icmp eq i5 %i_248, -16
  %empty_1273 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_247 = add i5 %i_248, 1
  br i1 %exitcond2_247, label %1491, label %1493

; <label>:1493                                    ; preds = %1492
  %empty_1274 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_944 = extractvalue { i8, i1, i1 } %empty_1274, 0
  %tmp_247_1275 = zext i5 %i_248 to i64
  %plaintext_addr_248 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_247_1275
  store i8 %tmp_data_944, i8* %plaintext_addr_248, align 1
  br label %1492

; <label>:1494                                    ; preds = %1490
  %tmp_131_247 = zext i5 %i_1_247 to i64
  %out_addr_251 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_247
  %tmp_data_945 = load i8* %out_addr_251, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_945, i1 true, i1 false)
  br label %1490

; <label>:1495                                    ; preds = %1496
  %empty_1276 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_266)
  %tmp_267 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1504

; <label>:1496                                    ; preds = %1500, %1497
  %i_1_248 = phi i5 [ 0, %1497 ], [ %i_12_248, %1500 ]
  %exitcond_248 = icmp eq i5 %i_1_248, -16
  %empty_1277 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_248 = add i5 %i_1_248, 1
  br i1 %exitcond_248, label %1495, label %1500

; <label>:1497                                    ; preds = %1498
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1496

; <label>:1498                                    ; preds = %1499, %1489
  %i_249 = phi i5 [ 0, %1489 ], [ %i_11_248, %1499 ]
  %exitcond2_248 = icmp eq i5 %i_249, -16
  %empty_1278 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_248 = add i5 %i_249, 1
  br i1 %exitcond2_248, label %1497, label %1499

; <label>:1499                                    ; preds = %1498
  %empty_1279 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_946 = extractvalue { i8, i1, i1 } %empty_1279, 0
  %tmp_248_1280 = zext i5 %i_249 to i64
  %plaintext_addr_249 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_248_1280
  store i8 %tmp_data_946, i8* %plaintext_addr_249, align 1
  br label %1498

; <label>:1500                                    ; preds = %1496
  %tmp_131_248 = zext i5 %i_1_248 to i64
  %out_addr_252 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_248
  %tmp_data_947 = load i8* %out_addr_252, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_947, i1 true, i1 false)
  br label %1496

; <label>:1501                                    ; preds = %1502
  %empty_1281 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_267)
  %tmp_268 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1510

; <label>:1502                                    ; preds = %1506, %1503
  %i_1_249 = phi i5 [ 0, %1503 ], [ %i_12_249, %1506 ]
  %exitcond_249 = icmp eq i5 %i_1_249, -16
  %empty_1282 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_249 = add i5 %i_1_249, 1
  br i1 %exitcond_249, label %1501, label %1506

; <label>:1503                                    ; preds = %1504
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1502

; <label>:1504                                    ; preds = %1505, %1495
  %i_250 = phi i5 [ 0, %1495 ], [ %i_11_249, %1505 ]
  %exitcond2_249 = icmp eq i5 %i_250, -16
  %empty_1283 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_249 = add i5 %i_250, 1
  br i1 %exitcond2_249, label %1503, label %1505

; <label>:1505                                    ; preds = %1504
  %empty_1284 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_948 = extractvalue { i8, i1, i1 } %empty_1284, 0
  %tmp_249_1285 = zext i5 %i_250 to i64
  %plaintext_addr_250 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_249_1285
  store i8 %tmp_data_948, i8* %plaintext_addr_250, align 1
  br label %1504

; <label>:1506                                    ; preds = %1502
  %tmp_131_249 = zext i5 %i_1_249 to i64
  %out_addr_253 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_249
  %tmp_data_949 = load i8* %out_addr_253, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_949, i1 true, i1 false)
  br label %1502

; <label>:1507                                    ; preds = %1508
  %empty_1286 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_268)
  %tmp_269 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1516

; <label>:1508                                    ; preds = %1512, %1509
  %i_1_250 = phi i5 [ 0, %1509 ], [ %i_12_250, %1512 ]
  %exitcond_250 = icmp eq i5 %i_1_250, -16
  %empty_1287 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_250 = add i5 %i_1_250, 1
  br i1 %exitcond_250, label %1507, label %1512

; <label>:1509                                    ; preds = %1510
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1508

; <label>:1510                                    ; preds = %1511, %1501
  %i_251 = phi i5 [ 0, %1501 ], [ %i_11_250, %1511 ]
  %exitcond2_250 = icmp eq i5 %i_251, -16
  %empty_1288 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_250 = add i5 %i_251, 1
  br i1 %exitcond2_250, label %1509, label %1511

; <label>:1511                                    ; preds = %1510
  %empty_1289 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_950 = extractvalue { i8, i1, i1 } %empty_1289, 0
  %tmp_250_1290 = zext i5 %i_251 to i64
  %plaintext_addr_251 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_250_1290
  store i8 %tmp_data_950, i8* %plaintext_addr_251, align 1
  br label %1510

; <label>:1512                                    ; preds = %1508
  %tmp_131_250 = zext i5 %i_1_250 to i64
  %out_addr_254 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_250
  %tmp_data_951 = load i8* %out_addr_254, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_951, i1 true, i1 false)
  br label %1508

; <label>:1513                                    ; preds = %1514
  %empty_1291 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_269)
  %tmp_270 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1522

; <label>:1514                                    ; preds = %1518, %1515
  %i_1_251 = phi i5 [ 0, %1515 ], [ %i_12_251, %1518 ]
  %exitcond_251 = icmp eq i5 %i_1_251, -16
  %empty_1292 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_251 = add i5 %i_1_251, 1
  br i1 %exitcond_251, label %1513, label %1518

; <label>:1515                                    ; preds = %1516
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1514

; <label>:1516                                    ; preds = %1517, %1507
  %i_252 = phi i5 [ 0, %1507 ], [ %i_11_251, %1517 ]
  %exitcond2_251 = icmp eq i5 %i_252, -16
  %empty_1293 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_251 = add i5 %i_252, 1
  br i1 %exitcond2_251, label %1515, label %1517

; <label>:1517                                    ; preds = %1516
  %empty_1294 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_952 = extractvalue { i8, i1, i1 } %empty_1294, 0
  %tmp_251_1295 = zext i5 %i_252 to i64
  %plaintext_addr_252 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_251_1295
  store i8 %tmp_data_952, i8* %plaintext_addr_252, align 1
  br label %1516

; <label>:1518                                    ; preds = %1514
  %tmp_131_251 = zext i5 %i_1_251 to i64
  %out_addr_255 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_251
  %tmp_data_953 = load i8* %out_addr_255, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_953, i1 true, i1 false)
  br label %1514

; <label>:1519                                    ; preds = %1520
  %empty_1296 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_270)
  %tmp_271 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1528

; <label>:1520                                    ; preds = %1524, %1521
  %i_1_252 = phi i5 [ 0, %1521 ], [ %i_12_252, %1524 ]
  %exitcond_252 = icmp eq i5 %i_1_252, -16
  %empty_1297 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_252 = add i5 %i_1_252, 1
  br i1 %exitcond_252, label %1519, label %1524

; <label>:1521                                    ; preds = %1522
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1520

; <label>:1522                                    ; preds = %1523, %1513
  %i_253 = phi i5 [ 0, %1513 ], [ %i_11_252, %1523 ]
  %exitcond2_252 = icmp eq i5 %i_253, -16
  %empty_1298 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_252 = add i5 %i_253, 1
  br i1 %exitcond2_252, label %1521, label %1523

; <label>:1523                                    ; preds = %1522
  %empty_1299 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_954 = extractvalue { i8, i1, i1 } %empty_1299, 0
  %tmp_252_1300 = zext i5 %i_253 to i64
  %plaintext_addr_253 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_252_1300
  store i8 %tmp_data_954, i8* %plaintext_addr_253, align 1
  br label %1522

; <label>:1524                                    ; preds = %1520
  %tmp_131_252 = zext i5 %i_1_252 to i64
  %out_addr_256 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_252
  %tmp_data_955 = load i8* %out_addr_256, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_955, i1 true, i1 false)
  br label %1520

; <label>:1525                                    ; preds = %1526
  %empty_1301 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_271)
  %tmp_272 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1534

; <label>:1526                                    ; preds = %1530, %1527
  %i_1_253 = phi i5 [ 0, %1527 ], [ %i_12_253, %1530 ]
  %exitcond_253 = icmp eq i5 %i_1_253, -16
  %empty_1302 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_253 = add i5 %i_1_253, 1
  br i1 %exitcond_253, label %1525, label %1530

; <label>:1527                                    ; preds = %1528
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1526

; <label>:1528                                    ; preds = %1529, %1519
  %i_254 = phi i5 [ 0, %1519 ], [ %i_11_253, %1529 ]
  %exitcond2_253 = icmp eq i5 %i_254, -16
  %empty_1303 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_253 = add i5 %i_254, 1
  br i1 %exitcond2_253, label %1527, label %1529

; <label>:1529                                    ; preds = %1528
  %empty_1304 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_956 = extractvalue { i8, i1, i1 } %empty_1304, 0
  %tmp_253_1305 = zext i5 %i_254 to i64
  %plaintext_addr_254 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_253_1305
  store i8 %tmp_data_956, i8* %plaintext_addr_254, align 1
  br label %1528

; <label>:1530                                    ; preds = %1526
  %tmp_131_253 = zext i5 %i_1_253 to i64
  %out_addr_257 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_253
  %tmp_data_957 = load i8* %out_addr_257, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_957, i1 true, i1 false)
  br label %1526

; <label>:1531                                    ; preds = %1532
  %empty_1306 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_272)
  %tmp_273 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1540

; <label>:1532                                    ; preds = %1536, %1533
  %i_1_254 = phi i5 [ 0, %1533 ], [ %i_12_254, %1536 ]
  %exitcond_254 = icmp eq i5 %i_1_254, -16
  %empty_1307 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_254 = add i5 %i_1_254, 1
  br i1 %exitcond_254, label %1531, label %1536

; <label>:1533                                    ; preds = %1534
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1532

; <label>:1534                                    ; preds = %1535, %1525
  %i_255 = phi i5 [ 0, %1525 ], [ %i_11_254, %1535 ]
  %exitcond2_254 = icmp eq i5 %i_255, -16
  %empty_1308 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_254 = add i5 %i_255, 1
  br i1 %exitcond2_254, label %1533, label %1535

; <label>:1535                                    ; preds = %1534
  %empty_1309 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_958 = extractvalue { i8, i1, i1 } %empty_1309, 0
  %tmp_254_1310 = zext i5 %i_255 to i64
  %plaintext_addr_255 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_254_1310
  store i8 %tmp_data_958, i8* %plaintext_addr_255, align 1
  br label %1534

; <label>:1536                                    ; preds = %1532
  %tmp_131_254 = zext i5 %i_1_254 to i64
  %out_addr_258 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_254
  %tmp_data_959 = load i8* %out_addr_258, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_959, i1 true, i1 false)
  br label %1532

; <label>:1537                                    ; preds = %1538
  %empty_1311 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_273)
  %tmp_274 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1546

; <label>:1538                                    ; preds = %1542, %1539
  %i_1_255 = phi i5 [ 0, %1539 ], [ %i_12_255, %1542 ]
  %exitcond_255 = icmp eq i5 %i_1_255, -16
  %empty_1312 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_255 = add i5 %i_1_255, 1
  br i1 %exitcond_255, label %1537, label %1542

; <label>:1539                                    ; preds = %1540
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1538

; <label>:1540                                    ; preds = %1541, %1531
  %i_256 = phi i5 [ 0, %1531 ], [ %i_11_255, %1541 ]
  %exitcond2_255 = icmp eq i5 %i_256, -16
  %empty_1313 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_255 = add i5 %i_256, 1
  br i1 %exitcond2_255, label %1539, label %1541

; <label>:1541                                    ; preds = %1540
  %empty_1314 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_960 = extractvalue { i8, i1, i1 } %empty_1314, 0
  %tmp_255_1315 = zext i5 %i_256 to i64
  %plaintext_addr_256 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_255_1315
  store i8 %tmp_data_960, i8* %plaintext_addr_256, align 1
  br label %1540

; <label>:1542                                    ; preds = %1538
  %tmp_131_255 = zext i5 %i_1_255 to i64
  %out_addr_259 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_255
  %tmp_data_961 = load i8* %out_addr_259, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_961, i1 true, i1 false)
  br label %1538

; <label>:1543                                    ; preds = %1544
  %empty_1316 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_274)
  %tmp_275 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1552

; <label>:1544                                    ; preds = %1548, %1545
  %i_1_256 = phi i5 [ 0, %1545 ], [ %i_12_256, %1548 ]
  %exitcond_256 = icmp eq i5 %i_1_256, -16
  %empty_1317 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_256 = add i5 %i_1_256, 1
  br i1 %exitcond_256, label %1543, label %1548

; <label>:1545                                    ; preds = %1546
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1544

; <label>:1546                                    ; preds = %1547, %1537
  %i_257 = phi i5 [ 0, %1537 ], [ %i_11_256, %1547 ]
  %exitcond2_256 = icmp eq i5 %i_257, -16
  %empty_1318 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_256 = add i5 %i_257, 1
  br i1 %exitcond2_256, label %1545, label %1547

; <label>:1547                                    ; preds = %1546
  %empty_1319 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_962 = extractvalue { i8, i1, i1 } %empty_1319, 0
  %tmp_256_1320 = zext i5 %i_257 to i64
  %plaintext_addr_257 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_256_1320
  store i8 %tmp_data_962, i8* %plaintext_addr_257, align 1
  br label %1546

; <label>:1548                                    ; preds = %1544
  %tmp_131_256 = zext i5 %i_1_256 to i64
  %out_addr_260 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_256
  %tmp_data_963 = load i8* %out_addr_260, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_963, i1 true, i1 false)
  br label %1544

; <label>:1549                                    ; preds = %1550
  %empty_1321 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_275)
  %tmp_276 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1558

; <label>:1550                                    ; preds = %1554, %1551
  %i_1_257 = phi i5 [ 0, %1551 ], [ %i_12_257, %1554 ]
  %exitcond_257 = icmp eq i5 %i_1_257, -16
  %empty_1322 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_257 = add i5 %i_1_257, 1
  br i1 %exitcond_257, label %1549, label %1554

; <label>:1551                                    ; preds = %1552
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1550

; <label>:1552                                    ; preds = %1553, %1543
  %i_258 = phi i5 [ 0, %1543 ], [ %i_11_257, %1553 ]
  %exitcond2_257 = icmp eq i5 %i_258, -16
  %empty_1323 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_257 = add i5 %i_258, 1
  br i1 %exitcond2_257, label %1551, label %1553

; <label>:1553                                    ; preds = %1552
  %empty_1324 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_964 = extractvalue { i8, i1, i1 } %empty_1324, 0
  %tmp_257_1325 = zext i5 %i_258 to i64
  %plaintext_addr_258 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_257_1325
  store i8 %tmp_data_964, i8* %plaintext_addr_258, align 1
  br label %1552

; <label>:1554                                    ; preds = %1550
  %tmp_131_257 = zext i5 %i_1_257 to i64
  %out_addr_261 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_257
  %tmp_data_965 = load i8* %out_addr_261, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_965, i1 true, i1 false)
  br label %1550

; <label>:1555                                    ; preds = %1556
  %empty_1326 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_276)
  %tmp_277 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1564

; <label>:1556                                    ; preds = %1560, %1557
  %i_1_258 = phi i5 [ 0, %1557 ], [ %i_12_258, %1560 ]
  %exitcond_258 = icmp eq i5 %i_1_258, -16
  %empty_1327 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_258 = add i5 %i_1_258, 1
  br i1 %exitcond_258, label %1555, label %1560

; <label>:1557                                    ; preds = %1558
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1556

; <label>:1558                                    ; preds = %1559, %1549
  %i_259 = phi i5 [ 0, %1549 ], [ %i_11_258, %1559 ]
  %exitcond2_258 = icmp eq i5 %i_259, -16
  %empty_1328 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_258 = add i5 %i_259, 1
  br i1 %exitcond2_258, label %1557, label %1559

; <label>:1559                                    ; preds = %1558
  %empty_1329 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_966 = extractvalue { i8, i1, i1 } %empty_1329, 0
  %tmp_258_1330 = zext i5 %i_259 to i64
  %plaintext_addr_259 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_258_1330
  store i8 %tmp_data_966, i8* %plaintext_addr_259, align 1
  br label %1558

; <label>:1560                                    ; preds = %1556
  %tmp_131_258 = zext i5 %i_1_258 to i64
  %out_addr_262 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_258
  %tmp_data_967 = load i8* %out_addr_262, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_967, i1 true, i1 false)
  br label %1556

; <label>:1561                                    ; preds = %1562
  %empty_1331 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_277)
  %tmp_278 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1570

; <label>:1562                                    ; preds = %1566, %1563
  %i_1_259 = phi i5 [ 0, %1563 ], [ %i_12_259, %1566 ]
  %exitcond_259 = icmp eq i5 %i_1_259, -16
  %empty_1332 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_259 = add i5 %i_1_259, 1
  br i1 %exitcond_259, label %1561, label %1566

; <label>:1563                                    ; preds = %1564
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1562

; <label>:1564                                    ; preds = %1565, %1555
  %i_260 = phi i5 [ 0, %1555 ], [ %i_11_259, %1565 ]
  %exitcond2_259 = icmp eq i5 %i_260, -16
  %empty_1333 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_259 = add i5 %i_260, 1
  br i1 %exitcond2_259, label %1563, label %1565

; <label>:1565                                    ; preds = %1564
  %empty_1334 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_968 = extractvalue { i8, i1, i1 } %empty_1334, 0
  %tmp_259_1335 = zext i5 %i_260 to i64
  %plaintext_addr_260 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_259_1335
  store i8 %tmp_data_968, i8* %plaintext_addr_260, align 1
  br label %1564

; <label>:1566                                    ; preds = %1562
  %tmp_131_259 = zext i5 %i_1_259 to i64
  %out_addr_263 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_259
  %tmp_data_969 = load i8* %out_addr_263, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_969, i1 true, i1 false)
  br label %1562

; <label>:1567                                    ; preds = %1568
  %empty_1336 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_278)
  %tmp_279 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1576

; <label>:1568                                    ; preds = %1572, %1569
  %i_1_260 = phi i5 [ 0, %1569 ], [ %i_12_260, %1572 ]
  %exitcond_260 = icmp eq i5 %i_1_260, -16
  %empty_1337 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_260 = add i5 %i_1_260, 1
  br i1 %exitcond_260, label %1567, label %1572

; <label>:1569                                    ; preds = %1570
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1568

; <label>:1570                                    ; preds = %1571, %1561
  %i_261 = phi i5 [ 0, %1561 ], [ %i_11_260, %1571 ]
  %exitcond2_260 = icmp eq i5 %i_261, -16
  %empty_1338 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_260 = add i5 %i_261, 1
  br i1 %exitcond2_260, label %1569, label %1571

; <label>:1571                                    ; preds = %1570
  %empty_1339 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_970 = extractvalue { i8, i1, i1 } %empty_1339, 0
  %tmp_260_1340 = zext i5 %i_261 to i64
  %plaintext_addr_261 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_260_1340
  store i8 %tmp_data_970, i8* %plaintext_addr_261, align 1
  br label %1570

; <label>:1572                                    ; preds = %1568
  %tmp_131_260 = zext i5 %i_1_260 to i64
  %out_addr_264 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_260
  %tmp_data_971 = load i8* %out_addr_264, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_971, i1 true, i1 false)
  br label %1568

; <label>:1573                                    ; preds = %1574
  %empty_1341 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_279)
  %tmp_280 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1582

; <label>:1574                                    ; preds = %1578, %1575
  %i_1_261 = phi i5 [ 0, %1575 ], [ %i_12_261, %1578 ]
  %exitcond_261 = icmp eq i5 %i_1_261, -16
  %empty_1342 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_261 = add i5 %i_1_261, 1
  br i1 %exitcond_261, label %1573, label %1578

; <label>:1575                                    ; preds = %1576
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1574

; <label>:1576                                    ; preds = %1577, %1567
  %i_262 = phi i5 [ 0, %1567 ], [ %i_11_261, %1577 ]
  %exitcond2_261 = icmp eq i5 %i_262, -16
  %empty_1343 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_261 = add i5 %i_262, 1
  br i1 %exitcond2_261, label %1575, label %1577

; <label>:1577                                    ; preds = %1576
  %empty_1344 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_972 = extractvalue { i8, i1, i1 } %empty_1344, 0
  %tmp_261_1345 = zext i5 %i_262 to i64
  %plaintext_addr_262 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_261_1345
  store i8 %tmp_data_972, i8* %plaintext_addr_262, align 1
  br label %1576

; <label>:1578                                    ; preds = %1574
  %tmp_131_261 = zext i5 %i_1_261 to i64
  %out_addr_265 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_261
  %tmp_data_973 = load i8* %out_addr_265, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_973, i1 true, i1 false)
  br label %1574

; <label>:1579                                    ; preds = %1580
  %empty_1346 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_280)
  %tmp_281 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1588

; <label>:1580                                    ; preds = %1584, %1581
  %i_1_262 = phi i5 [ 0, %1581 ], [ %i_12_262, %1584 ]
  %exitcond_262 = icmp eq i5 %i_1_262, -16
  %empty_1347 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_262 = add i5 %i_1_262, 1
  br i1 %exitcond_262, label %1579, label %1584

; <label>:1581                                    ; preds = %1582
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1580

; <label>:1582                                    ; preds = %1583, %1573
  %i_263 = phi i5 [ 0, %1573 ], [ %i_11_262, %1583 ]
  %exitcond2_262 = icmp eq i5 %i_263, -16
  %empty_1348 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_262 = add i5 %i_263, 1
  br i1 %exitcond2_262, label %1581, label %1583

; <label>:1583                                    ; preds = %1582
  %empty_1349 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_974 = extractvalue { i8, i1, i1 } %empty_1349, 0
  %tmp_262_1350 = zext i5 %i_263 to i64
  %plaintext_addr_263 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_262_1350
  store i8 %tmp_data_974, i8* %plaintext_addr_263, align 1
  br label %1582

; <label>:1584                                    ; preds = %1580
  %tmp_131_262 = zext i5 %i_1_262 to i64
  %out_addr_266 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_262
  %tmp_data_975 = load i8* %out_addr_266, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_975, i1 true, i1 false)
  br label %1580

; <label>:1585                                    ; preds = %1586
  %empty_1351 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_281)
  %tmp_282 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1594

; <label>:1586                                    ; preds = %1590, %1587
  %i_1_263 = phi i5 [ 0, %1587 ], [ %i_12_263, %1590 ]
  %exitcond_263 = icmp eq i5 %i_1_263, -16
  %empty_1352 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_263 = add i5 %i_1_263, 1
  br i1 %exitcond_263, label %1585, label %1590

; <label>:1587                                    ; preds = %1588
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1586

; <label>:1588                                    ; preds = %1589, %1579
  %i_264 = phi i5 [ 0, %1579 ], [ %i_11_263, %1589 ]
  %exitcond2_263 = icmp eq i5 %i_264, -16
  %empty_1353 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_263 = add i5 %i_264, 1
  br i1 %exitcond2_263, label %1587, label %1589

; <label>:1589                                    ; preds = %1588
  %empty_1354 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_976 = extractvalue { i8, i1, i1 } %empty_1354, 0
  %tmp_263_1355 = zext i5 %i_264 to i64
  %plaintext_addr_264 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_263_1355
  store i8 %tmp_data_976, i8* %plaintext_addr_264, align 1
  br label %1588

; <label>:1590                                    ; preds = %1586
  %tmp_131_263 = zext i5 %i_1_263 to i64
  %out_addr_267 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_263
  %tmp_data_977 = load i8* %out_addr_267, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_977, i1 true, i1 false)
  br label %1586

; <label>:1591                                    ; preds = %1592
  %empty_1356 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_282)
  %tmp_283 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1600

; <label>:1592                                    ; preds = %1596, %1593
  %i_1_264 = phi i5 [ 0, %1593 ], [ %i_12_264, %1596 ]
  %exitcond_264 = icmp eq i5 %i_1_264, -16
  %empty_1357 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_264 = add i5 %i_1_264, 1
  br i1 %exitcond_264, label %1591, label %1596

; <label>:1593                                    ; preds = %1594
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1592

; <label>:1594                                    ; preds = %1595, %1585
  %i_265 = phi i5 [ 0, %1585 ], [ %i_11_264, %1595 ]
  %exitcond2_264 = icmp eq i5 %i_265, -16
  %empty_1358 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_264 = add i5 %i_265, 1
  br i1 %exitcond2_264, label %1593, label %1595

; <label>:1595                                    ; preds = %1594
  %empty_1359 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_978 = extractvalue { i8, i1, i1 } %empty_1359, 0
  %tmp_264_1360 = zext i5 %i_265 to i64
  %plaintext_addr_265 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_264_1360
  store i8 %tmp_data_978, i8* %plaintext_addr_265, align 1
  br label %1594

; <label>:1596                                    ; preds = %1592
  %tmp_131_264 = zext i5 %i_1_264 to i64
  %out_addr_268 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_264
  %tmp_data_979 = load i8* %out_addr_268, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_979, i1 true, i1 false)
  br label %1592

; <label>:1597                                    ; preds = %1598
  %empty_1361 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_283)
  %tmp_284 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1606

; <label>:1598                                    ; preds = %1602, %1599
  %i_1_265 = phi i5 [ 0, %1599 ], [ %i_12_265, %1602 ]
  %exitcond_265 = icmp eq i5 %i_1_265, -16
  %empty_1362 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_265 = add i5 %i_1_265, 1
  br i1 %exitcond_265, label %1597, label %1602

; <label>:1599                                    ; preds = %1600
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1598

; <label>:1600                                    ; preds = %1601, %1591
  %i_266 = phi i5 [ 0, %1591 ], [ %i_11_265, %1601 ]
  %exitcond2_265 = icmp eq i5 %i_266, -16
  %empty_1363 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_265 = add i5 %i_266, 1
  br i1 %exitcond2_265, label %1599, label %1601

; <label>:1601                                    ; preds = %1600
  %empty_1364 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_980 = extractvalue { i8, i1, i1 } %empty_1364, 0
  %tmp_265_1365 = zext i5 %i_266 to i64
  %plaintext_addr_266 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_265_1365
  store i8 %tmp_data_980, i8* %plaintext_addr_266, align 1
  br label %1600

; <label>:1602                                    ; preds = %1598
  %tmp_131_265 = zext i5 %i_1_265 to i64
  %out_addr_269 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_265
  %tmp_data_981 = load i8* %out_addr_269, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_981, i1 true, i1 false)
  br label %1598

; <label>:1603                                    ; preds = %1604
  %empty_1366 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_284)
  %tmp_285 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1612

; <label>:1604                                    ; preds = %1608, %1605
  %i_1_266 = phi i5 [ 0, %1605 ], [ %i_12_266, %1608 ]
  %exitcond_266 = icmp eq i5 %i_1_266, -16
  %empty_1367 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_266 = add i5 %i_1_266, 1
  br i1 %exitcond_266, label %1603, label %1608

; <label>:1605                                    ; preds = %1606
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1604

; <label>:1606                                    ; preds = %1607, %1597
  %i_267 = phi i5 [ 0, %1597 ], [ %i_11_266, %1607 ]
  %exitcond2_266 = icmp eq i5 %i_267, -16
  %empty_1368 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_266 = add i5 %i_267, 1
  br i1 %exitcond2_266, label %1605, label %1607

; <label>:1607                                    ; preds = %1606
  %empty_1369 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_982 = extractvalue { i8, i1, i1 } %empty_1369, 0
  %tmp_266_1370 = zext i5 %i_267 to i64
  %plaintext_addr_267 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_266_1370
  store i8 %tmp_data_982, i8* %plaintext_addr_267, align 1
  br label %1606

; <label>:1608                                    ; preds = %1604
  %tmp_131_266 = zext i5 %i_1_266 to i64
  %out_addr_270 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_266
  %tmp_data_983 = load i8* %out_addr_270, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_983, i1 true, i1 false)
  br label %1604

; <label>:1609                                    ; preds = %1610
  %empty_1371 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_285)
  %tmp_286 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1618

; <label>:1610                                    ; preds = %1614, %1611
  %i_1_267 = phi i5 [ 0, %1611 ], [ %i_12_267, %1614 ]
  %exitcond_267 = icmp eq i5 %i_1_267, -16
  %empty_1372 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_267 = add i5 %i_1_267, 1
  br i1 %exitcond_267, label %1609, label %1614

; <label>:1611                                    ; preds = %1612
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1610

; <label>:1612                                    ; preds = %1613, %1603
  %i_268 = phi i5 [ 0, %1603 ], [ %i_11_267, %1613 ]
  %exitcond2_267 = icmp eq i5 %i_268, -16
  %empty_1373 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_267 = add i5 %i_268, 1
  br i1 %exitcond2_267, label %1611, label %1613

; <label>:1613                                    ; preds = %1612
  %empty_1374 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_984 = extractvalue { i8, i1, i1 } %empty_1374, 0
  %tmp_267_1375 = zext i5 %i_268 to i64
  %plaintext_addr_268 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_267_1375
  store i8 %tmp_data_984, i8* %plaintext_addr_268, align 1
  br label %1612

; <label>:1614                                    ; preds = %1610
  %tmp_131_267 = zext i5 %i_1_267 to i64
  %out_addr_271 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_267
  %tmp_data_985 = load i8* %out_addr_271, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_985, i1 true, i1 false)
  br label %1610

; <label>:1615                                    ; preds = %1616
  %empty_1376 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_286)
  %tmp_287 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1624

; <label>:1616                                    ; preds = %1620, %1617
  %i_1_268 = phi i5 [ 0, %1617 ], [ %i_12_268, %1620 ]
  %exitcond_268 = icmp eq i5 %i_1_268, -16
  %empty_1377 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_268 = add i5 %i_1_268, 1
  br i1 %exitcond_268, label %1615, label %1620

; <label>:1617                                    ; preds = %1618
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1616

; <label>:1618                                    ; preds = %1619, %1609
  %i_269 = phi i5 [ 0, %1609 ], [ %i_11_268, %1619 ]
  %exitcond2_268 = icmp eq i5 %i_269, -16
  %empty_1378 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_268 = add i5 %i_269, 1
  br i1 %exitcond2_268, label %1617, label %1619

; <label>:1619                                    ; preds = %1618
  %empty_1379 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_986 = extractvalue { i8, i1, i1 } %empty_1379, 0
  %tmp_268_1380 = zext i5 %i_269 to i64
  %plaintext_addr_269 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_268_1380
  store i8 %tmp_data_986, i8* %plaintext_addr_269, align 1
  br label %1618

; <label>:1620                                    ; preds = %1616
  %tmp_131_268 = zext i5 %i_1_268 to i64
  %out_addr_272 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_268
  %tmp_data_987 = load i8* %out_addr_272, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_987, i1 true, i1 false)
  br label %1616

; <label>:1621                                    ; preds = %1622
  %empty_1381 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_287)
  %tmp_288 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1630

; <label>:1622                                    ; preds = %1626, %1623
  %i_1_269 = phi i5 [ 0, %1623 ], [ %i_12_269, %1626 ]
  %exitcond_269 = icmp eq i5 %i_1_269, -16
  %empty_1382 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_269 = add i5 %i_1_269, 1
  br i1 %exitcond_269, label %1621, label %1626

; <label>:1623                                    ; preds = %1624
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1622

; <label>:1624                                    ; preds = %1625, %1615
  %i_270 = phi i5 [ 0, %1615 ], [ %i_11_269, %1625 ]
  %exitcond2_269 = icmp eq i5 %i_270, -16
  %empty_1383 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_269 = add i5 %i_270, 1
  br i1 %exitcond2_269, label %1623, label %1625

; <label>:1625                                    ; preds = %1624
  %empty_1384 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_988 = extractvalue { i8, i1, i1 } %empty_1384, 0
  %tmp_269_1385 = zext i5 %i_270 to i64
  %plaintext_addr_270 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_269_1385
  store i8 %tmp_data_988, i8* %plaintext_addr_270, align 1
  br label %1624

; <label>:1626                                    ; preds = %1622
  %tmp_131_269 = zext i5 %i_1_269 to i64
  %out_addr_273 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_269
  %tmp_data_989 = load i8* %out_addr_273, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_989, i1 true, i1 false)
  br label %1622

; <label>:1627                                    ; preds = %1628
  %empty_1386 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_288)
  %tmp_289 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1636

; <label>:1628                                    ; preds = %1632, %1629
  %i_1_270 = phi i5 [ 0, %1629 ], [ %i_12_270, %1632 ]
  %exitcond_270 = icmp eq i5 %i_1_270, -16
  %empty_1387 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_270 = add i5 %i_1_270, 1
  br i1 %exitcond_270, label %1627, label %1632

; <label>:1629                                    ; preds = %1630
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1628

; <label>:1630                                    ; preds = %1631, %1621
  %i_271 = phi i5 [ 0, %1621 ], [ %i_11_270, %1631 ]
  %exitcond2_270 = icmp eq i5 %i_271, -16
  %empty_1388 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_270 = add i5 %i_271, 1
  br i1 %exitcond2_270, label %1629, label %1631

; <label>:1631                                    ; preds = %1630
  %empty_1389 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_990 = extractvalue { i8, i1, i1 } %empty_1389, 0
  %tmp_270_1390 = zext i5 %i_271 to i64
  %plaintext_addr_271 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_270_1390
  store i8 %tmp_data_990, i8* %plaintext_addr_271, align 1
  br label %1630

; <label>:1632                                    ; preds = %1628
  %tmp_131_270 = zext i5 %i_1_270 to i64
  %out_addr_274 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_270
  %tmp_data_991 = load i8* %out_addr_274, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_991, i1 true, i1 false)
  br label %1628

; <label>:1633                                    ; preds = %1634
  %empty_1391 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_289)
  %tmp_290 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1642

; <label>:1634                                    ; preds = %1638, %1635
  %i_1_271 = phi i5 [ 0, %1635 ], [ %i_12_271, %1638 ]
  %exitcond_271 = icmp eq i5 %i_1_271, -16
  %empty_1392 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_271 = add i5 %i_1_271, 1
  br i1 %exitcond_271, label %1633, label %1638

; <label>:1635                                    ; preds = %1636
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1634

; <label>:1636                                    ; preds = %1637, %1627
  %i_272 = phi i5 [ 0, %1627 ], [ %i_11_271, %1637 ]
  %exitcond2_271 = icmp eq i5 %i_272, -16
  %empty_1393 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_271 = add i5 %i_272, 1
  br i1 %exitcond2_271, label %1635, label %1637

; <label>:1637                                    ; preds = %1636
  %empty_1394 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_992 = extractvalue { i8, i1, i1 } %empty_1394, 0
  %tmp_271_1395 = zext i5 %i_272 to i64
  %plaintext_addr_272 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_271_1395
  store i8 %tmp_data_992, i8* %plaintext_addr_272, align 1
  br label %1636

; <label>:1638                                    ; preds = %1634
  %tmp_131_271 = zext i5 %i_1_271 to i64
  %out_addr_275 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_271
  %tmp_data_993 = load i8* %out_addr_275, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_993, i1 true, i1 false)
  br label %1634

; <label>:1639                                    ; preds = %1640
  %empty_1396 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_290)
  %tmp_291 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1648

; <label>:1640                                    ; preds = %1644, %1641
  %i_1_272 = phi i5 [ 0, %1641 ], [ %i_12_272, %1644 ]
  %exitcond_272 = icmp eq i5 %i_1_272, -16
  %empty_1397 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_272 = add i5 %i_1_272, 1
  br i1 %exitcond_272, label %1639, label %1644

; <label>:1641                                    ; preds = %1642
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1640

; <label>:1642                                    ; preds = %1643, %1633
  %i_273 = phi i5 [ 0, %1633 ], [ %i_11_272, %1643 ]
  %exitcond2_272 = icmp eq i5 %i_273, -16
  %empty_1398 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_272 = add i5 %i_273, 1
  br i1 %exitcond2_272, label %1641, label %1643

; <label>:1643                                    ; preds = %1642
  %empty_1399 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_994 = extractvalue { i8, i1, i1 } %empty_1399, 0
  %tmp_272_1400 = zext i5 %i_273 to i64
  %plaintext_addr_273 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_272_1400
  store i8 %tmp_data_994, i8* %plaintext_addr_273, align 1
  br label %1642

; <label>:1644                                    ; preds = %1640
  %tmp_131_272 = zext i5 %i_1_272 to i64
  %out_addr_276 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_272
  %tmp_data_995 = load i8* %out_addr_276, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_995, i1 true, i1 false)
  br label %1640

; <label>:1645                                    ; preds = %1646
  %empty_1401 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_291)
  %tmp_292 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1654

; <label>:1646                                    ; preds = %1650, %1647
  %i_1_273 = phi i5 [ 0, %1647 ], [ %i_12_273, %1650 ]
  %exitcond_273 = icmp eq i5 %i_1_273, -16
  %empty_1402 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_273 = add i5 %i_1_273, 1
  br i1 %exitcond_273, label %1645, label %1650

; <label>:1647                                    ; preds = %1648
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1646

; <label>:1648                                    ; preds = %1649, %1639
  %i_274 = phi i5 [ 0, %1639 ], [ %i_11_273, %1649 ]
  %exitcond2_273 = icmp eq i5 %i_274, -16
  %empty_1403 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_273 = add i5 %i_274, 1
  br i1 %exitcond2_273, label %1647, label %1649

; <label>:1649                                    ; preds = %1648
  %empty_1404 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_996 = extractvalue { i8, i1, i1 } %empty_1404, 0
  %tmp_273_1405 = zext i5 %i_274 to i64
  %plaintext_addr_274 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_273_1405
  store i8 %tmp_data_996, i8* %plaintext_addr_274, align 1
  br label %1648

; <label>:1650                                    ; preds = %1646
  %tmp_131_273 = zext i5 %i_1_273 to i64
  %out_addr_277 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_273
  %tmp_data_997 = load i8* %out_addr_277, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_997, i1 true, i1 false)
  br label %1646

; <label>:1651                                    ; preds = %1652
  %empty_1406 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_292)
  %tmp_293 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1660

; <label>:1652                                    ; preds = %1656, %1653
  %i_1_274 = phi i5 [ 0, %1653 ], [ %i_12_274, %1656 ]
  %exitcond_274 = icmp eq i5 %i_1_274, -16
  %empty_1407 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_274 = add i5 %i_1_274, 1
  br i1 %exitcond_274, label %1651, label %1656

; <label>:1653                                    ; preds = %1654
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1652

; <label>:1654                                    ; preds = %1655, %1645
  %i_275 = phi i5 [ 0, %1645 ], [ %i_11_274, %1655 ]
  %exitcond2_274 = icmp eq i5 %i_275, -16
  %empty_1408 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_274 = add i5 %i_275, 1
  br i1 %exitcond2_274, label %1653, label %1655

; <label>:1655                                    ; preds = %1654
  %empty_1409 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_998 = extractvalue { i8, i1, i1 } %empty_1409, 0
  %tmp_274_1410 = zext i5 %i_275 to i64
  %plaintext_addr_275 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_274_1410
  store i8 %tmp_data_998, i8* %plaintext_addr_275, align 1
  br label %1654

; <label>:1656                                    ; preds = %1652
  %tmp_131_274 = zext i5 %i_1_274 to i64
  %out_addr_278 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_274
  %tmp_data_999 = load i8* %out_addr_278, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_999, i1 true, i1 false)
  br label %1652

; <label>:1657                                    ; preds = %1658
  %empty_1411 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_293)
  %tmp_294 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1666

; <label>:1658                                    ; preds = %1662, %1659
  %i_1_275 = phi i5 [ 0, %1659 ], [ %i_12_275, %1662 ]
  %exitcond_275 = icmp eq i5 %i_1_275, -16
  %empty_1412 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_275 = add i5 %i_1_275, 1
  br i1 %exitcond_275, label %1657, label %1662

; <label>:1659                                    ; preds = %1660
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1658

; <label>:1660                                    ; preds = %1661, %1651
  %i_276 = phi i5 [ 0, %1651 ], [ %i_11_275, %1661 ]
  %exitcond2_275 = icmp eq i5 %i_276, -16
  %empty_1413 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_275 = add i5 %i_276, 1
  br i1 %exitcond2_275, label %1659, label %1661

; <label>:1661                                    ; preds = %1660
  %empty_1414 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1000 = extractvalue { i8, i1, i1 } %empty_1414, 0
  %tmp_275_1415 = zext i5 %i_276 to i64
  %plaintext_addr_276 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_275_1415
  store i8 %tmp_data_1000, i8* %plaintext_addr_276, align 1
  br label %1660

; <label>:1662                                    ; preds = %1658
  %tmp_131_275 = zext i5 %i_1_275 to i64
  %out_addr_279 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_275
  %tmp_data_1001 = load i8* %out_addr_279, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1001, i1 true, i1 false)
  br label %1658

; <label>:1663                                    ; preds = %1664
  %empty_1416 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_294)
  %tmp_295 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1672

; <label>:1664                                    ; preds = %1668, %1665
  %i_1_276 = phi i5 [ 0, %1665 ], [ %i_12_276, %1668 ]
  %exitcond_276 = icmp eq i5 %i_1_276, -16
  %empty_1417 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_276 = add i5 %i_1_276, 1
  br i1 %exitcond_276, label %1663, label %1668

; <label>:1665                                    ; preds = %1666
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1664

; <label>:1666                                    ; preds = %1667, %1657
  %i_277 = phi i5 [ 0, %1657 ], [ %i_11_276, %1667 ]
  %exitcond2_276 = icmp eq i5 %i_277, -16
  %empty_1418 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_276 = add i5 %i_277, 1
  br i1 %exitcond2_276, label %1665, label %1667

; <label>:1667                                    ; preds = %1666
  %empty_1419 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1002 = extractvalue { i8, i1, i1 } %empty_1419, 0
  %tmp_276_1420 = zext i5 %i_277 to i64
  %plaintext_addr_277 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_276_1420
  store i8 %tmp_data_1002, i8* %plaintext_addr_277, align 1
  br label %1666

; <label>:1668                                    ; preds = %1664
  %tmp_131_276 = zext i5 %i_1_276 to i64
  %out_addr_280 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_276
  %tmp_data_1003 = load i8* %out_addr_280, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1003, i1 true, i1 false)
  br label %1664

; <label>:1669                                    ; preds = %1670
  %empty_1421 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_295)
  %tmp_296 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1678

; <label>:1670                                    ; preds = %1674, %1671
  %i_1_277 = phi i5 [ 0, %1671 ], [ %i_12_277, %1674 ]
  %exitcond_277 = icmp eq i5 %i_1_277, -16
  %empty_1422 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_277 = add i5 %i_1_277, 1
  br i1 %exitcond_277, label %1669, label %1674

; <label>:1671                                    ; preds = %1672
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1670

; <label>:1672                                    ; preds = %1673, %1663
  %i_278 = phi i5 [ 0, %1663 ], [ %i_11_277, %1673 ]
  %exitcond2_277 = icmp eq i5 %i_278, -16
  %empty_1423 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_277 = add i5 %i_278, 1
  br i1 %exitcond2_277, label %1671, label %1673

; <label>:1673                                    ; preds = %1672
  %empty_1424 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1004 = extractvalue { i8, i1, i1 } %empty_1424, 0
  %tmp_277_1425 = zext i5 %i_278 to i64
  %plaintext_addr_278 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_277_1425
  store i8 %tmp_data_1004, i8* %plaintext_addr_278, align 1
  br label %1672

; <label>:1674                                    ; preds = %1670
  %tmp_131_277 = zext i5 %i_1_277 to i64
  %out_addr_281 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_277
  %tmp_data_1005 = load i8* %out_addr_281, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1005, i1 true, i1 false)
  br label %1670

; <label>:1675                                    ; preds = %1676
  %empty_1426 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_296)
  %tmp_297 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1684

; <label>:1676                                    ; preds = %1680, %1677
  %i_1_278 = phi i5 [ 0, %1677 ], [ %i_12_278, %1680 ]
  %exitcond_278 = icmp eq i5 %i_1_278, -16
  %empty_1427 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_278 = add i5 %i_1_278, 1
  br i1 %exitcond_278, label %1675, label %1680

; <label>:1677                                    ; preds = %1678
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1676

; <label>:1678                                    ; preds = %1679, %1669
  %i_279 = phi i5 [ 0, %1669 ], [ %i_11_278, %1679 ]
  %exitcond2_278 = icmp eq i5 %i_279, -16
  %empty_1428 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_278 = add i5 %i_279, 1
  br i1 %exitcond2_278, label %1677, label %1679

; <label>:1679                                    ; preds = %1678
  %empty_1429 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1006 = extractvalue { i8, i1, i1 } %empty_1429, 0
  %tmp_278_1430 = zext i5 %i_279 to i64
  %plaintext_addr_279 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_278_1430
  store i8 %tmp_data_1006, i8* %plaintext_addr_279, align 1
  br label %1678

; <label>:1680                                    ; preds = %1676
  %tmp_131_278 = zext i5 %i_1_278 to i64
  %out_addr_282 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_278
  %tmp_data_1007 = load i8* %out_addr_282, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1007, i1 true, i1 false)
  br label %1676

; <label>:1681                                    ; preds = %1682
  %empty_1431 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_297)
  %tmp_298 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1690

; <label>:1682                                    ; preds = %1686, %1683
  %i_1_279 = phi i5 [ 0, %1683 ], [ %i_12_279, %1686 ]
  %exitcond_279 = icmp eq i5 %i_1_279, -16
  %empty_1432 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_279 = add i5 %i_1_279, 1
  br i1 %exitcond_279, label %1681, label %1686

; <label>:1683                                    ; preds = %1684
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1682

; <label>:1684                                    ; preds = %1685, %1675
  %i_280 = phi i5 [ 0, %1675 ], [ %i_11_279, %1685 ]
  %exitcond2_279 = icmp eq i5 %i_280, -16
  %empty_1433 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_279 = add i5 %i_280, 1
  br i1 %exitcond2_279, label %1683, label %1685

; <label>:1685                                    ; preds = %1684
  %empty_1434 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1008 = extractvalue { i8, i1, i1 } %empty_1434, 0
  %tmp_279_1435 = zext i5 %i_280 to i64
  %plaintext_addr_280 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_279_1435
  store i8 %tmp_data_1008, i8* %plaintext_addr_280, align 1
  br label %1684

; <label>:1686                                    ; preds = %1682
  %tmp_131_279 = zext i5 %i_1_279 to i64
  %out_addr_283 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_279
  %tmp_data_1009 = load i8* %out_addr_283, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1009, i1 true, i1 false)
  br label %1682

; <label>:1687                                    ; preds = %1688
  %empty_1436 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_298)
  %tmp_299 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1696

; <label>:1688                                    ; preds = %1692, %1689
  %i_1_280 = phi i5 [ 0, %1689 ], [ %i_12_280, %1692 ]
  %exitcond_280 = icmp eq i5 %i_1_280, -16
  %empty_1437 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_280 = add i5 %i_1_280, 1
  br i1 %exitcond_280, label %1687, label %1692

; <label>:1689                                    ; preds = %1690
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1688

; <label>:1690                                    ; preds = %1691, %1681
  %i_281 = phi i5 [ 0, %1681 ], [ %i_11_280, %1691 ]
  %exitcond2_280 = icmp eq i5 %i_281, -16
  %empty_1438 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_280 = add i5 %i_281, 1
  br i1 %exitcond2_280, label %1689, label %1691

; <label>:1691                                    ; preds = %1690
  %empty_1439 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1010 = extractvalue { i8, i1, i1 } %empty_1439, 0
  %tmp_280_1440 = zext i5 %i_281 to i64
  %plaintext_addr_281 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_280_1440
  store i8 %tmp_data_1010, i8* %plaintext_addr_281, align 1
  br label %1690

; <label>:1692                                    ; preds = %1688
  %tmp_131_280 = zext i5 %i_1_280 to i64
  %out_addr_284 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_280
  %tmp_data_1011 = load i8* %out_addr_284, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1011, i1 true, i1 false)
  br label %1688

; <label>:1693                                    ; preds = %1694
  %empty_1441 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_299)
  %tmp_300 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1702

; <label>:1694                                    ; preds = %1698, %1695
  %i_1_281 = phi i5 [ 0, %1695 ], [ %i_12_281, %1698 ]
  %exitcond_281 = icmp eq i5 %i_1_281, -16
  %empty_1442 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_281 = add i5 %i_1_281, 1
  br i1 %exitcond_281, label %1693, label %1698

; <label>:1695                                    ; preds = %1696
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1694

; <label>:1696                                    ; preds = %1697, %1687
  %i_282 = phi i5 [ 0, %1687 ], [ %i_11_281, %1697 ]
  %exitcond2_281 = icmp eq i5 %i_282, -16
  %empty_1443 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_281 = add i5 %i_282, 1
  br i1 %exitcond2_281, label %1695, label %1697

; <label>:1697                                    ; preds = %1696
  %empty_1444 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1012 = extractvalue { i8, i1, i1 } %empty_1444, 0
  %tmp_281_1445 = zext i5 %i_282 to i64
  %plaintext_addr_282 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_281_1445
  store i8 %tmp_data_1012, i8* %plaintext_addr_282, align 1
  br label %1696

; <label>:1698                                    ; preds = %1694
  %tmp_131_281 = zext i5 %i_1_281 to i64
  %out_addr_285 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_281
  %tmp_data_1013 = load i8* %out_addr_285, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1013, i1 true, i1 false)
  br label %1694

; <label>:1699                                    ; preds = %1700
  %empty_1446 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_300)
  %tmp_301 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1708

; <label>:1700                                    ; preds = %1704, %1701
  %i_1_282 = phi i5 [ 0, %1701 ], [ %i_12_282, %1704 ]
  %exitcond_282 = icmp eq i5 %i_1_282, -16
  %empty_1447 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_282 = add i5 %i_1_282, 1
  br i1 %exitcond_282, label %1699, label %1704

; <label>:1701                                    ; preds = %1702
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1700

; <label>:1702                                    ; preds = %1703, %1693
  %i_283 = phi i5 [ 0, %1693 ], [ %i_11_282, %1703 ]
  %exitcond2_282 = icmp eq i5 %i_283, -16
  %empty_1448 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_282 = add i5 %i_283, 1
  br i1 %exitcond2_282, label %1701, label %1703

; <label>:1703                                    ; preds = %1702
  %empty_1449 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1014 = extractvalue { i8, i1, i1 } %empty_1449, 0
  %tmp_282_1450 = zext i5 %i_283 to i64
  %plaintext_addr_283 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_282_1450
  store i8 %tmp_data_1014, i8* %plaintext_addr_283, align 1
  br label %1702

; <label>:1704                                    ; preds = %1700
  %tmp_131_282 = zext i5 %i_1_282 to i64
  %out_addr_286 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_282
  %tmp_data_1015 = load i8* %out_addr_286, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1015, i1 true, i1 false)
  br label %1700

; <label>:1705                                    ; preds = %1706
  %empty_1451 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_301)
  %tmp_302 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1714

; <label>:1706                                    ; preds = %1710, %1707
  %i_1_283 = phi i5 [ 0, %1707 ], [ %i_12_283, %1710 ]
  %exitcond_283 = icmp eq i5 %i_1_283, -16
  %empty_1452 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_283 = add i5 %i_1_283, 1
  br i1 %exitcond_283, label %1705, label %1710

; <label>:1707                                    ; preds = %1708
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1706

; <label>:1708                                    ; preds = %1709, %1699
  %i_284 = phi i5 [ 0, %1699 ], [ %i_11_283, %1709 ]
  %exitcond2_283 = icmp eq i5 %i_284, -16
  %empty_1453 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_283 = add i5 %i_284, 1
  br i1 %exitcond2_283, label %1707, label %1709

; <label>:1709                                    ; preds = %1708
  %empty_1454 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1016 = extractvalue { i8, i1, i1 } %empty_1454, 0
  %tmp_283_1455 = zext i5 %i_284 to i64
  %plaintext_addr_284 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_283_1455
  store i8 %tmp_data_1016, i8* %plaintext_addr_284, align 1
  br label %1708

; <label>:1710                                    ; preds = %1706
  %tmp_131_283 = zext i5 %i_1_283 to i64
  %out_addr_287 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_283
  %tmp_data_1017 = load i8* %out_addr_287, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1017, i1 true, i1 false)
  br label %1706

; <label>:1711                                    ; preds = %1712
  %empty_1456 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_302)
  %tmp_303 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1720

; <label>:1712                                    ; preds = %1716, %1713
  %i_1_284 = phi i5 [ 0, %1713 ], [ %i_12_284, %1716 ]
  %exitcond_284 = icmp eq i5 %i_1_284, -16
  %empty_1457 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_284 = add i5 %i_1_284, 1
  br i1 %exitcond_284, label %1711, label %1716

; <label>:1713                                    ; preds = %1714
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1712

; <label>:1714                                    ; preds = %1715, %1705
  %i_285 = phi i5 [ 0, %1705 ], [ %i_11_284, %1715 ]
  %exitcond2_284 = icmp eq i5 %i_285, -16
  %empty_1458 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_284 = add i5 %i_285, 1
  br i1 %exitcond2_284, label %1713, label %1715

; <label>:1715                                    ; preds = %1714
  %empty_1459 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1018 = extractvalue { i8, i1, i1 } %empty_1459, 0
  %tmp_284_1460 = zext i5 %i_285 to i64
  %plaintext_addr_285 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_284_1460
  store i8 %tmp_data_1018, i8* %plaintext_addr_285, align 1
  br label %1714

; <label>:1716                                    ; preds = %1712
  %tmp_131_284 = zext i5 %i_1_284 to i64
  %out_addr_288 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_284
  %tmp_data_1019 = load i8* %out_addr_288, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1019, i1 true, i1 false)
  br label %1712

; <label>:1717                                    ; preds = %1718
  %empty_1461 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_303)
  %tmp_304 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1726

; <label>:1718                                    ; preds = %1722, %1719
  %i_1_285 = phi i5 [ 0, %1719 ], [ %i_12_285, %1722 ]
  %exitcond_285 = icmp eq i5 %i_1_285, -16
  %empty_1462 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_285 = add i5 %i_1_285, 1
  br i1 %exitcond_285, label %1717, label %1722

; <label>:1719                                    ; preds = %1720
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1718

; <label>:1720                                    ; preds = %1721, %1711
  %i_286 = phi i5 [ 0, %1711 ], [ %i_11_285, %1721 ]
  %exitcond2_285 = icmp eq i5 %i_286, -16
  %empty_1463 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_285 = add i5 %i_286, 1
  br i1 %exitcond2_285, label %1719, label %1721

; <label>:1721                                    ; preds = %1720
  %empty_1464 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1020 = extractvalue { i8, i1, i1 } %empty_1464, 0
  %tmp_285_1465 = zext i5 %i_286 to i64
  %plaintext_addr_286 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_285_1465
  store i8 %tmp_data_1020, i8* %plaintext_addr_286, align 1
  br label %1720

; <label>:1722                                    ; preds = %1718
  %tmp_131_285 = zext i5 %i_1_285 to i64
  %out_addr_289 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_285
  %tmp_data_1021 = load i8* %out_addr_289, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1021, i1 true, i1 false)
  br label %1718

; <label>:1723                                    ; preds = %1724
  %empty_1466 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_304)
  %tmp_305 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1732

; <label>:1724                                    ; preds = %1728, %1725
  %i_1_286 = phi i5 [ 0, %1725 ], [ %i_12_286, %1728 ]
  %exitcond_286 = icmp eq i5 %i_1_286, -16
  %empty_1467 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_286 = add i5 %i_1_286, 1
  br i1 %exitcond_286, label %1723, label %1728

; <label>:1725                                    ; preds = %1726
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1724

; <label>:1726                                    ; preds = %1727, %1717
  %i_287 = phi i5 [ 0, %1717 ], [ %i_11_286, %1727 ]
  %exitcond2_286 = icmp eq i5 %i_287, -16
  %empty_1468 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_286 = add i5 %i_287, 1
  br i1 %exitcond2_286, label %1725, label %1727

; <label>:1727                                    ; preds = %1726
  %empty_1469 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1022 = extractvalue { i8, i1, i1 } %empty_1469, 0
  %tmp_286_1470 = zext i5 %i_287 to i64
  %plaintext_addr_287 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_286_1470
  store i8 %tmp_data_1022, i8* %plaintext_addr_287, align 1
  br label %1726

; <label>:1728                                    ; preds = %1724
  %tmp_131_286 = zext i5 %i_1_286 to i64
  %out_addr_290 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_286
  %tmp_data_1023 = load i8* %out_addr_290, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1023, i1 true, i1 false)
  br label %1724

; <label>:1729                                    ; preds = %1730
  %empty_1471 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_305)
  %tmp_306 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1738

; <label>:1730                                    ; preds = %1734, %1731
  %i_1_287 = phi i5 [ 0, %1731 ], [ %i_12_287, %1734 ]
  %exitcond_287 = icmp eq i5 %i_1_287, -16
  %empty_1472 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_287 = add i5 %i_1_287, 1
  br i1 %exitcond_287, label %1729, label %1734

; <label>:1731                                    ; preds = %1732
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1730

; <label>:1732                                    ; preds = %1733, %1723
  %i_288 = phi i5 [ 0, %1723 ], [ %i_11_287, %1733 ]
  %exitcond2_287 = icmp eq i5 %i_288, -16
  %empty_1473 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_287 = add i5 %i_288, 1
  br i1 %exitcond2_287, label %1731, label %1733

; <label>:1733                                    ; preds = %1732
  %empty_1474 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1024 = extractvalue { i8, i1, i1 } %empty_1474, 0
  %tmp_287_1475 = zext i5 %i_288 to i64
  %plaintext_addr_288 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_287_1475
  store i8 %tmp_data_1024, i8* %plaintext_addr_288, align 1
  br label %1732

; <label>:1734                                    ; preds = %1730
  %tmp_131_287 = zext i5 %i_1_287 to i64
  %out_addr_291 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_287
  %tmp_data_1025 = load i8* %out_addr_291, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1025, i1 true, i1 false)
  br label %1730

; <label>:1735                                    ; preds = %1736
  %empty_1476 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_306)
  %tmp_307 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1744

; <label>:1736                                    ; preds = %1740, %1737
  %i_1_288 = phi i5 [ 0, %1737 ], [ %i_12_288, %1740 ]
  %exitcond_288 = icmp eq i5 %i_1_288, -16
  %empty_1477 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_288 = add i5 %i_1_288, 1
  br i1 %exitcond_288, label %1735, label %1740

; <label>:1737                                    ; preds = %1738
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1736

; <label>:1738                                    ; preds = %1739, %1729
  %i_289 = phi i5 [ 0, %1729 ], [ %i_11_288, %1739 ]
  %exitcond2_288 = icmp eq i5 %i_289, -16
  %empty_1478 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_288 = add i5 %i_289, 1
  br i1 %exitcond2_288, label %1737, label %1739

; <label>:1739                                    ; preds = %1738
  %empty_1479 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1026 = extractvalue { i8, i1, i1 } %empty_1479, 0
  %tmp_288_1480 = zext i5 %i_289 to i64
  %plaintext_addr_289 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_288_1480
  store i8 %tmp_data_1026, i8* %plaintext_addr_289, align 1
  br label %1738

; <label>:1740                                    ; preds = %1736
  %tmp_131_288 = zext i5 %i_1_288 to i64
  %out_addr_292 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_288
  %tmp_data_1027 = load i8* %out_addr_292, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1027, i1 true, i1 false)
  br label %1736

; <label>:1741                                    ; preds = %1742
  %empty_1481 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_307)
  %tmp_308 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1750

; <label>:1742                                    ; preds = %1746, %1743
  %i_1_289 = phi i5 [ 0, %1743 ], [ %i_12_289, %1746 ]
  %exitcond_289 = icmp eq i5 %i_1_289, -16
  %empty_1482 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_289 = add i5 %i_1_289, 1
  br i1 %exitcond_289, label %1741, label %1746

; <label>:1743                                    ; preds = %1744
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1742

; <label>:1744                                    ; preds = %1745, %1735
  %i_290 = phi i5 [ 0, %1735 ], [ %i_11_289, %1745 ]
  %exitcond2_289 = icmp eq i5 %i_290, -16
  %empty_1483 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_289 = add i5 %i_290, 1
  br i1 %exitcond2_289, label %1743, label %1745

; <label>:1745                                    ; preds = %1744
  %empty_1484 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1028 = extractvalue { i8, i1, i1 } %empty_1484, 0
  %tmp_289_1485 = zext i5 %i_290 to i64
  %plaintext_addr_290 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_289_1485
  store i8 %tmp_data_1028, i8* %plaintext_addr_290, align 1
  br label %1744

; <label>:1746                                    ; preds = %1742
  %tmp_131_289 = zext i5 %i_1_289 to i64
  %out_addr_293 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_289
  %tmp_data_1029 = load i8* %out_addr_293, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1029, i1 true, i1 false)
  br label %1742

; <label>:1747                                    ; preds = %1748
  %empty_1486 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_308)
  %tmp_309 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1756

; <label>:1748                                    ; preds = %1752, %1749
  %i_1_290 = phi i5 [ 0, %1749 ], [ %i_12_290, %1752 ]
  %exitcond_290 = icmp eq i5 %i_1_290, -16
  %empty_1487 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_290 = add i5 %i_1_290, 1
  br i1 %exitcond_290, label %1747, label %1752

; <label>:1749                                    ; preds = %1750
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1748

; <label>:1750                                    ; preds = %1751, %1741
  %i_291 = phi i5 [ 0, %1741 ], [ %i_11_290, %1751 ]
  %exitcond2_290 = icmp eq i5 %i_291, -16
  %empty_1488 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_290 = add i5 %i_291, 1
  br i1 %exitcond2_290, label %1749, label %1751

; <label>:1751                                    ; preds = %1750
  %empty_1489 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1030 = extractvalue { i8, i1, i1 } %empty_1489, 0
  %tmp_290_1490 = zext i5 %i_291 to i64
  %plaintext_addr_291 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_290_1490
  store i8 %tmp_data_1030, i8* %plaintext_addr_291, align 1
  br label %1750

; <label>:1752                                    ; preds = %1748
  %tmp_131_290 = zext i5 %i_1_290 to i64
  %out_addr_294 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_290
  %tmp_data_1031 = load i8* %out_addr_294, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1031, i1 true, i1 false)
  br label %1748

; <label>:1753                                    ; preds = %1754
  %empty_1491 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_309)
  %tmp_310 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1762

; <label>:1754                                    ; preds = %1758, %1755
  %i_1_291 = phi i5 [ 0, %1755 ], [ %i_12_291, %1758 ]
  %exitcond_291 = icmp eq i5 %i_1_291, -16
  %empty_1492 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_291 = add i5 %i_1_291, 1
  br i1 %exitcond_291, label %1753, label %1758

; <label>:1755                                    ; preds = %1756
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1754

; <label>:1756                                    ; preds = %1757, %1747
  %i_292 = phi i5 [ 0, %1747 ], [ %i_11_291, %1757 ]
  %exitcond2_291 = icmp eq i5 %i_292, -16
  %empty_1493 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_291 = add i5 %i_292, 1
  br i1 %exitcond2_291, label %1755, label %1757

; <label>:1757                                    ; preds = %1756
  %empty_1494 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1032 = extractvalue { i8, i1, i1 } %empty_1494, 0
  %tmp_291_1495 = zext i5 %i_292 to i64
  %plaintext_addr_292 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_291_1495
  store i8 %tmp_data_1032, i8* %plaintext_addr_292, align 1
  br label %1756

; <label>:1758                                    ; preds = %1754
  %tmp_131_291 = zext i5 %i_1_291 to i64
  %out_addr_295 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_291
  %tmp_data_1033 = load i8* %out_addr_295, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1033, i1 true, i1 false)
  br label %1754

; <label>:1759                                    ; preds = %1760
  %empty_1496 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_310)
  %tmp_311 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1768

; <label>:1760                                    ; preds = %1764, %1761
  %i_1_292 = phi i5 [ 0, %1761 ], [ %i_12_292, %1764 ]
  %exitcond_292 = icmp eq i5 %i_1_292, -16
  %empty_1497 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_292 = add i5 %i_1_292, 1
  br i1 %exitcond_292, label %1759, label %1764

; <label>:1761                                    ; preds = %1762
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1760

; <label>:1762                                    ; preds = %1763, %1753
  %i_293 = phi i5 [ 0, %1753 ], [ %i_11_292, %1763 ]
  %exitcond2_292 = icmp eq i5 %i_293, -16
  %empty_1498 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_292 = add i5 %i_293, 1
  br i1 %exitcond2_292, label %1761, label %1763

; <label>:1763                                    ; preds = %1762
  %empty_1499 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1034 = extractvalue { i8, i1, i1 } %empty_1499, 0
  %tmp_292_1500 = zext i5 %i_293 to i64
  %plaintext_addr_293 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_292_1500
  store i8 %tmp_data_1034, i8* %plaintext_addr_293, align 1
  br label %1762

; <label>:1764                                    ; preds = %1760
  %tmp_131_292 = zext i5 %i_1_292 to i64
  %out_addr_296 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_292
  %tmp_data_1035 = load i8* %out_addr_296, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1035, i1 true, i1 false)
  br label %1760

; <label>:1765                                    ; preds = %1766
  %empty_1501 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_311)
  %tmp_312 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1774

; <label>:1766                                    ; preds = %1770, %1767
  %i_1_293 = phi i5 [ 0, %1767 ], [ %i_12_293, %1770 ]
  %exitcond_293 = icmp eq i5 %i_1_293, -16
  %empty_1502 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_293 = add i5 %i_1_293, 1
  br i1 %exitcond_293, label %1765, label %1770

; <label>:1767                                    ; preds = %1768
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1766

; <label>:1768                                    ; preds = %1769, %1759
  %i_294 = phi i5 [ 0, %1759 ], [ %i_11_293, %1769 ]
  %exitcond2_293 = icmp eq i5 %i_294, -16
  %empty_1503 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_293 = add i5 %i_294, 1
  br i1 %exitcond2_293, label %1767, label %1769

; <label>:1769                                    ; preds = %1768
  %empty_1504 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1036 = extractvalue { i8, i1, i1 } %empty_1504, 0
  %tmp_293_1505 = zext i5 %i_294 to i64
  %plaintext_addr_294 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_293_1505
  store i8 %tmp_data_1036, i8* %plaintext_addr_294, align 1
  br label %1768

; <label>:1770                                    ; preds = %1766
  %tmp_131_293 = zext i5 %i_1_293 to i64
  %out_addr_297 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_293
  %tmp_data_1037 = load i8* %out_addr_297, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1037, i1 true, i1 false)
  br label %1766

; <label>:1771                                    ; preds = %1772
  %empty_1506 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_312)
  %tmp_313 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1780

; <label>:1772                                    ; preds = %1776, %1773
  %i_1_294 = phi i5 [ 0, %1773 ], [ %i_12_294, %1776 ]
  %exitcond_294 = icmp eq i5 %i_1_294, -16
  %empty_1507 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_294 = add i5 %i_1_294, 1
  br i1 %exitcond_294, label %1771, label %1776

; <label>:1773                                    ; preds = %1774
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1772

; <label>:1774                                    ; preds = %1775, %1765
  %i_295 = phi i5 [ 0, %1765 ], [ %i_11_294, %1775 ]
  %exitcond2_294 = icmp eq i5 %i_295, -16
  %empty_1508 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_294 = add i5 %i_295, 1
  br i1 %exitcond2_294, label %1773, label %1775

; <label>:1775                                    ; preds = %1774
  %empty_1509 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1038 = extractvalue { i8, i1, i1 } %empty_1509, 0
  %tmp_294_1510 = zext i5 %i_295 to i64
  %plaintext_addr_295 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_294_1510
  store i8 %tmp_data_1038, i8* %plaintext_addr_295, align 1
  br label %1774

; <label>:1776                                    ; preds = %1772
  %tmp_131_294 = zext i5 %i_1_294 to i64
  %out_addr_298 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_294
  %tmp_data_1039 = load i8* %out_addr_298, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1039, i1 true, i1 false)
  br label %1772

; <label>:1777                                    ; preds = %1778
  %empty_1511 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_313)
  %tmp_314 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1786

; <label>:1778                                    ; preds = %1782, %1779
  %i_1_295 = phi i5 [ 0, %1779 ], [ %i_12_295, %1782 ]
  %exitcond_295 = icmp eq i5 %i_1_295, -16
  %empty_1512 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_295 = add i5 %i_1_295, 1
  br i1 %exitcond_295, label %1777, label %1782

; <label>:1779                                    ; preds = %1780
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1778

; <label>:1780                                    ; preds = %1781, %1771
  %i_296 = phi i5 [ 0, %1771 ], [ %i_11_295, %1781 ]
  %exitcond2_295 = icmp eq i5 %i_296, -16
  %empty_1513 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_295 = add i5 %i_296, 1
  br i1 %exitcond2_295, label %1779, label %1781

; <label>:1781                                    ; preds = %1780
  %empty_1514 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1040 = extractvalue { i8, i1, i1 } %empty_1514, 0
  %tmp_295_1515 = zext i5 %i_296 to i64
  %plaintext_addr_296 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_295_1515
  store i8 %tmp_data_1040, i8* %plaintext_addr_296, align 1
  br label %1780

; <label>:1782                                    ; preds = %1778
  %tmp_131_295 = zext i5 %i_1_295 to i64
  %out_addr_299 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_295
  %tmp_data_1041 = load i8* %out_addr_299, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1041, i1 true, i1 false)
  br label %1778

; <label>:1783                                    ; preds = %1784
  %empty_1516 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_314)
  %tmp_315 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1792

; <label>:1784                                    ; preds = %1788, %1785
  %i_1_296 = phi i5 [ 0, %1785 ], [ %i_12_296, %1788 ]
  %exitcond_296 = icmp eq i5 %i_1_296, -16
  %empty_1517 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_296 = add i5 %i_1_296, 1
  br i1 %exitcond_296, label %1783, label %1788

; <label>:1785                                    ; preds = %1786
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1784

; <label>:1786                                    ; preds = %1787, %1777
  %i_297 = phi i5 [ 0, %1777 ], [ %i_11_296, %1787 ]
  %exitcond2_296 = icmp eq i5 %i_297, -16
  %empty_1518 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_296 = add i5 %i_297, 1
  br i1 %exitcond2_296, label %1785, label %1787

; <label>:1787                                    ; preds = %1786
  %empty_1519 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1042 = extractvalue { i8, i1, i1 } %empty_1519, 0
  %tmp_296_1520 = zext i5 %i_297 to i64
  %plaintext_addr_297 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_296_1520
  store i8 %tmp_data_1042, i8* %plaintext_addr_297, align 1
  br label %1786

; <label>:1788                                    ; preds = %1784
  %tmp_131_296 = zext i5 %i_1_296 to i64
  %out_addr_300 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_296
  %tmp_data_1043 = load i8* %out_addr_300, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1043, i1 true, i1 false)
  br label %1784

; <label>:1789                                    ; preds = %1790
  %empty_1521 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_315)
  %tmp_316 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1798

; <label>:1790                                    ; preds = %1794, %1791
  %i_1_297 = phi i5 [ 0, %1791 ], [ %i_12_297, %1794 ]
  %exitcond_297 = icmp eq i5 %i_1_297, -16
  %empty_1522 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_297 = add i5 %i_1_297, 1
  br i1 %exitcond_297, label %1789, label %1794

; <label>:1791                                    ; preds = %1792
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1790

; <label>:1792                                    ; preds = %1793, %1783
  %i_298 = phi i5 [ 0, %1783 ], [ %i_11_297, %1793 ]
  %exitcond2_297 = icmp eq i5 %i_298, -16
  %empty_1523 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_297 = add i5 %i_298, 1
  br i1 %exitcond2_297, label %1791, label %1793

; <label>:1793                                    ; preds = %1792
  %empty_1524 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1044 = extractvalue { i8, i1, i1 } %empty_1524, 0
  %tmp_297_1525 = zext i5 %i_298 to i64
  %plaintext_addr_298 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_297_1525
  store i8 %tmp_data_1044, i8* %plaintext_addr_298, align 1
  br label %1792

; <label>:1794                                    ; preds = %1790
  %tmp_131_297 = zext i5 %i_1_297 to i64
  %out_addr_301 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_297
  %tmp_data_1045 = load i8* %out_addr_301, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1045, i1 true, i1 false)
  br label %1790

; <label>:1795                                    ; preds = %1796
  %empty_1526 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_316)
  %tmp_317 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1804

; <label>:1796                                    ; preds = %1800, %1797
  %i_1_298 = phi i5 [ 0, %1797 ], [ %i_12_298, %1800 ]
  %exitcond_298 = icmp eq i5 %i_1_298, -16
  %empty_1527 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_298 = add i5 %i_1_298, 1
  br i1 %exitcond_298, label %1795, label %1800

; <label>:1797                                    ; preds = %1798
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1796

; <label>:1798                                    ; preds = %1799, %1789
  %i_299 = phi i5 [ 0, %1789 ], [ %i_11_298, %1799 ]
  %exitcond2_298 = icmp eq i5 %i_299, -16
  %empty_1528 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_298 = add i5 %i_299, 1
  br i1 %exitcond2_298, label %1797, label %1799

; <label>:1799                                    ; preds = %1798
  %empty_1529 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1046 = extractvalue { i8, i1, i1 } %empty_1529, 0
  %tmp_298_1530 = zext i5 %i_299 to i64
  %plaintext_addr_299 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_298_1530
  store i8 %tmp_data_1046, i8* %plaintext_addr_299, align 1
  br label %1798

; <label>:1800                                    ; preds = %1796
  %tmp_131_298 = zext i5 %i_1_298 to i64
  %out_addr_302 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_298
  %tmp_data_1047 = load i8* %out_addr_302, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1047, i1 true, i1 false)
  br label %1796

; <label>:1801                                    ; preds = %1802
  %empty_1531 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_317)
  %tmp_318 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1810

; <label>:1802                                    ; preds = %1806, %1803
  %i_1_299 = phi i5 [ 0, %1803 ], [ %i_12_299, %1806 ]
  %exitcond_299 = icmp eq i5 %i_1_299, -16
  %empty_1532 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_299 = add i5 %i_1_299, 1
  br i1 %exitcond_299, label %1801, label %1806

; <label>:1803                                    ; preds = %1804
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1802

; <label>:1804                                    ; preds = %1805, %1795
  %i_300 = phi i5 [ 0, %1795 ], [ %i_11_299, %1805 ]
  %exitcond2_299 = icmp eq i5 %i_300, -16
  %empty_1533 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_299 = add i5 %i_300, 1
  br i1 %exitcond2_299, label %1803, label %1805

; <label>:1805                                    ; preds = %1804
  %empty_1534 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1048 = extractvalue { i8, i1, i1 } %empty_1534, 0
  %tmp_299_1535 = zext i5 %i_300 to i64
  %plaintext_addr_300 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_299_1535
  store i8 %tmp_data_1048, i8* %plaintext_addr_300, align 1
  br label %1804

; <label>:1806                                    ; preds = %1802
  %tmp_131_299 = zext i5 %i_1_299 to i64
  %out_addr_303 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_299
  %tmp_data_1049 = load i8* %out_addr_303, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1049, i1 true, i1 false)
  br label %1802

; <label>:1807                                    ; preds = %1808
  %empty_1536 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_318)
  %tmp_319 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1816

; <label>:1808                                    ; preds = %1812, %1809
  %i_1_300 = phi i5 [ 0, %1809 ], [ %i_12_300, %1812 ]
  %exitcond_300 = icmp eq i5 %i_1_300, -16
  %empty_1537 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_300 = add i5 %i_1_300, 1
  br i1 %exitcond_300, label %1807, label %1812

; <label>:1809                                    ; preds = %1810
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1808

; <label>:1810                                    ; preds = %1811, %1801
  %i_301 = phi i5 [ 0, %1801 ], [ %i_11_300, %1811 ]
  %exitcond2_300 = icmp eq i5 %i_301, -16
  %empty_1538 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_300 = add i5 %i_301, 1
  br i1 %exitcond2_300, label %1809, label %1811

; <label>:1811                                    ; preds = %1810
  %empty_1539 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1050 = extractvalue { i8, i1, i1 } %empty_1539, 0
  %tmp_300_1540 = zext i5 %i_301 to i64
  %plaintext_addr_301 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_300_1540
  store i8 %tmp_data_1050, i8* %plaintext_addr_301, align 1
  br label %1810

; <label>:1812                                    ; preds = %1808
  %tmp_131_300 = zext i5 %i_1_300 to i64
  %out_addr_304 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_300
  %tmp_data_1051 = load i8* %out_addr_304, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1051, i1 true, i1 false)
  br label %1808

; <label>:1813                                    ; preds = %1814
  %empty_1541 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_319)
  %tmp_320 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1822

; <label>:1814                                    ; preds = %1818, %1815
  %i_1_301 = phi i5 [ 0, %1815 ], [ %i_12_301, %1818 ]
  %exitcond_301 = icmp eq i5 %i_1_301, -16
  %empty_1542 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_301 = add i5 %i_1_301, 1
  br i1 %exitcond_301, label %1813, label %1818

; <label>:1815                                    ; preds = %1816
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1814

; <label>:1816                                    ; preds = %1817, %1807
  %i_302 = phi i5 [ 0, %1807 ], [ %i_11_301, %1817 ]
  %exitcond2_301 = icmp eq i5 %i_302, -16
  %empty_1543 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_301 = add i5 %i_302, 1
  br i1 %exitcond2_301, label %1815, label %1817

; <label>:1817                                    ; preds = %1816
  %empty_1544 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1052 = extractvalue { i8, i1, i1 } %empty_1544, 0
  %tmp_301_1545 = zext i5 %i_302 to i64
  %plaintext_addr_302 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_301_1545
  store i8 %tmp_data_1052, i8* %plaintext_addr_302, align 1
  br label %1816

; <label>:1818                                    ; preds = %1814
  %tmp_131_301 = zext i5 %i_1_301 to i64
  %out_addr_305 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_301
  %tmp_data_1053 = load i8* %out_addr_305, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1053, i1 true, i1 false)
  br label %1814

; <label>:1819                                    ; preds = %1820
  %empty_1546 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_320)
  %tmp_321 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1828

; <label>:1820                                    ; preds = %1824, %1821
  %i_1_302 = phi i5 [ 0, %1821 ], [ %i_12_302, %1824 ]
  %exitcond_302 = icmp eq i5 %i_1_302, -16
  %empty_1547 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_302 = add i5 %i_1_302, 1
  br i1 %exitcond_302, label %1819, label %1824

; <label>:1821                                    ; preds = %1822
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1820

; <label>:1822                                    ; preds = %1823, %1813
  %i_303 = phi i5 [ 0, %1813 ], [ %i_11_302, %1823 ]
  %exitcond2_302 = icmp eq i5 %i_303, -16
  %empty_1548 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_302 = add i5 %i_303, 1
  br i1 %exitcond2_302, label %1821, label %1823

; <label>:1823                                    ; preds = %1822
  %empty_1549 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1054 = extractvalue { i8, i1, i1 } %empty_1549, 0
  %tmp_302_1550 = zext i5 %i_303 to i64
  %plaintext_addr_303 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_302_1550
  store i8 %tmp_data_1054, i8* %plaintext_addr_303, align 1
  br label %1822

; <label>:1824                                    ; preds = %1820
  %tmp_131_302 = zext i5 %i_1_302 to i64
  %out_addr_306 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_302
  %tmp_data_1055 = load i8* %out_addr_306, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1055, i1 true, i1 false)
  br label %1820

; <label>:1825                                    ; preds = %1826
  %empty_1551 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_321)
  %tmp_322 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1834

; <label>:1826                                    ; preds = %1830, %1827
  %i_1_303 = phi i5 [ 0, %1827 ], [ %i_12_303, %1830 ]
  %exitcond_303 = icmp eq i5 %i_1_303, -16
  %empty_1552 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_303 = add i5 %i_1_303, 1
  br i1 %exitcond_303, label %1825, label %1830

; <label>:1827                                    ; preds = %1828
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1826

; <label>:1828                                    ; preds = %1829, %1819
  %i_304 = phi i5 [ 0, %1819 ], [ %i_11_303, %1829 ]
  %exitcond2_303 = icmp eq i5 %i_304, -16
  %empty_1553 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_303 = add i5 %i_304, 1
  br i1 %exitcond2_303, label %1827, label %1829

; <label>:1829                                    ; preds = %1828
  %empty_1554 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1056 = extractvalue { i8, i1, i1 } %empty_1554, 0
  %tmp_303_1555 = zext i5 %i_304 to i64
  %plaintext_addr_304 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_303_1555
  store i8 %tmp_data_1056, i8* %plaintext_addr_304, align 1
  br label %1828

; <label>:1830                                    ; preds = %1826
  %tmp_131_303 = zext i5 %i_1_303 to i64
  %out_addr_307 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_303
  %tmp_data_1057 = load i8* %out_addr_307, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1057, i1 true, i1 false)
  br label %1826

; <label>:1831                                    ; preds = %1832
  %empty_1556 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_322)
  %tmp_323 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1840

; <label>:1832                                    ; preds = %1836, %1833
  %i_1_304 = phi i5 [ 0, %1833 ], [ %i_12_304, %1836 ]
  %exitcond_304 = icmp eq i5 %i_1_304, -16
  %empty_1557 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_304 = add i5 %i_1_304, 1
  br i1 %exitcond_304, label %1831, label %1836

; <label>:1833                                    ; preds = %1834
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1832

; <label>:1834                                    ; preds = %1835, %1825
  %i_305 = phi i5 [ 0, %1825 ], [ %i_11_304, %1835 ]
  %exitcond2_304 = icmp eq i5 %i_305, -16
  %empty_1558 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_304 = add i5 %i_305, 1
  br i1 %exitcond2_304, label %1833, label %1835

; <label>:1835                                    ; preds = %1834
  %empty_1559 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1058 = extractvalue { i8, i1, i1 } %empty_1559, 0
  %tmp_304_1560 = zext i5 %i_305 to i64
  %plaintext_addr_305 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_304_1560
  store i8 %tmp_data_1058, i8* %plaintext_addr_305, align 1
  br label %1834

; <label>:1836                                    ; preds = %1832
  %tmp_131_304 = zext i5 %i_1_304 to i64
  %out_addr_308 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_304
  %tmp_data_1059 = load i8* %out_addr_308, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1059, i1 true, i1 false)
  br label %1832

; <label>:1837                                    ; preds = %1838
  %empty_1561 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_323)
  %tmp_324 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1846

; <label>:1838                                    ; preds = %1842, %1839
  %i_1_305 = phi i5 [ 0, %1839 ], [ %i_12_305, %1842 ]
  %exitcond_305 = icmp eq i5 %i_1_305, -16
  %empty_1562 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_305 = add i5 %i_1_305, 1
  br i1 %exitcond_305, label %1837, label %1842

; <label>:1839                                    ; preds = %1840
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1838

; <label>:1840                                    ; preds = %1841, %1831
  %i_306 = phi i5 [ 0, %1831 ], [ %i_11_305, %1841 ]
  %exitcond2_305 = icmp eq i5 %i_306, -16
  %empty_1563 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_305 = add i5 %i_306, 1
  br i1 %exitcond2_305, label %1839, label %1841

; <label>:1841                                    ; preds = %1840
  %empty_1564 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1060 = extractvalue { i8, i1, i1 } %empty_1564, 0
  %tmp_305_1565 = zext i5 %i_306 to i64
  %plaintext_addr_306 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_305_1565
  store i8 %tmp_data_1060, i8* %plaintext_addr_306, align 1
  br label %1840

; <label>:1842                                    ; preds = %1838
  %tmp_131_305 = zext i5 %i_1_305 to i64
  %out_addr_309 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_305
  %tmp_data_1061 = load i8* %out_addr_309, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1061, i1 true, i1 false)
  br label %1838

; <label>:1843                                    ; preds = %1844
  %empty_1566 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_324)
  %tmp_325 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1852

; <label>:1844                                    ; preds = %1848, %1845
  %i_1_306 = phi i5 [ 0, %1845 ], [ %i_12_306, %1848 ]
  %exitcond_306 = icmp eq i5 %i_1_306, -16
  %empty_1567 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_306 = add i5 %i_1_306, 1
  br i1 %exitcond_306, label %1843, label %1848

; <label>:1845                                    ; preds = %1846
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1844

; <label>:1846                                    ; preds = %1847, %1837
  %i_307 = phi i5 [ 0, %1837 ], [ %i_11_306, %1847 ]
  %exitcond2_306 = icmp eq i5 %i_307, -16
  %empty_1568 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_306 = add i5 %i_307, 1
  br i1 %exitcond2_306, label %1845, label %1847

; <label>:1847                                    ; preds = %1846
  %empty_1569 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1062 = extractvalue { i8, i1, i1 } %empty_1569, 0
  %tmp_306_1570 = zext i5 %i_307 to i64
  %plaintext_addr_307 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_306_1570
  store i8 %tmp_data_1062, i8* %plaintext_addr_307, align 1
  br label %1846

; <label>:1848                                    ; preds = %1844
  %tmp_131_306 = zext i5 %i_1_306 to i64
  %out_addr_310 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_306
  %tmp_data_1063 = load i8* %out_addr_310, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1063, i1 true, i1 false)
  br label %1844

; <label>:1849                                    ; preds = %1850
  %empty_1571 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_325)
  %tmp_326 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1858

; <label>:1850                                    ; preds = %1854, %1851
  %i_1_307 = phi i5 [ 0, %1851 ], [ %i_12_307, %1854 ]
  %exitcond_307 = icmp eq i5 %i_1_307, -16
  %empty_1572 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_307 = add i5 %i_1_307, 1
  br i1 %exitcond_307, label %1849, label %1854

; <label>:1851                                    ; preds = %1852
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1850

; <label>:1852                                    ; preds = %1853, %1843
  %i_308 = phi i5 [ 0, %1843 ], [ %i_11_307, %1853 ]
  %exitcond2_307 = icmp eq i5 %i_308, -16
  %empty_1573 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_307 = add i5 %i_308, 1
  br i1 %exitcond2_307, label %1851, label %1853

; <label>:1853                                    ; preds = %1852
  %empty_1574 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1064 = extractvalue { i8, i1, i1 } %empty_1574, 0
  %tmp_307_1575 = zext i5 %i_308 to i64
  %plaintext_addr_308 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_307_1575
  store i8 %tmp_data_1064, i8* %plaintext_addr_308, align 1
  br label %1852

; <label>:1854                                    ; preds = %1850
  %tmp_131_307 = zext i5 %i_1_307 to i64
  %out_addr_311 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_307
  %tmp_data_1065 = load i8* %out_addr_311, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1065, i1 true, i1 false)
  br label %1850

; <label>:1855                                    ; preds = %1856
  %empty_1576 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_326)
  %tmp_327 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1864

; <label>:1856                                    ; preds = %1860, %1857
  %i_1_308 = phi i5 [ 0, %1857 ], [ %i_12_308, %1860 ]
  %exitcond_308 = icmp eq i5 %i_1_308, -16
  %empty_1577 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_308 = add i5 %i_1_308, 1
  br i1 %exitcond_308, label %1855, label %1860

; <label>:1857                                    ; preds = %1858
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1856

; <label>:1858                                    ; preds = %1859, %1849
  %i_309 = phi i5 [ 0, %1849 ], [ %i_11_308, %1859 ]
  %exitcond2_308 = icmp eq i5 %i_309, -16
  %empty_1578 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_308 = add i5 %i_309, 1
  br i1 %exitcond2_308, label %1857, label %1859

; <label>:1859                                    ; preds = %1858
  %empty_1579 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1066 = extractvalue { i8, i1, i1 } %empty_1579, 0
  %tmp_308_1580 = zext i5 %i_309 to i64
  %plaintext_addr_309 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_308_1580
  store i8 %tmp_data_1066, i8* %plaintext_addr_309, align 1
  br label %1858

; <label>:1860                                    ; preds = %1856
  %tmp_131_308 = zext i5 %i_1_308 to i64
  %out_addr_312 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_308
  %tmp_data_1067 = load i8* %out_addr_312, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1067, i1 true, i1 false)
  br label %1856

; <label>:1861                                    ; preds = %1862
  %empty_1581 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_327)
  %tmp_328 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1870

; <label>:1862                                    ; preds = %1866, %1863
  %i_1_309 = phi i5 [ 0, %1863 ], [ %i_12_309, %1866 ]
  %exitcond_309 = icmp eq i5 %i_1_309, -16
  %empty_1582 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_309 = add i5 %i_1_309, 1
  br i1 %exitcond_309, label %1861, label %1866

; <label>:1863                                    ; preds = %1864
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1862

; <label>:1864                                    ; preds = %1865, %1855
  %i_310 = phi i5 [ 0, %1855 ], [ %i_11_309, %1865 ]
  %exitcond2_309 = icmp eq i5 %i_310, -16
  %empty_1583 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_309 = add i5 %i_310, 1
  br i1 %exitcond2_309, label %1863, label %1865

; <label>:1865                                    ; preds = %1864
  %empty_1584 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1068 = extractvalue { i8, i1, i1 } %empty_1584, 0
  %tmp_309_1585 = zext i5 %i_310 to i64
  %plaintext_addr_310 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_309_1585
  store i8 %tmp_data_1068, i8* %plaintext_addr_310, align 1
  br label %1864

; <label>:1866                                    ; preds = %1862
  %tmp_131_309 = zext i5 %i_1_309 to i64
  %out_addr_313 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_309
  %tmp_data_1069 = load i8* %out_addr_313, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1069, i1 true, i1 false)
  br label %1862

; <label>:1867                                    ; preds = %1868
  %empty_1586 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_328)
  %tmp_329 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1876

; <label>:1868                                    ; preds = %1872, %1869
  %i_1_310 = phi i5 [ 0, %1869 ], [ %i_12_310, %1872 ]
  %exitcond_310 = icmp eq i5 %i_1_310, -16
  %empty_1587 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_310 = add i5 %i_1_310, 1
  br i1 %exitcond_310, label %1867, label %1872

; <label>:1869                                    ; preds = %1870
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1868

; <label>:1870                                    ; preds = %1871, %1861
  %i_311 = phi i5 [ 0, %1861 ], [ %i_11_310, %1871 ]
  %exitcond2_310 = icmp eq i5 %i_311, -16
  %empty_1588 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_310 = add i5 %i_311, 1
  br i1 %exitcond2_310, label %1869, label %1871

; <label>:1871                                    ; preds = %1870
  %empty_1589 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1070 = extractvalue { i8, i1, i1 } %empty_1589, 0
  %tmp_310_1590 = zext i5 %i_311 to i64
  %plaintext_addr_311 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_310_1590
  store i8 %tmp_data_1070, i8* %plaintext_addr_311, align 1
  br label %1870

; <label>:1872                                    ; preds = %1868
  %tmp_131_310 = zext i5 %i_1_310 to i64
  %out_addr_314 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_310
  %tmp_data_1071 = load i8* %out_addr_314, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1071, i1 true, i1 false)
  br label %1868

; <label>:1873                                    ; preds = %1874
  %empty_1591 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_329)
  %tmp_330 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1882

; <label>:1874                                    ; preds = %1878, %1875
  %i_1_311 = phi i5 [ 0, %1875 ], [ %i_12_311, %1878 ]
  %exitcond_311 = icmp eq i5 %i_1_311, -16
  %empty_1592 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_311 = add i5 %i_1_311, 1
  br i1 %exitcond_311, label %1873, label %1878

; <label>:1875                                    ; preds = %1876
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1874

; <label>:1876                                    ; preds = %1877, %1867
  %i_312 = phi i5 [ 0, %1867 ], [ %i_11_311, %1877 ]
  %exitcond2_311 = icmp eq i5 %i_312, -16
  %empty_1593 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_311 = add i5 %i_312, 1
  br i1 %exitcond2_311, label %1875, label %1877

; <label>:1877                                    ; preds = %1876
  %empty_1594 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1072 = extractvalue { i8, i1, i1 } %empty_1594, 0
  %tmp_311_1595 = zext i5 %i_312 to i64
  %plaintext_addr_312 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_311_1595
  store i8 %tmp_data_1072, i8* %plaintext_addr_312, align 1
  br label %1876

; <label>:1878                                    ; preds = %1874
  %tmp_131_311 = zext i5 %i_1_311 to i64
  %out_addr_315 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_311
  %tmp_data_1073 = load i8* %out_addr_315, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1073, i1 true, i1 false)
  br label %1874

; <label>:1879                                    ; preds = %1880
  %empty_1596 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_330)
  %tmp_331 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1888

; <label>:1880                                    ; preds = %1884, %1881
  %i_1_312 = phi i5 [ 0, %1881 ], [ %i_12_312, %1884 ]
  %exitcond_312 = icmp eq i5 %i_1_312, -16
  %empty_1597 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_312 = add i5 %i_1_312, 1
  br i1 %exitcond_312, label %1879, label %1884

; <label>:1881                                    ; preds = %1882
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1880

; <label>:1882                                    ; preds = %1883, %1873
  %i_313 = phi i5 [ 0, %1873 ], [ %i_11_312, %1883 ]
  %exitcond2_312 = icmp eq i5 %i_313, -16
  %empty_1598 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_312 = add i5 %i_313, 1
  br i1 %exitcond2_312, label %1881, label %1883

; <label>:1883                                    ; preds = %1882
  %empty_1599 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1074 = extractvalue { i8, i1, i1 } %empty_1599, 0
  %tmp_312_1600 = zext i5 %i_313 to i64
  %plaintext_addr_313 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_312_1600
  store i8 %tmp_data_1074, i8* %plaintext_addr_313, align 1
  br label %1882

; <label>:1884                                    ; preds = %1880
  %tmp_131_312 = zext i5 %i_1_312 to i64
  %out_addr_316 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_312
  %tmp_data_1075 = load i8* %out_addr_316, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1075, i1 true, i1 false)
  br label %1880

; <label>:1885                                    ; preds = %1886
  %empty_1601 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_331)
  %tmp_332 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1894

; <label>:1886                                    ; preds = %1890, %1887
  %i_1_313 = phi i5 [ 0, %1887 ], [ %i_12_313, %1890 ]
  %exitcond_313 = icmp eq i5 %i_1_313, -16
  %empty_1602 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_313 = add i5 %i_1_313, 1
  br i1 %exitcond_313, label %1885, label %1890

; <label>:1887                                    ; preds = %1888
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1886

; <label>:1888                                    ; preds = %1889, %1879
  %i_314 = phi i5 [ 0, %1879 ], [ %i_11_313, %1889 ]
  %exitcond2_313 = icmp eq i5 %i_314, -16
  %empty_1603 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_313 = add i5 %i_314, 1
  br i1 %exitcond2_313, label %1887, label %1889

; <label>:1889                                    ; preds = %1888
  %empty_1604 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1076 = extractvalue { i8, i1, i1 } %empty_1604, 0
  %tmp_313_1605 = zext i5 %i_314 to i64
  %plaintext_addr_314 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_313_1605
  store i8 %tmp_data_1076, i8* %plaintext_addr_314, align 1
  br label %1888

; <label>:1890                                    ; preds = %1886
  %tmp_131_313 = zext i5 %i_1_313 to i64
  %out_addr_317 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_313
  %tmp_data_1077 = load i8* %out_addr_317, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1077, i1 true, i1 false)
  br label %1886

; <label>:1891                                    ; preds = %1892
  %empty_1606 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_332)
  %tmp_333 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1900

; <label>:1892                                    ; preds = %1896, %1893
  %i_1_314 = phi i5 [ 0, %1893 ], [ %i_12_314, %1896 ]
  %exitcond_314 = icmp eq i5 %i_1_314, -16
  %empty_1607 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_314 = add i5 %i_1_314, 1
  br i1 %exitcond_314, label %1891, label %1896

; <label>:1893                                    ; preds = %1894
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1892

; <label>:1894                                    ; preds = %1895, %1885
  %i_315 = phi i5 [ 0, %1885 ], [ %i_11_314, %1895 ]
  %exitcond2_314 = icmp eq i5 %i_315, -16
  %empty_1608 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_314 = add i5 %i_315, 1
  br i1 %exitcond2_314, label %1893, label %1895

; <label>:1895                                    ; preds = %1894
  %empty_1609 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1078 = extractvalue { i8, i1, i1 } %empty_1609, 0
  %tmp_314_1610 = zext i5 %i_315 to i64
  %plaintext_addr_315 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_314_1610
  store i8 %tmp_data_1078, i8* %plaintext_addr_315, align 1
  br label %1894

; <label>:1896                                    ; preds = %1892
  %tmp_131_314 = zext i5 %i_1_314 to i64
  %out_addr_318 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_314
  %tmp_data_1079 = load i8* %out_addr_318, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1079, i1 true, i1 false)
  br label %1892

; <label>:1897                                    ; preds = %1898
  %empty_1611 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_333)
  %tmp_334 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1906

; <label>:1898                                    ; preds = %1902, %1899
  %i_1_315 = phi i5 [ 0, %1899 ], [ %i_12_315, %1902 ]
  %exitcond_315 = icmp eq i5 %i_1_315, -16
  %empty_1612 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_315 = add i5 %i_1_315, 1
  br i1 %exitcond_315, label %1897, label %1902

; <label>:1899                                    ; preds = %1900
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1898

; <label>:1900                                    ; preds = %1901, %1891
  %i_316 = phi i5 [ 0, %1891 ], [ %i_11_315, %1901 ]
  %exitcond2_315 = icmp eq i5 %i_316, -16
  %empty_1613 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_315 = add i5 %i_316, 1
  br i1 %exitcond2_315, label %1899, label %1901

; <label>:1901                                    ; preds = %1900
  %empty_1614 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1080 = extractvalue { i8, i1, i1 } %empty_1614, 0
  %tmp_315_1615 = zext i5 %i_316 to i64
  %plaintext_addr_316 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_315_1615
  store i8 %tmp_data_1080, i8* %plaintext_addr_316, align 1
  br label %1900

; <label>:1902                                    ; preds = %1898
  %tmp_131_315 = zext i5 %i_1_315 to i64
  %out_addr_319 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_315
  %tmp_data_1081 = load i8* %out_addr_319, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1081, i1 true, i1 false)
  br label %1898

; <label>:1903                                    ; preds = %1904
  %empty_1616 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_334)
  %tmp_335 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1912

; <label>:1904                                    ; preds = %1908, %1905
  %i_1_316 = phi i5 [ 0, %1905 ], [ %i_12_316, %1908 ]
  %exitcond_316 = icmp eq i5 %i_1_316, -16
  %empty_1617 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_316 = add i5 %i_1_316, 1
  br i1 %exitcond_316, label %1903, label %1908

; <label>:1905                                    ; preds = %1906
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1904

; <label>:1906                                    ; preds = %1907, %1897
  %i_317 = phi i5 [ 0, %1897 ], [ %i_11_316, %1907 ]
  %exitcond2_316 = icmp eq i5 %i_317, -16
  %empty_1618 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_316 = add i5 %i_317, 1
  br i1 %exitcond2_316, label %1905, label %1907

; <label>:1907                                    ; preds = %1906
  %empty_1619 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1082 = extractvalue { i8, i1, i1 } %empty_1619, 0
  %tmp_316_1620 = zext i5 %i_317 to i64
  %plaintext_addr_317 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_316_1620
  store i8 %tmp_data_1082, i8* %plaintext_addr_317, align 1
  br label %1906

; <label>:1908                                    ; preds = %1904
  %tmp_131_316 = zext i5 %i_1_316 to i64
  %out_addr_320 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_316
  %tmp_data_1083 = load i8* %out_addr_320, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1083, i1 true, i1 false)
  br label %1904

; <label>:1909                                    ; preds = %1910
  %empty_1621 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_335)
  %tmp_336 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1918

; <label>:1910                                    ; preds = %1914, %1911
  %i_1_317 = phi i5 [ 0, %1911 ], [ %i_12_317, %1914 ]
  %exitcond_317 = icmp eq i5 %i_1_317, -16
  %empty_1622 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_317 = add i5 %i_1_317, 1
  br i1 %exitcond_317, label %1909, label %1914

; <label>:1911                                    ; preds = %1912
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1910

; <label>:1912                                    ; preds = %1913, %1903
  %i_318 = phi i5 [ 0, %1903 ], [ %i_11_317, %1913 ]
  %exitcond2_317 = icmp eq i5 %i_318, -16
  %empty_1623 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_317 = add i5 %i_318, 1
  br i1 %exitcond2_317, label %1911, label %1913

; <label>:1913                                    ; preds = %1912
  %empty_1624 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1084 = extractvalue { i8, i1, i1 } %empty_1624, 0
  %tmp_317_1625 = zext i5 %i_318 to i64
  %plaintext_addr_318 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_317_1625
  store i8 %tmp_data_1084, i8* %plaintext_addr_318, align 1
  br label %1912

; <label>:1914                                    ; preds = %1910
  %tmp_131_317 = zext i5 %i_1_317 to i64
  %out_addr_321 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_317
  %tmp_data_1085 = load i8* %out_addr_321, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1085, i1 true, i1 false)
  br label %1910

; <label>:1915                                    ; preds = %1916
  %empty_1626 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_336)
  %tmp_337 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1924

; <label>:1916                                    ; preds = %1920, %1917
  %i_1_318 = phi i5 [ 0, %1917 ], [ %i_12_318, %1920 ]
  %exitcond_318 = icmp eq i5 %i_1_318, -16
  %empty_1627 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_318 = add i5 %i_1_318, 1
  br i1 %exitcond_318, label %1915, label %1920

; <label>:1917                                    ; preds = %1918
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1916

; <label>:1918                                    ; preds = %1919, %1909
  %i_319 = phi i5 [ 0, %1909 ], [ %i_11_318, %1919 ]
  %exitcond2_318 = icmp eq i5 %i_319, -16
  %empty_1628 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_318 = add i5 %i_319, 1
  br i1 %exitcond2_318, label %1917, label %1919

; <label>:1919                                    ; preds = %1918
  %empty_1629 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1086 = extractvalue { i8, i1, i1 } %empty_1629, 0
  %tmp_318_1630 = zext i5 %i_319 to i64
  %plaintext_addr_319 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_318_1630
  store i8 %tmp_data_1086, i8* %plaintext_addr_319, align 1
  br label %1918

; <label>:1920                                    ; preds = %1916
  %tmp_131_318 = zext i5 %i_1_318 to i64
  %out_addr_322 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_318
  %tmp_data_1087 = load i8* %out_addr_322, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1087, i1 true, i1 false)
  br label %1916

; <label>:1921                                    ; preds = %1922
  %empty_1631 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_337)
  %tmp_338 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1930

; <label>:1922                                    ; preds = %1926, %1923
  %i_1_319 = phi i5 [ 0, %1923 ], [ %i_12_319, %1926 ]
  %exitcond_319 = icmp eq i5 %i_1_319, -16
  %empty_1632 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_319 = add i5 %i_1_319, 1
  br i1 %exitcond_319, label %1921, label %1926

; <label>:1923                                    ; preds = %1924
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1922

; <label>:1924                                    ; preds = %1925, %1915
  %i_320 = phi i5 [ 0, %1915 ], [ %i_11_319, %1925 ]
  %exitcond2_319 = icmp eq i5 %i_320, -16
  %empty_1633 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_319 = add i5 %i_320, 1
  br i1 %exitcond2_319, label %1923, label %1925

; <label>:1925                                    ; preds = %1924
  %empty_1634 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1088 = extractvalue { i8, i1, i1 } %empty_1634, 0
  %tmp_319_1635 = zext i5 %i_320 to i64
  %plaintext_addr_320 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_319_1635
  store i8 %tmp_data_1088, i8* %plaintext_addr_320, align 1
  br label %1924

; <label>:1926                                    ; preds = %1922
  %tmp_131_319 = zext i5 %i_1_319 to i64
  %out_addr_323 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_319
  %tmp_data_1089 = load i8* %out_addr_323, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1089, i1 true, i1 false)
  br label %1922

; <label>:1927                                    ; preds = %1928
  %empty_1636 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_338)
  %tmp_339 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1936

; <label>:1928                                    ; preds = %1932, %1929
  %i_1_320 = phi i5 [ 0, %1929 ], [ %i_12_320, %1932 ]
  %exitcond_320 = icmp eq i5 %i_1_320, -16
  %empty_1637 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_320 = add i5 %i_1_320, 1
  br i1 %exitcond_320, label %1927, label %1932

; <label>:1929                                    ; preds = %1930
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1928

; <label>:1930                                    ; preds = %1931, %1921
  %i_321 = phi i5 [ 0, %1921 ], [ %i_11_320, %1931 ]
  %exitcond2_320 = icmp eq i5 %i_321, -16
  %empty_1638 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_320 = add i5 %i_321, 1
  br i1 %exitcond2_320, label %1929, label %1931

; <label>:1931                                    ; preds = %1930
  %empty_1639 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1090 = extractvalue { i8, i1, i1 } %empty_1639, 0
  %tmp_320_1640 = zext i5 %i_321 to i64
  %plaintext_addr_321 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_320_1640
  store i8 %tmp_data_1090, i8* %plaintext_addr_321, align 1
  br label %1930

; <label>:1932                                    ; preds = %1928
  %tmp_131_320 = zext i5 %i_1_320 to i64
  %out_addr_324 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_320
  %tmp_data_1091 = load i8* %out_addr_324, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1091, i1 true, i1 false)
  br label %1928

; <label>:1933                                    ; preds = %1934
  %empty_1641 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_339)
  %tmp_340 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1942

; <label>:1934                                    ; preds = %1938, %1935
  %i_1_321 = phi i5 [ 0, %1935 ], [ %i_12_321, %1938 ]
  %exitcond_321 = icmp eq i5 %i_1_321, -16
  %empty_1642 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_321 = add i5 %i_1_321, 1
  br i1 %exitcond_321, label %1933, label %1938

; <label>:1935                                    ; preds = %1936
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1934

; <label>:1936                                    ; preds = %1937, %1927
  %i_322 = phi i5 [ 0, %1927 ], [ %i_11_321, %1937 ]
  %exitcond2_321 = icmp eq i5 %i_322, -16
  %empty_1643 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_321 = add i5 %i_322, 1
  br i1 %exitcond2_321, label %1935, label %1937

; <label>:1937                                    ; preds = %1936
  %empty_1644 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1092 = extractvalue { i8, i1, i1 } %empty_1644, 0
  %tmp_321_1645 = zext i5 %i_322 to i64
  %plaintext_addr_322 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_321_1645
  store i8 %tmp_data_1092, i8* %plaintext_addr_322, align 1
  br label %1936

; <label>:1938                                    ; preds = %1934
  %tmp_131_321 = zext i5 %i_1_321 to i64
  %out_addr_325 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_321
  %tmp_data_1093 = load i8* %out_addr_325, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1093, i1 true, i1 false)
  br label %1934

; <label>:1939                                    ; preds = %1940
  %empty_1646 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_340)
  %tmp_341 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1948

; <label>:1940                                    ; preds = %1944, %1941
  %i_1_322 = phi i5 [ 0, %1941 ], [ %i_12_322, %1944 ]
  %exitcond_322 = icmp eq i5 %i_1_322, -16
  %empty_1647 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_322 = add i5 %i_1_322, 1
  br i1 %exitcond_322, label %1939, label %1944

; <label>:1941                                    ; preds = %1942
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1940

; <label>:1942                                    ; preds = %1943, %1933
  %i_323 = phi i5 [ 0, %1933 ], [ %i_11_322, %1943 ]
  %exitcond2_322 = icmp eq i5 %i_323, -16
  %empty_1648 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_322 = add i5 %i_323, 1
  br i1 %exitcond2_322, label %1941, label %1943

; <label>:1943                                    ; preds = %1942
  %empty_1649 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1094 = extractvalue { i8, i1, i1 } %empty_1649, 0
  %tmp_322_1650 = zext i5 %i_323 to i64
  %plaintext_addr_323 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_322_1650
  store i8 %tmp_data_1094, i8* %plaintext_addr_323, align 1
  br label %1942

; <label>:1944                                    ; preds = %1940
  %tmp_131_322 = zext i5 %i_1_322 to i64
  %out_addr_326 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_322
  %tmp_data_1095 = load i8* %out_addr_326, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1095, i1 true, i1 false)
  br label %1940

; <label>:1945                                    ; preds = %1946
  %empty_1651 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_341)
  %tmp_342 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1954

; <label>:1946                                    ; preds = %1950, %1947
  %i_1_323 = phi i5 [ 0, %1947 ], [ %i_12_323, %1950 ]
  %exitcond_323 = icmp eq i5 %i_1_323, -16
  %empty_1652 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_323 = add i5 %i_1_323, 1
  br i1 %exitcond_323, label %1945, label %1950

; <label>:1947                                    ; preds = %1948
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1946

; <label>:1948                                    ; preds = %1949, %1939
  %i_324 = phi i5 [ 0, %1939 ], [ %i_11_323, %1949 ]
  %exitcond2_323 = icmp eq i5 %i_324, -16
  %empty_1653 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_323 = add i5 %i_324, 1
  br i1 %exitcond2_323, label %1947, label %1949

; <label>:1949                                    ; preds = %1948
  %empty_1654 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1096 = extractvalue { i8, i1, i1 } %empty_1654, 0
  %tmp_323_1655 = zext i5 %i_324 to i64
  %plaintext_addr_324 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_323_1655
  store i8 %tmp_data_1096, i8* %plaintext_addr_324, align 1
  br label %1948

; <label>:1950                                    ; preds = %1946
  %tmp_131_323 = zext i5 %i_1_323 to i64
  %out_addr_327 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_323
  %tmp_data_1097 = load i8* %out_addr_327, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1097, i1 true, i1 false)
  br label %1946

; <label>:1951                                    ; preds = %1952
  %empty_1656 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_342)
  %tmp_343 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1960

; <label>:1952                                    ; preds = %1956, %1953
  %i_1_324 = phi i5 [ 0, %1953 ], [ %i_12_324, %1956 ]
  %exitcond_324 = icmp eq i5 %i_1_324, -16
  %empty_1657 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_324 = add i5 %i_1_324, 1
  br i1 %exitcond_324, label %1951, label %1956

; <label>:1953                                    ; preds = %1954
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1952

; <label>:1954                                    ; preds = %1955, %1945
  %i_325 = phi i5 [ 0, %1945 ], [ %i_11_324, %1955 ]
  %exitcond2_324 = icmp eq i5 %i_325, -16
  %empty_1658 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_324 = add i5 %i_325, 1
  br i1 %exitcond2_324, label %1953, label %1955

; <label>:1955                                    ; preds = %1954
  %empty_1659 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1098 = extractvalue { i8, i1, i1 } %empty_1659, 0
  %tmp_324_1660 = zext i5 %i_325 to i64
  %plaintext_addr_325 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_324_1660
  store i8 %tmp_data_1098, i8* %plaintext_addr_325, align 1
  br label %1954

; <label>:1956                                    ; preds = %1952
  %tmp_131_324 = zext i5 %i_1_324 to i64
  %out_addr_328 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_324
  %tmp_data_1099 = load i8* %out_addr_328, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1099, i1 true, i1 false)
  br label %1952

; <label>:1957                                    ; preds = %1958
  %empty_1661 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_343)
  %tmp_344 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1966

; <label>:1958                                    ; preds = %1962, %1959
  %i_1_325 = phi i5 [ 0, %1959 ], [ %i_12_325, %1962 ]
  %exitcond_325 = icmp eq i5 %i_1_325, -16
  %empty_1662 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_325 = add i5 %i_1_325, 1
  br i1 %exitcond_325, label %1957, label %1962

; <label>:1959                                    ; preds = %1960
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1958

; <label>:1960                                    ; preds = %1961, %1951
  %i_326 = phi i5 [ 0, %1951 ], [ %i_11_325, %1961 ]
  %exitcond2_325 = icmp eq i5 %i_326, -16
  %empty_1663 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_325 = add i5 %i_326, 1
  br i1 %exitcond2_325, label %1959, label %1961

; <label>:1961                                    ; preds = %1960
  %empty_1664 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1100 = extractvalue { i8, i1, i1 } %empty_1664, 0
  %tmp_325_1665 = zext i5 %i_326 to i64
  %plaintext_addr_326 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_325_1665
  store i8 %tmp_data_1100, i8* %plaintext_addr_326, align 1
  br label %1960

; <label>:1962                                    ; preds = %1958
  %tmp_131_325 = zext i5 %i_1_325 to i64
  %out_addr_329 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_325
  %tmp_data_1101 = load i8* %out_addr_329, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1101, i1 true, i1 false)
  br label %1958

; <label>:1963                                    ; preds = %1964
  %empty_1666 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_344)
  %tmp_345 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1972

; <label>:1964                                    ; preds = %1968, %1965
  %i_1_326 = phi i5 [ 0, %1965 ], [ %i_12_326, %1968 ]
  %exitcond_326 = icmp eq i5 %i_1_326, -16
  %empty_1667 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_326 = add i5 %i_1_326, 1
  br i1 %exitcond_326, label %1963, label %1968

; <label>:1965                                    ; preds = %1966
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1964

; <label>:1966                                    ; preds = %1967, %1957
  %i_327 = phi i5 [ 0, %1957 ], [ %i_11_326, %1967 ]
  %exitcond2_326 = icmp eq i5 %i_327, -16
  %empty_1668 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_326 = add i5 %i_327, 1
  br i1 %exitcond2_326, label %1965, label %1967

; <label>:1967                                    ; preds = %1966
  %empty_1669 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1102 = extractvalue { i8, i1, i1 } %empty_1669, 0
  %tmp_326_1670 = zext i5 %i_327 to i64
  %plaintext_addr_327 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_326_1670
  store i8 %tmp_data_1102, i8* %plaintext_addr_327, align 1
  br label %1966

; <label>:1968                                    ; preds = %1964
  %tmp_131_326 = zext i5 %i_1_326 to i64
  %out_addr_330 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_326
  %tmp_data_1103 = load i8* %out_addr_330, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1103, i1 true, i1 false)
  br label %1964

; <label>:1969                                    ; preds = %1970
  %empty_1671 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_345)
  %tmp_346 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1978

; <label>:1970                                    ; preds = %1974, %1971
  %i_1_327 = phi i5 [ 0, %1971 ], [ %i_12_327, %1974 ]
  %exitcond_327 = icmp eq i5 %i_1_327, -16
  %empty_1672 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_327 = add i5 %i_1_327, 1
  br i1 %exitcond_327, label %1969, label %1974

; <label>:1971                                    ; preds = %1972
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1970

; <label>:1972                                    ; preds = %1973, %1963
  %i_328 = phi i5 [ 0, %1963 ], [ %i_11_327, %1973 ]
  %exitcond2_327 = icmp eq i5 %i_328, -16
  %empty_1673 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_327 = add i5 %i_328, 1
  br i1 %exitcond2_327, label %1971, label %1973

; <label>:1973                                    ; preds = %1972
  %empty_1674 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1104 = extractvalue { i8, i1, i1 } %empty_1674, 0
  %tmp_327_1675 = zext i5 %i_328 to i64
  %plaintext_addr_328 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_327_1675
  store i8 %tmp_data_1104, i8* %plaintext_addr_328, align 1
  br label %1972

; <label>:1974                                    ; preds = %1970
  %tmp_131_327 = zext i5 %i_1_327 to i64
  %out_addr_331 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_327
  %tmp_data_1105 = load i8* %out_addr_331, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1105, i1 true, i1 false)
  br label %1970

; <label>:1975                                    ; preds = %1976
  %empty_1676 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_346)
  %tmp_347 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1984

; <label>:1976                                    ; preds = %1980, %1977
  %i_1_328 = phi i5 [ 0, %1977 ], [ %i_12_328, %1980 ]
  %exitcond_328 = icmp eq i5 %i_1_328, -16
  %empty_1677 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_328 = add i5 %i_1_328, 1
  br i1 %exitcond_328, label %1975, label %1980

; <label>:1977                                    ; preds = %1978
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1976

; <label>:1978                                    ; preds = %1979, %1969
  %i_329 = phi i5 [ 0, %1969 ], [ %i_11_328, %1979 ]
  %exitcond2_328 = icmp eq i5 %i_329, -16
  %empty_1678 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_328 = add i5 %i_329, 1
  br i1 %exitcond2_328, label %1977, label %1979

; <label>:1979                                    ; preds = %1978
  %empty_1679 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1106 = extractvalue { i8, i1, i1 } %empty_1679, 0
  %tmp_328_1680 = zext i5 %i_329 to i64
  %plaintext_addr_329 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_328_1680
  store i8 %tmp_data_1106, i8* %plaintext_addr_329, align 1
  br label %1978

; <label>:1980                                    ; preds = %1976
  %tmp_131_328 = zext i5 %i_1_328 to i64
  %out_addr_332 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_328
  %tmp_data_1107 = load i8* %out_addr_332, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1107, i1 true, i1 false)
  br label %1976

; <label>:1981                                    ; preds = %1982
  %empty_1681 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_347)
  %tmp_348 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1990

; <label>:1982                                    ; preds = %1986, %1983
  %i_1_329 = phi i5 [ 0, %1983 ], [ %i_12_329, %1986 ]
  %exitcond_329 = icmp eq i5 %i_1_329, -16
  %empty_1682 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_329 = add i5 %i_1_329, 1
  br i1 %exitcond_329, label %1981, label %1986

; <label>:1983                                    ; preds = %1984
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1982

; <label>:1984                                    ; preds = %1985, %1975
  %i_330 = phi i5 [ 0, %1975 ], [ %i_11_329, %1985 ]
  %exitcond2_329 = icmp eq i5 %i_330, -16
  %empty_1683 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_329 = add i5 %i_330, 1
  br i1 %exitcond2_329, label %1983, label %1985

; <label>:1985                                    ; preds = %1984
  %empty_1684 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1108 = extractvalue { i8, i1, i1 } %empty_1684, 0
  %tmp_329_1685 = zext i5 %i_330 to i64
  %plaintext_addr_330 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_329_1685
  store i8 %tmp_data_1108, i8* %plaintext_addr_330, align 1
  br label %1984

; <label>:1986                                    ; preds = %1982
  %tmp_131_329 = zext i5 %i_1_329 to i64
  %out_addr_333 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_329
  %tmp_data_1109 = load i8* %out_addr_333, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1109, i1 true, i1 false)
  br label %1982

; <label>:1987                                    ; preds = %1988
  %empty_1686 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_348)
  %tmp_349 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1996

; <label>:1988                                    ; preds = %1992, %1989
  %i_1_330 = phi i5 [ 0, %1989 ], [ %i_12_330, %1992 ]
  %exitcond_330 = icmp eq i5 %i_1_330, -16
  %empty_1687 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_330 = add i5 %i_1_330, 1
  br i1 %exitcond_330, label %1987, label %1992

; <label>:1989                                    ; preds = %1990
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1988

; <label>:1990                                    ; preds = %1991, %1981
  %i_331 = phi i5 [ 0, %1981 ], [ %i_11_330, %1991 ]
  %exitcond2_330 = icmp eq i5 %i_331, -16
  %empty_1688 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_330 = add i5 %i_331, 1
  br i1 %exitcond2_330, label %1989, label %1991

; <label>:1991                                    ; preds = %1990
  %empty_1689 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1110 = extractvalue { i8, i1, i1 } %empty_1689, 0
  %tmp_330_1690 = zext i5 %i_331 to i64
  %plaintext_addr_331 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_330_1690
  store i8 %tmp_data_1110, i8* %plaintext_addr_331, align 1
  br label %1990

; <label>:1992                                    ; preds = %1988
  %tmp_131_330 = zext i5 %i_1_330 to i64
  %out_addr_334 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_330
  %tmp_data_1111 = load i8* %out_addr_334, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1111, i1 true, i1 false)
  br label %1988

; <label>:1993                                    ; preds = %1994
  %empty_1691 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_349)
  %tmp_350 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2002

; <label>:1994                                    ; preds = %1998, %1995
  %i_1_331 = phi i5 [ 0, %1995 ], [ %i_12_331, %1998 ]
  %exitcond_331 = icmp eq i5 %i_1_331, -16
  %empty_1692 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_331 = add i5 %i_1_331, 1
  br i1 %exitcond_331, label %1993, label %1998

; <label>:1995                                    ; preds = %1996
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1994

; <label>:1996                                    ; preds = %1997, %1987
  %i_332 = phi i5 [ 0, %1987 ], [ %i_11_331, %1997 ]
  %exitcond2_331 = icmp eq i5 %i_332, -16
  %empty_1693 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_331 = add i5 %i_332, 1
  br i1 %exitcond2_331, label %1995, label %1997

; <label>:1997                                    ; preds = %1996
  %empty_1694 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1112 = extractvalue { i8, i1, i1 } %empty_1694, 0
  %tmp_331_1695 = zext i5 %i_332 to i64
  %plaintext_addr_332 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_331_1695
  store i8 %tmp_data_1112, i8* %plaintext_addr_332, align 1
  br label %1996

; <label>:1998                                    ; preds = %1994
  %tmp_131_331 = zext i5 %i_1_331 to i64
  %out_addr_335 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_331
  %tmp_data_1113 = load i8* %out_addr_335, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1113, i1 true, i1 false)
  br label %1994

; <label>:1999                                    ; preds = %2000
  %empty_1696 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_350)
  %tmp_351 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2008

; <label>:2000                                    ; preds = %2004, %2001
  %i_1_332 = phi i5 [ 0, %2001 ], [ %i_12_332, %2004 ]
  %exitcond_332 = icmp eq i5 %i_1_332, -16
  %empty_1697 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_332 = add i5 %i_1_332, 1
  br i1 %exitcond_332, label %1999, label %2004

; <label>:2001                                    ; preds = %2002
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2000

; <label>:2002                                    ; preds = %2003, %1993
  %i_333 = phi i5 [ 0, %1993 ], [ %i_11_332, %2003 ]
  %exitcond2_332 = icmp eq i5 %i_333, -16
  %empty_1698 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_332 = add i5 %i_333, 1
  br i1 %exitcond2_332, label %2001, label %2003

; <label>:2003                                    ; preds = %2002
  %empty_1699 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1114 = extractvalue { i8, i1, i1 } %empty_1699, 0
  %tmp_332_1700 = zext i5 %i_333 to i64
  %plaintext_addr_333 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_332_1700
  store i8 %tmp_data_1114, i8* %plaintext_addr_333, align 1
  br label %2002

; <label>:2004                                    ; preds = %2000
  %tmp_131_332 = zext i5 %i_1_332 to i64
  %out_addr_336 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_332
  %tmp_data_1115 = load i8* %out_addr_336, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1115, i1 true, i1 false)
  br label %2000

; <label>:2005                                    ; preds = %2006
  %empty_1701 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_351)
  %tmp_352 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2014

; <label>:2006                                    ; preds = %2010, %2007
  %i_1_333 = phi i5 [ 0, %2007 ], [ %i_12_333, %2010 ]
  %exitcond_333 = icmp eq i5 %i_1_333, -16
  %empty_1702 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_333 = add i5 %i_1_333, 1
  br i1 %exitcond_333, label %2005, label %2010

; <label>:2007                                    ; preds = %2008
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2006

; <label>:2008                                    ; preds = %2009, %1999
  %i_334 = phi i5 [ 0, %1999 ], [ %i_11_333, %2009 ]
  %exitcond2_333 = icmp eq i5 %i_334, -16
  %empty_1703 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_333 = add i5 %i_334, 1
  br i1 %exitcond2_333, label %2007, label %2009

; <label>:2009                                    ; preds = %2008
  %empty_1704 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1116 = extractvalue { i8, i1, i1 } %empty_1704, 0
  %tmp_333_1705 = zext i5 %i_334 to i64
  %plaintext_addr_334 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_333_1705
  store i8 %tmp_data_1116, i8* %plaintext_addr_334, align 1
  br label %2008

; <label>:2010                                    ; preds = %2006
  %tmp_131_333 = zext i5 %i_1_333 to i64
  %out_addr_337 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_333
  %tmp_data_1117 = load i8* %out_addr_337, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1117, i1 true, i1 false)
  br label %2006

; <label>:2011                                    ; preds = %2012
  %empty_1706 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_352)
  %tmp_353 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2020

; <label>:2012                                    ; preds = %2016, %2013
  %i_1_334 = phi i5 [ 0, %2013 ], [ %i_12_334, %2016 ]
  %exitcond_334 = icmp eq i5 %i_1_334, -16
  %empty_1707 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_334 = add i5 %i_1_334, 1
  br i1 %exitcond_334, label %2011, label %2016

; <label>:2013                                    ; preds = %2014
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2012

; <label>:2014                                    ; preds = %2015, %2005
  %i_335 = phi i5 [ 0, %2005 ], [ %i_11_334, %2015 ]
  %exitcond2_334 = icmp eq i5 %i_335, -16
  %empty_1708 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_334 = add i5 %i_335, 1
  br i1 %exitcond2_334, label %2013, label %2015

; <label>:2015                                    ; preds = %2014
  %empty_1709 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1118 = extractvalue { i8, i1, i1 } %empty_1709, 0
  %tmp_334_1710 = zext i5 %i_335 to i64
  %plaintext_addr_335 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_334_1710
  store i8 %tmp_data_1118, i8* %plaintext_addr_335, align 1
  br label %2014

; <label>:2016                                    ; preds = %2012
  %tmp_131_334 = zext i5 %i_1_334 to i64
  %out_addr_338 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_334
  %tmp_data_1119 = load i8* %out_addr_338, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1119, i1 true, i1 false)
  br label %2012

; <label>:2017                                    ; preds = %2018
  %empty_1711 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_353)
  %tmp_354 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2026

; <label>:2018                                    ; preds = %2022, %2019
  %i_1_335 = phi i5 [ 0, %2019 ], [ %i_12_335, %2022 ]
  %exitcond_335 = icmp eq i5 %i_1_335, -16
  %empty_1712 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_335 = add i5 %i_1_335, 1
  br i1 %exitcond_335, label %2017, label %2022

; <label>:2019                                    ; preds = %2020
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2018

; <label>:2020                                    ; preds = %2021, %2011
  %i_336 = phi i5 [ 0, %2011 ], [ %i_11_335, %2021 ]
  %exitcond2_335 = icmp eq i5 %i_336, -16
  %empty_1713 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_335 = add i5 %i_336, 1
  br i1 %exitcond2_335, label %2019, label %2021

; <label>:2021                                    ; preds = %2020
  %empty_1714 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1120 = extractvalue { i8, i1, i1 } %empty_1714, 0
  %tmp_335_1715 = zext i5 %i_336 to i64
  %plaintext_addr_336 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_335_1715
  store i8 %tmp_data_1120, i8* %plaintext_addr_336, align 1
  br label %2020

; <label>:2022                                    ; preds = %2018
  %tmp_131_335 = zext i5 %i_1_335 to i64
  %out_addr_339 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_335
  %tmp_data_1121 = load i8* %out_addr_339, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1121, i1 true, i1 false)
  br label %2018

; <label>:2023                                    ; preds = %2024
  %empty_1716 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_354)
  %tmp_355 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2032

; <label>:2024                                    ; preds = %2028, %2025
  %i_1_336 = phi i5 [ 0, %2025 ], [ %i_12_336, %2028 ]
  %exitcond_336 = icmp eq i5 %i_1_336, -16
  %empty_1717 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_336 = add i5 %i_1_336, 1
  br i1 %exitcond_336, label %2023, label %2028

; <label>:2025                                    ; preds = %2026
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2024

; <label>:2026                                    ; preds = %2027, %2017
  %i_337 = phi i5 [ 0, %2017 ], [ %i_11_336, %2027 ]
  %exitcond2_336 = icmp eq i5 %i_337, -16
  %empty_1718 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_336 = add i5 %i_337, 1
  br i1 %exitcond2_336, label %2025, label %2027

; <label>:2027                                    ; preds = %2026
  %empty_1719 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1122 = extractvalue { i8, i1, i1 } %empty_1719, 0
  %tmp_336_1720 = zext i5 %i_337 to i64
  %plaintext_addr_337 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_336_1720
  store i8 %tmp_data_1122, i8* %plaintext_addr_337, align 1
  br label %2026

; <label>:2028                                    ; preds = %2024
  %tmp_131_336 = zext i5 %i_1_336 to i64
  %out_addr_340 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_336
  %tmp_data_1123 = load i8* %out_addr_340, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1123, i1 true, i1 false)
  br label %2024

; <label>:2029                                    ; preds = %2030
  %empty_1721 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_355)
  %tmp_356 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2038

; <label>:2030                                    ; preds = %2034, %2031
  %i_1_337 = phi i5 [ 0, %2031 ], [ %i_12_337, %2034 ]
  %exitcond_337 = icmp eq i5 %i_1_337, -16
  %empty_1722 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_337 = add i5 %i_1_337, 1
  br i1 %exitcond_337, label %2029, label %2034

; <label>:2031                                    ; preds = %2032
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2030

; <label>:2032                                    ; preds = %2033, %2023
  %i_338 = phi i5 [ 0, %2023 ], [ %i_11_337, %2033 ]
  %exitcond2_337 = icmp eq i5 %i_338, -16
  %empty_1723 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_337 = add i5 %i_338, 1
  br i1 %exitcond2_337, label %2031, label %2033

; <label>:2033                                    ; preds = %2032
  %empty_1724 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1124 = extractvalue { i8, i1, i1 } %empty_1724, 0
  %tmp_337_1725 = zext i5 %i_338 to i64
  %plaintext_addr_338 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_337_1725
  store i8 %tmp_data_1124, i8* %plaintext_addr_338, align 1
  br label %2032

; <label>:2034                                    ; preds = %2030
  %tmp_131_337 = zext i5 %i_1_337 to i64
  %out_addr_341 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_337
  %tmp_data_1125 = load i8* %out_addr_341, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1125, i1 true, i1 false)
  br label %2030

; <label>:2035                                    ; preds = %2036
  %empty_1726 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_356)
  %tmp_357 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2044

; <label>:2036                                    ; preds = %2040, %2037
  %i_1_338 = phi i5 [ 0, %2037 ], [ %i_12_338, %2040 ]
  %exitcond_338 = icmp eq i5 %i_1_338, -16
  %empty_1727 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_338 = add i5 %i_1_338, 1
  br i1 %exitcond_338, label %2035, label %2040

; <label>:2037                                    ; preds = %2038
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2036

; <label>:2038                                    ; preds = %2039, %2029
  %i_339 = phi i5 [ 0, %2029 ], [ %i_11_338, %2039 ]
  %exitcond2_338 = icmp eq i5 %i_339, -16
  %empty_1728 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_338 = add i5 %i_339, 1
  br i1 %exitcond2_338, label %2037, label %2039

; <label>:2039                                    ; preds = %2038
  %empty_1729 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1126 = extractvalue { i8, i1, i1 } %empty_1729, 0
  %tmp_338_1730 = zext i5 %i_339 to i64
  %plaintext_addr_339 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_338_1730
  store i8 %tmp_data_1126, i8* %plaintext_addr_339, align 1
  br label %2038

; <label>:2040                                    ; preds = %2036
  %tmp_131_338 = zext i5 %i_1_338 to i64
  %out_addr_342 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_338
  %tmp_data_1127 = load i8* %out_addr_342, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1127, i1 true, i1 false)
  br label %2036

; <label>:2041                                    ; preds = %2042
  %empty_1731 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_357)
  %tmp_358 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2050

; <label>:2042                                    ; preds = %2046, %2043
  %i_1_339 = phi i5 [ 0, %2043 ], [ %i_12_339, %2046 ]
  %exitcond_339 = icmp eq i5 %i_1_339, -16
  %empty_1732 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_339 = add i5 %i_1_339, 1
  br i1 %exitcond_339, label %2041, label %2046

; <label>:2043                                    ; preds = %2044
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2042

; <label>:2044                                    ; preds = %2045, %2035
  %i_340 = phi i5 [ 0, %2035 ], [ %i_11_339, %2045 ]
  %exitcond2_339 = icmp eq i5 %i_340, -16
  %empty_1733 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_339 = add i5 %i_340, 1
  br i1 %exitcond2_339, label %2043, label %2045

; <label>:2045                                    ; preds = %2044
  %empty_1734 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1128 = extractvalue { i8, i1, i1 } %empty_1734, 0
  %tmp_339_1735 = zext i5 %i_340 to i64
  %plaintext_addr_340 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_339_1735
  store i8 %tmp_data_1128, i8* %plaintext_addr_340, align 1
  br label %2044

; <label>:2046                                    ; preds = %2042
  %tmp_131_339 = zext i5 %i_1_339 to i64
  %out_addr_343 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_339
  %tmp_data_1129 = load i8* %out_addr_343, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1129, i1 true, i1 false)
  br label %2042

; <label>:2047                                    ; preds = %2048
  %empty_1736 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_358)
  %tmp_359 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2056

; <label>:2048                                    ; preds = %2052, %2049
  %i_1_340 = phi i5 [ 0, %2049 ], [ %i_12_340, %2052 ]
  %exitcond_340 = icmp eq i5 %i_1_340, -16
  %empty_1737 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_340 = add i5 %i_1_340, 1
  br i1 %exitcond_340, label %2047, label %2052

; <label>:2049                                    ; preds = %2050
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2048

; <label>:2050                                    ; preds = %2051, %2041
  %i_341 = phi i5 [ 0, %2041 ], [ %i_11_340, %2051 ]
  %exitcond2_340 = icmp eq i5 %i_341, -16
  %empty_1738 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_340 = add i5 %i_341, 1
  br i1 %exitcond2_340, label %2049, label %2051

; <label>:2051                                    ; preds = %2050
  %empty_1739 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1130 = extractvalue { i8, i1, i1 } %empty_1739, 0
  %tmp_340_1740 = zext i5 %i_341 to i64
  %plaintext_addr_341 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_340_1740
  store i8 %tmp_data_1130, i8* %plaintext_addr_341, align 1
  br label %2050

; <label>:2052                                    ; preds = %2048
  %tmp_131_340 = zext i5 %i_1_340 to i64
  %out_addr_344 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_340
  %tmp_data_1131 = load i8* %out_addr_344, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1131, i1 true, i1 false)
  br label %2048

; <label>:2053                                    ; preds = %2054
  %empty_1741 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_359)
  %tmp_360 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2062

; <label>:2054                                    ; preds = %2058, %2055
  %i_1_341 = phi i5 [ 0, %2055 ], [ %i_12_341, %2058 ]
  %exitcond_341 = icmp eq i5 %i_1_341, -16
  %empty_1742 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_341 = add i5 %i_1_341, 1
  br i1 %exitcond_341, label %2053, label %2058

; <label>:2055                                    ; preds = %2056
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2054

; <label>:2056                                    ; preds = %2057, %2047
  %i_342 = phi i5 [ 0, %2047 ], [ %i_11_341, %2057 ]
  %exitcond2_341 = icmp eq i5 %i_342, -16
  %empty_1743 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_341 = add i5 %i_342, 1
  br i1 %exitcond2_341, label %2055, label %2057

; <label>:2057                                    ; preds = %2056
  %empty_1744 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1132 = extractvalue { i8, i1, i1 } %empty_1744, 0
  %tmp_341_1745 = zext i5 %i_342 to i64
  %plaintext_addr_342 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_341_1745
  store i8 %tmp_data_1132, i8* %plaintext_addr_342, align 1
  br label %2056

; <label>:2058                                    ; preds = %2054
  %tmp_131_341 = zext i5 %i_1_341 to i64
  %out_addr_345 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_341
  %tmp_data_1133 = load i8* %out_addr_345, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1133, i1 true, i1 false)
  br label %2054

; <label>:2059                                    ; preds = %2060
  %empty_1746 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_360)
  %tmp_361 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2068

; <label>:2060                                    ; preds = %2064, %2061
  %i_1_342 = phi i5 [ 0, %2061 ], [ %i_12_342, %2064 ]
  %exitcond_342 = icmp eq i5 %i_1_342, -16
  %empty_1747 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_342 = add i5 %i_1_342, 1
  br i1 %exitcond_342, label %2059, label %2064

; <label>:2061                                    ; preds = %2062
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2060

; <label>:2062                                    ; preds = %2063, %2053
  %i_343 = phi i5 [ 0, %2053 ], [ %i_11_342, %2063 ]
  %exitcond2_342 = icmp eq i5 %i_343, -16
  %empty_1748 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_342 = add i5 %i_343, 1
  br i1 %exitcond2_342, label %2061, label %2063

; <label>:2063                                    ; preds = %2062
  %empty_1749 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1134 = extractvalue { i8, i1, i1 } %empty_1749, 0
  %tmp_342_1750 = zext i5 %i_343 to i64
  %plaintext_addr_343 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_342_1750
  store i8 %tmp_data_1134, i8* %plaintext_addr_343, align 1
  br label %2062

; <label>:2064                                    ; preds = %2060
  %tmp_131_342 = zext i5 %i_1_342 to i64
  %out_addr_346 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_342
  %tmp_data_1135 = load i8* %out_addr_346, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1135, i1 true, i1 false)
  br label %2060

; <label>:2065                                    ; preds = %2066
  %empty_1751 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_361)
  %tmp_362 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2074

; <label>:2066                                    ; preds = %2070, %2067
  %i_1_343 = phi i5 [ 0, %2067 ], [ %i_12_343, %2070 ]
  %exitcond_343 = icmp eq i5 %i_1_343, -16
  %empty_1752 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_343 = add i5 %i_1_343, 1
  br i1 %exitcond_343, label %2065, label %2070

; <label>:2067                                    ; preds = %2068
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2066

; <label>:2068                                    ; preds = %2069, %2059
  %i_344 = phi i5 [ 0, %2059 ], [ %i_11_343, %2069 ]
  %exitcond2_343 = icmp eq i5 %i_344, -16
  %empty_1753 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_343 = add i5 %i_344, 1
  br i1 %exitcond2_343, label %2067, label %2069

; <label>:2069                                    ; preds = %2068
  %empty_1754 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1136 = extractvalue { i8, i1, i1 } %empty_1754, 0
  %tmp_343_1755 = zext i5 %i_344 to i64
  %plaintext_addr_344 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_343_1755
  store i8 %tmp_data_1136, i8* %plaintext_addr_344, align 1
  br label %2068

; <label>:2070                                    ; preds = %2066
  %tmp_131_343 = zext i5 %i_1_343 to i64
  %out_addr_347 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_343
  %tmp_data_1137 = load i8* %out_addr_347, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1137, i1 true, i1 false)
  br label %2066

; <label>:2071                                    ; preds = %2072
  %empty_1756 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_362)
  %tmp_363 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2080

; <label>:2072                                    ; preds = %2076, %2073
  %i_1_344 = phi i5 [ 0, %2073 ], [ %i_12_344, %2076 ]
  %exitcond_344 = icmp eq i5 %i_1_344, -16
  %empty_1757 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_344 = add i5 %i_1_344, 1
  br i1 %exitcond_344, label %2071, label %2076

; <label>:2073                                    ; preds = %2074
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2072

; <label>:2074                                    ; preds = %2075, %2065
  %i_345 = phi i5 [ 0, %2065 ], [ %i_11_344, %2075 ]
  %exitcond2_344 = icmp eq i5 %i_345, -16
  %empty_1758 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_344 = add i5 %i_345, 1
  br i1 %exitcond2_344, label %2073, label %2075

; <label>:2075                                    ; preds = %2074
  %empty_1759 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1138 = extractvalue { i8, i1, i1 } %empty_1759, 0
  %tmp_344_1760 = zext i5 %i_345 to i64
  %plaintext_addr_345 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_344_1760
  store i8 %tmp_data_1138, i8* %plaintext_addr_345, align 1
  br label %2074

; <label>:2076                                    ; preds = %2072
  %tmp_131_344 = zext i5 %i_1_344 to i64
  %out_addr_348 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_344
  %tmp_data_1139 = load i8* %out_addr_348, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1139, i1 true, i1 false)
  br label %2072

; <label>:2077                                    ; preds = %2078
  %empty_1761 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_363)
  %tmp_364 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2086

; <label>:2078                                    ; preds = %2082, %2079
  %i_1_345 = phi i5 [ 0, %2079 ], [ %i_12_345, %2082 ]
  %exitcond_345 = icmp eq i5 %i_1_345, -16
  %empty_1762 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_345 = add i5 %i_1_345, 1
  br i1 %exitcond_345, label %2077, label %2082

; <label>:2079                                    ; preds = %2080
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2078

; <label>:2080                                    ; preds = %2081, %2071
  %i_346 = phi i5 [ 0, %2071 ], [ %i_11_345, %2081 ]
  %exitcond2_345 = icmp eq i5 %i_346, -16
  %empty_1763 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_345 = add i5 %i_346, 1
  br i1 %exitcond2_345, label %2079, label %2081

; <label>:2081                                    ; preds = %2080
  %empty_1764 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1140 = extractvalue { i8, i1, i1 } %empty_1764, 0
  %tmp_345_1765 = zext i5 %i_346 to i64
  %plaintext_addr_346 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_345_1765
  store i8 %tmp_data_1140, i8* %plaintext_addr_346, align 1
  br label %2080

; <label>:2082                                    ; preds = %2078
  %tmp_131_345 = zext i5 %i_1_345 to i64
  %out_addr_349 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_345
  %tmp_data_1141 = load i8* %out_addr_349, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1141, i1 true, i1 false)
  br label %2078

; <label>:2083                                    ; preds = %2084
  %empty_1766 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_364)
  %tmp_365 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2092

; <label>:2084                                    ; preds = %2088, %2085
  %i_1_346 = phi i5 [ 0, %2085 ], [ %i_12_346, %2088 ]
  %exitcond_346 = icmp eq i5 %i_1_346, -16
  %empty_1767 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_346 = add i5 %i_1_346, 1
  br i1 %exitcond_346, label %2083, label %2088

; <label>:2085                                    ; preds = %2086
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2084

; <label>:2086                                    ; preds = %2087, %2077
  %i_347 = phi i5 [ 0, %2077 ], [ %i_11_346, %2087 ]
  %exitcond2_346 = icmp eq i5 %i_347, -16
  %empty_1768 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_346 = add i5 %i_347, 1
  br i1 %exitcond2_346, label %2085, label %2087

; <label>:2087                                    ; preds = %2086
  %empty_1769 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1142 = extractvalue { i8, i1, i1 } %empty_1769, 0
  %tmp_346_1770 = zext i5 %i_347 to i64
  %plaintext_addr_347 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_346_1770
  store i8 %tmp_data_1142, i8* %plaintext_addr_347, align 1
  br label %2086

; <label>:2088                                    ; preds = %2084
  %tmp_131_346 = zext i5 %i_1_346 to i64
  %out_addr_350 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_346
  %tmp_data_1143 = load i8* %out_addr_350, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1143, i1 true, i1 false)
  br label %2084

; <label>:2089                                    ; preds = %2090
  %empty_1771 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_365)
  %tmp_366 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2098

; <label>:2090                                    ; preds = %2094, %2091
  %i_1_347 = phi i5 [ 0, %2091 ], [ %i_12_347, %2094 ]
  %exitcond_347 = icmp eq i5 %i_1_347, -16
  %empty_1772 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_347 = add i5 %i_1_347, 1
  br i1 %exitcond_347, label %2089, label %2094

; <label>:2091                                    ; preds = %2092
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2090

; <label>:2092                                    ; preds = %2093, %2083
  %i_348 = phi i5 [ 0, %2083 ], [ %i_11_347, %2093 ]
  %exitcond2_347 = icmp eq i5 %i_348, -16
  %empty_1773 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_347 = add i5 %i_348, 1
  br i1 %exitcond2_347, label %2091, label %2093

; <label>:2093                                    ; preds = %2092
  %empty_1774 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1144 = extractvalue { i8, i1, i1 } %empty_1774, 0
  %tmp_347_1775 = zext i5 %i_348 to i64
  %plaintext_addr_348 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_347_1775
  store i8 %tmp_data_1144, i8* %plaintext_addr_348, align 1
  br label %2092

; <label>:2094                                    ; preds = %2090
  %tmp_131_347 = zext i5 %i_1_347 to i64
  %out_addr_351 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_347
  %tmp_data_1145 = load i8* %out_addr_351, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1145, i1 true, i1 false)
  br label %2090

; <label>:2095                                    ; preds = %2096
  %empty_1776 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_366)
  %tmp_367 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2104

; <label>:2096                                    ; preds = %2100, %2097
  %i_1_348 = phi i5 [ 0, %2097 ], [ %i_12_348, %2100 ]
  %exitcond_348 = icmp eq i5 %i_1_348, -16
  %empty_1777 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_348 = add i5 %i_1_348, 1
  br i1 %exitcond_348, label %2095, label %2100

; <label>:2097                                    ; preds = %2098
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2096

; <label>:2098                                    ; preds = %2099, %2089
  %i_349 = phi i5 [ 0, %2089 ], [ %i_11_348, %2099 ]
  %exitcond2_348 = icmp eq i5 %i_349, -16
  %empty_1778 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_348 = add i5 %i_349, 1
  br i1 %exitcond2_348, label %2097, label %2099

; <label>:2099                                    ; preds = %2098
  %empty_1779 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1146 = extractvalue { i8, i1, i1 } %empty_1779, 0
  %tmp_348_1780 = zext i5 %i_349 to i64
  %plaintext_addr_349 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_348_1780
  store i8 %tmp_data_1146, i8* %plaintext_addr_349, align 1
  br label %2098

; <label>:2100                                    ; preds = %2096
  %tmp_131_348 = zext i5 %i_1_348 to i64
  %out_addr_352 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_348
  %tmp_data_1147 = load i8* %out_addr_352, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1147, i1 true, i1 false)
  br label %2096

; <label>:2101                                    ; preds = %2102
  %empty_1781 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_367)
  %tmp_368 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2110

; <label>:2102                                    ; preds = %2106, %2103
  %i_1_349 = phi i5 [ 0, %2103 ], [ %i_12_349, %2106 ]
  %exitcond_349 = icmp eq i5 %i_1_349, -16
  %empty_1782 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_349 = add i5 %i_1_349, 1
  br i1 %exitcond_349, label %2101, label %2106

; <label>:2103                                    ; preds = %2104
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2102

; <label>:2104                                    ; preds = %2105, %2095
  %i_350 = phi i5 [ 0, %2095 ], [ %i_11_349, %2105 ]
  %exitcond2_349 = icmp eq i5 %i_350, -16
  %empty_1783 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_349 = add i5 %i_350, 1
  br i1 %exitcond2_349, label %2103, label %2105

; <label>:2105                                    ; preds = %2104
  %empty_1784 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1148 = extractvalue { i8, i1, i1 } %empty_1784, 0
  %tmp_349_1785 = zext i5 %i_350 to i64
  %plaintext_addr_350 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_349_1785
  store i8 %tmp_data_1148, i8* %plaintext_addr_350, align 1
  br label %2104

; <label>:2106                                    ; preds = %2102
  %tmp_131_349 = zext i5 %i_1_349 to i64
  %out_addr_353 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_349
  %tmp_data_1149 = load i8* %out_addr_353, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1149, i1 true, i1 false)
  br label %2102

; <label>:2107                                    ; preds = %2108
  %empty_1786 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_368)
  %tmp_369 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2116

; <label>:2108                                    ; preds = %2112, %2109
  %i_1_350 = phi i5 [ 0, %2109 ], [ %i_12_350, %2112 ]
  %exitcond_350 = icmp eq i5 %i_1_350, -16
  %empty_1787 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_350 = add i5 %i_1_350, 1
  br i1 %exitcond_350, label %2107, label %2112

; <label>:2109                                    ; preds = %2110
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2108

; <label>:2110                                    ; preds = %2111, %2101
  %i_351 = phi i5 [ 0, %2101 ], [ %i_11_350, %2111 ]
  %exitcond2_350 = icmp eq i5 %i_351, -16
  %empty_1788 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_350 = add i5 %i_351, 1
  br i1 %exitcond2_350, label %2109, label %2111

; <label>:2111                                    ; preds = %2110
  %empty_1789 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1150 = extractvalue { i8, i1, i1 } %empty_1789, 0
  %tmp_350_1790 = zext i5 %i_351 to i64
  %plaintext_addr_351 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_350_1790
  store i8 %tmp_data_1150, i8* %plaintext_addr_351, align 1
  br label %2110

; <label>:2112                                    ; preds = %2108
  %tmp_131_350 = zext i5 %i_1_350 to i64
  %out_addr_354 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_350
  %tmp_data_1151 = load i8* %out_addr_354, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1151, i1 true, i1 false)
  br label %2108

; <label>:2113                                    ; preds = %2114
  %empty_1791 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_369)
  %tmp_370 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2122

; <label>:2114                                    ; preds = %2118, %2115
  %i_1_351 = phi i5 [ 0, %2115 ], [ %i_12_351, %2118 ]
  %exitcond_351 = icmp eq i5 %i_1_351, -16
  %empty_1792 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_351 = add i5 %i_1_351, 1
  br i1 %exitcond_351, label %2113, label %2118

; <label>:2115                                    ; preds = %2116
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2114

; <label>:2116                                    ; preds = %2117, %2107
  %i_352 = phi i5 [ 0, %2107 ], [ %i_11_351, %2117 ]
  %exitcond2_351 = icmp eq i5 %i_352, -16
  %empty_1793 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_351 = add i5 %i_352, 1
  br i1 %exitcond2_351, label %2115, label %2117

; <label>:2117                                    ; preds = %2116
  %empty_1794 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1152 = extractvalue { i8, i1, i1 } %empty_1794, 0
  %tmp_351_1795 = zext i5 %i_352 to i64
  %plaintext_addr_352 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_351_1795
  store i8 %tmp_data_1152, i8* %plaintext_addr_352, align 1
  br label %2116

; <label>:2118                                    ; preds = %2114
  %tmp_131_351 = zext i5 %i_1_351 to i64
  %out_addr_355 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_351
  %tmp_data_1153 = load i8* %out_addr_355, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1153, i1 true, i1 false)
  br label %2114

; <label>:2119                                    ; preds = %2120
  %empty_1796 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_370)
  %tmp_371 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2128

; <label>:2120                                    ; preds = %2124, %2121
  %i_1_352 = phi i5 [ 0, %2121 ], [ %i_12_352, %2124 ]
  %exitcond_352 = icmp eq i5 %i_1_352, -16
  %empty_1797 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_352 = add i5 %i_1_352, 1
  br i1 %exitcond_352, label %2119, label %2124

; <label>:2121                                    ; preds = %2122
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2120

; <label>:2122                                    ; preds = %2123, %2113
  %i_353 = phi i5 [ 0, %2113 ], [ %i_11_352, %2123 ]
  %exitcond2_352 = icmp eq i5 %i_353, -16
  %empty_1798 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_352 = add i5 %i_353, 1
  br i1 %exitcond2_352, label %2121, label %2123

; <label>:2123                                    ; preds = %2122
  %empty_1799 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1154 = extractvalue { i8, i1, i1 } %empty_1799, 0
  %tmp_352_1800 = zext i5 %i_353 to i64
  %plaintext_addr_353 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_352_1800
  store i8 %tmp_data_1154, i8* %plaintext_addr_353, align 1
  br label %2122

; <label>:2124                                    ; preds = %2120
  %tmp_131_352 = zext i5 %i_1_352 to i64
  %out_addr_356 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_352
  %tmp_data_1155 = load i8* %out_addr_356, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1155, i1 true, i1 false)
  br label %2120

; <label>:2125                                    ; preds = %2126
  %empty_1801 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_371)
  %tmp_372 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2134

; <label>:2126                                    ; preds = %2130, %2127
  %i_1_353 = phi i5 [ 0, %2127 ], [ %i_12_353, %2130 ]
  %exitcond_353 = icmp eq i5 %i_1_353, -16
  %empty_1802 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_353 = add i5 %i_1_353, 1
  br i1 %exitcond_353, label %2125, label %2130

; <label>:2127                                    ; preds = %2128
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2126

; <label>:2128                                    ; preds = %2129, %2119
  %i_354 = phi i5 [ 0, %2119 ], [ %i_11_353, %2129 ]
  %exitcond2_353 = icmp eq i5 %i_354, -16
  %empty_1803 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_353 = add i5 %i_354, 1
  br i1 %exitcond2_353, label %2127, label %2129

; <label>:2129                                    ; preds = %2128
  %empty_1804 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1156 = extractvalue { i8, i1, i1 } %empty_1804, 0
  %tmp_353_1805 = zext i5 %i_354 to i64
  %plaintext_addr_354 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_353_1805
  store i8 %tmp_data_1156, i8* %plaintext_addr_354, align 1
  br label %2128

; <label>:2130                                    ; preds = %2126
  %tmp_131_353 = zext i5 %i_1_353 to i64
  %out_addr_357 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_353
  %tmp_data_1157 = load i8* %out_addr_357, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1157, i1 true, i1 false)
  br label %2126

; <label>:2131                                    ; preds = %2132
  %empty_1806 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_372)
  %tmp_373 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2140

; <label>:2132                                    ; preds = %2136, %2133
  %i_1_354 = phi i5 [ 0, %2133 ], [ %i_12_354, %2136 ]
  %exitcond_354 = icmp eq i5 %i_1_354, -16
  %empty_1807 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_354 = add i5 %i_1_354, 1
  br i1 %exitcond_354, label %2131, label %2136

; <label>:2133                                    ; preds = %2134
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2132

; <label>:2134                                    ; preds = %2135, %2125
  %i_355 = phi i5 [ 0, %2125 ], [ %i_11_354, %2135 ]
  %exitcond2_354 = icmp eq i5 %i_355, -16
  %empty_1808 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_354 = add i5 %i_355, 1
  br i1 %exitcond2_354, label %2133, label %2135

; <label>:2135                                    ; preds = %2134
  %empty_1809 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1158 = extractvalue { i8, i1, i1 } %empty_1809, 0
  %tmp_354_1810 = zext i5 %i_355 to i64
  %plaintext_addr_355 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_354_1810
  store i8 %tmp_data_1158, i8* %plaintext_addr_355, align 1
  br label %2134

; <label>:2136                                    ; preds = %2132
  %tmp_131_354 = zext i5 %i_1_354 to i64
  %out_addr_358 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_354
  %tmp_data_1159 = load i8* %out_addr_358, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1159, i1 true, i1 false)
  br label %2132

; <label>:2137                                    ; preds = %2138
  %empty_1811 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_373)
  %tmp_374 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2146

; <label>:2138                                    ; preds = %2142, %2139
  %i_1_355 = phi i5 [ 0, %2139 ], [ %i_12_355, %2142 ]
  %exitcond_355 = icmp eq i5 %i_1_355, -16
  %empty_1812 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_355 = add i5 %i_1_355, 1
  br i1 %exitcond_355, label %2137, label %2142

; <label>:2139                                    ; preds = %2140
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2138

; <label>:2140                                    ; preds = %2141, %2131
  %i_356 = phi i5 [ 0, %2131 ], [ %i_11_355, %2141 ]
  %exitcond2_355 = icmp eq i5 %i_356, -16
  %empty_1813 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_355 = add i5 %i_356, 1
  br i1 %exitcond2_355, label %2139, label %2141

; <label>:2141                                    ; preds = %2140
  %empty_1814 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1160 = extractvalue { i8, i1, i1 } %empty_1814, 0
  %tmp_355_1815 = zext i5 %i_356 to i64
  %plaintext_addr_356 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_355_1815
  store i8 %tmp_data_1160, i8* %plaintext_addr_356, align 1
  br label %2140

; <label>:2142                                    ; preds = %2138
  %tmp_131_355 = zext i5 %i_1_355 to i64
  %out_addr_359 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_355
  %tmp_data_1161 = load i8* %out_addr_359, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1161, i1 true, i1 false)
  br label %2138

; <label>:2143                                    ; preds = %2144
  %empty_1816 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_374)
  %tmp_375 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2152

; <label>:2144                                    ; preds = %2148, %2145
  %i_1_356 = phi i5 [ 0, %2145 ], [ %i_12_356, %2148 ]
  %exitcond_356 = icmp eq i5 %i_1_356, -16
  %empty_1817 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_356 = add i5 %i_1_356, 1
  br i1 %exitcond_356, label %2143, label %2148

; <label>:2145                                    ; preds = %2146
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2144

; <label>:2146                                    ; preds = %2147, %2137
  %i_357 = phi i5 [ 0, %2137 ], [ %i_11_356, %2147 ]
  %exitcond2_356 = icmp eq i5 %i_357, -16
  %empty_1818 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_356 = add i5 %i_357, 1
  br i1 %exitcond2_356, label %2145, label %2147

; <label>:2147                                    ; preds = %2146
  %empty_1819 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1162 = extractvalue { i8, i1, i1 } %empty_1819, 0
  %tmp_356_1820 = zext i5 %i_357 to i64
  %plaintext_addr_357 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_356_1820
  store i8 %tmp_data_1162, i8* %plaintext_addr_357, align 1
  br label %2146

; <label>:2148                                    ; preds = %2144
  %tmp_131_356 = zext i5 %i_1_356 to i64
  %out_addr_360 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_356
  %tmp_data_1163 = load i8* %out_addr_360, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1163, i1 true, i1 false)
  br label %2144

; <label>:2149                                    ; preds = %2150
  %empty_1821 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_375)
  %tmp_376 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2158

; <label>:2150                                    ; preds = %2154, %2151
  %i_1_357 = phi i5 [ 0, %2151 ], [ %i_12_357, %2154 ]
  %exitcond_357 = icmp eq i5 %i_1_357, -16
  %empty_1822 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_357 = add i5 %i_1_357, 1
  br i1 %exitcond_357, label %2149, label %2154

; <label>:2151                                    ; preds = %2152
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2150

; <label>:2152                                    ; preds = %2153, %2143
  %i_358 = phi i5 [ 0, %2143 ], [ %i_11_357, %2153 ]
  %exitcond2_357 = icmp eq i5 %i_358, -16
  %empty_1823 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_357 = add i5 %i_358, 1
  br i1 %exitcond2_357, label %2151, label %2153

; <label>:2153                                    ; preds = %2152
  %empty_1824 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1164 = extractvalue { i8, i1, i1 } %empty_1824, 0
  %tmp_357_1825 = zext i5 %i_358 to i64
  %plaintext_addr_358 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_357_1825
  store i8 %tmp_data_1164, i8* %plaintext_addr_358, align 1
  br label %2152

; <label>:2154                                    ; preds = %2150
  %tmp_131_357 = zext i5 %i_1_357 to i64
  %out_addr_361 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_357
  %tmp_data_1165 = load i8* %out_addr_361, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1165, i1 true, i1 false)
  br label %2150

; <label>:2155                                    ; preds = %2156
  %empty_1826 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_376)
  %tmp_377 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2164

; <label>:2156                                    ; preds = %2160, %2157
  %i_1_358 = phi i5 [ 0, %2157 ], [ %i_12_358, %2160 ]
  %exitcond_358 = icmp eq i5 %i_1_358, -16
  %empty_1827 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_358 = add i5 %i_1_358, 1
  br i1 %exitcond_358, label %2155, label %2160

; <label>:2157                                    ; preds = %2158
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2156

; <label>:2158                                    ; preds = %2159, %2149
  %i_359 = phi i5 [ 0, %2149 ], [ %i_11_358, %2159 ]
  %exitcond2_358 = icmp eq i5 %i_359, -16
  %empty_1828 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_358 = add i5 %i_359, 1
  br i1 %exitcond2_358, label %2157, label %2159

; <label>:2159                                    ; preds = %2158
  %empty_1829 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1166 = extractvalue { i8, i1, i1 } %empty_1829, 0
  %tmp_358_1830 = zext i5 %i_359 to i64
  %plaintext_addr_359 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_358_1830
  store i8 %tmp_data_1166, i8* %plaintext_addr_359, align 1
  br label %2158

; <label>:2160                                    ; preds = %2156
  %tmp_131_358 = zext i5 %i_1_358 to i64
  %out_addr_362 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_358
  %tmp_data_1167 = load i8* %out_addr_362, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1167, i1 true, i1 false)
  br label %2156

; <label>:2161                                    ; preds = %2162
  %empty_1831 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_377)
  %tmp_378 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2170

; <label>:2162                                    ; preds = %2166, %2163
  %i_1_359 = phi i5 [ 0, %2163 ], [ %i_12_359, %2166 ]
  %exitcond_359 = icmp eq i5 %i_1_359, -16
  %empty_1832 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_359 = add i5 %i_1_359, 1
  br i1 %exitcond_359, label %2161, label %2166

; <label>:2163                                    ; preds = %2164
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2162

; <label>:2164                                    ; preds = %2165, %2155
  %i_360 = phi i5 [ 0, %2155 ], [ %i_11_359, %2165 ]
  %exitcond2_359 = icmp eq i5 %i_360, -16
  %empty_1833 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_359 = add i5 %i_360, 1
  br i1 %exitcond2_359, label %2163, label %2165

; <label>:2165                                    ; preds = %2164
  %empty_1834 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1168 = extractvalue { i8, i1, i1 } %empty_1834, 0
  %tmp_359_1835 = zext i5 %i_360 to i64
  %plaintext_addr_360 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_359_1835
  store i8 %tmp_data_1168, i8* %plaintext_addr_360, align 1
  br label %2164

; <label>:2166                                    ; preds = %2162
  %tmp_131_359 = zext i5 %i_1_359 to i64
  %out_addr_363 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_359
  %tmp_data_1169 = load i8* %out_addr_363, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1169, i1 true, i1 false)
  br label %2162

; <label>:2167                                    ; preds = %2168
  %empty_1836 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_378)
  %tmp_379 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2176

; <label>:2168                                    ; preds = %2172, %2169
  %i_1_360 = phi i5 [ 0, %2169 ], [ %i_12_360, %2172 ]
  %exitcond_360 = icmp eq i5 %i_1_360, -16
  %empty_1837 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_360 = add i5 %i_1_360, 1
  br i1 %exitcond_360, label %2167, label %2172

; <label>:2169                                    ; preds = %2170
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2168

; <label>:2170                                    ; preds = %2171, %2161
  %i_361 = phi i5 [ 0, %2161 ], [ %i_11_360, %2171 ]
  %exitcond2_360 = icmp eq i5 %i_361, -16
  %empty_1838 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_360 = add i5 %i_361, 1
  br i1 %exitcond2_360, label %2169, label %2171

; <label>:2171                                    ; preds = %2170
  %empty_1839 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1170 = extractvalue { i8, i1, i1 } %empty_1839, 0
  %tmp_360_1840 = zext i5 %i_361 to i64
  %plaintext_addr_361 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_360_1840
  store i8 %tmp_data_1170, i8* %plaintext_addr_361, align 1
  br label %2170

; <label>:2172                                    ; preds = %2168
  %tmp_131_360 = zext i5 %i_1_360 to i64
  %out_addr_364 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_360
  %tmp_data_1171 = load i8* %out_addr_364, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1171, i1 true, i1 false)
  br label %2168

; <label>:2173                                    ; preds = %2174
  %empty_1841 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_379)
  %tmp_380 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2182

; <label>:2174                                    ; preds = %2178, %2175
  %i_1_361 = phi i5 [ 0, %2175 ], [ %i_12_361, %2178 ]
  %exitcond_361 = icmp eq i5 %i_1_361, -16
  %empty_1842 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_361 = add i5 %i_1_361, 1
  br i1 %exitcond_361, label %2173, label %2178

; <label>:2175                                    ; preds = %2176
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2174

; <label>:2176                                    ; preds = %2177, %2167
  %i_362 = phi i5 [ 0, %2167 ], [ %i_11_361, %2177 ]
  %exitcond2_361 = icmp eq i5 %i_362, -16
  %empty_1843 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_361 = add i5 %i_362, 1
  br i1 %exitcond2_361, label %2175, label %2177

; <label>:2177                                    ; preds = %2176
  %empty_1844 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1172 = extractvalue { i8, i1, i1 } %empty_1844, 0
  %tmp_361_1845 = zext i5 %i_362 to i64
  %plaintext_addr_362 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_361_1845
  store i8 %tmp_data_1172, i8* %plaintext_addr_362, align 1
  br label %2176

; <label>:2178                                    ; preds = %2174
  %tmp_131_361 = zext i5 %i_1_361 to i64
  %out_addr_365 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_361
  %tmp_data_1173 = load i8* %out_addr_365, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1173, i1 true, i1 false)
  br label %2174

; <label>:2179                                    ; preds = %2180
  %empty_1846 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_380)
  %tmp_381 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2188

; <label>:2180                                    ; preds = %2184, %2181
  %i_1_362 = phi i5 [ 0, %2181 ], [ %i_12_362, %2184 ]
  %exitcond_362 = icmp eq i5 %i_1_362, -16
  %empty_1847 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_362 = add i5 %i_1_362, 1
  br i1 %exitcond_362, label %2179, label %2184

; <label>:2181                                    ; preds = %2182
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2180

; <label>:2182                                    ; preds = %2183, %2173
  %i_363 = phi i5 [ 0, %2173 ], [ %i_11_362, %2183 ]
  %exitcond2_362 = icmp eq i5 %i_363, -16
  %empty_1848 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_362 = add i5 %i_363, 1
  br i1 %exitcond2_362, label %2181, label %2183

; <label>:2183                                    ; preds = %2182
  %empty_1849 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1174 = extractvalue { i8, i1, i1 } %empty_1849, 0
  %tmp_362_1850 = zext i5 %i_363 to i64
  %plaintext_addr_363 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_362_1850
  store i8 %tmp_data_1174, i8* %plaintext_addr_363, align 1
  br label %2182

; <label>:2184                                    ; preds = %2180
  %tmp_131_362 = zext i5 %i_1_362 to i64
  %out_addr_366 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_362
  %tmp_data_1175 = load i8* %out_addr_366, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1175, i1 true, i1 false)
  br label %2180

; <label>:2185                                    ; preds = %2186
  %empty_1851 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_381)
  %tmp_382 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2194

; <label>:2186                                    ; preds = %2190, %2187
  %i_1_363 = phi i5 [ 0, %2187 ], [ %i_12_363, %2190 ]
  %exitcond_363 = icmp eq i5 %i_1_363, -16
  %empty_1852 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_363 = add i5 %i_1_363, 1
  br i1 %exitcond_363, label %2185, label %2190

; <label>:2187                                    ; preds = %2188
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2186

; <label>:2188                                    ; preds = %2189, %2179
  %i_364 = phi i5 [ 0, %2179 ], [ %i_11_363, %2189 ]
  %exitcond2_363 = icmp eq i5 %i_364, -16
  %empty_1853 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_363 = add i5 %i_364, 1
  br i1 %exitcond2_363, label %2187, label %2189

; <label>:2189                                    ; preds = %2188
  %empty_1854 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1176 = extractvalue { i8, i1, i1 } %empty_1854, 0
  %tmp_363_1855 = zext i5 %i_364 to i64
  %plaintext_addr_364 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_363_1855
  store i8 %tmp_data_1176, i8* %plaintext_addr_364, align 1
  br label %2188

; <label>:2190                                    ; preds = %2186
  %tmp_131_363 = zext i5 %i_1_363 to i64
  %out_addr_367 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_363
  %tmp_data_1177 = load i8* %out_addr_367, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1177, i1 true, i1 false)
  br label %2186

; <label>:2191                                    ; preds = %2192
  %empty_1856 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_382)
  %tmp_383 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2200

; <label>:2192                                    ; preds = %2196, %2193
  %i_1_364 = phi i5 [ 0, %2193 ], [ %i_12_364, %2196 ]
  %exitcond_364 = icmp eq i5 %i_1_364, -16
  %empty_1857 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_364 = add i5 %i_1_364, 1
  br i1 %exitcond_364, label %2191, label %2196

; <label>:2193                                    ; preds = %2194
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2192

; <label>:2194                                    ; preds = %2195, %2185
  %i_365 = phi i5 [ 0, %2185 ], [ %i_11_364, %2195 ]
  %exitcond2_364 = icmp eq i5 %i_365, -16
  %empty_1858 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_364 = add i5 %i_365, 1
  br i1 %exitcond2_364, label %2193, label %2195

; <label>:2195                                    ; preds = %2194
  %empty_1859 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1178 = extractvalue { i8, i1, i1 } %empty_1859, 0
  %tmp_364_1860 = zext i5 %i_365 to i64
  %plaintext_addr_365 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_364_1860
  store i8 %tmp_data_1178, i8* %plaintext_addr_365, align 1
  br label %2194

; <label>:2196                                    ; preds = %2192
  %tmp_131_364 = zext i5 %i_1_364 to i64
  %out_addr_368 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_364
  %tmp_data_1179 = load i8* %out_addr_368, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1179, i1 true, i1 false)
  br label %2192

; <label>:2197                                    ; preds = %2198
  %empty_1861 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_383)
  %tmp_384 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2206

; <label>:2198                                    ; preds = %2202, %2199
  %i_1_365 = phi i5 [ 0, %2199 ], [ %i_12_365, %2202 ]
  %exitcond_365 = icmp eq i5 %i_1_365, -16
  %empty_1862 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_365 = add i5 %i_1_365, 1
  br i1 %exitcond_365, label %2197, label %2202

; <label>:2199                                    ; preds = %2200
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2198

; <label>:2200                                    ; preds = %2201, %2191
  %i_366 = phi i5 [ 0, %2191 ], [ %i_11_365, %2201 ]
  %exitcond2_365 = icmp eq i5 %i_366, -16
  %empty_1863 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_365 = add i5 %i_366, 1
  br i1 %exitcond2_365, label %2199, label %2201

; <label>:2201                                    ; preds = %2200
  %empty_1864 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1180 = extractvalue { i8, i1, i1 } %empty_1864, 0
  %tmp_365_1865 = zext i5 %i_366 to i64
  %plaintext_addr_366 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_365_1865
  store i8 %tmp_data_1180, i8* %plaintext_addr_366, align 1
  br label %2200

; <label>:2202                                    ; preds = %2198
  %tmp_131_365 = zext i5 %i_1_365 to i64
  %out_addr_369 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_365
  %tmp_data_1181 = load i8* %out_addr_369, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1181, i1 true, i1 false)
  br label %2198

; <label>:2203                                    ; preds = %2204
  %empty_1866 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_384)
  %tmp_385 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2212

; <label>:2204                                    ; preds = %2208, %2205
  %i_1_366 = phi i5 [ 0, %2205 ], [ %i_12_366, %2208 ]
  %exitcond_366 = icmp eq i5 %i_1_366, -16
  %empty_1867 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_366 = add i5 %i_1_366, 1
  br i1 %exitcond_366, label %2203, label %2208

; <label>:2205                                    ; preds = %2206
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2204

; <label>:2206                                    ; preds = %2207, %2197
  %i_367 = phi i5 [ 0, %2197 ], [ %i_11_366, %2207 ]
  %exitcond2_366 = icmp eq i5 %i_367, -16
  %empty_1868 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_366 = add i5 %i_367, 1
  br i1 %exitcond2_366, label %2205, label %2207

; <label>:2207                                    ; preds = %2206
  %empty_1869 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1182 = extractvalue { i8, i1, i1 } %empty_1869, 0
  %tmp_366_1870 = zext i5 %i_367 to i64
  %plaintext_addr_367 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_366_1870
  store i8 %tmp_data_1182, i8* %plaintext_addr_367, align 1
  br label %2206

; <label>:2208                                    ; preds = %2204
  %tmp_131_366 = zext i5 %i_1_366 to i64
  %out_addr_370 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_366
  %tmp_data_1183 = load i8* %out_addr_370, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1183, i1 true, i1 false)
  br label %2204

; <label>:2209                                    ; preds = %2210
  %empty_1871 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_385)
  %tmp_386 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2218

; <label>:2210                                    ; preds = %2214, %2211
  %i_1_367 = phi i5 [ 0, %2211 ], [ %i_12_367, %2214 ]
  %exitcond_367 = icmp eq i5 %i_1_367, -16
  %empty_1872 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_367 = add i5 %i_1_367, 1
  br i1 %exitcond_367, label %2209, label %2214

; <label>:2211                                    ; preds = %2212
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2210

; <label>:2212                                    ; preds = %2213, %2203
  %i_368 = phi i5 [ 0, %2203 ], [ %i_11_367, %2213 ]
  %exitcond2_367 = icmp eq i5 %i_368, -16
  %empty_1873 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_367 = add i5 %i_368, 1
  br i1 %exitcond2_367, label %2211, label %2213

; <label>:2213                                    ; preds = %2212
  %empty_1874 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1184 = extractvalue { i8, i1, i1 } %empty_1874, 0
  %tmp_367_1875 = zext i5 %i_368 to i64
  %plaintext_addr_368 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_367_1875
  store i8 %tmp_data_1184, i8* %plaintext_addr_368, align 1
  br label %2212

; <label>:2214                                    ; preds = %2210
  %tmp_131_367 = zext i5 %i_1_367 to i64
  %out_addr_371 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_367
  %tmp_data_1185 = load i8* %out_addr_371, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1185, i1 true, i1 false)
  br label %2210

; <label>:2215                                    ; preds = %2216
  %empty_1876 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_386)
  %tmp_387 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2224

; <label>:2216                                    ; preds = %2220, %2217
  %i_1_368 = phi i5 [ 0, %2217 ], [ %i_12_368, %2220 ]
  %exitcond_368 = icmp eq i5 %i_1_368, -16
  %empty_1877 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_368 = add i5 %i_1_368, 1
  br i1 %exitcond_368, label %2215, label %2220

; <label>:2217                                    ; preds = %2218
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2216

; <label>:2218                                    ; preds = %2219, %2209
  %i_369 = phi i5 [ 0, %2209 ], [ %i_11_368, %2219 ]
  %exitcond2_368 = icmp eq i5 %i_369, -16
  %empty_1878 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_368 = add i5 %i_369, 1
  br i1 %exitcond2_368, label %2217, label %2219

; <label>:2219                                    ; preds = %2218
  %empty_1879 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1186 = extractvalue { i8, i1, i1 } %empty_1879, 0
  %tmp_368_1880 = zext i5 %i_369 to i64
  %plaintext_addr_369 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_368_1880
  store i8 %tmp_data_1186, i8* %plaintext_addr_369, align 1
  br label %2218

; <label>:2220                                    ; preds = %2216
  %tmp_131_368 = zext i5 %i_1_368 to i64
  %out_addr_372 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_368
  %tmp_data_1187 = load i8* %out_addr_372, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1187, i1 true, i1 false)
  br label %2216

; <label>:2221                                    ; preds = %2222
  %empty_1881 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_387)
  %tmp_388 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2230

; <label>:2222                                    ; preds = %2226, %2223
  %i_1_369 = phi i5 [ 0, %2223 ], [ %i_12_369, %2226 ]
  %exitcond_369 = icmp eq i5 %i_1_369, -16
  %empty_1882 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_369 = add i5 %i_1_369, 1
  br i1 %exitcond_369, label %2221, label %2226

; <label>:2223                                    ; preds = %2224
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2222

; <label>:2224                                    ; preds = %2225, %2215
  %i_370 = phi i5 [ 0, %2215 ], [ %i_11_369, %2225 ]
  %exitcond2_369 = icmp eq i5 %i_370, -16
  %empty_1883 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_369 = add i5 %i_370, 1
  br i1 %exitcond2_369, label %2223, label %2225

; <label>:2225                                    ; preds = %2224
  %empty_1884 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1188 = extractvalue { i8, i1, i1 } %empty_1884, 0
  %tmp_369_1885 = zext i5 %i_370 to i64
  %plaintext_addr_370 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_369_1885
  store i8 %tmp_data_1188, i8* %plaintext_addr_370, align 1
  br label %2224

; <label>:2226                                    ; preds = %2222
  %tmp_131_369 = zext i5 %i_1_369 to i64
  %out_addr_373 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_369
  %tmp_data_1189 = load i8* %out_addr_373, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1189, i1 true, i1 false)
  br label %2222

; <label>:2227                                    ; preds = %2228
  %empty_1886 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_388)
  %tmp_389 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2236

; <label>:2228                                    ; preds = %2232, %2229
  %i_1_370 = phi i5 [ 0, %2229 ], [ %i_12_370, %2232 ]
  %exitcond_370 = icmp eq i5 %i_1_370, -16
  %empty_1887 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_370 = add i5 %i_1_370, 1
  br i1 %exitcond_370, label %2227, label %2232

; <label>:2229                                    ; preds = %2230
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2228

; <label>:2230                                    ; preds = %2231, %2221
  %i_371 = phi i5 [ 0, %2221 ], [ %i_11_370, %2231 ]
  %exitcond2_370 = icmp eq i5 %i_371, -16
  %empty_1888 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_370 = add i5 %i_371, 1
  br i1 %exitcond2_370, label %2229, label %2231

; <label>:2231                                    ; preds = %2230
  %empty_1889 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1190 = extractvalue { i8, i1, i1 } %empty_1889, 0
  %tmp_370_1890 = zext i5 %i_371 to i64
  %plaintext_addr_371 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_370_1890
  store i8 %tmp_data_1190, i8* %plaintext_addr_371, align 1
  br label %2230

; <label>:2232                                    ; preds = %2228
  %tmp_131_370 = zext i5 %i_1_370 to i64
  %out_addr_374 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_370
  %tmp_data_1191 = load i8* %out_addr_374, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1191, i1 true, i1 false)
  br label %2228

; <label>:2233                                    ; preds = %2234
  %empty_1891 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_389)
  %tmp_390 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2242

; <label>:2234                                    ; preds = %2238, %2235
  %i_1_371 = phi i5 [ 0, %2235 ], [ %i_12_371, %2238 ]
  %exitcond_371 = icmp eq i5 %i_1_371, -16
  %empty_1892 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_371 = add i5 %i_1_371, 1
  br i1 %exitcond_371, label %2233, label %2238

; <label>:2235                                    ; preds = %2236
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2234

; <label>:2236                                    ; preds = %2237, %2227
  %i_372 = phi i5 [ 0, %2227 ], [ %i_11_371, %2237 ]
  %exitcond2_371 = icmp eq i5 %i_372, -16
  %empty_1893 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_371 = add i5 %i_372, 1
  br i1 %exitcond2_371, label %2235, label %2237

; <label>:2237                                    ; preds = %2236
  %empty_1894 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1192 = extractvalue { i8, i1, i1 } %empty_1894, 0
  %tmp_371_1895 = zext i5 %i_372 to i64
  %plaintext_addr_372 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_371_1895
  store i8 %tmp_data_1192, i8* %plaintext_addr_372, align 1
  br label %2236

; <label>:2238                                    ; preds = %2234
  %tmp_131_371 = zext i5 %i_1_371 to i64
  %out_addr_375 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_371
  %tmp_data_1193 = load i8* %out_addr_375, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1193, i1 true, i1 false)
  br label %2234

; <label>:2239                                    ; preds = %2240
  %empty_1896 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_390)
  %tmp_391 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2248

; <label>:2240                                    ; preds = %2244, %2241
  %i_1_372 = phi i5 [ 0, %2241 ], [ %i_12_372, %2244 ]
  %exitcond_372 = icmp eq i5 %i_1_372, -16
  %empty_1897 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_372 = add i5 %i_1_372, 1
  br i1 %exitcond_372, label %2239, label %2244

; <label>:2241                                    ; preds = %2242
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2240

; <label>:2242                                    ; preds = %2243, %2233
  %i_373 = phi i5 [ 0, %2233 ], [ %i_11_372, %2243 ]
  %exitcond2_372 = icmp eq i5 %i_373, -16
  %empty_1898 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_372 = add i5 %i_373, 1
  br i1 %exitcond2_372, label %2241, label %2243

; <label>:2243                                    ; preds = %2242
  %empty_1899 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1194 = extractvalue { i8, i1, i1 } %empty_1899, 0
  %tmp_372_1900 = zext i5 %i_373 to i64
  %plaintext_addr_373 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_372_1900
  store i8 %tmp_data_1194, i8* %plaintext_addr_373, align 1
  br label %2242

; <label>:2244                                    ; preds = %2240
  %tmp_131_372 = zext i5 %i_1_372 to i64
  %out_addr_376 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_372
  %tmp_data_1195 = load i8* %out_addr_376, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1195, i1 true, i1 false)
  br label %2240

; <label>:2245                                    ; preds = %2246
  %empty_1901 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_391)
  %tmp_392 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2254

; <label>:2246                                    ; preds = %2250, %2247
  %i_1_373 = phi i5 [ 0, %2247 ], [ %i_12_373, %2250 ]
  %exitcond_373 = icmp eq i5 %i_1_373, -16
  %empty_1902 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_373 = add i5 %i_1_373, 1
  br i1 %exitcond_373, label %2245, label %2250

; <label>:2247                                    ; preds = %2248
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2246

; <label>:2248                                    ; preds = %2249, %2239
  %i_374 = phi i5 [ 0, %2239 ], [ %i_11_373, %2249 ]
  %exitcond2_373 = icmp eq i5 %i_374, -16
  %empty_1903 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_373 = add i5 %i_374, 1
  br i1 %exitcond2_373, label %2247, label %2249

; <label>:2249                                    ; preds = %2248
  %empty_1904 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1196 = extractvalue { i8, i1, i1 } %empty_1904, 0
  %tmp_373_1905 = zext i5 %i_374 to i64
  %plaintext_addr_374 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_373_1905
  store i8 %tmp_data_1196, i8* %plaintext_addr_374, align 1
  br label %2248

; <label>:2250                                    ; preds = %2246
  %tmp_131_373 = zext i5 %i_1_373 to i64
  %out_addr_377 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_373
  %tmp_data_1197 = load i8* %out_addr_377, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1197, i1 true, i1 false)
  br label %2246

; <label>:2251                                    ; preds = %2252
  %empty_1906 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_392)
  %tmp_393 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2260

; <label>:2252                                    ; preds = %2256, %2253
  %i_1_374 = phi i5 [ 0, %2253 ], [ %i_12_374, %2256 ]
  %exitcond_374 = icmp eq i5 %i_1_374, -16
  %empty_1907 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_374 = add i5 %i_1_374, 1
  br i1 %exitcond_374, label %2251, label %2256

; <label>:2253                                    ; preds = %2254
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2252

; <label>:2254                                    ; preds = %2255, %2245
  %i_375 = phi i5 [ 0, %2245 ], [ %i_11_374, %2255 ]
  %exitcond2_374 = icmp eq i5 %i_375, -16
  %empty_1908 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_374 = add i5 %i_375, 1
  br i1 %exitcond2_374, label %2253, label %2255

; <label>:2255                                    ; preds = %2254
  %empty_1909 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1198 = extractvalue { i8, i1, i1 } %empty_1909, 0
  %tmp_374_1910 = zext i5 %i_375 to i64
  %plaintext_addr_375 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_374_1910
  store i8 %tmp_data_1198, i8* %plaintext_addr_375, align 1
  br label %2254

; <label>:2256                                    ; preds = %2252
  %tmp_131_374 = zext i5 %i_1_374 to i64
  %out_addr_378 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_374
  %tmp_data_1199 = load i8* %out_addr_378, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1199, i1 true, i1 false)
  br label %2252

; <label>:2257                                    ; preds = %2258
  %empty_1911 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_393)
  %tmp_394 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2266

; <label>:2258                                    ; preds = %2262, %2259
  %i_1_375 = phi i5 [ 0, %2259 ], [ %i_12_375, %2262 ]
  %exitcond_375 = icmp eq i5 %i_1_375, -16
  %empty_1912 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_375 = add i5 %i_1_375, 1
  br i1 %exitcond_375, label %2257, label %2262

; <label>:2259                                    ; preds = %2260
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2258

; <label>:2260                                    ; preds = %2261, %2251
  %i_376 = phi i5 [ 0, %2251 ], [ %i_11_375, %2261 ]
  %exitcond2_375 = icmp eq i5 %i_376, -16
  %empty_1913 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_375 = add i5 %i_376, 1
  br i1 %exitcond2_375, label %2259, label %2261

; <label>:2261                                    ; preds = %2260
  %empty_1914 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1200 = extractvalue { i8, i1, i1 } %empty_1914, 0
  %tmp_375_1915 = zext i5 %i_376 to i64
  %plaintext_addr_376 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_375_1915
  store i8 %tmp_data_1200, i8* %plaintext_addr_376, align 1
  br label %2260

; <label>:2262                                    ; preds = %2258
  %tmp_131_375 = zext i5 %i_1_375 to i64
  %out_addr_379 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_375
  %tmp_data_1201 = load i8* %out_addr_379, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1201, i1 true, i1 false)
  br label %2258

; <label>:2263                                    ; preds = %2264
  %empty_1916 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_394)
  %tmp_395 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2272

; <label>:2264                                    ; preds = %2268, %2265
  %i_1_376 = phi i5 [ 0, %2265 ], [ %i_12_376, %2268 ]
  %exitcond_376 = icmp eq i5 %i_1_376, -16
  %empty_1917 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_376 = add i5 %i_1_376, 1
  br i1 %exitcond_376, label %2263, label %2268

; <label>:2265                                    ; preds = %2266
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2264

; <label>:2266                                    ; preds = %2267, %2257
  %i_377 = phi i5 [ 0, %2257 ], [ %i_11_376, %2267 ]
  %exitcond2_376 = icmp eq i5 %i_377, -16
  %empty_1918 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_376 = add i5 %i_377, 1
  br i1 %exitcond2_376, label %2265, label %2267

; <label>:2267                                    ; preds = %2266
  %empty_1919 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1202 = extractvalue { i8, i1, i1 } %empty_1919, 0
  %tmp_376_1920 = zext i5 %i_377 to i64
  %plaintext_addr_377 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_376_1920
  store i8 %tmp_data_1202, i8* %plaintext_addr_377, align 1
  br label %2266

; <label>:2268                                    ; preds = %2264
  %tmp_131_376 = zext i5 %i_1_376 to i64
  %out_addr_380 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_376
  %tmp_data_1203 = load i8* %out_addr_380, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1203, i1 true, i1 false)
  br label %2264

; <label>:2269                                    ; preds = %2270
  %empty_1921 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_395)
  %tmp_396 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2278

; <label>:2270                                    ; preds = %2274, %2271
  %i_1_377 = phi i5 [ 0, %2271 ], [ %i_12_377, %2274 ]
  %exitcond_377 = icmp eq i5 %i_1_377, -16
  %empty_1922 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_377 = add i5 %i_1_377, 1
  br i1 %exitcond_377, label %2269, label %2274

; <label>:2271                                    ; preds = %2272
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2270

; <label>:2272                                    ; preds = %2273, %2263
  %i_378 = phi i5 [ 0, %2263 ], [ %i_11_377, %2273 ]
  %exitcond2_377 = icmp eq i5 %i_378, -16
  %empty_1923 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_377 = add i5 %i_378, 1
  br i1 %exitcond2_377, label %2271, label %2273

; <label>:2273                                    ; preds = %2272
  %empty_1924 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1204 = extractvalue { i8, i1, i1 } %empty_1924, 0
  %tmp_377_1925 = zext i5 %i_378 to i64
  %plaintext_addr_378 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_377_1925
  store i8 %tmp_data_1204, i8* %plaintext_addr_378, align 1
  br label %2272

; <label>:2274                                    ; preds = %2270
  %tmp_131_377 = zext i5 %i_1_377 to i64
  %out_addr_381 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_377
  %tmp_data_1205 = load i8* %out_addr_381, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1205, i1 true, i1 false)
  br label %2270

; <label>:2275                                    ; preds = %2276
  %empty_1926 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_396)
  %tmp_397 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2284

; <label>:2276                                    ; preds = %2280, %2277
  %i_1_378 = phi i5 [ 0, %2277 ], [ %i_12_378, %2280 ]
  %exitcond_378 = icmp eq i5 %i_1_378, -16
  %empty_1927 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_378 = add i5 %i_1_378, 1
  br i1 %exitcond_378, label %2275, label %2280

; <label>:2277                                    ; preds = %2278
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2276

; <label>:2278                                    ; preds = %2279, %2269
  %i_379 = phi i5 [ 0, %2269 ], [ %i_11_378, %2279 ]
  %exitcond2_378 = icmp eq i5 %i_379, -16
  %empty_1928 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_378 = add i5 %i_379, 1
  br i1 %exitcond2_378, label %2277, label %2279

; <label>:2279                                    ; preds = %2278
  %empty_1929 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1206 = extractvalue { i8, i1, i1 } %empty_1929, 0
  %tmp_378_1930 = zext i5 %i_379 to i64
  %plaintext_addr_379 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_378_1930
  store i8 %tmp_data_1206, i8* %plaintext_addr_379, align 1
  br label %2278

; <label>:2280                                    ; preds = %2276
  %tmp_131_378 = zext i5 %i_1_378 to i64
  %out_addr_382 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_378
  %tmp_data_1207 = load i8* %out_addr_382, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1207, i1 true, i1 false)
  br label %2276

; <label>:2281                                    ; preds = %2282
  %empty_1931 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_397)
  %tmp_398 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2290

; <label>:2282                                    ; preds = %2286, %2283
  %i_1_379 = phi i5 [ 0, %2283 ], [ %i_12_379, %2286 ]
  %exitcond_379 = icmp eq i5 %i_1_379, -16
  %empty_1932 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_379 = add i5 %i_1_379, 1
  br i1 %exitcond_379, label %2281, label %2286

; <label>:2283                                    ; preds = %2284
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2282

; <label>:2284                                    ; preds = %2285, %2275
  %i_380 = phi i5 [ 0, %2275 ], [ %i_11_379, %2285 ]
  %exitcond2_379 = icmp eq i5 %i_380, -16
  %empty_1933 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_379 = add i5 %i_380, 1
  br i1 %exitcond2_379, label %2283, label %2285

; <label>:2285                                    ; preds = %2284
  %empty_1934 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1208 = extractvalue { i8, i1, i1 } %empty_1934, 0
  %tmp_379_1935 = zext i5 %i_380 to i64
  %plaintext_addr_380 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_379_1935
  store i8 %tmp_data_1208, i8* %plaintext_addr_380, align 1
  br label %2284

; <label>:2286                                    ; preds = %2282
  %tmp_131_379 = zext i5 %i_1_379 to i64
  %out_addr_383 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_379
  %tmp_data_1209 = load i8* %out_addr_383, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1209, i1 true, i1 false)
  br label %2282

; <label>:2287                                    ; preds = %2288
  %empty_1936 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_398)
  %tmp_399 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2296

; <label>:2288                                    ; preds = %2292, %2289
  %i_1_380 = phi i5 [ 0, %2289 ], [ %i_12_380, %2292 ]
  %exitcond_380 = icmp eq i5 %i_1_380, -16
  %empty_1937 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_380 = add i5 %i_1_380, 1
  br i1 %exitcond_380, label %2287, label %2292

; <label>:2289                                    ; preds = %2290
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2288

; <label>:2290                                    ; preds = %2291, %2281
  %i_381 = phi i5 [ 0, %2281 ], [ %i_11_380, %2291 ]
  %exitcond2_380 = icmp eq i5 %i_381, -16
  %empty_1938 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_380 = add i5 %i_381, 1
  br i1 %exitcond2_380, label %2289, label %2291

; <label>:2291                                    ; preds = %2290
  %empty_1939 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1210 = extractvalue { i8, i1, i1 } %empty_1939, 0
  %tmp_380_1940 = zext i5 %i_381 to i64
  %plaintext_addr_381 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_380_1940
  store i8 %tmp_data_1210, i8* %plaintext_addr_381, align 1
  br label %2290

; <label>:2292                                    ; preds = %2288
  %tmp_131_380 = zext i5 %i_1_380 to i64
  %out_addr_384 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_380
  %tmp_data_1211 = load i8* %out_addr_384, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1211, i1 true, i1 false)
  br label %2288

; <label>:2293                                    ; preds = %2294
  %empty_1941 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_399)
  %tmp_400 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2302

; <label>:2294                                    ; preds = %2298, %2295
  %i_1_381 = phi i5 [ 0, %2295 ], [ %i_12_381, %2298 ]
  %exitcond_381 = icmp eq i5 %i_1_381, -16
  %empty_1942 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_381 = add i5 %i_1_381, 1
  br i1 %exitcond_381, label %2293, label %2298

; <label>:2295                                    ; preds = %2296
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2294

; <label>:2296                                    ; preds = %2297, %2287
  %i_382 = phi i5 [ 0, %2287 ], [ %i_11_381, %2297 ]
  %exitcond2_381 = icmp eq i5 %i_382, -16
  %empty_1943 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_381 = add i5 %i_382, 1
  br i1 %exitcond2_381, label %2295, label %2297

; <label>:2297                                    ; preds = %2296
  %empty_1944 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1212 = extractvalue { i8, i1, i1 } %empty_1944, 0
  %tmp_381_1945 = zext i5 %i_382 to i64
  %plaintext_addr_382 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_381_1945
  store i8 %tmp_data_1212, i8* %plaintext_addr_382, align 1
  br label %2296

; <label>:2298                                    ; preds = %2294
  %tmp_131_381 = zext i5 %i_1_381 to i64
  %out_addr_385 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_381
  %tmp_data_1213 = load i8* %out_addr_385, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1213, i1 true, i1 false)
  br label %2294

; <label>:2299                                    ; preds = %2300
  %empty_1946 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_400)
  %tmp_401 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2308

; <label>:2300                                    ; preds = %2304, %2301
  %i_1_382 = phi i5 [ 0, %2301 ], [ %i_12_382, %2304 ]
  %exitcond_382 = icmp eq i5 %i_1_382, -16
  %empty_1947 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_382 = add i5 %i_1_382, 1
  br i1 %exitcond_382, label %2299, label %2304

; <label>:2301                                    ; preds = %2302
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2300

; <label>:2302                                    ; preds = %2303, %2293
  %i_383 = phi i5 [ 0, %2293 ], [ %i_11_382, %2303 ]
  %exitcond2_382 = icmp eq i5 %i_383, -16
  %empty_1948 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_382 = add i5 %i_383, 1
  br i1 %exitcond2_382, label %2301, label %2303

; <label>:2303                                    ; preds = %2302
  %empty_1949 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1214 = extractvalue { i8, i1, i1 } %empty_1949, 0
  %tmp_382_1950 = zext i5 %i_383 to i64
  %plaintext_addr_383 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_382_1950
  store i8 %tmp_data_1214, i8* %plaintext_addr_383, align 1
  br label %2302

; <label>:2304                                    ; preds = %2300
  %tmp_131_382 = zext i5 %i_1_382 to i64
  %out_addr_386 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_382
  %tmp_data_1215 = load i8* %out_addr_386, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1215, i1 true, i1 false)
  br label %2300

; <label>:2305                                    ; preds = %2306
  %empty_1951 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_401)
  %tmp_402 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2314

; <label>:2306                                    ; preds = %2310, %2307
  %i_1_383 = phi i5 [ 0, %2307 ], [ %i_12_383, %2310 ]
  %exitcond_383 = icmp eq i5 %i_1_383, -16
  %empty_1952 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_383 = add i5 %i_1_383, 1
  br i1 %exitcond_383, label %2305, label %2310

; <label>:2307                                    ; preds = %2308
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2306

; <label>:2308                                    ; preds = %2309, %2299
  %i_384 = phi i5 [ 0, %2299 ], [ %i_11_383, %2309 ]
  %exitcond2_383 = icmp eq i5 %i_384, -16
  %empty_1953 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_383 = add i5 %i_384, 1
  br i1 %exitcond2_383, label %2307, label %2309

; <label>:2309                                    ; preds = %2308
  %empty_1954 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1216 = extractvalue { i8, i1, i1 } %empty_1954, 0
  %tmp_383_1955 = zext i5 %i_384 to i64
  %plaintext_addr_384 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_383_1955
  store i8 %tmp_data_1216, i8* %plaintext_addr_384, align 1
  br label %2308

; <label>:2310                                    ; preds = %2306
  %tmp_131_383 = zext i5 %i_1_383 to i64
  %out_addr_387 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_383
  %tmp_data_1217 = load i8* %out_addr_387, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1217, i1 true, i1 false)
  br label %2306

; <label>:2311                                    ; preds = %2312
  %empty_1956 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_402)
  %tmp_403 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2320

; <label>:2312                                    ; preds = %2316, %2313
  %i_1_384 = phi i5 [ 0, %2313 ], [ %i_12_384, %2316 ]
  %exitcond_384 = icmp eq i5 %i_1_384, -16
  %empty_1957 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_384 = add i5 %i_1_384, 1
  br i1 %exitcond_384, label %2311, label %2316

; <label>:2313                                    ; preds = %2314
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2312

; <label>:2314                                    ; preds = %2315, %2305
  %i_385 = phi i5 [ 0, %2305 ], [ %i_11_384, %2315 ]
  %exitcond2_384 = icmp eq i5 %i_385, -16
  %empty_1958 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_384 = add i5 %i_385, 1
  br i1 %exitcond2_384, label %2313, label %2315

; <label>:2315                                    ; preds = %2314
  %empty_1959 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1218 = extractvalue { i8, i1, i1 } %empty_1959, 0
  %tmp_384_1960 = zext i5 %i_385 to i64
  %plaintext_addr_385 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_384_1960
  store i8 %tmp_data_1218, i8* %plaintext_addr_385, align 1
  br label %2314

; <label>:2316                                    ; preds = %2312
  %tmp_131_384 = zext i5 %i_1_384 to i64
  %out_addr_388 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_384
  %tmp_data_1219 = load i8* %out_addr_388, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1219, i1 true, i1 false)
  br label %2312

; <label>:2317                                    ; preds = %2318
  %empty_1961 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_403)
  %tmp_404 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2326

; <label>:2318                                    ; preds = %2322, %2319
  %i_1_385 = phi i5 [ 0, %2319 ], [ %i_12_385, %2322 ]
  %exitcond_385 = icmp eq i5 %i_1_385, -16
  %empty_1962 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_385 = add i5 %i_1_385, 1
  br i1 %exitcond_385, label %2317, label %2322

; <label>:2319                                    ; preds = %2320
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2318

; <label>:2320                                    ; preds = %2321, %2311
  %i_386 = phi i5 [ 0, %2311 ], [ %i_11_385, %2321 ]
  %exitcond2_385 = icmp eq i5 %i_386, -16
  %empty_1963 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_385 = add i5 %i_386, 1
  br i1 %exitcond2_385, label %2319, label %2321

; <label>:2321                                    ; preds = %2320
  %empty_1964 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1220 = extractvalue { i8, i1, i1 } %empty_1964, 0
  %tmp_385_1965 = zext i5 %i_386 to i64
  %plaintext_addr_386 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_385_1965
  store i8 %tmp_data_1220, i8* %plaintext_addr_386, align 1
  br label %2320

; <label>:2322                                    ; preds = %2318
  %tmp_131_385 = zext i5 %i_1_385 to i64
  %out_addr_389 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_385
  %tmp_data_1221 = load i8* %out_addr_389, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1221, i1 true, i1 false)
  br label %2318

; <label>:2323                                    ; preds = %2324
  %empty_1966 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_404)
  %tmp_405 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2332

; <label>:2324                                    ; preds = %2328, %2325
  %i_1_386 = phi i5 [ 0, %2325 ], [ %i_12_386, %2328 ]
  %exitcond_386 = icmp eq i5 %i_1_386, -16
  %empty_1967 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_386 = add i5 %i_1_386, 1
  br i1 %exitcond_386, label %2323, label %2328

; <label>:2325                                    ; preds = %2326
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2324

; <label>:2326                                    ; preds = %2327, %2317
  %i_387 = phi i5 [ 0, %2317 ], [ %i_11_386, %2327 ]
  %exitcond2_386 = icmp eq i5 %i_387, -16
  %empty_1968 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_386 = add i5 %i_387, 1
  br i1 %exitcond2_386, label %2325, label %2327

; <label>:2327                                    ; preds = %2326
  %empty_1969 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1222 = extractvalue { i8, i1, i1 } %empty_1969, 0
  %tmp_386_1970 = zext i5 %i_387 to i64
  %plaintext_addr_387 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_386_1970
  store i8 %tmp_data_1222, i8* %plaintext_addr_387, align 1
  br label %2326

; <label>:2328                                    ; preds = %2324
  %tmp_131_386 = zext i5 %i_1_386 to i64
  %out_addr_390 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_386
  %tmp_data_1223 = load i8* %out_addr_390, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1223, i1 true, i1 false)
  br label %2324

; <label>:2329                                    ; preds = %2330
  %empty_1971 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_405)
  %tmp_406 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2338

; <label>:2330                                    ; preds = %2334, %2331
  %i_1_387 = phi i5 [ 0, %2331 ], [ %i_12_387, %2334 ]
  %exitcond_387 = icmp eq i5 %i_1_387, -16
  %empty_1972 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_387 = add i5 %i_1_387, 1
  br i1 %exitcond_387, label %2329, label %2334

; <label>:2331                                    ; preds = %2332
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2330

; <label>:2332                                    ; preds = %2333, %2323
  %i_388 = phi i5 [ 0, %2323 ], [ %i_11_387, %2333 ]
  %exitcond2_387 = icmp eq i5 %i_388, -16
  %empty_1973 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_387 = add i5 %i_388, 1
  br i1 %exitcond2_387, label %2331, label %2333

; <label>:2333                                    ; preds = %2332
  %empty_1974 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1224 = extractvalue { i8, i1, i1 } %empty_1974, 0
  %tmp_387_1975 = zext i5 %i_388 to i64
  %plaintext_addr_388 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_387_1975
  store i8 %tmp_data_1224, i8* %plaintext_addr_388, align 1
  br label %2332

; <label>:2334                                    ; preds = %2330
  %tmp_131_387 = zext i5 %i_1_387 to i64
  %out_addr_391 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_387
  %tmp_data_1225 = load i8* %out_addr_391, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1225, i1 true, i1 false)
  br label %2330

; <label>:2335                                    ; preds = %2336
  %empty_1976 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_406)
  %tmp_407 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2344

; <label>:2336                                    ; preds = %2340, %2337
  %i_1_388 = phi i5 [ 0, %2337 ], [ %i_12_388, %2340 ]
  %exitcond_388 = icmp eq i5 %i_1_388, -16
  %empty_1977 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_388 = add i5 %i_1_388, 1
  br i1 %exitcond_388, label %2335, label %2340

; <label>:2337                                    ; preds = %2338
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2336

; <label>:2338                                    ; preds = %2339, %2329
  %i_389 = phi i5 [ 0, %2329 ], [ %i_11_388, %2339 ]
  %exitcond2_388 = icmp eq i5 %i_389, -16
  %empty_1978 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_388 = add i5 %i_389, 1
  br i1 %exitcond2_388, label %2337, label %2339

; <label>:2339                                    ; preds = %2338
  %empty_1979 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1226 = extractvalue { i8, i1, i1 } %empty_1979, 0
  %tmp_388_1980 = zext i5 %i_389 to i64
  %plaintext_addr_389 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_388_1980
  store i8 %tmp_data_1226, i8* %plaintext_addr_389, align 1
  br label %2338

; <label>:2340                                    ; preds = %2336
  %tmp_131_388 = zext i5 %i_1_388 to i64
  %out_addr_392 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_388
  %tmp_data_1227 = load i8* %out_addr_392, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1227, i1 true, i1 false)
  br label %2336

; <label>:2341                                    ; preds = %2342
  %empty_1981 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_407)
  %tmp_408 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2350

; <label>:2342                                    ; preds = %2346, %2343
  %i_1_389 = phi i5 [ 0, %2343 ], [ %i_12_389, %2346 ]
  %exitcond_389 = icmp eq i5 %i_1_389, -16
  %empty_1982 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_389 = add i5 %i_1_389, 1
  br i1 %exitcond_389, label %2341, label %2346

; <label>:2343                                    ; preds = %2344
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2342

; <label>:2344                                    ; preds = %2345, %2335
  %i_390 = phi i5 [ 0, %2335 ], [ %i_11_389, %2345 ]
  %exitcond2_389 = icmp eq i5 %i_390, -16
  %empty_1983 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_389 = add i5 %i_390, 1
  br i1 %exitcond2_389, label %2343, label %2345

; <label>:2345                                    ; preds = %2344
  %empty_1984 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1228 = extractvalue { i8, i1, i1 } %empty_1984, 0
  %tmp_389_1985 = zext i5 %i_390 to i64
  %plaintext_addr_390 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_389_1985
  store i8 %tmp_data_1228, i8* %plaintext_addr_390, align 1
  br label %2344

; <label>:2346                                    ; preds = %2342
  %tmp_131_389 = zext i5 %i_1_389 to i64
  %out_addr_393 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_389
  %tmp_data_1229 = load i8* %out_addr_393, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1229, i1 true, i1 false)
  br label %2342

; <label>:2347                                    ; preds = %2348
  %empty_1986 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_408)
  %tmp_409 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2356

; <label>:2348                                    ; preds = %2352, %2349
  %i_1_390 = phi i5 [ 0, %2349 ], [ %i_12_390, %2352 ]
  %exitcond_390 = icmp eq i5 %i_1_390, -16
  %empty_1987 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_390 = add i5 %i_1_390, 1
  br i1 %exitcond_390, label %2347, label %2352

; <label>:2349                                    ; preds = %2350
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2348

; <label>:2350                                    ; preds = %2351, %2341
  %i_391 = phi i5 [ 0, %2341 ], [ %i_11_390, %2351 ]
  %exitcond2_390 = icmp eq i5 %i_391, -16
  %empty_1988 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_390 = add i5 %i_391, 1
  br i1 %exitcond2_390, label %2349, label %2351

; <label>:2351                                    ; preds = %2350
  %empty_1989 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1230 = extractvalue { i8, i1, i1 } %empty_1989, 0
  %tmp_390_1990 = zext i5 %i_391 to i64
  %plaintext_addr_391 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_390_1990
  store i8 %tmp_data_1230, i8* %plaintext_addr_391, align 1
  br label %2350

; <label>:2352                                    ; preds = %2348
  %tmp_131_390 = zext i5 %i_1_390 to i64
  %out_addr_394 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_390
  %tmp_data_1231 = load i8* %out_addr_394, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1231, i1 true, i1 false)
  br label %2348

; <label>:2353                                    ; preds = %2354
  %empty_1991 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_409)
  %tmp_410 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2362

; <label>:2354                                    ; preds = %2358, %2355
  %i_1_391 = phi i5 [ 0, %2355 ], [ %i_12_391, %2358 ]
  %exitcond_391 = icmp eq i5 %i_1_391, -16
  %empty_1992 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_391 = add i5 %i_1_391, 1
  br i1 %exitcond_391, label %2353, label %2358

; <label>:2355                                    ; preds = %2356
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2354

; <label>:2356                                    ; preds = %2357, %2347
  %i_392 = phi i5 [ 0, %2347 ], [ %i_11_391, %2357 ]
  %exitcond2_391 = icmp eq i5 %i_392, -16
  %empty_1993 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_391 = add i5 %i_392, 1
  br i1 %exitcond2_391, label %2355, label %2357

; <label>:2357                                    ; preds = %2356
  %empty_1994 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1232 = extractvalue { i8, i1, i1 } %empty_1994, 0
  %tmp_391_1995 = zext i5 %i_392 to i64
  %plaintext_addr_392 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_391_1995
  store i8 %tmp_data_1232, i8* %plaintext_addr_392, align 1
  br label %2356

; <label>:2358                                    ; preds = %2354
  %tmp_131_391 = zext i5 %i_1_391 to i64
  %out_addr_395 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_391
  %tmp_data_1233 = load i8* %out_addr_395, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1233, i1 true, i1 false)
  br label %2354

; <label>:2359                                    ; preds = %2360
  %empty_1996 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_410)
  %tmp_411 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2368

; <label>:2360                                    ; preds = %2364, %2361
  %i_1_392 = phi i5 [ 0, %2361 ], [ %i_12_392, %2364 ]
  %exitcond_392 = icmp eq i5 %i_1_392, -16
  %empty_1997 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_392 = add i5 %i_1_392, 1
  br i1 %exitcond_392, label %2359, label %2364

; <label>:2361                                    ; preds = %2362
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2360

; <label>:2362                                    ; preds = %2363, %2353
  %i_393 = phi i5 [ 0, %2353 ], [ %i_11_392, %2363 ]
  %exitcond2_392 = icmp eq i5 %i_393, -16
  %empty_1998 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_392 = add i5 %i_393, 1
  br i1 %exitcond2_392, label %2361, label %2363

; <label>:2363                                    ; preds = %2362
  %empty_1999 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1234 = extractvalue { i8, i1, i1 } %empty_1999, 0
  %tmp_392_2000 = zext i5 %i_393 to i64
  %plaintext_addr_393 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_392_2000
  store i8 %tmp_data_1234, i8* %plaintext_addr_393, align 1
  br label %2362

; <label>:2364                                    ; preds = %2360
  %tmp_131_392 = zext i5 %i_1_392 to i64
  %out_addr_396 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_392
  %tmp_data_1235 = load i8* %out_addr_396, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1235, i1 true, i1 false)
  br label %2360

; <label>:2365                                    ; preds = %2366
  %empty_2001 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_411)
  %tmp_412 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2374

; <label>:2366                                    ; preds = %2370, %2367
  %i_1_393 = phi i5 [ 0, %2367 ], [ %i_12_393, %2370 ]
  %exitcond_393 = icmp eq i5 %i_1_393, -16
  %empty_2002 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_393 = add i5 %i_1_393, 1
  br i1 %exitcond_393, label %2365, label %2370

; <label>:2367                                    ; preds = %2368
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2366

; <label>:2368                                    ; preds = %2369, %2359
  %i_394 = phi i5 [ 0, %2359 ], [ %i_11_393, %2369 ]
  %exitcond2_393 = icmp eq i5 %i_394, -16
  %empty_2003 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_393 = add i5 %i_394, 1
  br i1 %exitcond2_393, label %2367, label %2369

; <label>:2369                                    ; preds = %2368
  %empty_2004 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1236 = extractvalue { i8, i1, i1 } %empty_2004, 0
  %tmp_393_2005 = zext i5 %i_394 to i64
  %plaintext_addr_394 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_393_2005
  store i8 %tmp_data_1236, i8* %plaintext_addr_394, align 1
  br label %2368

; <label>:2370                                    ; preds = %2366
  %tmp_131_393 = zext i5 %i_1_393 to i64
  %out_addr_397 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_393
  %tmp_data_1237 = load i8* %out_addr_397, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1237, i1 true, i1 false)
  br label %2366

; <label>:2371                                    ; preds = %2372
  %empty_2006 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_412)
  %tmp_413 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2380

; <label>:2372                                    ; preds = %2376, %2373
  %i_1_394 = phi i5 [ 0, %2373 ], [ %i_12_394, %2376 ]
  %exitcond_394 = icmp eq i5 %i_1_394, -16
  %empty_2007 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_394 = add i5 %i_1_394, 1
  br i1 %exitcond_394, label %2371, label %2376

; <label>:2373                                    ; preds = %2374
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2372

; <label>:2374                                    ; preds = %2375, %2365
  %i_395 = phi i5 [ 0, %2365 ], [ %i_11_394, %2375 ]
  %exitcond2_394 = icmp eq i5 %i_395, -16
  %empty_2008 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_394 = add i5 %i_395, 1
  br i1 %exitcond2_394, label %2373, label %2375

; <label>:2375                                    ; preds = %2374
  %empty_2009 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1238 = extractvalue { i8, i1, i1 } %empty_2009, 0
  %tmp_394_2010 = zext i5 %i_395 to i64
  %plaintext_addr_395 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_394_2010
  store i8 %tmp_data_1238, i8* %plaintext_addr_395, align 1
  br label %2374

; <label>:2376                                    ; preds = %2372
  %tmp_131_394 = zext i5 %i_1_394 to i64
  %out_addr_398 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_394
  %tmp_data_1239 = load i8* %out_addr_398, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1239, i1 true, i1 false)
  br label %2372

; <label>:2377                                    ; preds = %2378
  %empty_2011 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_413)
  %tmp_414 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2386

; <label>:2378                                    ; preds = %2382, %2379
  %i_1_395 = phi i5 [ 0, %2379 ], [ %i_12_395, %2382 ]
  %exitcond_395 = icmp eq i5 %i_1_395, -16
  %empty_2012 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_395 = add i5 %i_1_395, 1
  br i1 %exitcond_395, label %2377, label %2382

; <label>:2379                                    ; preds = %2380
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2378

; <label>:2380                                    ; preds = %2381, %2371
  %i_396 = phi i5 [ 0, %2371 ], [ %i_11_395, %2381 ]
  %exitcond2_395 = icmp eq i5 %i_396, -16
  %empty_2013 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_395 = add i5 %i_396, 1
  br i1 %exitcond2_395, label %2379, label %2381

; <label>:2381                                    ; preds = %2380
  %empty_2014 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1240 = extractvalue { i8, i1, i1 } %empty_2014, 0
  %tmp_395_2015 = zext i5 %i_396 to i64
  %plaintext_addr_396 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_395_2015
  store i8 %tmp_data_1240, i8* %plaintext_addr_396, align 1
  br label %2380

; <label>:2382                                    ; preds = %2378
  %tmp_131_395 = zext i5 %i_1_395 to i64
  %out_addr_399 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_395
  %tmp_data_1241 = load i8* %out_addr_399, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1241, i1 true, i1 false)
  br label %2378

; <label>:2383                                    ; preds = %2384
  %empty_2016 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_414)
  %tmp_415 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2392

; <label>:2384                                    ; preds = %2388, %2385
  %i_1_396 = phi i5 [ 0, %2385 ], [ %i_12_396, %2388 ]
  %exitcond_396 = icmp eq i5 %i_1_396, -16
  %empty_2017 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_396 = add i5 %i_1_396, 1
  br i1 %exitcond_396, label %2383, label %2388

; <label>:2385                                    ; preds = %2386
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2384

; <label>:2386                                    ; preds = %2387, %2377
  %i_397 = phi i5 [ 0, %2377 ], [ %i_11_396, %2387 ]
  %exitcond2_396 = icmp eq i5 %i_397, -16
  %empty_2018 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_396 = add i5 %i_397, 1
  br i1 %exitcond2_396, label %2385, label %2387

; <label>:2387                                    ; preds = %2386
  %empty_2019 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1242 = extractvalue { i8, i1, i1 } %empty_2019, 0
  %tmp_396_2020 = zext i5 %i_397 to i64
  %plaintext_addr_397 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_396_2020
  store i8 %tmp_data_1242, i8* %plaintext_addr_397, align 1
  br label %2386

; <label>:2388                                    ; preds = %2384
  %tmp_131_396 = zext i5 %i_1_396 to i64
  %out_addr_400 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_396
  %tmp_data_1243 = load i8* %out_addr_400, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1243, i1 true, i1 false)
  br label %2384

; <label>:2389                                    ; preds = %2390
  %empty_2021 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_415)
  %tmp_416 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2398

; <label>:2390                                    ; preds = %2394, %2391
  %i_1_397 = phi i5 [ 0, %2391 ], [ %i_12_397, %2394 ]
  %exitcond_397 = icmp eq i5 %i_1_397, -16
  %empty_2022 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_397 = add i5 %i_1_397, 1
  br i1 %exitcond_397, label %2389, label %2394

; <label>:2391                                    ; preds = %2392
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2390

; <label>:2392                                    ; preds = %2393, %2383
  %i_398 = phi i5 [ 0, %2383 ], [ %i_11_397, %2393 ]
  %exitcond2_397 = icmp eq i5 %i_398, -16
  %empty_2023 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_397 = add i5 %i_398, 1
  br i1 %exitcond2_397, label %2391, label %2393

; <label>:2393                                    ; preds = %2392
  %empty_2024 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1244 = extractvalue { i8, i1, i1 } %empty_2024, 0
  %tmp_397_2025 = zext i5 %i_398 to i64
  %plaintext_addr_398 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_397_2025
  store i8 %tmp_data_1244, i8* %plaintext_addr_398, align 1
  br label %2392

; <label>:2394                                    ; preds = %2390
  %tmp_131_397 = zext i5 %i_1_397 to i64
  %out_addr_401 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_397
  %tmp_data_1245 = load i8* %out_addr_401, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1245, i1 true, i1 false)
  br label %2390

; <label>:2395                                    ; preds = %2396
  %empty_2026 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_416)
  %tmp_417 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2404

; <label>:2396                                    ; preds = %2400, %2397
  %i_1_398 = phi i5 [ 0, %2397 ], [ %i_12_398, %2400 ]
  %exitcond_398 = icmp eq i5 %i_1_398, -16
  %empty_2027 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_398 = add i5 %i_1_398, 1
  br i1 %exitcond_398, label %2395, label %2400

; <label>:2397                                    ; preds = %2398
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2396

; <label>:2398                                    ; preds = %2399, %2389
  %i_399 = phi i5 [ 0, %2389 ], [ %i_11_398, %2399 ]
  %exitcond2_398 = icmp eq i5 %i_399, -16
  %empty_2028 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_398 = add i5 %i_399, 1
  br i1 %exitcond2_398, label %2397, label %2399

; <label>:2399                                    ; preds = %2398
  %empty_2029 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1246 = extractvalue { i8, i1, i1 } %empty_2029, 0
  %tmp_398_2030 = zext i5 %i_399 to i64
  %plaintext_addr_399 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_398_2030
  store i8 %tmp_data_1246, i8* %plaintext_addr_399, align 1
  br label %2398

; <label>:2400                                    ; preds = %2396
  %tmp_131_398 = zext i5 %i_1_398 to i64
  %out_addr_402 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_398
  %tmp_data_1247 = load i8* %out_addr_402, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1247, i1 true, i1 false)
  br label %2396

; <label>:2401                                    ; preds = %2402
  %empty_2031 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_417)
  %tmp_418 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2410

; <label>:2402                                    ; preds = %2406, %2403
  %i_1_399 = phi i5 [ 0, %2403 ], [ %i_12_399, %2406 ]
  %exitcond_399 = icmp eq i5 %i_1_399, -16
  %empty_2032 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_399 = add i5 %i_1_399, 1
  br i1 %exitcond_399, label %2401, label %2406

; <label>:2403                                    ; preds = %2404
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2402

; <label>:2404                                    ; preds = %2405, %2395
  %i_400 = phi i5 [ 0, %2395 ], [ %i_11_399, %2405 ]
  %exitcond2_399 = icmp eq i5 %i_400, -16
  %empty_2033 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_399 = add i5 %i_400, 1
  br i1 %exitcond2_399, label %2403, label %2405

; <label>:2405                                    ; preds = %2404
  %empty_2034 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1248 = extractvalue { i8, i1, i1 } %empty_2034, 0
  %tmp_399_2035 = zext i5 %i_400 to i64
  %plaintext_addr_400 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_399_2035
  store i8 %tmp_data_1248, i8* %plaintext_addr_400, align 1
  br label %2404

; <label>:2406                                    ; preds = %2402
  %tmp_131_399 = zext i5 %i_1_399 to i64
  %out_addr_403 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_399
  %tmp_data_1249 = load i8* %out_addr_403, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1249, i1 true, i1 false)
  br label %2402

; <label>:2407                                    ; preds = %2408
  %empty_2036 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_418)
  %tmp_419 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2416

; <label>:2408                                    ; preds = %2412, %2409
  %i_1_400 = phi i5 [ 0, %2409 ], [ %i_12_400, %2412 ]
  %exitcond_400 = icmp eq i5 %i_1_400, -16
  %empty_2037 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_400 = add i5 %i_1_400, 1
  br i1 %exitcond_400, label %2407, label %2412

; <label>:2409                                    ; preds = %2410
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2408

; <label>:2410                                    ; preds = %2411, %2401
  %i_401 = phi i5 [ 0, %2401 ], [ %i_11_400, %2411 ]
  %exitcond2_400 = icmp eq i5 %i_401, -16
  %empty_2038 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_400 = add i5 %i_401, 1
  br i1 %exitcond2_400, label %2409, label %2411

; <label>:2411                                    ; preds = %2410
  %empty_2039 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1250 = extractvalue { i8, i1, i1 } %empty_2039, 0
  %tmp_400_2040 = zext i5 %i_401 to i64
  %plaintext_addr_401 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_400_2040
  store i8 %tmp_data_1250, i8* %plaintext_addr_401, align 1
  br label %2410

; <label>:2412                                    ; preds = %2408
  %tmp_131_400 = zext i5 %i_1_400 to i64
  %out_addr_404 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_400
  %tmp_data_1251 = load i8* %out_addr_404, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1251, i1 true, i1 false)
  br label %2408

; <label>:2413                                    ; preds = %2414
  %empty_2041 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_419)
  %tmp_420 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2422

; <label>:2414                                    ; preds = %2418, %2415
  %i_1_401 = phi i5 [ 0, %2415 ], [ %i_12_401, %2418 ]
  %exitcond_401 = icmp eq i5 %i_1_401, -16
  %empty_2042 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_401 = add i5 %i_1_401, 1
  br i1 %exitcond_401, label %2413, label %2418

; <label>:2415                                    ; preds = %2416
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2414

; <label>:2416                                    ; preds = %2417, %2407
  %i_402 = phi i5 [ 0, %2407 ], [ %i_11_401, %2417 ]
  %exitcond2_401 = icmp eq i5 %i_402, -16
  %empty_2043 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_401 = add i5 %i_402, 1
  br i1 %exitcond2_401, label %2415, label %2417

; <label>:2417                                    ; preds = %2416
  %empty_2044 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1252 = extractvalue { i8, i1, i1 } %empty_2044, 0
  %tmp_401_2045 = zext i5 %i_402 to i64
  %plaintext_addr_402 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_401_2045
  store i8 %tmp_data_1252, i8* %plaintext_addr_402, align 1
  br label %2416

; <label>:2418                                    ; preds = %2414
  %tmp_131_401 = zext i5 %i_1_401 to i64
  %out_addr_405 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_401
  %tmp_data_1253 = load i8* %out_addr_405, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1253, i1 true, i1 false)
  br label %2414

; <label>:2419                                    ; preds = %2420
  %empty_2046 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_420)
  %tmp_421 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2428

; <label>:2420                                    ; preds = %2424, %2421
  %i_1_402 = phi i5 [ 0, %2421 ], [ %i_12_402, %2424 ]
  %exitcond_402 = icmp eq i5 %i_1_402, -16
  %empty_2047 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_402 = add i5 %i_1_402, 1
  br i1 %exitcond_402, label %2419, label %2424

; <label>:2421                                    ; preds = %2422
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2420

; <label>:2422                                    ; preds = %2423, %2413
  %i_403 = phi i5 [ 0, %2413 ], [ %i_11_402, %2423 ]
  %exitcond2_402 = icmp eq i5 %i_403, -16
  %empty_2048 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_402 = add i5 %i_403, 1
  br i1 %exitcond2_402, label %2421, label %2423

; <label>:2423                                    ; preds = %2422
  %empty_2049 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1254 = extractvalue { i8, i1, i1 } %empty_2049, 0
  %tmp_402_2050 = zext i5 %i_403 to i64
  %plaintext_addr_403 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_402_2050
  store i8 %tmp_data_1254, i8* %plaintext_addr_403, align 1
  br label %2422

; <label>:2424                                    ; preds = %2420
  %tmp_131_402 = zext i5 %i_1_402 to i64
  %out_addr_406 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_402
  %tmp_data_1255 = load i8* %out_addr_406, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1255, i1 true, i1 false)
  br label %2420

; <label>:2425                                    ; preds = %2426
  %empty_2051 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_421)
  %tmp_422 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2434

; <label>:2426                                    ; preds = %2430, %2427
  %i_1_403 = phi i5 [ 0, %2427 ], [ %i_12_403, %2430 ]
  %exitcond_403 = icmp eq i5 %i_1_403, -16
  %empty_2052 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_403 = add i5 %i_1_403, 1
  br i1 %exitcond_403, label %2425, label %2430

; <label>:2427                                    ; preds = %2428
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2426

; <label>:2428                                    ; preds = %2429, %2419
  %i_404 = phi i5 [ 0, %2419 ], [ %i_11_403, %2429 ]
  %exitcond2_403 = icmp eq i5 %i_404, -16
  %empty_2053 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_403 = add i5 %i_404, 1
  br i1 %exitcond2_403, label %2427, label %2429

; <label>:2429                                    ; preds = %2428
  %empty_2054 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1256 = extractvalue { i8, i1, i1 } %empty_2054, 0
  %tmp_403_2055 = zext i5 %i_404 to i64
  %plaintext_addr_404 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_403_2055
  store i8 %tmp_data_1256, i8* %plaintext_addr_404, align 1
  br label %2428

; <label>:2430                                    ; preds = %2426
  %tmp_131_403 = zext i5 %i_1_403 to i64
  %out_addr_407 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_403
  %tmp_data_1257 = load i8* %out_addr_407, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1257, i1 true, i1 false)
  br label %2426

; <label>:2431                                    ; preds = %2432
  %empty_2056 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_422)
  %tmp_423 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2440

; <label>:2432                                    ; preds = %2436, %2433
  %i_1_404 = phi i5 [ 0, %2433 ], [ %i_12_404, %2436 ]
  %exitcond_404 = icmp eq i5 %i_1_404, -16
  %empty_2057 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_404 = add i5 %i_1_404, 1
  br i1 %exitcond_404, label %2431, label %2436

; <label>:2433                                    ; preds = %2434
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2432

; <label>:2434                                    ; preds = %2435, %2425
  %i_405 = phi i5 [ 0, %2425 ], [ %i_11_404, %2435 ]
  %exitcond2_404 = icmp eq i5 %i_405, -16
  %empty_2058 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_404 = add i5 %i_405, 1
  br i1 %exitcond2_404, label %2433, label %2435

; <label>:2435                                    ; preds = %2434
  %empty_2059 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1258 = extractvalue { i8, i1, i1 } %empty_2059, 0
  %tmp_404_2060 = zext i5 %i_405 to i64
  %plaintext_addr_405 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_404_2060
  store i8 %tmp_data_1258, i8* %plaintext_addr_405, align 1
  br label %2434

; <label>:2436                                    ; preds = %2432
  %tmp_131_404 = zext i5 %i_1_404 to i64
  %out_addr_408 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_404
  %tmp_data_1259 = load i8* %out_addr_408, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1259, i1 true, i1 false)
  br label %2432

; <label>:2437                                    ; preds = %2438
  %empty_2061 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_423)
  %tmp_424 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2446

; <label>:2438                                    ; preds = %2442, %2439
  %i_1_405 = phi i5 [ 0, %2439 ], [ %i_12_405, %2442 ]
  %exitcond_405 = icmp eq i5 %i_1_405, -16
  %empty_2062 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_405 = add i5 %i_1_405, 1
  br i1 %exitcond_405, label %2437, label %2442

; <label>:2439                                    ; preds = %2440
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2438

; <label>:2440                                    ; preds = %2441, %2431
  %i_406 = phi i5 [ 0, %2431 ], [ %i_11_405, %2441 ]
  %exitcond2_405 = icmp eq i5 %i_406, -16
  %empty_2063 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_405 = add i5 %i_406, 1
  br i1 %exitcond2_405, label %2439, label %2441

; <label>:2441                                    ; preds = %2440
  %empty_2064 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1260 = extractvalue { i8, i1, i1 } %empty_2064, 0
  %tmp_405_2065 = zext i5 %i_406 to i64
  %plaintext_addr_406 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_405_2065
  store i8 %tmp_data_1260, i8* %plaintext_addr_406, align 1
  br label %2440

; <label>:2442                                    ; preds = %2438
  %tmp_131_405 = zext i5 %i_1_405 to i64
  %out_addr_409 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_405
  %tmp_data_1261 = load i8* %out_addr_409, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1261, i1 true, i1 false)
  br label %2438

; <label>:2443                                    ; preds = %2444
  %empty_2066 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_424)
  %tmp_425 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2452

; <label>:2444                                    ; preds = %2448, %2445
  %i_1_406 = phi i5 [ 0, %2445 ], [ %i_12_406, %2448 ]
  %exitcond_406 = icmp eq i5 %i_1_406, -16
  %empty_2067 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_406 = add i5 %i_1_406, 1
  br i1 %exitcond_406, label %2443, label %2448

; <label>:2445                                    ; preds = %2446
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2444

; <label>:2446                                    ; preds = %2447, %2437
  %i_407 = phi i5 [ 0, %2437 ], [ %i_11_406, %2447 ]
  %exitcond2_406 = icmp eq i5 %i_407, -16
  %empty_2068 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_406 = add i5 %i_407, 1
  br i1 %exitcond2_406, label %2445, label %2447

; <label>:2447                                    ; preds = %2446
  %empty_2069 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1262 = extractvalue { i8, i1, i1 } %empty_2069, 0
  %tmp_406_2070 = zext i5 %i_407 to i64
  %plaintext_addr_407 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_406_2070
  store i8 %tmp_data_1262, i8* %plaintext_addr_407, align 1
  br label %2446

; <label>:2448                                    ; preds = %2444
  %tmp_131_406 = zext i5 %i_1_406 to i64
  %out_addr_410 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_406
  %tmp_data_1263 = load i8* %out_addr_410, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1263, i1 true, i1 false)
  br label %2444

; <label>:2449                                    ; preds = %2450
  %empty_2071 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_425)
  %tmp_426 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2458

; <label>:2450                                    ; preds = %2454, %2451
  %i_1_407 = phi i5 [ 0, %2451 ], [ %i_12_407, %2454 ]
  %exitcond_407 = icmp eq i5 %i_1_407, -16
  %empty_2072 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_407 = add i5 %i_1_407, 1
  br i1 %exitcond_407, label %2449, label %2454

; <label>:2451                                    ; preds = %2452
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2450

; <label>:2452                                    ; preds = %2453, %2443
  %i_408 = phi i5 [ 0, %2443 ], [ %i_11_407, %2453 ]
  %exitcond2_407 = icmp eq i5 %i_408, -16
  %empty_2073 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_407 = add i5 %i_408, 1
  br i1 %exitcond2_407, label %2451, label %2453

; <label>:2453                                    ; preds = %2452
  %empty_2074 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1264 = extractvalue { i8, i1, i1 } %empty_2074, 0
  %tmp_407_2075 = zext i5 %i_408 to i64
  %plaintext_addr_408 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_407_2075
  store i8 %tmp_data_1264, i8* %plaintext_addr_408, align 1
  br label %2452

; <label>:2454                                    ; preds = %2450
  %tmp_131_407 = zext i5 %i_1_407 to i64
  %out_addr_411 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_407
  %tmp_data_1265 = load i8* %out_addr_411, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1265, i1 true, i1 false)
  br label %2450

; <label>:2455                                    ; preds = %2456
  %empty_2076 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_426)
  %tmp_427 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2464

; <label>:2456                                    ; preds = %2460, %2457
  %i_1_408 = phi i5 [ 0, %2457 ], [ %i_12_408, %2460 ]
  %exitcond_408 = icmp eq i5 %i_1_408, -16
  %empty_2077 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_408 = add i5 %i_1_408, 1
  br i1 %exitcond_408, label %2455, label %2460

; <label>:2457                                    ; preds = %2458
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2456

; <label>:2458                                    ; preds = %2459, %2449
  %i_409 = phi i5 [ 0, %2449 ], [ %i_11_408, %2459 ]
  %exitcond2_408 = icmp eq i5 %i_409, -16
  %empty_2078 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_408 = add i5 %i_409, 1
  br i1 %exitcond2_408, label %2457, label %2459

; <label>:2459                                    ; preds = %2458
  %empty_2079 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1266 = extractvalue { i8, i1, i1 } %empty_2079, 0
  %tmp_408_2080 = zext i5 %i_409 to i64
  %plaintext_addr_409 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_408_2080
  store i8 %tmp_data_1266, i8* %plaintext_addr_409, align 1
  br label %2458

; <label>:2460                                    ; preds = %2456
  %tmp_131_408 = zext i5 %i_1_408 to i64
  %out_addr_412 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_408
  %tmp_data_1267 = load i8* %out_addr_412, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1267, i1 true, i1 false)
  br label %2456

; <label>:2461                                    ; preds = %2462
  %empty_2081 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_427)
  %tmp_428 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2470

; <label>:2462                                    ; preds = %2466, %2463
  %i_1_409 = phi i5 [ 0, %2463 ], [ %i_12_409, %2466 ]
  %exitcond_409 = icmp eq i5 %i_1_409, -16
  %empty_2082 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_409 = add i5 %i_1_409, 1
  br i1 %exitcond_409, label %2461, label %2466

; <label>:2463                                    ; preds = %2464
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2462

; <label>:2464                                    ; preds = %2465, %2455
  %i_410 = phi i5 [ 0, %2455 ], [ %i_11_409, %2465 ]
  %exitcond2_409 = icmp eq i5 %i_410, -16
  %empty_2083 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_409 = add i5 %i_410, 1
  br i1 %exitcond2_409, label %2463, label %2465

; <label>:2465                                    ; preds = %2464
  %empty_2084 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1268 = extractvalue { i8, i1, i1 } %empty_2084, 0
  %tmp_409_2085 = zext i5 %i_410 to i64
  %plaintext_addr_410 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_409_2085
  store i8 %tmp_data_1268, i8* %plaintext_addr_410, align 1
  br label %2464

; <label>:2466                                    ; preds = %2462
  %tmp_131_409 = zext i5 %i_1_409 to i64
  %out_addr_413 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_409
  %tmp_data_1269 = load i8* %out_addr_413, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1269, i1 true, i1 false)
  br label %2462

; <label>:2467                                    ; preds = %2468
  %empty_2086 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_428)
  %tmp_429 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2476

; <label>:2468                                    ; preds = %2472, %2469
  %i_1_410 = phi i5 [ 0, %2469 ], [ %i_12_410, %2472 ]
  %exitcond_410 = icmp eq i5 %i_1_410, -16
  %empty_2087 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_410 = add i5 %i_1_410, 1
  br i1 %exitcond_410, label %2467, label %2472

; <label>:2469                                    ; preds = %2470
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2468

; <label>:2470                                    ; preds = %2471, %2461
  %i_411 = phi i5 [ 0, %2461 ], [ %i_11_410, %2471 ]
  %exitcond2_410 = icmp eq i5 %i_411, -16
  %empty_2088 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_410 = add i5 %i_411, 1
  br i1 %exitcond2_410, label %2469, label %2471

; <label>:2471                                    ; preds = %2470
  %empty_2089 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1270 = extractvalue { i8, i1, i1 } %empty_2089, 0
  %tmp_410_2090 = zext i5 %i_411 to i64
  %plaintext_addr_411 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_410_2090
  store i8 %tmp_data_1270, i8* %plaintext_addr_411, align 1
  br label %2470

; <label>:2472                                    ; preds = %2468
  %tmp_131_410 = zext i5 %i_1_410 to i64
  %out_addr_414 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_410
  %tmp_data_1271 = load i8* %out_addr_414, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1271, i1 true, i1 false)
  br label %2468

; <label>:2473                                    ; preds = %2474
  %empty_2091 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_429)
  %tmp_430 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2482

; <label>:2474                                    ; preds = %2478, %2475
  %i_1_411 = phi i5 [ 0, %2475 ], [ %i_12_411, %2478 ]
  %exitcond_411 = icmp eq i5 %i_1_411, -16
  %empty_2092 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_411 = add i5 %i_1_411, 1
  br i1 %exitcond_411, label %2473, label %2478

; <label>:2475                                    ; preds = %2476
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2474

; <label>:2476                                    ; preds = %2477, %2467
  %i_412 = phi i5 [ 0, %2467 ], [ %i_11_411, %2477 ]
  %exitcond2_411 = icmp eq i5 %i_412, -16
  %empty_2093 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_411 = add i5 %i_412, 1
  br i1 %exitcond2_411, label %2475, label %2477

; <label>:2477                                    ; preds = %2476
  %empty_2094 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1272 = extractvalue { i8, i1, i1 } %empty_2094, 0
  %tmp_411_2095 = zext i5 %i_412 to i64
  %plaintext_addr_412 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_411_2095
  store i8 %tmp_data_1272, i8* %plaintext_addr_412, align 1
  br label %2476

; <label>:2478                                    ; preds = %2474
  %tmp_131_411 = zext i5 %i_1_411 to i64
  %out_addr_415 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_411
  %tmp_data_1273 = load i8* %out_addr_415, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1273, i1 true, i1 false)
  br label %2474

; <label>:2479                                    ; preds = %2480
  %empty_2096 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_430)
  %tmp_431 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2488

; <label>:2480                                    ; preds = %2484, %2481
  %i_1_412 = phi i5 [ 0, %2481 ], [ %i_12_412, %2484 ]
  %exitcond_412 = icmp eq i5 %i_1_412, -16
  %empty_2097 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_412 = add i5 %i_1_412, 1
  br i1 %exitcond_412, label %2479, label %2484

; <label>:2481                                    ; preds = %2482
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2480

; <label>:2482                                    ; preds = %2483, %2473
  %i_413 = phi i5 [ 0, %2473 ], [ %i_11_412, %2483 ]
  %exitcond2_412 = icmp eq i5 %i_413, -16
  %empty_2098 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_412 = add i5 %i_413, 1
  br i1 %exitcond2_412, label %2481, label %2483

; <label>:2483                                    ; preds = %2482
  %empty_2099 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1274 = extractvalue { i8, i1, i1 } %empty_2099, 0
  %tmp_412_2100 = zext i5 %i_413 to i64
  %plaintext_addr_413 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_412_2100
  store i8 %tmp_data_1274, i8* %plaintext_addr_413, align 1
  br label %2482

; <label>:2484                                    ; preds = %2480
  %tmp_131_412 = zext i5 %i_1_412 to i64
  %out_addr_416 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_412
  %tmp_data_1275 = load i8* %out_addr_416, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1275, i1 true, i1 false)
  br label %2480

; <label>:2485                                    ; preds = %2486
  %empty_2101 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_431)
  %tmp_432 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2494

; <label>:2486                                    ; preds = %2490, %2487
  %i_1_413 = phi i5 [ 0, %2487 ], [ %i_12_413, %2490 ]
  %exitcond_413 = icmp eq i5 %i_1_413, -16
  %empty_2102 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_413 = add i5 %i_1_413, 1
  br i1 %exitcond_413, label %2485, label %2490

; <label>:2487                                    ; preds = %2488
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2486

; <label>:2488                                    ; preds = %2489, %2479
  %i_414 = phi i5 [ 0, %2479 ], [ %i_11_413, %2489 ]
  %exitcond2_413 = icmp eq i5 %i_414, -16
  %empty_2103 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_413 = add i5 %i_414, 1
  br i1 %exitcond2_413, label %2487, label %2489

; <label>:2489                                    ; preds = %2488
  %empty_2104 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1276 = extractvalue { i8, i1, i1 } %empty_2104, 0
  %tmp_413_2105 = zext i5 %i_414 to i64
  %plaintext_addr_414 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_413_2105
  store i8 %tmp_data_1276, i8* %plaintext_addr_414, align 1
  br label %2488

; <label>:2490                                    ; preds = %2486
  %tmp_131_413 = zext i5 %i_1_413 to i64
  %out_addr_417 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_413
  %tmp_data_1277 = load i8* %out_addr_417, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1277, i1 true, i1 false)
  br label %2486

; <label>:2491                                    ; preds = %2492
  %empty_2106 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_432)
  %tmp_433 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2500

; <label>:2492                                    ; preds = %2496, %2493
  %i_1_414 = phi i5 [ 0, %2493 ], [ %i_12_414, %2496 ]
  %exitcond_414 = icmp eq i5 %i_1_414, -16
  %empty_2107 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_414 = add i5 %i_1_414, 1
  br i1 %exitcond_414, label %2491, label %2496

; <label>:2493                                    ; preds = %2494
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2492

; <label>:2494                                    ; preds = %2495, %2485
  %i_415 = phi i5 [ 0, %2485 ], [ %i_11_414, %2495 ]
  %exitcond2_414 = icmp eq i5 %i_415, -16
  %empty_2108 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_414 = add i5 %i_415, 1
  br i1 %exitcond2_414, label %2493, label %2495

; <label>:2495                                    ; preds = %2494
  %empty_2109 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1278 = extractvalue { i8, i1, i1 } %empty_2109, 0
  %tmp_414_2110 = zext i5 %i_415 to i64
  %plaintext_addr_415 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_414_2110
  store i8 %tmp_data_1278, i8* %plaintext_addr_415, align 1
  br label %2494

; <label>:2496                                    ; preds = %2492
  %tmp_131_414 = zext i5 %i_1_414 to i64
  %out_addr_418 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_414
  %tmp_data_1279 = load i8* %out_addr_418, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1279, i1 true, i1 false)
  br label %2492

; <label>:2497                                    ; preds = %2498
  %empty_2111 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_433)
  %tmp_434 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2506

; <label>:2498                                    ; preds = %2502, %2499
  %i_1_415 = phi i5 [ 0, %2499 ], [ %i_12_415, %2502 ]
  %exitcond_415 = icmp eq i5 %i_1_415, -16
  %empty_2112 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_415 = add i5 %i_1_415, 1
  br i1 %exitcond_415, label %2497, label %2502

; <label>:2499                                    ; preds = %2500
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2498

; <label>:2500                                    ; preds = %2501, %2491
  %i_416 = phi i5 [ 0, %2491 ], [ %i_11_415, %2501 ]
  %exitcond2_415 = icmp eq i5 %i_416, -16
  %empty_2113 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_415 = add i5 %i_416, 1
  br i1 %exitcond2_415, label %2499, label %2501

; <label>:2501                                    ; preds = %2500
  %empty_2114 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1280 = extractvalue { i8, i1, i1 } %empty_2114, 0
  %tmp_415_2115 = zext i5 %i_416 to i64
  %plaintext_addr_416 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_415_2115
  store i8 %tmp_data_1280, i8* %plaintext_addr_416, align 1
  br label %2500

; <label>:2502                                    ; preds = %2498
  %tmp_131_415 = zext i5 %i_1_415 to i64
  %out_addr_419 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_415
  %tmp_data_1281 = load i8* %out_addr_419, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1281, i1 true, i1 false)
  br label %2498

; <label>:2503                                    ; preds = %2504
  %empty_2116 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_434)
  %tmp_435 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2512

; <label>:2504                                    ; preds = %2508, %2505
  %i_1_416 = phi i5 [ 0, %2505 ], [ %i_12_416, %2508 ]
  %exitcond_416 = icmp eq i5 %i_1_416, -16
  %empty_2117 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_416 = add i5 %i_1_416, 1
  br i1 %exitcond_416, label %2503, label %2508

; <label>:2505                                    ; preds = %2506
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2504

; <label>:2506                                    ; preds = %2507, %2497
  %i_417 = phi i5 [ 0, %2497 ], [ %i_11_416, %2507 ]
  %exitcond2_416 = icmp eq i5 %i_417, -16
  %empty_2118 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_416 = add i5 %i_417, 1
  br i1 %exitcond2_416, label %2505, label %2507

; <label>:2507                                    ; preds = %2506
  %empty_2119 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1282 = extractvalue { i8, i1, i1 } %empty_2119, 0
  %tmp_416_2120 = zext i5 %i_417 to i64
  %plaintext_addr_417 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_416_2120
  store i8 %tmp_data_1282, i8* %plaintext_addr_417, align 1
  br label %2506

; <label>:2508                                    ; preds = %2504
  %tmp_131_416 = zext i5 %i_1_416 to i64
  %out_addr_420 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_416
  %tmp_data_1283 = load i8* %out_addr_420, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1283, i1 true, i1 false)
  br label %2504

; <label>:2509                                    ; preds = %2510
  %empty_2121 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_435)
  %tmp_436 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2518

; <label>:2510                                    ; preds = %2514, %2511
  %i_1_417 = phi i5 [ 0, %2511 ], [ %i_12_417, %2514 ]
  %exitcond_417 = icmp eq i5 %i_1_417, -16
  %empty_2122 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_417 = add i5 %i_1_417, 1
  br i1 %exitcond_417, label %2509, label %2514

; <label>:2511                                    ; preds = %2512
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2510

; <label>:2512                                    ; preds = %2513, %2503
  %i_418 = phi i5 [ 0, %2503 ], [ %i_11_417, %2513 ]
  %exitcond2_417 = icmp eq i5 %i_418, -16
  %empty_2123 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_417 = add i5 %i_418, 1
  br i1 %exitcond2_417, label %2511, label %2513

; <label>:2513                                    ; preds = %2512
  %empty_2124 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1284 = extractvalue { i8, i1, i1 } %empty_2124, 0
  %tmp_417_2125 = zext i5 %i_418 to i64
  %plaintext_addr_418 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_417_2125
  store i8 %tmp_data_1284, i8* %plaintext_addr_418, align 1
  br label %2512

; <label>:2514                                    ; preds = %2510
  %tmp_131_417 = zext i5 %i_1_417 to i64
  %out_addr_421 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_417
  %tmp_data_1285 = load i8* %out_addr_421, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1285, i1 true, i1 false)
  br label %2510

; <label>:2515                                    ; preds = %2516
  %empty_2126 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_436)
  %tmp_437 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2524

; <label>:2516                                    ; preds = %2520, %2517
  %i_1_418 = phi i5 [ 0, %2517 ], [ %i_12_418, %2520 ]
  %exitcond_418 = icmp eq i5 %i_1_418, -16
  %empty_2127 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_418 = add i5 %i_1_418, 1
  br i1 %exitcond_418, label %2515, label %2520

; <label>:2517                                    ; preds = %2518
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2516

; <label>:2518                                    ; preds = %2519, %2509
  %i_419 = phi i5 [ 0, %2509 ], [ %i_11_418, %2519 ]
  %exitcond2_418 = icmp eq i5 %i_419, -16
  %empty_2128 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_418 = add i5 %i_419, 1
  br i1 %exitcond2_418, label %2517, label %2519

; <label>:2519                                    ; preds = %2518
  %empty_2129 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1286 = extractvalue { i8, i1, i1 } %empty_2129, 0
  %tmp_418_2130 = zext i5 %i_419 to i64
  %plaintext_addr_419 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_418_2130
  store i8 %tmp_data_1286, i8* %plaintext_addr_419, align 1
  br label %2518

; <label>:2520                                    ; preds = %2516
  %tmp_131_418 = zext i5 %i_1_418 to i64
  %out_addr_422 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_418
  %tmp_data_1287 = load i8* %out_addr_422, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1287, i1 true, i1 false)
  br label %2516

; <label>:2521                                    ; preds = %2522
  %empty_2131 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_437)
  %tmp_438 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2530

; <label>:2522                                    ; preds = %2526, %2523
  %i_1_419 = phi i5 [ 0, %2523 ], [ %i_12_419, %2526 ]
  %exitcond_419 = icmp eq i5 %i_1_419, -16
  %empty_2132 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_419 = add i5 %i_1_419, 1
  br i1 %exitcond_419, label %2521, label %2526

; <label>:2523                                    ; preds = %2524
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2522

; <label>:2524                                    ; preds = %2525, %2515
  %i_420 = phi i5 [ 0, %2515 ], [ %i_11_419, %2525 ]
  %exitcond2_419 = icmp eq i5 %i_420, -16
  %empty_2133 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_419 = add i5 %i_420, 1
  br i1 %exitcond2_419, label %2523, label %2525

; <label>:2525                                    ; preds = %2524
  %empty_2134 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1288 = extractvalue { i8, i1, i1 } %empty_2134, 0
  %tmp_419_2135 = zext i5 %i_420 to i64
  %plaintext_addr_420 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_419_2135
  store i8 %tmp_data_1288, i8* %plaintext_addr_420, align 1
  br label %2524

; <label>:2526                                    ; preds = %2522
  %tmp_131_419 = zext i5 %i_1_419 to i64
  %out_addr_423 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_419
  %tmp_data_1289 = load i8* %out_addr_423, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1289, i1 true, i1 false)
  br label %2522

; <label>:2527                                    ; preds = %2528
  %empty_2136 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_438)
  %tmp_439 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2536

; <label>:2528                                    ; preds = %2532, %2529
  %i_1_420 = phi i5 [ 0, %2529 ], [ %i_12_420, %2532 ]
  %exitcond_420 = icmp eq i5 %i_1_420, -16
  %empty_2137 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_420 = add i5 %i_1_420, 1
  br i1 %exitcond_420, label %2527, label %2532

; <label>:2529                                    ; preds = %2530
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2528

; <label>:2530                                    ; preds = %2531, %2521
  %i_421 = phi i5 [ 0, %2521 ], [ %i_11_420, %2531 ]
  %exitcond2_420 = icmp eq i5 %i_421, -16
  %empty_2138 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_420 = add i5 %i_421, 1
  br i1 %exitcond2_420, label %2529, label %2531

; <label>:2531                                    ; preds = %2530
  %empty_2139 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1290 = extractvalue { i8, i1, i1 } %empty_2139, 0
  %tmp_420_2140 = zext i5 %i_421 to i64
  %plaintext_addr_421 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_420_2140
  store i8 %tmp_data_1290, i8* %plaintext_addr_421, align 1
  br label %2530

; <label>:2532                                    ; preds = %2528
  %tmp_131_420 = zext i5 %i_1_420 to i64
  %out_addr_424 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_420
  %tmp_data_1291 = load i8* %out_addr_424, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1291, i1 true, i1 false)
  br label %2528

; <label>:2533                                    ; preds = %2534
  %empty_2141 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_439)
  %tmp_440 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2542

; <label>:2534                                    ; preds = %2538, %2535
  %i_1_421 = phi i5 [ 0, %2535 ], [ %i_12_421, %2538 ]
  %exitcond_421 = icmp eq i5 %i_1_421, -16
  %empty_2142 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_421 = add i5 %i_1_421, 1
  br i1 %exitcond_421, label %2533, label %2538

; <label>:2535                                    ; preds = %2536
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2534

; <label>:2536                                    ; preds = %2537, %2527
  %i_422 = phi i5 [ 0, %2527 ], [ %i_11_421, %2537 ]
  %exitcond2_421 = icmp eq i5 %i_422, -16
  %empty_2143 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_421 = add i5 %i_422, 1
  br i1 %exitcond2_421, label %2535, label %2537

; <label>:2537                                    ; preds = %2536
  %empty_2144 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1292 = extractvalue { i8, i1, i1 } %empty_2144, 0
  %tmp_421_2145 = zext i5 %i_422 to i64
  %plaintext_addr_422 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_421_2145
  store i8 %tmp_data_1292, i8* %plaintext_addr_422, align 1
  br label %2536

; <label>:2538                                    ; preds = %2534
  %tmp_131_421 = zext i5 %i_1_421 to i64
  %out_addr_425 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_421
  %tmp_data_1293 = load i8* %out_addr_425, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1293, i1 true, i1 false)
  br label %2534

; <label>:2539                                    ; preds = %2540
  %empty_2146 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_440)
  %tmp_441 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2548

; <label>:2540                                    ; preds = %2544, %2541
  %i_1_422 = phi i5 [ 0, %2541 ], [ %i_12_422, %2544 ]
  %exitcond_422 = icmp eq i5 %i_1_422, -16
  %empty_2147 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_422 = add i5 %i_1_422, 1
  br i1 %exitcond_422, label %2539, label %2544

; <label>:2541                                    ; preds = %2542
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2540

; <label>:2542                                    ; preds = %2543, %2533
  %i_423 = phi i5 [ 0, %2533 ], [ %i_11_422, %2543 ]
  %exitcond2_422 = icmp eq i5 %i_423, -16
  %empty_2148 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_422 = add i5 %i_423, 1
  br i1 %exitcond2_422, label %2541, label %2543

; <label>:2543                                    ; preds = %2542
  %empty_2149 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1294 = extractvalue { i8, i1, i1 } %empty_2149, 0
  %tmp_422_2150 = zext i5 %i_423 to i64
  %plaintext_addr_423 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_422_2150
  store i8 %tmp_data_1294, i8* %plaintext_addr_423, align 1
  br label %2542

; <label>:2544                                    ; preds = %2540
  %tmp_131_422 = zext i5 %i_1_422 to i64
  %out_addr_426 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_422
  %tmp_data_1295 = load i8* %out_addr_426, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1295, i1 true, i1 false)
  br label %2540

; <label>:2545                                    ; preds = %2546
  %empty_2151 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_441)
  %tmp_442 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2554

; <label>:2546                                    ; preds = %2550, %2547
  %i_1_423 = phi i5 [ 0, %2547 ], [ %i_12_423, %2550 ]
  %exitcond_423 = icmp eq i5 %i_1_423, -16
  %empty_2152 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_423 = add i5 %i_1_423, 1
  br i1 %exitcond_423, label %2545, label %2550

; <label>:2547                                    ; preds = %2548
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2546

; <label>:2548                                    ; preds = %2549, %2539
  %i_424 = phi i5 [ 0, %2539 ], [ %i_11_423, %2549 ]
  %exitcond2_423 = icmp eq i5 %i_424, -16
  %empty_2153 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_423 = add i5 %i_424, 1
  br i1 %exitcond2_423, label %2547, label %2549

; <label>:2549                                    ; preds = %2548
  %empty_2154 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1296 = extractvalue { i8, i1, i1 } %empty_2154, 0
  %tmp_423_2155 = zext i5 %i_424 to i64
  %plaintext_addr_424 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_423_2155
  store i8 %tmp_data_1296, i8* %plaintext_addr_424, align 1
  br label %2548

; <label>:2550                                    ; preds = %2546
  %tmp_131_423 = zext i5 %i_1_423 to i64
  %out_addr_427 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_423
  %tmp_data_1297 = load i8* %out_addr_427, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1297, i1 true, i1 false)
  br label %2546

; <label>:2551                                    ; preds = %2552
  %empty_2156 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_442)
  %tmp_443 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2560

; <label>:2552                                    ; preds = %2556, %2553
  %i_1_424 = phi i5 [ 0, %2553 ], [ %i_12_424, %2556 ]
  %exitcond_424 = icmp eq i5 %i_1_424, -16
  %empty_2157 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_424 = add i5 %i_1_424, 1
  br i1 %exitcond_424, label %2551, label %2556

; <label>:2553                                    ; preds = %2554
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2552

; <label>:2554                                    ; preds = %2555, %2545
  %i_425 = phi i5 [ 0, %2545 ], [ %i_11_424, %2555 ]
  %exitcond2_424 = icmp eq i5 %i_425, -16
  %empty_2158 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_424 = add i5 %i_425, 1
  br i1 %exitcond2_424, label %2553, label %2555

; <label>:2555                                    ; preds = %2554
  %empty_2159 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1298 = extractvalue { i8, i1, i1 } %empty_2159, 0
  %tmp_424_2160 = zext i5 %i_425 to i64
  %plaintext_addr_425 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_424_2160
  store i8 %tmp_data_1298, i8* %plaintext_addr_425, align 1
  br label %2554

; <label>:2556                                    ; preds = %2552
  %tmp_131_424 = zext i5 %i_1_424 to i64
  %out_addr_428 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_424
  %tmp_data_1299 = load i8* %out_addr_428, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1299, i1 true, i1 false)
  br label %2552

; <label>:2557                                    ; preds = %2558
  %empty_2161 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_443)
  %tmp_444 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2566

; <label>:2558                                    ; preds = %2562, %2559
  %i_1_425 = phi i5 [ 0, %2559 ], [ %i_12_425, %2562 ]
  %exitcond_425 = icmp eq i5 %i_1_425, -16
  %empty_2162 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_425 = add i5 %i_1_425, 1
  br i1 %exitcond_425, label %2557, label %2562

; <label>:2559                                    ; preds = %2560
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2558

; <label>:2560                                    ; preds = %2561, %2551
  %i_426 = phi i5 [ 0, %2551 ], [ %i_11_425, %2561 ]
  %exitcond2_425 = icmp eq i5 %i_426, -16
  %empty_2163 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_425 = add i5 %i_426, 1
  br i1 %exitcond2_425, label %2559, label %2561

; <label>:2561                                    ; preds = %2560
  %empty_2164 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1300 = extractvalue { i8, i1, i1 } %empty_2164, 0
  %tmp_425_2165 = zext i5 %i_426 to i64
  %plaintext_addr_426 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_425_2165
  store i8 %tmp_data_1300, i8* %plaintext_addr_426, align 1
  br label %2560

; <label>:2562                                    ; preds = %2558
  %tmp_131_425 = zext i5 %i_1_425 to i64
  %out_addr_429 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_425
  %tmp_data_1301 = load i8* %out_addr_429, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1301, i1 true, i1 false)
  br label %2558

; <label>:2563                                    ; preds = %2564
  %empty_2166 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_444)
  %tmp_445 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2572

; <label>:2564                                    ; preds = %2568, %2565
  %i_1_426 = phi i5 [ 0, %2565 ], [ %i_12_426, %2568 ]
  %exitcond_426 = icmp eq i5 %i_1_426, -16
  %empty_2167 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_426 = add i5 %i_1_426, 1
  br i1 %exitcond_426, label %2563, label %2568

; <label>:2565                                    ; preds = %2566
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2564

; <label>:2566                                    ; preds = %2567, %2557
  %i_427 = phi i5 [ 0, %2557 ], [ %i_11_426, %2567 ]
  %exitcond2_426 = icmp eq i5 %i_427, -16
  %empty_2168 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_426 = add i5 %i_427, 1
  br i1 %exitcond2_426, label %2565, label %2567

; <label>:2567                                    ; preds = %2566
  %empty_2169 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1302 = extractvalue { i8, i1, i1 } %empty_2169, 0
  %tmp_426_2170 = zext i5 %i_427 to i64
  %plaintext_addr_427 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_426_2170
  store i8 %tmp_data_1302, i8* %plaintext_addr_427, align 1
  br label %2566

; <label>:2568                                    ; preds = %2564
  %tmp_131_426 = zext i5 %i_1_426 to i64
  %out_addr_430 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_426
  %tmp_data_1303 = load i8* %out_addr_430, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1303, i1 true, i1 false)
  br label %2564

; <label>:2569                                    ; preds = %2570
  %empty_2171 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_445)
  %tmp_446 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2578

; <label>:2570                                    ; preds = %2574, %2571
  %i_1_427 = phi i5 [ 0, %2571 ], [ %i_12_427, %2574 ]
  %exitcond_427 = icmp eq i5 %i_1_427, -16
  %empty_2172 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_427 = add i5 %i_1_427, 1
  br i1 %exitcond_427, label %2569, label %2574

; <label>:2571                                    ; preds = %2572
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2570

; <label>:2572                                    ; preds = %2573, %2563
  %i_428 = phi i5 [ 0, %2563 ], [ %i_11_427, %2573 ]
  %exitcond2_427 = icmp eq i5 %i_428, -16
  %empty_2173 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_427 = add i5 %i_428, 1
  br i1 %exitcond2_427, label %2571, label %2573

; <label>:2573                                    ; preds = %2572
  %empty_2174 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1304 = extractvalue { i8, i1, i1 } %empty_2174, 0
  %tmp_427_2175 = zext i5 %i_428 to i64
  %plaintext_addr_428 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_427_2175
  store i8 %tmp_data_1304, i8* %plaintext_addr_428, align 1
  br label %2572

; <label>:2574                                    ; preds = %2570
  %tmp_131_427 = zext i5 %i_1_427 to i64
  %out_addr_431 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_427
  %tmp_data_1305 = load i8* %out_addr_431, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1305, i1 true, i1 false)
  br label %2570

; <label>:2575                                    ; preds = %2576
  %empty_2176 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_446)
  %tmp_447 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2584

; <label>:2576                                    ; preds = %2580, %2577
  %i_1_428 = phi i5 [ 0, %2577 ], [ %i_12_428, %2580 ]
  %exitcond_428 = icmp eq i5 %i_1_428, -16
  %empty_2177 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_428 = add i5 %i_1_428, 1
  br i1 %exitcond_428, label %2575, label %2580

; <label>:2577                                    ; preds = %2578
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2576

; <label>:2578                                    ; preds = %2579, %2569
  %i_429 = phi i5 [ 0, %2569 ], [ %i_11_428, %2579 ]
  %exitcond2_428 = icmp eq i5 %i_429, -16
  %empty_2178 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_428 = add i5 %i_429, 1
  br i1 %exitcond2_428, label %2577, label %2579

; <label>:2579                                    ; preds = %2578
  %empty_2179 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1306 = extractvalue { i8, i1, i1 } %empty_2179, 0
  %tmp_428_2180 = zext i5 %i_429 to i64
  %plaintext_addr_429 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_428_2180
  store i8 %tmp_data_1306, i8* %plaintext_addr_429, align 1
  br label %2578

; <label>:2580                                    ; preds = %2576
  %tmp_131_428 = zext i5 %i_1_428 to i64
  %out_addr_432 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_428
  %tmp_data_1307 = load i8* %out_addr_432, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1307, i1 true, i1 false)
  br label %2576

; <label>:2581                                    ; preds = %2582
  %empty_2181 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_447)
  %tmp_448 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2590

; <label>:2582                                    ; preds = %2586, %2583
  %i_1_429 = phi i5 [ 0, %2583 ], [ %i_12_429, %2586 ]
  %exitcond_429 = icmp eq i5 %i_1_429, -16
  %empty_2182 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_429 = add i5 %i_1_429, 1
  br i1 %exitcond_429, label %2581, label %2586

; <label>:2583                                    ; preds = %2584
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2582

; <label>:2584                                    ; preds = %2585, %2575
  %i_430 = phi i5 [ 0, %2575 ], [ %i_11_429, %2585 ]
  %exitcond2_429 = icmp eq i5 %i_430, -16
  %empty_2183 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_429 = add i5 %i_430, 1
  br i1 %exitcond2_429, label %2583, label %2585

; <label>:2585                                    ; preds = %2584
  %empty_2184 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1308 = extractvalue { i8, i1, i1 } %empty_2184, 0
  %tmp_429_2185 = zext i5 %i_430 to i64
  %plaintext_addr_430 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_429_2185
  store i8 %tmp_data_1308, i8* %plaintext_addr_430, align 1
  br label %2584

; <label>:2586                                    ; preds = %2582
  %tmp_131_429 = zext i5 %i_1_429 to i64
  %out_addr_433 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_429
  %tmp_data_1309 = load i8* %out_addr_433, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1309, i1 true, i1 false)
  br label %2582

; <label>:2587                                    ; preds = %2588
  %empty_2186 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_448)
  %tmp_449 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2596

; <label>:2588                                    ; preds = %2592, %2589
  %i_1_430 = phi i5 [ 0, %2589 ], [ %i_12_430, %2592 ]
  %exitcond_430 = icmp eq i5 %i_1_430, -16
  %empty_2187 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_430 = add i5 %i_1_430, 1
  br i1 %exitcond_430, label %2587, label %2592

; <label>:2589                                    ; preds = %2590
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2588

; <label>:2590                                    ; preds = %2591, %2581
  %i_431 = phi i5 [ 0, %2581 ], [ %i_11_430, %2591 ]
  %exitcond2_430 = icmp eq i5 %i_431, -16
  %empty_2188 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_430 = add i5 %i_431, 1
  br i1 %exitcond2_430, label %2589, label %2591

; <label>:2591                                    ; preds = %2590
  %empty_2189 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1310 = extractvalue { i8, i1, i1 } %empty_2189, 0
  %tmp_430_2190 = zext i5 %i_431 to i64
  %plaintext_addr_431 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_430_2190
  store i8 %tmp_data_1310, i8* %plaintext_addr_431, align 1
  br label %2590

; <label>:2592                                    ; preds = %2588
  %tmp_131_430 = zext i5 %i_1_430 to i64
  %out_addr_434 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_430
  %tmp_data_1311 = load i8* %out_addr_434, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1311, i1 true, i1 false)
  br label %2588

; <label>:2593                                    ; preds = %2594
  %empty_2191 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_449)
  %tmp_450 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2602

; <label>:2594                                    ; preds = %2598, %2595
  %i_1_431 = phi i5 [ 0, %2595 ], [ %i_12_431, %2598 ]
  %exitcond_431 = icmp eq i5 %i_1_431, -16
  %empty_2192 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_431 = add i5 %i_1_431, 1
  br i1 %exitcond_431, label %2593, label %2598

; <label>:2595                                    ; preds = %2596
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2594

; <label>:2596                                    ; preds = %2597, %2587
  %i_432 = phi i5 [ 0, %2587 ], [ %i_11_431, %2597 ]
  %exitcond2_431 = icmp eq i5 %i_432, -16
  %empty_2193 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_431 = add i5 %i_432, 1
  br i1 %exitcond2_431, label %2595, label %2597

; <label>:2597                                    ; preds = %2596
  %empty_2194 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1312 = extractvalue { i8, i1, i1 } %empty_2194, 0
  %tmp_431_2195 = zext i5 %i_432 to i64
  %plaintext_addr_432 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_431_2195
  store i8 %tmp_data_1312, i8* %plaintext_addr_432, align 1
  br label %2596

; <label>:2598                                    ; preds = %2594
  %tmp_131_431 = zext i5 %i_1_431 to i64
  %out_addr_435 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_431
  %tmp_data_1313 = load i8* %out_addr_435, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1313, i1 true, i1 false)
  br label %2594

; <label>:2599                                    ; preds = %2600
  %empty_2196 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_450)
  %tmp_451 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2608

; <label>:2600                                    ; preds = %2604, %2601
  %i_1_432 = phi i5 [ 0, %2601 ], [ %i_12_432, %2604 ]
  %exitcond_432 = icmp eq i5 %i_1_432, -16
  %empty_2197 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_432 = add i5 %i_1_432, 1
  br i1 %exitcond_432, label %2599, label %2604

; <label>:2601                                    ; preds = %2602
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2600

; <label>:2602                                    ; preds = %2603, %2593
  %i_433 = phi i5 [ 0, %2593 ], [ %i_11_432, %2603 ]
  %exitcond2_432 = icmp eq i5 %i_433, -16
  %empty_2198 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_432 = add i5 %i_433, 1
  br i1 %exitcond2_432, label %2601, label %2603

; <label>:2603                                    ; preds = %2602
  %empty_2199 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1314 = extractvalue { i8, i1, i1 } %empty_2199, 0
  %tmp_432_2200 = zext i5 %i_433 to i64
  %plaintext_addr_433 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_432_2200
  store i8 %tmp_data_1314, i8* %plaintext_addr_433, align 1
  br label %2602

; <label>:2604                                    ; preds = %2600
  %tmp_131_432 = zext i5 %i_1_432 to i64
  %out_addr_436 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_432
  %tmp_data_1315 = load i8* %out_addr_436, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1315, i1 true, i1 false)
  br label %2600

; <label>:2605                                    ; preds = %2606
  %empty_2201 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_451)
  %tmp_452 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2614

; <label>:2606                                    ; preds = %2610, %2607
  %i_1_433 = phi i5 [ 0, %2607 ], [ %i_12_433, %2610 ]
  %exitcond_433 = icmp eq i5 %i_1_433, -16
  %empty_2202 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_433 = add i5 %i_1_433, 1
  br i1 %exitcond_433, label %2605, label %2610

; <label>:2607                                    ; preds = %2608
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2606

; <label>:2608                                    ; preds = %2609, %2599
  %i_434 = phi i5 [ 0, %2599 ], [ %i_11_433, %2609 ]
  %exitcond2_433 = icmp eq i5 %i_434, -16
  %empty_2203 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_433 = add i5 %i_434, 1
  br i1 %exitcond2_433, label %2607, label %2609

; <label>:2609                                    ; preds = %2608
  %empty_2204 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1316 = extractvalue { i8, i1, i1 } %empty_2204, 0
  %tmp_433_2205 = zext i5 %i_434 to i64
  %plaintext_addr_434 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_433_2205
  store i8 %tmp_data_1316, i8* %plaintext_addr_434, align 1
  br label %2608

; <label>:2610                                    ; preds = %2606
  %tmp_131_433 = zext i5 %i_1_433 to i64
  %out_addr_437 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_433
  %tmp_data_1317 = load i8* %out_addr_437, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1317, i1 true, i1 false)
  br label %2606

; <label>:2611                                    ; preds = %2612
  %empty_2206 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_452)
  %tmp_453 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2620

; <label>:2612                                    ; preds = %2616, %2613
  %i_1_434 = phi i5 [ 0, %2613 ], [ %i_12_434, %2616 ]
  %exitcond_434 = icmp eq i5 %i_1_434, -16
  %empty_2207 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_434 = add i5 %i_1_434, 1
  br i1 %exitcond_434, label %2611, label %2616

; <label>:2613                                    ; preds = %2614
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2612

; <label>:2614                                    ; preds = %2615, %2605
  %i_435 = phi i5 [ 0, %2605 ], [ %i_11_434, %2615 ]
  %exitcond2_434 = icmp eq i5 %i_435, -16
  %empty_2208 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_434 = add i5 %i_435, 1
  br i1 %exitcond2_434, label %2613, label %2615

; <label>:2615                                    ; preds = %2614
  %empty_2209 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1318 = extractvalue { i8, i1, i1 } %empty_2209, 0
  %tmp_434_2210 = zext i5 %i_435 to i64
  %plaintext_addr_435 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_434_2210
  store i8 %tmp_data_1318, i8* %plaintext_addr_435, align 1
  br label %2614

; <label>:2616                                    ; preds = %2612
  %tmp_131_434 = zext i5 %i_1_434 to i64
  %out_addr_438 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_434
  %tmp_data_1319 = load i8* %out_addr_438, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1319, i1 true, i1 false)
  br label %2612

; <label>:2617                                    ; preds = %2618
  %empty_2211 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_453)
  %tmp_454 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2626

; <label>:2618                                    ; preds = %2622, %2619
  %i_1_435 = phi i5 [ 0, %2619 ], [ %i_12_435, %2622 ]
  %exitcond_435 = icmp eq i5 %i_1_435, -16
  %empty_2212 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_435 = add i5 %i_1_435, 1
  br i1 %exitcond_435, label %2617, label %2622

; <label>:2619                                    ; preds = %2620
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2618

; <label>:2620                                    ; preds = %2621, %2611
  %i_436 = phi i5 [ 0, %2611 ], [ %i_11_435, %2621 ]
  %exitcond2_435 = icmp eq i5 %i_436, -16
  %empty_2213 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_435 = add i5 %i_436, 1
  br i1 %exitcond2_435, label %2619, label %2621

; <label>:2621                                    ; preds = %2620
  %empty_2214 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1320 = extractvalue { i8, i1, i1 } %empty_2214, 0
  %tmp_435_2215 = zext i5 %i_436 to i64
  %plaintext_addr_436 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_435_2215
  store i8 %tmp_data_1320, i8* %plaintext_addr_436, align 1
  br label %2620

; <label>:2622                                    ; preds = %2618
  %tmp_131_435 = zext i5 %i_1_435 to i64
  %out_addr_439 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_435
  %tmp_data_1321 = load i8* %out_addr_439, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1321, i1 true, i1 false)
  br label %2618

; <label>:2623                                    ; preds = %2624
  %empty_2216 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_454)
  %tmp_455 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2632

; <label>:2624                                    ; preds = %2628, %2625
  %i_1_436 = phi i5 [ 0, %2625 ], [ %i_12_436, %2628 ]
  %exitcond_436 = icmp eq i5 %i_1_436, -16
  %empty_2217 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_436 = add i5 %i_1_436, 1
  br i1 %exitcond_436, label %2623, label %2628

; <label>:2625                                    ; preds = %2626
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2624

; <label>:2626                                    ; preds = %2627, %2617
  %i_437 = phi i5 [ 0, %2617 ], [ %i_11_436, %2627 ]
  %exitcond2_436 = icmp eq i5 %i_437, -16
  %empty_2218 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_436 = add i5 %i_437, 1
  br i1 %exitcond2_436, label %2625, label %2627

; <label>:2627                                    ; preds = %2626
  %empty_2219 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1322 = extractvalue { i8, i1, i1 } %empty_2219, 0
  %tmp_436_2220 = zext i5 %i_437 to i64
  %plaintext_addr_437 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_436_2220
  store i8 %tmp_data_1322, i8* %plaintext_addr_437, align 1
  br label %2626

; <label>:2628                                    ; preds = %2624
  %tmp_131_436 = zext i5 %i_1_436 to i64
  %out_addr_440 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_436
  %tmp_data_1323 = load i8* %out_addr_440, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1323, i1 true, i1 false)
  br label %2624

; <label>:2629                                    ; preds = %2630
  %empty_2221 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_455)
  %tmp_456 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2638

; <label>:2630                                    ; preds = %2634, %2631
  %i_1_437 = phi i5 [ 0, %2631 ], [ %i_12_437, %2634 ]
  %exitcond_437 = icmp eq i5 %i_1_437, -16
  %empty_2222 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_437 = add i5 %i_1_437, 1
  br i1 %exitcond_437, label %2629, label %2634

; <label>:2631                                    ; preds = %2632
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2630

; <label>:2632                                    ; preds = %2633, %2623
  %i_438 = phi i5 [ 0, %2623 ], [ %i_11_437, %2633 ]
  %exitcond2_437 = icmp eq i5 %i_438, -16
  %empty_2223 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_437 = add i5 %i_438, 1
  br i1 %exitcond2_437, label %2631, label %2633

; <label>:2633                                    ; preds = %2632
  %empty_2224 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1324 = extractvalue { i8, i1, i1 } %empty_2224, 0
  %tmp_437_2225 = zext i5 %i_438 to i64
  %plaintext_addr_438 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_437_2225
  store i8 %tmp_data_1324, i8* %plaintext_addr_438, align 1
  br label %2632

; <label>:2634                                    ; preds = %2630
  %tmp_131_437 = zext i5 %i_1_437 to i64
  %out_addr_441 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_437
  %tmp_data_1325 = load i8* %out_addr_441, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1325, i1 true, i1 false)
  br label %2630

; <label>:2635                                    ; preds = %2636
  %empty_2226 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_456)
  %tmp_457 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2644

; <label>:2636                                    ; preds = %2640, %2637
  %i_1_438 = phi i5 [ 0, %2637 ], [ %i_12_438, %2640 ]
  %exitcond_438 = icmp eq i5 %i_1_438, -16
  %empty_2227 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_438 = add i5 %i_1_438, 1
  br i1 %exitcond_438, label %2635, label %2640

; <label>:2637                                    ; preds = %2638
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2636

; <label>:2638                                    ; preds = %2639, %2629
  %i_439 = phi i5 [ 0, %2629 ], [ %i_11_438, %2639 ]
  %exitcond2_438 = icmp eq i5 %i_439, -16
  %empty_2228 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_438 = add i5 %i_439, 1
  br i1 %exitcond2_438, label %2637, label %2639

; <label>:2639                                    ; preds = %2638
  %empty_2229 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1326 = extractvalue { i8, i1, i1 } %empty_2229, 0
  %tmp_438_2230 = zext i5 %i_439 to i64
  %plaintext_addr_439 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_438_2230
  store i8 %tmp_data_1326, i8* %plaintext_addr_439, align 1
  br label %2638

; <label>:2640                                    ; preds = %2636
  %tmp_131_438 = zext i5 %i_1_438 to i64
  %out_addr_442 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_438
  %tmp_data_1327 = load i8* %out_addr_442, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1327, i1 true, i1 false)
  br label %2636

; <label>:2641                                    ; preds = %2642
  %empty_2231 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_457)
  %tmp_458 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2650

; <label>:2642                                    ; preds = %2646, %2643
  %i_1_439 = phi i5 [ 0, %2643 ], [ %i_12_439, %2646 ]
  %exitcond_439 = icmp eq i5 %i_1_439, -16
  %empty_2232 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_439 = add i5 %i_1_439, 1
  br i1 %exitcond_439, label %2641, label %2646

; <label>:2643                                    ; preds = %2644
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2642

; <label>:2644                                    ; preds = %2645, %2635
  %i_440 = phi i5 [ 0, %2635 ], [ %i_11_439, %2645 ]
  %exitcond2_439 = icmp eq i5 %i_440, -16
  %empty_2233 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_439 = add i5 %i_440, 1
  br i1 %exitcond2_439, label %2643, label %2645

; <label>:2645                                    ; preds = %2644
  %empty_2234 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1328 = extractvalue { i8, i1, i1 } %empty_2234, 0
  %tmp_439_2235 = zext i5 %i_440 to i64
  %plaintext_addr_440 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_439_2235
  store i8 %tmp_data_1328, i8* %plaintext_addr_440, align 1
  br label %2644

; <label>:2646                                    ; preds = %2642
  %tmp_131_439 = zext i5 %i_1_439 to i64
  %out_addr_443 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_439
  %tmp_data_1329 = load i8* %out_addr_443, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1329, i1 true, i1 false)
  br label %2642

; <label>:2647                                    ; preds = %2648
  %empty_2236 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_458)
  %tmp_459 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2656

; <label>:2648                                    ; preds = %2652, %2649
  %i_1_440 = phi i5 [ 0, %2649 ], [ %i_12_440, %2652 ]
  %exitcond_440 = icmp eq i5 %i_1_440, -16
  %empty_2237 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_440 = add i5 %i_1_440, 1
  br i1 %exitcond_440, label %2647, label %2652

; <label>:2649                                    ; preds = %2650
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2648

; <label>:2650                                    ; preds = %2651, %2641
  %i_441 = phi i5 [ 0, %2641 ], [ %i_11_440, %2651 ]
  %exitcond2_440 = icmp eq i5 %i_441, -16
  %empty_2238 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_440 = add i5 %i_441, 1
  br i1 %exitcond2_440, label %2649, label %2651

; <label>:2651                                    ; preds = %2650
  %empty_2239 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1330 = extractvalue { i8, i1, i1 } %empty_2239, 0
  %tmp_440_2240 = zext i5 %i_441 to i64
  %plaintext_addr_441 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_440_2240
  store i8 %tmp_data_1330, i8* %plaintext_addr_441, align 1
  br label %2650

; <label>:2652                                    ; preds = %2648
  %tmp_131_440 = zext i5 %i_1_440 to i64
  %out_addr_444 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_440
  %tmp_data_1331 = load i8* %out_addr_444, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1331, i1 true, i1 false)
  br label %2648

; <label>:2653                                    ; preds = %2654
  %empty_2241 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_459)
  %tmp_460 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2662

; <label>:2654                                    ; preds = %2658, %2655
  %i_1_441 = phi i5 [ 0, %2655 ], [ %i_12_441, %2658 ]
  %exitcond_441 = icmp eq i5 %i_1_441, -16
  %empty_2242 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_441 = add i5 %i_1_441, 1
  br i1 %exitcond_441, label %2653, label %2658

; <label>:2655                                    ; preds = %2656
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2654

; <label>:2656                                    ; preds = %2657, %2647
  %i_442 = phi i5 [ 0, %2647 ], [ %i_11_441, %2657 ]
  %exitcond2_441 = icmp eq i5 %i_442, -16
  %empty_2243 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_441 = add i5 %i_442, 1
  br i1 %exitcond2_441, label %2655, label %2657

; <label>:2657                                    ; preds = %2656
  %empty_2244 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1332 = extractvalue { i8, i1, i1 } %empty_2244, 0
  %tmp_441_2245 = zext i5 %i_442 to i64
  %plaintext_addr_442 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_441_2245
  store i8 %tmp_data_1332, i8* %plaintext_addr_442, align 1
  br label %2656

; <label>:2658                                    ; preds = %2654
  %tmp_131_441 = zext i5 %i_1_441 to i64
  %out_addr_445 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_441
  %tmp_data_1333 = load i8* %out_addr_445, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1333, i1 true, i1 false)
  br label %2654

; <label>:2659                                    ; preds = %2660
  %empty_2246 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_460)
  %tmp_461 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2668

; <label>:2660                                    ; preds = %2664, %2661
  %i_1_442 = phi i5 [ 0, %2661 ], [ %i_12_442, %2664 ]
  %exitcond_442 = icmp eq i5 %i_1_442, -16
  %empty_2247 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_442 = add i5 %i_1_442, 1
  br i1 %exitcond_442, label %2659, label %2664

; <label>:2661                                    ; preds = %2662
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2660

; <label>:2662                                    ; preds = %2663, %2653
  %i_443 = phi i5 [ 0, %2653 ], [ %i_11_442, %2663 ]
  %exitcond2_442 = icmp eq i5 %i_443, -16
  %empty_2248 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_442 = add i5 %i_443, 1
  br i1 %exitcond2_442, label %2661, label %2663

; <label>:2663                                    ; preds = %2662
  %empty_2249 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1334 = extractvalue { i8, i1, i1 } %empty_2249, 0
  %tmp_442_2250 = zext i5 %i_443 to i64
  %plaintext_addr_443 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_442_2250
  store i8 %tmp_data_1334, i8* %plaintext_addr_443, align 1
  br label %2662

; <label>:2664                                    ; preds = %2660
  %tmp_131_442 = zext i5 %i_1_442 to i64
  %out_addr_446 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_442
  %tmp_data_1335 = load i8* %out_addr_446, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1335, i1 true, i1 false)
  br label %2660

; <label>:2665                                    ; preds = %2666
  %empty_2251 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_461)
  %tmp_462 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2674

; <label>:2666                                    ; preds = %2670, %2667
  %i_1_443 = phi i5 [ 0, %2667 ], [ %i_12_443, %2670 ]
  %exitcond_443 = icmp eq i5 %i_1_443, -16
  %empty_2252 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_443 = add i5 %i_1_443, 1
  br i1 %exitcond_443, label %2665, label %2670

; <label>:2667                                    ; preds = %2668
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2666

; <label>:2668                                    ; preds = %2669, %2659
  %i_444 = phi i5 [ 0, %2659 ], [ %i_11_443, %2669 ]
  %exitcond2_443 = icmp eq i5 %i_444, -16
  %empty_2253 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_443 = add i5 %i_444, 1
  br i1 %exitcond2_443, label %2667, label %2669

; <label>:2669                                    ; preds = %2668
  %empty_2254 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1336 = extractvalue { i8, i1, i1 } %empty_2254, 0
  %tmp_443_2255 = zext i5 %i_444 to i64
  %plaintext_addr_444 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_443_2255
  store i8 %tmp_data_1336, i8* %plaintext_addr_444, align 1
  br label %2668

; <label>:2670                                    ; preds = %2666
  %tmp_131_443 = zext i5 %i_1_443 to i64
  %out_addr_447 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_443
  %tmp_data_1337 = load i8* %out_addr_447, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1337, i1 true, i1 false)
  br label %2666

; <label>:2671                                    ; preds = %2672
  %empty_2256 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_462)
  %tmp_463 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2680

; <label>:2672                                    ; preds = %2676, %2673
  %i_1_444 = phi i5 [ 0, %2673 ], [ %i_12_444, %2676 ]
  %exitcond_444 = icmp eq i5 %i_1_444, -16
  %empty_2257 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_444 = add i5 %i_1_444, 1
  br i1 %exitcond_444, label %2671, label %2676

; <label>:2673                                    ; preds = %2674
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2672

; <label>:2674                                    ; preds = %2675, %2665
  %i_445 = phi i5 [ 0, %2665 ], [ %i_11_444, %2675 ]
  %exitcond2_444 = icmp eq i5 %i_445, -16
  %empty_2258 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_444 = add i5 %i_445, 1
  br i1 %exitcond2_444, label %2673, label %2675

; <label>:2675                                    ; preds = %2674
  %empty_2259 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1338 = extractvalue { i8, i1, i1 } %empty_2259, 0
  %tmp_444_2260 = zext i5 %i_445 to i64
  %plaintext_addr_445 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_444_2260
  store i8 %tmp_data_1338, i8* %plaintext_addr_445, align 1
  br label %2674

; <label>:2676                                    ; preds = %2672
  %tmp_131_444 = zext i5 %i_1_444 to i64
  %out_addr_448 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_444
  %tmp_data_1339 = load i8* %out_addr_448, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1339, i1 true, i1 false)
  br label %2672

; <label>:2677                                    ; preds = %2678
  %empty_2261 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_463)
  %tmp_464 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2686

; <label>:2678                                    ; preds = %2682, %2679
  %i_1_445 = phi i5 [ 0, %2679 ], [ %i_12_445, %2682 ]
  %exitcond_445 = icmp eq i5 %i_1_445, -16
  %empty_2262 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_445 = add i5 %i_1_445, 1
  br i1 %exitcond_445, label %2677, label %2682

; <label>:2679                                    ; preds = %2680
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2678

; <label>:2680                                    ; preds = %2681, %2671
  %i_446 = phi i5 [ 0, %2671 ], [ %i_11_445, %2681 ]
  %exitcond2_445 = icmp eq i5 %i_446, -16
  %empty_2263 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_445 = add i5 %i_446, 1
  br i1 %exitcond2_445, label %2679, label %2681

; <label>:2681                                    ; preds = %2680
  %empty_2264 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1340 = extractvalue { i8, i1, i1 } %empty_2264, 0
  %tmp_445_2265 = zext i5 %i_446 to i64
  %plaintext_addr_446 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_445_2265
  store i8 %tmp_data_1340, i8* %plaintext_addr_446, align 1
  br label %2680

; <label>:2682                                    ; preds = %2678
  %tmp_131_445 = zext i5 %i_1_445 to i64
  %out_addr_449 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_445
  %tmp_data_1341 = load i8* %out_addr_449, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1341, i1 true, i1 false)
  br label %2678

; <label>:2683                                    ; preds = %2684
  %empty_2266 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_464)
  %tmp_465 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2692

; <label>:2684                                    ; preds = %2688, %2685
  %i_1_446 = phi i5 [ 0, %2685 ], [ %i_12_446, %2688 ]
  %exitcond_446 = icmp eq i5 %i_1_446, -16
  %empty_2267 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_446 = add i5 %i_1_446, 1
  br i1 %exitcond_446, label %2683, label %2688

; <label>:2685                                    ; preds = %2686
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2684

; <label>:2686                                    ; preds = %2687, %2677
  %i_447 = phi i5 [ 0, %2677 ], [ %i_11_446, %2687 ]
  %exitcond2_446 = icmp eq i5 %i_447, -16
  %empty_2268 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_446 = add i5 %i_447, 1
  br i1 %exitcond2_446, label %2685, label %2687

; <label>:2687                                    ; preds = %2686
  %empty_2269 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1342 = extractvalue { i8, i1, i1 } %empty_2269, 0
  %tmp_446_2270 = zext i5 %i_447 to i64
  %plaintext_addr_447 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_446_2270
  store i8 %tmp_data_1342, i8* %plaintext_addr_447, align 1
  br label %2686

; <label>:2688                                    ; preds = %2684
  %tmp_131_446 = zext i5 %i_1_446 to i64
  %out_addr_450 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_446
  %tmp_data_1343 = load i8* %out_addr_450, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1343, i1 true, i1 false)
  br label %2684

; <label>:2689                                    ; preds = %2690
  %empty_2271 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_465)
  %tmp_466 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %2698

; <label>:2690                                    ; preds = %2694, %2691
  %i_1_447 = phi i5 [ 0, %2691 ], [ %i_12_447, %2694 ]
  %exitcond_447 = icmp eq i5 %i_1_447, -16
  %empty_2272 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_447 = add i5 %i_1_447, 1
  br i1 %exitcond_447, label %2689, label %2694

; <label>:2691                                    ; preds = %2692
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2690

; <label>:2692                                    ; preds = %2693, %2683
  %i_448 = phi i5 [ 0, %2683 ], [ %i_11_447, %2693 ]
  %exitcond2_447 = icmp eq i5 %i_448, -16
  %empty_2273 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_447 = add i5 %i_448, 1
  br i1 %exitcond2_447, label %2691, label %2693

; <label>:2693                                    ; preds = %2692
  %empty_2274 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1344 = extractvalue { i8, i1, i1 } %empty_2274, 0
  %tmp_447_2275 = zext i5 %i_448 to i64
  %plaintext_addr_448 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_447_2275
  store i8 %tmp_data_1344, i8* %plaintext_addr_448, align 1
  br label %2692

; <label>:2694                                    ; preds = %2690
  %tmp_131_447 = zext i5 %i_1_447 to i64
  %out_addr_451 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_447
  %tmp_data_1345 = load i8* %out_addr_451, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1345, i1 true, i1 false)
  br label %2690

; <label>:2695                                    ; preds = %2696
  %empty_2276 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_466)
  ret void

; <label>:2696                                    ; preds = %2700, %2697
  %i_1_448 = phi i5 [ 0, %2697 ], [ %i_12_448, %2700 ]
  %exitcond_448 = icmp eq i5 %i_1_448, -16
  %empty_2277 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_12_448 = add i5 %i_1_448, 1
  br i1 %exitcond_448, label %2695, label %2700

; <label>:2697                                    ; preds = %2698
  call fastcc void @AES_encryption_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2696

; <label>:2698                                    ; preds = %2699, %2689
  %i_449 = phi i5 [ 0, %2689 ], [ %i_11_448, %2699 ]
  %exitcond2_448 = icmp eq i5 %i_449, -16
  %empty_2278 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_11_448 = add i5 %i_449, 1
  br i1 %exitcond2_448, label %2697, label %2699

; <label>:2699                                    ; preds = %2698
  %empty_2279 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_1346 = extractvalue { i8, i1, i1 } %empty_2279, 0
  %tmp_448_2280 = zext i5 %i_449 to i64
  %plaintext_addr_449 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_448_2280
  store i8 %tmp_data_1346, i8* %plaintext_addr_449, align 1
  br label %2698

; <label>:2700                                    ; preds = %2696
  %tmp_131_448 = zext i5 %i_1_448 to i64
  %out_addr_452 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_131_448
  %tmp_data_1347 = load i8* %out_addr_452, align 1
  %tmp_last_V = icmp eq i5 %i_1_448, 15
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1347, i1 true, i1 %tmp_last_V)
  br label %2696
}

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
