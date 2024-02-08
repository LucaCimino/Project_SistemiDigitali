; ModuleID = 'C:/Users/lucac/VivadoHLS/AES_Encryption/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@single_block_AES_encrypt_str = internal unnamed_addr constant [25 x i8] c"single_block_AES_encrypt\00"
@s_box = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@R = global [4 x i8] c"\02\00\00\00", align 1
@K = global i32 0, align 4
@p_str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
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
  call fastcc void @single_block_AES_encrypt_aes_key_expansion([176 x i8]* %w)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %4

; <label>:1                                       ; preds = %2
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %10

; <label>:2                                       ; preds = %6, %3
  %i_1 = phi i5 [ 0, %3 ], [ %i_4, %6 ]
  %exitcond = icmp eq i5 %i_1, -16
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4 = add i5 %i_1, 1
  br i1 %exitcond, label %1, label %6

; <label>:3                                       ; preds = %4
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %2

; <label>:4                                       ; preds = %5, %0
  %i = phi i5 [ 0, %0 ], [ %i_3, %5 ]
  %exitcond2 = icmp eq i5 %i, -16
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3 = add i5 %i, 1
  br i1 %exitcond2, label %3, label %5

; <label>:5                                       ; preds = %4
  %empty_12 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data = extractvalue { i8, i1, i1 } %empty_12, 0
  %tmp_s = zext i5 %i to i64
  %plaintext_addr = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_s
  store i8 %tmp_data, i8* %plaintext_addr, align 1
  br label %4

; <label>:6                                       ; preds = %2
  %tmp_11 = zext i5 %i_1 to i64
  %out_addr = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_11
  %tmp_data_1 = load i8* %out_addr, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1, i1 true, i1 false)
  br label %2

; <label>:7                                       ; preds = %8
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_1)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %16

; <label>:8                                       ; preds = %12, %9
  %i_1_1 = phi i5 [ 0, %9 ], [ %i_4_1, %12 ]
  %exitcond_1 = icmp eq i5 %i_1_1, -16
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_1 = add i5 %i_1_1, 1
  br i1 %exitcond_1, label %7, label %12

; <label>:9                                       ; preds = %10
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %8

; <label>:10                                      ; preds = %11, %1
  %i_s = phi i5 [ 0, %1 ], [ %i_3_1, %11 ]
  %exitcond2_1 = icmp eq i5 %i_s, -16
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_1 = add i5 %i_s, 1
  br i1 %exitcond2_1, label %9, label %11

; <label>:11                                      ; preds = %10
  %empty_16 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_2 = extractvalue { i8, i1, i1 } %empty_16, 0
  %tmp_1_17 = zext i5 %i_s to i64
  %plaintext_addr_1 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_1_17
  store i8 %tmp_data_2, i8* %plaintext_addr_1, align 1
  br label %10

; <label>:12                                      ; preds = %8
  %tmp_1_1 = zext i5 %i_1_1 to i64
  %out_addr_1 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_1
  %tmp_data_3 = load i8* %out_addr_1, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_3, i1 true, i1 false)
  br label %8

; <label>:13                                      ; preds = %14
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_2)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %22

; <label>:14                                      ; preds = %18, %15
  %i_1_2 = phi i5 [ 0, %15 ], [ %i_4_2, %18 ]
  %exitcond_2 = icmp eq i5 %i_1_2, -16
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_2 = add i5 %i_1_2, 1
  br i1 %exitcond_2, label %13, label %18

; <label>:15                                      ; preds = %16
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %14

; <label>:16                                      ; preds = %17, %7
  %i_2 = phi i5 [ 0, %7 ], [ %i_3_2, %17 ]
  %exitcond2_2 = icmp eq i5 %i_2, -16
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_2 = add i5 %i_2, 1
  br i1 %exitcond2_2, label %15, label %17

; <label>:17                                      ; preds = %16
  %empty_21 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_258 = extractvalue { i8, i1, i1 } %empty_21, 0
  %tmp_2_22 = zext i5 %i_2 to i64
  %plaintext_addr_2 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_2_22
  store i8 %tmp_data_258, i8* %plaintext_addr_2, align 1
  br label %16

; <label>:18                                      ; preds = %14
  %tmp_1_2 = zext i5 %i_1_2 to i64
  %out_addr_2 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_2
  %tmp_data_259 = load i8* %out_addr_2, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_259, i1 true, i1 false)
  br label %14

; <label>:19                                      ; preds = %20
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_3)
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %28

; <label>:20                                      ; preds = %24, %21
  %i_1_3 = phi i5 [ 0, %21 ], [ %i_4_3, %24 ]
  %exitcond_3 = icmp eq i5 %i_1_3, -16
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_3 = add i5 %i_1_3, 1
  br i1 %exitcond_3, label %19, label %24

; <label>:21                                      ; preds = %22
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %20

; <label>:22                                      ; preds = %23, %13
  %i_13 = phi i5 [ 0, %13 ], [ %i_3_3, %23 ]
  %exitcond2_3 = icmp eq i5 %i_13, -16
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_3 = add i5 %i_13, 1
  br i1 %exitcond2_3, label %21, label %23

; <label>:23                                      ; preds = %22
  %empty_26 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_260 = extractvalue { i8, i1, i1 } %empty_26, 0
  %tmp_3_27 = zext i5 %i_13 to i64
  %plaintext_addr_3 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_3_27
  store i8 %tmp_data_260, i8* %plaintext_addr_3, align 1
  br label %22

; <label>:24                                      ; preds = %20
  %tmp_1_3 = zext i5 %i_1_3 to i64
  %out_addr_3 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_3
  %tmp_data_261 = load i8* %out_addr_3, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_261, i1 true, i1 false)
  br label %20

; <label>:25                                      ; preds = %26
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_4)
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %34

; <label>:26                                      ; preds = %30, %27
  %i_1_4 = phi i5 [ 0, %27 ], [ %i_4_4, %30 ]
  %exitcond_4 = icmp eq i5 %i_1_4, -16
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_4 = add i5 %i_1_4, 1
  br i1 %exitcond_4, label %25, label %30

; <label>:27                                      ; preds = %28
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %26

; <label>:28                                      ; preds = %29, %19
  %i_35 = phi i5 [ 0, %19 ], [ %i_3_4, %29 ]
  %exitcond2_4 = icmp eq i5 %i_35, -16
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_4 = add i5 %i_35, 1
  br i1 %exitcond2_4, label %27, label %29

; <label>:29                                      ; preds = %28
  %empty_31 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_262 = extractvalue { i8, i1, i1 } %empty_31, 0
  %tmp_4_32 = zext i5 %i_35 to i64
  %plaintext_addr_4 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_4_32
  store i8 %tmp_data_262, i8* %plaintext_addr_4, align 1
  br label %28

; <label>:30                                      ; preds = %26
  %tmp_1_4 = zext i5 %i_1_4 to i64
  %out_addr_4 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_4
  %tmp_data_263 = load i8* %out_addr_4, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_263, i1 true, i1 false)
  br label %26

; <label>:31                                      ; preds = %32
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_5)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %40

; <label>:32                                      ; preds = %36, %33
  %i_1_5 = phi i5 [ 0, %33 ], [ %i_4_5, %36 ]
  %exitcond_5 = icmp eq i5 %i_1_5, -16
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_5 = add i5 %i_1_5, 1
  br i1 %exitcond_5, label %31, label %36

; <label>:33                                      ; preds = %34
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %32

; <label>:34                                      ; preds = %35, %25
  %i_5 = phi i5 [ 0, %25 ], [ %i_3_5, %35 ]
  %exitcond2_5 = icmp eq i5 %i_5, -16
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_5 = add i5 %i_5, 1
  br i1 %exitcond2_5, label %33, label %35

; <label>:35                                      ; preds = %34
  %empty_36 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_264 = extractvalue { i8, i1, i1 } %empty_36, 0
  %tmp_5_37 = zext i5 %i_5 to i64
  %plaintext_addr_5 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_5_37
  store i8 %tmp_data_264, i8* %plaintext_addr_5, align 1
  br label %34

; <label>:36                                      ; preds = %32
  %tmp_1_5 = zext i5 %i_1_5 to i64
  %out_addr_5 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_5
  %tmp_data_265 = load i8* %out_addr_5, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_265, i1 true, i1 false)
  br label %32

; <label>:37                                      ; preds = %38
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_6)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %46

; <label>:38                                      ; preds = %42, %39
  %i_1_6 = phi i5 [ 0, %39 ], [ %i_4_6, %42 ]
  %exitcond_6 = icmp eq i5 %i_1_6, -16
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_6 = add i5 %i_1_6, 1
  br i1 %exitcond_6, label %37, label %42

; <label>:39                                      ; preds = %40
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %38

; <label>:40                                      ; preds = %41, %31
  %i_6 = phi i5 [ 0, %31 ], [ %i_3_6, %41 ]
  %exitcond2_6 = icmp eq i5 %i_6, -16
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_6 = add i5 %i_6, 1
  br i1 %exitcond2_6, label %39, label %41

; <label>:41                                      ; preds = %40
  %empty_41 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_266 = extractvalue { i8, i1, i1 } %empty_41, 0
  %tmp_6_42 = zext i5 %i_6 to i64
  %plaintext_addr_6 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_6_42
  store i8 %tmp_data_266, i8* %plaintext_addr_6, align 1
  br label %40

; <label>:42                                      ; preds = %38
  %tmp_1_6 = zext i5 %i_1_6 to i64
  %out_addr_6 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_6
  %tmp_data_267 = load i8* %out_addr_6, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_267, i1 true, i1 false)
  br label %38

; <label>:43                                      ; preds = %44
  %empty_43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_7)
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %52

; <label>:44                                      ; preds = %48, %45
  %i_1_7 = phi i5 [ 0, %45 ], [ %i_4_7, %48 ]
  %exitcond_7 = icmp eq i5 %i_1_7, -16
  %empty_44 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_7 = add i5 %i_1_7, 1
  br i1 %exitcond_7, label %43, label %48

; <label>:45                                      ; preds = %46
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %44

; <label>:46                                      ; preds = %47, %37
  %i_7 = phi i5 [ 0, %37 ], [ %i_3_7, %47 ]
  %exitcond2_7 = icmp eq i5 %i_7, -16
  %empty_45 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_7 = add i5 %i_7, 1
  br i1 %exitcond2_7, label %45, label %47

; <label>:47                                      ; preds = %46
  %empty_46 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_268 = extractvalue { i8, i1, i1 } %empty_46, 0
  %tmp_7_47 = zext i5 %i_7 to i64
  %plaintext_addr_7 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_7_47
  store i8 %tmp_data_268, i8* %plaintext_addr_7, align 1
  br label %46

; <label>:48                                      ; preds = %44
  %tmp_1_7 = zext i5 %i_1_7 to i64
  %out_addr_7 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_7
  %tmp_data_269 = load i8* %out_addr_7, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_269, i1 true, i1 false)
  br label %44

; <label>:49                                      ; preds = %50
  %empty_48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_8)
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %58

; <label>:50                                      ; preds = %54, %51
  %i_1_8 = phi i5 [ 0, %51 ], [ %i_4_8, %54 ]
  %exitcond_8 = icmp eq i5 %i_1_8, -16
  %empty_49 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_8 = add i5 %i_1_8, 1
  br i1 %exitcond_8, label %49, label %54

; <label>:51                                      ; preds = %52
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %50

; <label>:52                                      ; preds = %53, %43
  %i_8 = phi i5 [ 0, %43 ], [ %i_3_8, %53 ]
  %exitcond2_8 = icmp eq i5 %i_8, -16
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_8 = add i5 %i_8, 1
  br i1 %exitcond2_8, label %51, label %53

; <label>:53                                      ; preds = %52
  %empty_51 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_270 = extractvalue { i8, i1, i1 } %empty_51, 0
  %tmp_8_52 = zext i5 %i_8 to i64
  %plaintext_addr_8 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_8_52
  store i8 %tmp_data_270, i8* %plaintext_addr_8, align 1
  br label %52

; <label>:54                                      ; preds = %50
  %tmp_1_8 = zext i5 %i_1_8 to i64
  %out_addr_8 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_8
  %tmp_data_271 = load i8* %out_addr_8, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_271, i1 true, i1 false)
  br label %50

; <label>:55                                      ; preds = %56
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_9)
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %64

; <label>:56                                      ; preds = %60, %57
  %i_1_9 = phi i5 [ 0, %57 ], [ %i_4_9, %60 ]
  %exitcond_9 = icmp eq i5 %i_1_9, -16
  %empty_54 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_9 = add i5 %i_1_9, 1
  br i1 %exitcond_9, label %55, label %60

; <label>:57                                      ; preds = %58
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %56

; <label>:58                                      ; preds = %59, %49
  %i_9 = phi i5 [ 0, %49 ], [ %i_3_9, %59 ]
  %exitcond2_9 = icmp eq i5 %i_9, -16
  %empty_55 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_9 = add i5 %i_9, 1
  br i1 %exitcond2_9, label %57, label %59

; <label>:59                                      ; preds = %58
  %empty_56 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_272 = extractvalue { i8, i1, i1 } %empty_56, 0
  %tmp_9_57 = zext i5 %i_9 to i64
  %plaintext_addr_9 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_9_57
  store i8 %tmp_data_272, i8* %plaintext_addr_9, align 1
  br label %58

; <label>:60                                      ; preds = %56
  %tmp_1_9 = zext i5 %i_1_9 to i64
  %out_addr_9 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_9
  %tmp_data_273 = load i8* %out_addr_9, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_273, i1 true, i1 false)
  br label %56

; <label>:61                                      ; preds = %62
  %empty_58 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_10)
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %70

; <label>:62                                      ; preds = %66, %63
  %i_1_s = phi i5 [ 0, %63 ], [ %i_4_s, %66 ]
  %exitcond_s = icmp eq i5 %i_1_s, -16
  %empty_59 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_s = add i5 %i_1_s, 1
  br i1 %exitcond_s, label %61, label %66

; <label>:63                                      ; preds = %64
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %62

; <label>:64                                      ; preds = %65, %55
  %i_10 = phi i5 [ 0, %55 ], [ %i_3_s, %65 ]
  %exitcond2_s = icmp eq i5 %i_10, -16
  %empty_60 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_s = add i5 %i_10, 1
  br i1 %exitcond2_s, label %63, label %65

; <label>:65                                      ; preds = %64
  %empty_61 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_274 = extractvalue { i8, i1, i1 } %empty_61, 0
  %tmp_s_62 = zext i5 %i_10 to i64
  %plaintext_addr_10 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_s_62
  store i8 %tmp_data_274, i8* %plaintext_addr_10, align 1
  br label %64

; <label>:66                                      ; preds = %62
  %tmp_1_s = zext i5 %i_1_s to i64
  %out_addr_10 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_s
  %tmp_data_275 = load i8* %out_addr_10, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_275, i1 true, i1 false)
  br label %62

; <label>:67                                      ; preds = %68
  %empty_63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_12)
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %76

; <label>:68                                      ; preds = %72, %69
  %i_1_10 = phi i5 [ 0, %69 ], [ %i_4_10, %72 ]
  %exitcond_10 = icmp eq i5 %i_1_10, -16
  %empty_64 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_10 = add i5 %i_1_10, 1
  br i1 %exitcond_10, label %67, label %72

; <label>:69                                      ; preds = %70
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %68

; <label>:70                                      ; preds = %71, %61
  %i_11 = phi i5 [ 0, %61 ], [ %i_3_10, %71 ]
  %exitcond2_10 = icmp eq i5 %i_11, -16
  %empty_65 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_10 = add i5 %i_11, 1
  br i1 %exitcond2_10, label %69, label %71

; <label>:71                                      ; preds = %70
  %empty_66 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_276 = extractvalue { i8, i1, i1 } %empty_66, 0
  %tmp_10_67 = zext i5 %i_11 to i64
  %plaintext_addr_11 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_10_67
  store i8 %tmp_data_276, i8* %plaintext_addr_11, align 1
  br label %70

; <label>:72                                      ; preds = %68
  %tmp_1_10 = zext i5 %i_1_10 to i64
  %out_addr_11 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_10
  %tmp_data_277 = load i8* %out_addr_11, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_277, i1 true, i1 false)
  br label %68

; <label>:73                                      ; preds = %74
  %empty_68 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_13)
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %82

; <label>:74                                      ; preds = %78, %75
  %i_1_11 = phi i5 [ 0, %75 ], [ %i_4_11, %78 ]
  %exitcond_11 = icmp eq i5 %i_1_11, -16
  %empty_69 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_11 = add i5 %i_1_11, 1
  br i1 %exitcond_11, label %73, label %78

; <label>:75                                      ; preds = %76
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %74

; <label>:76                                      ; preds = %77, %67
  %i_12 = phi i5 [ 0, %67 ], [ %i_3_11, %77 ]
  %exitcond2_11 = icmp eq i5 %i_12, -16
  %empty_70 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_11 = add i5 %i_12, 1
  br i1 %exitcond2_11, label %75, label %77

; <label>:77                                      ; preds = %76
  %empty_71 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_278 = extractvalue { i8, i1, i1 } %empty_71, 0
  %tmp_11_72 = zext i5 %i_12 to i64
  %plaintext_addr_12 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_11_72
  store i8 %tmp_data_278, i8* %plaintext_addr_12, align 1
  br label %76

; <label>:78                                      ; preds = %74
  %tmp_1_11 = zext i5 %i_1_11 to i64
  %out_addr_12 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_11
  %tmp_data_279 = load i8* %out_addr_12, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_279, i1 true, i1 false)
  br label %74

; <label>:79                                      ; preds = %80
  %empty_73 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_14)
  %tmp_15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %88

; <label>:80                                      ; preds = %84, %81
  %i_1_12 = phi i5 [ 0, %81 ], [ %i_4_12, %84 ]
  %exitcond_12 = icmp eq i5 %i_1_12, -16
  %empty_74 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_12 = add i5 %i_1_12, 1
  br i1 %exitcond_12, label %79, label %84

; <label>:81                                      ; preds = %82
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %80

; <label>:82                                      ; preds = %83, %73
  %i_46 = phi i5 [ 0, %73 ], [ %i_3_12, %83 ]
  %exitcond2_12 = icmp eq i5 %i_46, -16
  %empty_75 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_12 = add i5 %i_46, 1
  br i1 %exitcond2_12, label %81, label %83

; <label>:83                                      ; preds = %82
  %empty_76 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_280 = extractvalue { i8, i1, i1 } %empty_76, 0
  %tmp_12_77 = zext i5 %i_46 to i64
  %plaintext_addr_13 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_12_77
  store i8 %tmp_data_280, i8* %plaintext_addr_13, align 1
  br label %82

; <label>:84                                      ; preds = %80
  %tmp_1_12 = zext i5 %i_1_12 to i64
  %out_addr_13 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_12
  %tmp_data_281 = load i8* %out_addr_13, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_281, i1 true, i1 false)
  br label %80

; <label>:85                                      ; preds = %86
  %empty_78 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_15)
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %94

; <label>:86                                      ; preds = %90, %87
  %i_1_13 = phi i5 [ 0, %87 ], [ %i_4_13, %90 ]
  %exitcond_13 = icmp eq i5 %i_1_13, -16
  %empty_79 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_13 = add i5 %i_1_13, 1
  br i1 %exitcond_13, label %85, label %90

; <label>:87                                      ; preds = %88
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %86

; <label>:88                                      ; preds = %89, %79
  %i_14 = phi i5 [ 0, %79 ], [ %i_3_13, %89 ]
  %exitcond2_13 = icmp eq i5 %i_14, -16
  %empty_80 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_13 = add i5 %i_14, 1
  br i1 %exitcond2_13, label %87, label %89

; <label>:89                                      ; preds = %88
  %empty_81 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_282 = extractvalue { i8, i1, i1 } %empty_81, 0
  %tmp_13_82 = zext i5 %i_14 to i64
  %plaintext_addr_14 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_13_82
  store i8 %tmp_data_282, i8* %plaintext_addr_14, align 1
  br label %88

; <label>:90                                      ; preds = %86
  %tmp_1_13 = zext i5 %i_1_13 to i64
  %out_addr_14 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_13
  %tmp_data_283 = load i8* %out_addr_14, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_283, i1 true, i1 false)
  br label %86

; <label>:91                                      ; preds = %92
  %empty_83 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_16)
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %100

; <label>:92                                      ; preds = %96, %93
  %i_1_14 = phi i5 [ 0, %93 ], [ %i_4_14, %96 ]
  %exitcond_14 = icmp eq i5 %i_1_14, -16
  %empty_84 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_14 = add i5 %i_1_14, 1
  br i1 %exitcond_14, label %91, label %96

; <label>:93                                      ; preds = %94
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %92

; <label>:94                                      ; preds = %95, %85
  %i_15 = phi i5 [ 0, %85 ], [ %i_3_14, %95 ]
  %exitcond2_14 = icmp eq i5 %i_15, -16
  %empty_85 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_14 = add i5 %i_15, 1
  br i1 %exitcond2_14, label %93, label %95

; <label>:95                                      ; preds = %94
  %empty_86 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_284 = extractvalue { i8, i1, i1 } %empty_86, 0
  %tmp_14_87 = zext i5 %i_15 to i64
  %plaintext_addr_15 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_14_87
  store i8 %tmp_data_284, i8* %plaintext_addr_15, align 1
  br label %94

; <label>:96                                      ; preds = %92
  %tmp_1_14 = zext i5 %i_1_14 to i64
  %out_addr_15 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_14
  %tmp_data_285 = load i8* %out_addr_15, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_285, i1 true, i1 false)
  br label %92

; <label>:97                                      ; preds = %98
  %empty_88 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_17)
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %106

; <label>:98                                      ; preds = %102, %99
  %i_1_15 = phi i5 [ 0, %99 ], [ %i_4_15, %102 ]
  %exitcond_15 = icmp eq i5 %i_1_15, -16
  %empty_89 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_15 = add i5 %i_1_15, 1
  br i1 %exitcond_15, label %97, label %102

; <label>:99                                      ; preds = %100
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %98

; <label>:100                                     ; preds = %101, %91
  %i_16 = phi i5 [ 0, %91 ], [ %i_3_15, %101 ]
  %exitcond2_15 = icmp eq i5 %i_16, -16
  %empty_90 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_15 = add i5 %i_16, 1
  br i1 %exitcond2_15, label %99, label %101

; <label>:101                                     ; preds = %100
  %empty_91 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_286 = extractvalue { i8, i1, i1 } %empty_91, 0
  %tmp_15_92 = zext i5 %i_16 to i64
  %plaintext_addr_16 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_15_92
  store i8 %tmp_data_286, i8* %plaintext_addr_16, align 1
  br label %100

; <label>:102                                     ; preds = %98
  %tmp_1_15 = zext i5 %i_1_15 to i64
  %out_addr_16 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_15
  %tmp_data_287 = load i8* %out_addr_16, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_287, i1 true, i1 false)
  br label %98

; <label>:103                                     ; preds = %104
  %empty_93 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_18)
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %112

; <label>:104                                     ; preds = %108, %105
  %i_1_16 = phi i5 [ 0, %105 ], [ %i_4_16, %108 ]
  %exitcond_16 = icmp eq i5 %i_1_16, -16
  %empty_94 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_16 = add i5 %i_1_16, 1
  br i1 %exitcond_16, label %103, label %108

; <label>:105                                     ; preds = %106
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %104

; <label>:106                                     ; preds = %107, %97
  %i_17 = phi i5 [ 0, %97 ], [ %i_3_16, %107 ]
  %exitcond2_16 = icmp eq i5 %i_17, -16
  %empty_95 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_16 = add i5 %i_17, 1
  br i1 %exitcond2_16, label %105, label %107

; <label>:107                                     ; preds = %106
  %empty_96 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_288 = extractvalue { i8, i1, i1 } %empty_96, 0
  %tmp_16_97 = zext i5 %i_17 to i64
  %plaintext_addr_17 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_16_97
  store i8 %tmp_data_288, i8* %plaintext_addr_17, align 1
  br label %106

; <label>:108                                     ; preds = %104
  %tmp_1_16 = zext i5 %i_1_16 to i64
  %out_addr_17 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_16
  %tmp_data_289 = load i8* %out_addr_17, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_289, i1 true, i1 false)
  br label %104

; <label>:109                                     ; preds = %110
  %empty_98 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_19)
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %118

; <label>:110                                     ; preds = %114, %111
  %i_1_17 = phi i5 [ 0, %111 ], [ %i_4_17, %114 ]
  %exitcond_17 = icmp eq i5 %i_1_17, -16
  %empty_99 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_17 = add i5 %i_1_17, 1
  br i1 %exitcond_17, label %109, label %114

; <label>:111                                     ; preds = %112
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %110

; <label>:112                                     ; preds = %113, %103
  %i_18 = phi i5 [ 0, %103 ], [ %i_3_17, %113 ]
  %exitcond2_17 = icmp eq i5 %i_18, -16
  %empty_100 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_17 = add i5 %i_18, 1
  br i1 %exitcond2_17, label %111, label %113

; <label>:113                                     ; preds = %112
  %empty_101 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_290 = extractvalue { i8, i1, i1 } %empty_101, 0
  %tmp_17_102 = zext i5 %i_18 to i64
  %plaintext_addr_18 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_17_102
  store i8 %tmp_data_290, i8* %plaintext_addr_18, align 1
  br label %112

; <label>:114                                     ; preds = %110
  %tmp_1_17_103 = zext i5 %i_1_17 to i64
  %out_addr_18 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_17_103
  %tmp_data_291 = load i8* %out_addr_18, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_291, i1 true, i1 false)
  br label %110

; <label>:115                                     ; preds = %116
  %empty_104 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_20)
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %124

; <label>:116                                     ; preds = %120, %117
  %i_1_18 = phi i5 [ 0, %117 ], [ %i_4_18, %120 ]
  %exitcond_18 = icmp eq i5 %i_1_18, -16
  %empty_105 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_18 = add i5 %i_1_18, 1
  br i1 %exitcond_18, label %115, label %120

; <label>:117                                     ; preds = %118
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %116

; <label>:118                                     ; preds = %119, %109
  %i_19 = phi i5 [ 0, %109 ], [ %i_3_18, %119 ]
  %exitcond2_18 = icmp eq i5 %i_19, -16
  %empty_106 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_18 = add i5 %i_19, 1
  br i1 %exitcond2_18, label %117, label %119

; <label>:119                                     ; preds = %118
  %empty_107 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_292 = extractvalue { i8, i1, i1 } %empty_107, 0
  %tmp_18_108 = zext i5 %i_19 to i64
  %plaintext_addr_19 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_18_108
  store i8 %tmp_data_292, i8* %plaintext_addr_19, align 1
  br label %118

; <label>:120                                     ; preds = %116
  %tmp_1_18 = zext i5 %i_1_18 to i64
  %out_addr_19 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_18
  %tmp_data_293 = load i8* %out_addr_19, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_293, i1 true, i1 false)
  br label %116

; <label>:121                                     ; preds = %122
  %empty_109 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_21)
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %130

; <label>:122                                     ; preds = %126, %123
  %i_1_19 = phi i5 [ 0, %123 ], [ %i_4_19, %126 ]
  %exitcond_19 = icmp eq i5 %i_1_19, -16
  %empty_110 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_19 = add i5 %i_1_19, 1
  br i1 %exitcond_19, label %121, label %126

; <label>:123                                     ; preds = %124
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %122

; <label>:124                                     ; preds = %125, %115
  %i_20 = phi i5 [ 0, %115 ], [ %i_3_19, %125 ]
  %exitcond2_19 = icmp eq i5 %i_20, -16
  %empty_111 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_19 = add i5 %i_20, 1
  br i1 %exitcond2_19, label %123, label %125

; <label>:125                                     ; preds = %124
  %empty_112 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_294 = extractvalue { i8, i1, i1 } %empty_112, 0
  %tmp_19_113 = zext i5 %i_20 to i64
  %plaintext_addr_20 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_19_113
  store i8 %tmp_data_294, i8* %plaintext_addr_20, align 1
  br label %124

; <label>:126                                     ; preds = %122
  %tmp_1_19 = zext i5 %i_1_19 to i64
  %out_addr_20 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_19
  %tmp_data_295 = load i8* %out_addr_20, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_295, i1 true, i1 false)
  br label %122

; <label>:127                                     ; preds = %128
  %empty_114 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_22)
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %136

; <label>:128                                     ; preds = %132, %129
  %i_1_20 = phi i5 [ 0, %129 ], [ %i_4_20, %132 ]
  %exitcond_20 = icmp eq i5 %i_1_20, -16
  %empty_115 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_20 = add i5 %i_1_20, 1
  br i1 %exitcond_20, label %127, label %132

; <label>:129                                     ; preds = %130
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %128

; <label>:130                                     ; preds = %131, %121
  %i_21 = phi i5 [ 0, %121 ], [ %i_3_20, %131 ]
  %exitcond2_20 = icmp eq i5 %i_21, -16
  %empty_116 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_20 = add i5 %i_21, 1
  br i1 %exitcond2_20, label %129, label %131

; <label>:131                                     ; preds = %130
  %empty_117 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_296 = extractvalue { i8, i1, i1 } %empty_117, 0
  %tmp_20_118 = zext i5 %i_21 to i64
  %plaintext_addr_21 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_20_118
  store i8 %tmp_data_296, i8* %plaintext_addr_21, align 1
  br label %130

; <label>:132                                     ; preds = %128
  %tmp_1_20 = zext i5 %i_1_20 to i64
  %out_addr_21 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_20
  %tmp_data_297 = load i8* %out_addr_21, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_297, i1 true, i1 false)
  br label %128

; <label>:133                                     ; preds = %134
  %empty_119 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_23)
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %142

; <label>:134                                     ; preds = %138, %135
  %i_1_21 = phi i5 [ 0, %135 ], [ %i_4_21, %138 ]
  %exitcond_21 = icmp eq i5 %i_1_21, -16
  %empty_120 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_21 = add i5 %i_1_21, 1
  br i1 %exitcond_21, label %133, label %138

; <label>:135                                     ; preds = %136
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %134

; <label>:136                                     ; preds = %137, %127
  %i_22 = phi i5 [ 0, %127 ], [ %i_3_21, %137 ]
  %exitcond2_21 = icmp eq i5 %i_22, -16
  %empty_121 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_21 = add i5 %i_22, 1
  br i1 %exitcond2_21, label %135, label %137

; <label>:137                                     ; preds = %136
  %empty_122 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_298 = extractvalue { i8, i1, i1 } %empty_122, 0
  %tmp_21_123 = zext i5 %i_22 to i64
  %plaintext_addr_22 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_21_123
  store i8 %tmp_data_298, i8* %plaintext_addr_22, align 1
  br label %136

; <label>:138                                     ; preds = %134
  %tmp_1_21 = zext i5 %i_1_21 to i64
  %out_addr_22 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_21
  %tmp_data_299 = load i8* %out_addr_22, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_299, i1 true, i1 false)
  br label %134

; <label>:139                                     ; preds = %140
  %empty_124 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_24)
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %148

; <label>:140                                     ; preds = %144, %141
  %i_1_22 = phi i5 [ 0, %141 ], [ %i_4_22, %144 ]
  %exitcond_22 = icmp eq i5 %i_1_22, -16
  %empty_125 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_22 = add i5 %i_1_22, 1
  br i1 %exitcond_22, label %139, label %144

; <label>:141                                     ; preds = %142
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %140

; <label>:142                                     ; preds = %143, %133
  %i_23 = phi i5 [ 0, %133 ], [ %i_3_22, %143 ]
  %exitcond2_22 = icmp eq i5 %i_23, -16
  %empty_126 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_22 = add i5 %i_23, 1
  br i1 %exitcond2_22, label %141, label %143

; <label>:143                                     ; preds = %142
  %empty_127 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_300 = extractvalue { i8, i1, i1 } %empty_127, 0
  %tmp_22_128 = zext i5 %i_23 to i64
  %plaintext_addr_23 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_22_128
  store i8 %tmp_data_300, i8* %plaintext_addr_23, align 1
  br label %142

; <label>:144                                     ; preds = %140
  %tmp_1_22 = zext i5 %i_1_22 to i64
  %out_addr_23 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_22
  %tmp_data_301 = load i8* %out_addr_23, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_301, i1 true, i1 false)
  br label %140

; <label>:145                                     ; preds = %146
  %empty_129 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_25)
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %154

; <label>:146                                     ; preds = %150, %147
  %i_1_23 = phi i5 [ 0, %147 ], [ %i_4_23, %150 ]
  %exitcond_23 = icmp eq i5 %i_1_23, -16
  %empty_130 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_23 = add i5 %i_1_23, 1
  br i1 %exitcond_23, label %145, label %150

; <label>:147                                     ; preds = %148
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %146

; <label>:148                                     ; preds = %149, %139
  %i_24 = phi i5 [ 0, %139 ], [ %i_3_23, %149 ]
  %exitcond2_23 = icmp eq i5 %i_24, -16
  %empty_131 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_23 = add i5 %i_24, 1
  br i1 %exitcond2_23, label %147, label %149

; <label>:149                                     ; preds = %148
  %empty_132 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_302 = extractvalue { i8, i1, i1 } %empty_132, 0
  %tmp_23_133 = zext i5 %i_24 to i64
  %plaintext_addr_24 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_23_133
  store i8 %tmp_data_302, i8* %plaintext_addr_24, align 1
  br label %148

; <label>:150                                     ; preds = %146
  %tmp_1_23 = zext i5 %i_1_23 to i64
  %out_addr_24 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_23
  %tmp_data_303 = load i8* %out_addr_24, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_303, i1 true, i1 false)
  br label %146

; <label>:151                                     ; preds = %152
  %empty_134 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_26)
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %160

; <label>:152                                     ; preds = %156, %153
  %i_1_24 = phi i5 [ 0, %153 ], [ %i_4_24, %156 ]
  %exitcond_24 = icmp eq i5 %i_1_24, -16
  %empty_135 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_24 = add i5 %i_1_24, 1
  br i1 %exitcond_24, label %151, label %156

; <label>:153                                     ; preds = %154
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %152

; <label>:154                                     ; preds = %155, %145
  %i_25 = phi i5 [ 0, %145 ], [ %i_3_24, %155 ]
  %exitcond2_24 = icmp eq i5 %i_25, -16
  %empty_136 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_24 = add i5 %i_25, 1
  br i1 %exitcond2_24, label %153, label %155

; <label>:155                                     ; preds = %154
  %empty_137 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_304 = extractvalue { i8, i1, i1 } %empty_137, 0
  %tmp_24_138 = zext i5 %i_25 to i64
  %plaintext_addr_25 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_24_138
  store i8 %tmp_data_304, i8* %plaintext_addr_25, align 1
  br label %154

; <label>:156                                     ; preds = %152
  %tmp_1_24 = zext i5 %i_1_24 to i64
  %out_addr_25 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_24
  %tmp_data_305 = load i8* %out_addr_25, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_305, i1 true, i1 false)
  br label %152

; <label>:157                                     ; preds = %158
  %empty_139 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_27)
  %tmp_28 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %166

; <label>:158                                     ; preds = %162, %159
  %i_1_25 = phi i5 [ 0, %159 ], [ %i_4_25, %162 ]
  %exitcond_25 = icmp eq i5 %i_1_25, -16
  %empty_140 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_25 = add i5 %i_1_25, 1
  br i1 %exitcond_25, label %157, label %162

; <label>:159                                     ; preds = %160
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %158

; <label>:160                                     ; preds = %161, %151
  %i_26 = phi i5 [ 0, %151 ], [ %i_3_25, %161 ]
  %exitcond2_25 = icmp eq i5 %i_26, -16
  %empty_141 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_25 = add i5 %i_26, 1
  br i1 %exitcond2_25, label %159, label %161

; <label>:161                                     ; preds = %160
  %empty_142 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_306 = extractvalue { i8, i1, i1 } %empty_142, 0
  %tmp_25_143 = zext i5 %i_26 to i64
  %plaintext_addr_26 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_25_143
  store i8 %tmp_data_306, i8* %plaintext_addr_26, align 1
  br label %160

; <label>:162                                     ; preds = %158
  %tmp_1_25 = zext i5 %i_1_25 to i64
  %out_addr_26 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_25
  %tmp_data_307 = load i8* %out_addr_26, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_307, i1 true, i1 false)
  br label %158

; <label>:163                                     ; preds = %164
  %empty_144 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_28)
  %tmp_29 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %172

; <label>:164                                     ; preds = %168, %165
  %i_1_26 = phi i5 [ 0, %165 ], [ %i_4_26, %168 ]
  %exitcond_26 = icmp eq i5 %i_1_26, -16
  %empty_145 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_26 = add i5 %i_1_26, 1
  br i1 %exitcond_26, label %163, label %168

; <label>:165                                     ; preds = %166
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %164

; <label>:166                                     ; preds = %167, %157
  %i_27 = phi i5 [ 0, %157 ], [ %i_3_26, %167 ]
  %exitcond2_26 = icmp eq i5 %i_27, -16
  %empty_146 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_26 = add i5 %i_27, 1
  br i1 %exitcond2_26, label %165, label %167

; <label>:167                                     ; preds = %166
  %empty_147 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_308 = extractvalue { i8, i1, i1 } %empty_147, 0
  %tmp_26_148 = zext i5 %i_27 to i64
  %plaintext_addr_27 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_26_148
  store i8 %tmp_data_308, i8* %plaintext_addr_27, align 1
  br label %166

; <label>:168                                     ; preds = %164
  %tmp_1_26 = zext i5 %i_1_26 to i64
  %out_addr_27 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_26
  %tmp_data_309 = load i8* %out_addr_27, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_309, i1 true, i1 false)
  br label %164

; <label>:169                                     ; preds = %170
  %empty_149 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_29)
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %178

; <label>:170                                     ; preds = %174, %171
  %i_1_27 = phi i5 [ 0, %171 ], [ %i_4_27, %174 ]
  %exitcond_27 = icmp eq i5 %i_1_27, -16
  %empty_150 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_27 = add i5 %i_1_27, 1
  br i1 %exitcond_27, label %169, label %174

; <label>:171                                     ; preds = %172
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %170

; <label>:172                                     ; preds = %173, %163
  %i_28 = phi i5 [ 0, %163 ], [ %i_3_27, %173 ]
  %exitcond2_27 = icmp eq i5 %i_28, -16
  %empty_151 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_27 = add i5 %i_28, 1
  br i1 %exitcond2_27, label %171, label %173

; <label>:173                                     ; preds = %172
  %empty_152 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_310 = extractvalue { i8, i1, i1 } %empty_152, 0
  %tmp_27_153 = zext i5 %i_28 to i64
  %plaintext_addr_28 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_27_153
  store i8 %tmp_data_310, i8* %plaintext_addr_28, align 1
  br label %172

; <label>:174                                     ; preds = %170
  %tmp_1_27 = zext i5 %i_1_27 to i64
  %out_addr_28 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_27
  %tmp_data_311 = load i8* %out_addr_28, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_311, i1 true, i1 false)
  br label %170

; <label>:175                                     ; preds = %176
  %empty_154 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_30)
  %tmp_31 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %184

; <label>:176                                     ; preds = %180, %177
  %i_1_28 = phi i5 [ 0, %177 ], [ %i_4_28, %180 ]
  %exitcond_28 = icmp eq i5 %i_1_28, -16
  %empty_155 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_28 = add i5 %i_1_28, 1
  br i1 %exitcond_28, label %175, label %180

; <label>:177                                     ; preds = %178
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %176

; <label>:178                                     ; preds = %179, %169
  %i_29 = phi i5 [ 0, %169 ], [ %i_3_28, %179 ]
  %exitcond2_28 = icmp eq i5 %i_29, -16
  %empty_156 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_28 = add i5 %i_29, 1
  br i1 %exitcond2_28, label %177, label %179

; <label>:179                                     ; preds = %178
  %empty_157 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_312 = extractvalue { i8, i1, i1 } %empty_157, 0
  %tmp_28_158 = zext i5 %i_29 to i64
  %plaintext_addr_29 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_28_158
  store i8 %tmp_data_312, i8* %plaintext_addr_29, align 1
  br label %178

; <label>:180                                     ; preds = %176
  %tmp_1_28 = zext i5 %i_1_28 to i64
  %out_addr_29 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_28
  %tmp_data_313 = load i8* %out_addr_29, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_313, i1 true, i1 false)
  br label %176

; <label>:181                                     ; preds = %182
  %empty_159 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_31)
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %190

; <label>:182                                     ; preds = %186, %183
  %i_1_29 = phi i5 [ 0, %183 ], [ %i_4_29, %186 ]
  %exitcond_29 = icmp eq i5 %i_1_29, -16
  %empty_160 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_29 = add i5 %i_1_29, 1
  br i1 %exitcond_29, label %181, label %186

; <label>:183                                     ; preds = %184
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %182

; <label>:184                                     ; preds = %185, %175
  %i_30 = phi i5 [ 0, %175 ], [ %i_3_29, %185 ]
  %exitcond2_29 = icmp eq i5 %i_30, -16
  %empty_161 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_29 = add i5 %i_30, 1
  br i1 %exitcond2_29, label %183, label %185

; <label>:185                                     ; preds = %184
  %empty_162 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_314 = extractvalue { i8, i1, i1 } %empty_162, 0
  %tmp_29_163 = zext i5 %i_30 to i64
  %plaintext_addr_30 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_29_163
  store i8 %tmp_data_314, i8* %plaintext_addr_30, align 1
  br label %184

; <label>:186                                     ; preds = %182
  %tmp_1_29 = zext i5 %i_1_29 to i64
  %out_addr_30 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_29
  %tmp_data_315 = load i8* %out_addr_30, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_315, i1 true, i1 false)
  br label %182

; <label>:187                                     ; preds = %188
  %empty_164 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_32)
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %196

; <label>:188                                     ; preds = %192, %189
  %i_1_30 = phi i5 [ 0, %189 ], [ %i_4_30, %192 ]
  %exitcond_30 = icmp eq i5 %i_1_30, -16
  %empty_165 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_30 = add i5 %i_1_30, 1
  br i1 %exitcond_30, label %187, label %192

; <label>:189                                     ; preds = %190
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %188

; <label>:190                                     ; preds = %191, %181
  %i_31 = phi i5 [ 0, %181 ], [ %i_3_30, %191 ]
  %exitcond2_30 = icmp eq i5 %i_31, -16
  %empty_166 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_30 = add i5 %i_31, 1
  br i1 %exitcond2_30, label %189, label %191

; <label>:191                                     ; preds = %190
  %empty_167 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_316 = extractvalue { i8, i1, i1 } %empty_167, 0
  %tmp_30_168 = zext i5 %i_31 to i64
  %plaintext_addr_31 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_30_168
  store i8 %tmp_data_316, i8* %plaintext_addr_31, align 1
  br label %190

; <label>:192                                     ; preds = %188
  %tmp_1_30 = zext i5 %i_1_30 to i64
  %out_addr_31 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_30
  %tmp_data_317 = load i8* %out_addr_31, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_317, i1 true, i1 false)
  br label %188

; <label>:193                                     ; preds = %194
  %empty_169 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_33)
  %tmp_34 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %202

; <label>:194                                     ; preds = %198, %195
  %i_1_31 = phi i5 [ 0, %195 ], [ %i_4_31, %198 ]
  %exitcond_31 = icmp eq i5 %i_1_31, -16
  %empty_170 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_31 = add i5 %i_1_31, 1
  br i1 %exitcond_31, label %193, label %198

; <label>:195                                     ; preds = %196
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %194

; <label>:196                                     ; preds = %197, %187
  %i_32 = phi i5 [ 0, %187 ], [ %i_3_31, %197 ]
  %exitcond2_31 = icmp eq i5 %i_32, -16
  %empty_171 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_31 = add i5 %i_32, 1
  br i1 %exitcond2_31, label %195, label %197

; <label>:197                                     ; preds = %196
  %empty_172 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_318 = extractvalue { i8, i1, i1 } %empty_172, 0
  %tmp_31_173 = zext i5 %i_32 to i64
  %plaintext_addr_32 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_31_173
  store i8 %tmp_data_318, i8* %plaintext_addr_32, align 1
  br label %196

; <label>:198                                     ; preds = %194
  %tmp_1_31 = zext i5 %i_1_31 to i64
  %out_addr_32 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_31
  %tmp_data_319 = load i8* %out_addr_32, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_319, i1 true, i1 false)
  br label %194

; <label>:199                                     ; preds = %200
  %empty_174 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_34)
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %208

; <label>:200                                     ; preds = %204, %201
  %i_1_32 = phi i5 [ 0, %201 ], [ %i_4_32, %204 ]
  %exitcond_32 = icmp eq i5 %i_1_32, -16
  %empty_175 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_32 = add i5 %i_1_32, 1
  br i1 %exitcond_32, label %199, label %204

; <label>:201                                     ; preds = %202
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %200

; <label>:202                                     ; preds = %203, %193
  %i_33 = phi i5 [ 0, %193 ], [ %i_3_32, %203 ]
  %exitcond2_32 = icmp eq i5 %i_33, -16
  %empty_176 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_32 = add i5 %i_33, 1
  br i1 %exitcond2_32, label %201, label %203

; <label>:203                                     ; preds = %202
  %empty_177 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_320 = extractvalue { i8, i1, i1 } %empty_177, 0
  %tmp_32_178 = zext i5 %i_33 to i64
  %plaintext_addr_33 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_32_178
  store i8 %tmp_data_320, i8* %plaintext_addr_33, align 1
  br label %202

; <label>:204                                     ; preds = %200
  %tmp_1_32 = zext i5 %i_1_32 to i64
  %out_addr_33 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_32
  %tmp_data_321 = load i8* %out_addr_33, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_321, i1 true, i1 false)
  br label %200

; <label>:205                                     ; preds = %206
  %empty_179 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_35)
  %tmp_36 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %214

; <label>:206                                     ; preds = %210, %207
  %i_1_33 = phi i5 [ 0, %207 ], [ %i_4_33, %210 ]
  %exitcond_33 = icmp eq i5 %i_1_33, -16
  %empty_180 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_33 = add i5 %i_1_33, 1
  br i1 %exitcond_33, label %205, label %210

; <label>:207                                     ; preds = %208
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %206

; <label>:208                                     ; preds = %209, %199
  %i_34 = phi i5 [ 0, %199 ], [ %i_3_33, %209 ]
  %exitcond2_33 = icmp eq i5 %i_34, -16
  %empty_181 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_33 = add i5 %i_34, 1
  br i1 %exitcond2_33, label %207, label %209

; <label>:209                                     ; preds = %208
  %empty_182 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_322 = extractvalue { i8, i1, i1 } %empty_182, 0
  %tmp_33_183 = zext i5 %i_34 to i64
  %plaintext_addr_34 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_33_183
  store i8 %tmp_data_322, i8* %plaintext_addr_34, align 1
  br label %208

; <label>:210                                     ; preds = %206
  %tmp_1_33 = zext i5 %i_1_33 to i64
  %out_addr_34 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_33
  %tmp_data_323 = load i8* %out_addr_34, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_323, i1 true, i1 false)
  br label %206

; <label>:211                                     ; preds = %212
  %empty_184 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_36)
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %220

; <label>:212                                     ; preds = %216, %213
  %i_1_34 = phi i5 [ 0, %213 ], [ %i_4_34, %216 ]
  %exitcond_34 = icmp eq i5 %i_1_34, -16
  %empty_185 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_34 = add i5 %i_1_34, 1
  br i1 %exitcond_34, label %211, label %216

; <label>:213                                     ; preds = %214
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %212

; <label>:214                                     ; preds = %215, %205
  %i_139 = phi i5 [ 0, %205 ], [ %i_3_34, %215 ]
  %exitcond2_34 = icmp eq i5 %i_139, -16
  %empty_186 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_34 = add i5 %i_139, 1
  br i1 %exitcond2_34, label %213, label %215

; <label>:215                                     ; preds = %214
  %empty_187 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_324 = extractvalue { i8, i1, i1 } %empty_187, 0
  %tmp_34_188 = zext i5 %i_139 to i64
  %plaintext_addr_35 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_34_188
  store i8 %tmp_data_324, i8* %plaintext_addr_35, align 1
  br label %214

; <label>:216                                     ; preds = %212
  %tmp_1_34 = zext i5 %i_1_34 to i64
  %out_addr_35 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_34
  %tmp_data_325 = load i8* %out_addr_35, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_325, i1 true, i1 false)
  br label %212

; <label>:217                                     ; preds = %218
  %empty_189 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_37)
  %tmp_38 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %226

; <label>:218                                     ; preds = %222, %219
  %i_1_35 = phi i5 [ 0, %219 ], [ %i_4_35, %222 ]
  %exitcond_35 = icmp eq i5 %i_1_35, -16
  %empty_190 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_35 = add i5 %i_1_35, 1
  br i1 %exitcond_35, label %217, label %222

; <label>:219                                     ; preds = %220
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %218

; <label>:220                                     ; preds = %221, %211
  %i_36 = phi i5 [ 0, %211 ], [ %i_3_35, %221 ]
  %exitcond2_35 = icmp eq i5 %i_36, -16
  %empty_191 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_35 = add i5 %i_36, 1
  br i1 %exitcond2_35, label %219, label %221

; <label>:221                                     ; preds = %220
  %empty_192 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_326 = extractvalue { i8, i1, i1 } %empty_192, 0
  %tmp_35_193 = zext i5 %i_36 to i64
  %plaintext_addr_36 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_35_193
  store i8 %tmp_data_326, i8* %plaintext_addr_36, align 1
  br label %220

; <label>:222                                     ; preds = %218
  %tmp_1_35 = zext i5 %i_1_35 to i64
  %out_addr_36 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_35
  %tmp_data_327 = load i8* %out_addr_36, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_327, i1 true, i1 false)
  br label %218

; <label>:223                                     ; preds = %224
  %empty_194 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_38)
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %232

; <label>:224                                     ; preds = %228, %225
  %i_1_36 = phi i5 [ 0, %225 ], [ %i_4_36, %228 ]
  %exitcond_36 = icmp eq i5 %i_1_36, -16
  %empty_195 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_36 = add i5 %i_1_36, 1
  br i1 %exitcond_36, label %223, label %228

; <label>:225                                     ; preds = %226
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %224

; <label>:226                                     ; preds = %227, %217
  %i_37 = phi i5 [ 0, %217 ], [ %i_3_36, %227 ]
  %exitcond2_36 = icmp eq i5 %i_37, -16
  %empty_196 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_36 = add i5 %i_37, 1
  br i1 %exitcond2_36, label %225, label %227

; <label>:227                                     ; preds = %226
  %empty_197 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_328 = extractvalue { i8, i1, i1 } %empty_197, 0
  %tmp_36_198 = zext i5 %i_37 to i64
  %plaintext_addr_37 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_36_198
  store i8 %tmp_data_328, i8* %plaintext_addr_37, align 1
  br label %226

; <label>:228                                     ; preds = %224
  %tmp_1_36 = zext i5 %i_1_36 to i64
  %out_addr_37 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_36
  %tmp_data_329 = load i8* %out_addr_37, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_329, i1 true, i1 false)
  br label %224

; <label>:229                                     ; preds = %230
  %empty_199 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_39)
  %tmp_40 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %238

; <label>:230                                     ; preds = %234, %231
  %i_1_37 = phi i5 [ 0, %231 ], [ %i_4_37, %234 ]
  %exitcond_37 = icmp eq i5 %i_1_37, -16
  %empty_200 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_37 = add i5 %i_1_37, 1
  br i1 %exitcond_37, label %229, label %234

; <label>:231                                     ; preds = %232
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %230

; <label>:232                                     ; preds = %233, %223
  %i_38 = phi i5 [ 0, %223 ], [ %i_3_37, %233 ]
  %exitcond2_37 = icmp eq i5 %i_38, -16
  %empty_201 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_37 = add i5 %i_38, 1
  br i1 %exitcond2_37, label %231, label %233

; <label>:233                                     ; preds = %232
  %empty_202 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_330 = extractvalue { i8, i1, i1 } %empty_202, 0
  %tmp_37_203 = zext i5 %i_38 to i64
  %plaintext_addr_38 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_37_203
  store i8 %tmp_data_330, i8* %plaintext_addr_38, align 1
  br label %232

; <label>:234                                     ; preds = %230
  %tmp_1_37 = zext i5 %i_1_37 to i64
  %out_addr_38 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_37
  %tmp_data_331 = load i8* %out_addr_38, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_331, i1 true, i1 false)
  br label %230

; <label>:235                                     ; preds = %236
  %empty_204 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_40)
  %tmp_41 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %244

; <label>:236                                     ; preds = %240, %237
  %i_1_38 = phi i5 [ 0, %237 ], [ %i_4_38, %240 ]
  %exitcond_38 = icmp eq i5 %i_1_38, -16
  %empty_205 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_38 = add i5 %i_1_38, 1
  br i1 %exitcond_38, label %235, label %240

; <label>:237                                     ; preds = %238
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %236

; <label>:238                                     ; preds = %239, %229
  %i_39 = phi i5 [ 0, %229 ], [ %i_3_38, %239 ]
  %exitcond2_38 = icmp eq i5 %i_39, -16
  %empty_206 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_38 = add i5 %i_39, 1
  br i1 %exitcond2_38, label %237, label %239

; <label>:239                                     ; preds = %238
  %empty_207 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_332 = extractvalue { i8, i1, i1 } %empty_207, 0
  %tmp_38_208 = zext i5 %i_39 to i64
  %plaintext_addr_39 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_38_208
  store i8 %tmp_data_332, i8* %plaintext_addr_39, align 1
  br label %238

; <label>:240                                     ; preds = %236
  %tmp_1_38 = zext i5 %i_1_38 to i64
  %out_addr_39 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_38
  %tmp_data_333 = load i8* %out_addr_39, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_333, i1 true, i1 false)
  br label %236

; <label>:241                                     ; preds = %242
  %empty_209 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_41)
  %tmp_42 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %250

; <label>:242                                     ; preds = %246, %243
  %i_1_39 = phi i5 [ 0, %243 ], [ %i_4_39, %246 ]
  %exitcond_39 = icmp eq i5 %i_1_39, -16
  %empty_210 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_39 = add i5 %i_1_39, 1
  br i1 %exitcond_39, label %241, label %246

; <label>:243                                     ; preds = %244
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %242

; <label>:244                                     ; preds = %245, %235
  %i_40 = phi i5 [ 0, %235 ], [ %i_3_39, %245 ]
  %exitcond2_39 = icmp eq i5 %i_40, -16
  %empty_211 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_39 = add i5 %i_40, 1
  br i1 %exitcond2_39, label %243, label %245

; <label>:245                                     ; preds = %244
  %empty_212 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_334 = extractvalue { i8, i1, i1 } %empty_212, 0
  %tmp_39_213 = zext i5 %i_40 to i64
  %plaintext_addr_40 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_39_213
  store i8 %tmp_data_334, i8* %plaintext_addr_40, align 1
  br label %244

; <label>:246                                     ; preds = %242
  %tmp_1_39 = zext i5 %i_1_39 to i64
  %out_addr_40 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_39
  %tmp_data_335 = load i8* %out_addr_40, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_335, i1 true, i1 false)
  br label %242

; <label>:247                                     ; preds = %248
  %empty_214 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_42)
  %tmp_43 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %256

; <label>:248                                     ; preds = %252, %249
  %i_1_40 = phi i5 [ 0, %249 ], [ %i_4_40, %252 ]
  %exitcond_40 = icmp eq i5 %i_1_40, -16
  %empty_215 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_40 = add i5 %i_1_40, 1
  br i1 %exitcond_40, label %247, label %252

; <label>:249                                     ; preds = %250
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %248

; <label>:250                                     ; preds = %251, %241
  %i_41 = phi i5 [ 0, %241 ], [ %i_3_40, %251 ]
  %exitcond2_40 = icmp eq i5 %i_41, -16
  %empty_216 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_40 = add i5 %i_41, 1
  br i1 %exitcond2_40, label %249, label %251

; <label>:251                                     ; preds = %250
  %empty_217 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_336 = extractvalue { i8, i1, i1 } %empty_217, 0
  %tmp_40_218 = zext i5 %i_41 to i64
  %plaintext_addr_41 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_40_218
  store i8 %tmp_data_336, i8* %plaintext_addr_41, align 1
  br label %250

; <label>:252                                     ; preds = %248
  %tmp_1_40 = zext i5 %i_1_40 to i64
  %out_addr_41 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_40
  %tmp_data_337 = load i8* %out_addr_41, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_337, i1 true, i1 false)
  br label %248

; <label>:253                                     ; preds = %254
  %empty_219 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_43)
  %tmp_44 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %262

; <label>:254                                     ; preds = %258, %255
  %i_1_41 = phi i5 [ 0, %255 ], [ %i_4_41, %258 ]
  %exitcond_41 = icmp eq i5 %i_1_41, -16
  %empty_220 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_41 = add i5 %i_1_41, 1
  br i1 %exitcond_41, label %253, label %258

; <label>:255                                     ; preds = %256
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %254

; <label>:256                                     ; preds = %257, %247
  %i_42 = phi i5 [ 0, %247 ], [ %i_3_41, %257 ]
  %exitcond2_41 = icmp eq i5 %i_42, -16
  %empty_221 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_41 = add i5 %i_42, 1
  br i1 %exitcond2_41, label %255, label %257

; <label>:257                                     ; preds = %256
  %empty_222 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_338 = extractvalue { i8, i1, i1 } %empty_222, 0
  %tmp_41_223 = zext i5 %i_42 to i64
  %plaintext_addr_42 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_41_223
  store i8 %tmp_data_338, i8* %plaintext_addr_42, align 1
  br label %256

; <label>:258                                     ; preds = %254
  %tmp_1_41 = zext i5 %i_1_41 to i64
  %out_addr_42 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_41
  %tmp_data_339 = load i8* %out_addr_42, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_339, i1 true, i1 false)
  br label %254

; <label>:259                                     ; preds = %260
  %empty_224 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_44)
  %tmp_45 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %268

; <label>:260                                     ; preds = %264, %261
  %i_1_42 = phi i5 [ 0, %261 ], [ %i_4_42, %264 ]
  %exitcond_42 = icmp eq i5 %i_1_42, -16
  %empty_225 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_42 = add i5 %i_1_42, 1
  br i1 %exitcond_42, label %259, label %264

; <label>:261                                     ; preds = %262
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %260

; <label>:262                                     ; preds = %263, %253
  %i_43 = phi i5 [ 0, %253 ], [ %i_3_42, %263 ]
  %exitcond2_42 = icmp eq i5 %i_43, -16
  %empty_226 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_42 = add i5 %i_43, 1
  br i1 %exitcond2_42, label %261, label %263

; <label>:263                                     ; preds = %262
  %empty_227 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_340 = extractvalue { i8, i1, i1 } %empty_227, 0
  %tmp_42_228 = zext i5 %i_43 to i64
  %plaintext_addr_43 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_42_228
  store i8 %tmp_data_340, i8* %plaintext_addr_43, align 1
  br label %262

; <label>:264                                     ; preds = %260
  %tmp_1_42 = zext i5 %i_1_42 to i64
  %out_addr_43 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_42
  %tmp_data_341 = load i8* %out_addr_43, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_341, i1 true, i1 false)
  br label %260

; <label>:265                                     ; preds = %266
  %empty_229 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_45)
  %tmp_46 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %274

; <label>:266                                     ; preds = %270, %267
  %i_1_43 = phi i5 [ 0, %267 ], [ %i_4_43, %270 ]
  %exitcond_43 = icmp eq i5 %i_1_43, -16
  %empty_230 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_43 = add i5 %i_1_43, 1
  br i1 %exitcond_43, label %265, label %270

; <label>:267                                     ; preds = %268
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %266

; <label>:268                                     ; preds = %269, %259
  %i_44 = phi i5 [ 0, %259 ], [ %i_3_43, %269 ]
  %exitcond2_43 = icmp eq i5 %i_44, -16
  %empty_231 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_43 = add i5 %i_44, 1
  br i1 %exitcond2_43, label %267, label %269

; <label>:269                                     ; preds = %268
  %empty_232 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_342 = extractvalue { i8, i1, i1 } %empty_232, 0
  %tmp_43_233 = zext i5 %i_44 to i64
  %plaintext_addr_44 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_43_233
  store i8 %tmp_data_342, i8* %plaintext_addr_44, align 1
  br label %268

; <label>:270                                     ; preds = %266
  %tmp_1_43 = zext i5 %i_1_43 to i64
  %out_addr_44 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_43
  %tmp_data_343 = load i8* %out_addr_44, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_343, i1 true, i1 false)
  br label %266

; <label>:271                                     ; preds = %272
  %empty_234 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_46)
  %tmp_47 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %280

; <label>:272                                     ; preds = %276, %273
  %i_1_44 = phi i5 [ 0, %273 ], [ %i_4_44, %276 ]
  %exitcond_44 = icmp eq i5 %i_1_44, -16
  %empty_235 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_44 = add i5 %i_1_44, 1
  br i1 %exitcond_44, label %271, label %276

; <label>:273                                     ; preds = %274
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %272

; <label>:274                                     ; preds = %275, %265
  %i_45 = phi i5 [ 0, %265 ], [ %i_3_44, %275 ]
  %exitcond2_44 = icmp eq i5 %i_45, -16
  %empty_236 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_44 = add i5 %i_45, 1
  br i1 %exitcond2_44, label %273, label %275

; <label>:275                                     ; preds = %274
  %empty_237 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_344 = extractvalue { i8, i1, i1 } %empty_237, 0
  %tmp_44_238 = zext i5 %i_45 to i64
  %plaintext_addr_45 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_44_238
  store i8 %tmp_data_344, i8* %plaintext_addr_45, align 1
  br label %274

; <label>:276                                     ; preds = %272
  %tmp_1_44 = zext i5 %i_1_44 to i64
  %out_addr_45 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_44
  %tmp_data_345 = load i8* %out_addr_45, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_345, i1 true, i1 false)
  br label %272

; <label>:277                                     ; preds = %278
  %empty_239 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_47)
  %tmp_48 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %286

; <label>:278                                     ; preds = %282, %279
  %i_1_45 = phi i5 [ 0, %279 ], [ %i_4_45, %282 ]
  %exitcond_45 = icmp eq i5 %i_1_45, -16
  %empty_240 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_45 = add i5 %i_1_45, 1
  br i1 %exitcond_45, label %277, label %282

; <label>:279                                     ; preds = %280
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %278

; <label>:280                                     ; preds = %281, %271
  %i_256 = phi i5 [ 0, %271 ], [ %i_3_45, %281 ]
  %exitcond2_45 = icmp eq i5 %i_256, -16
  %empty_241 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_45 = add i5 %i_256, 1
  br i1 %exitcond2_45, label %279, label %281

; <label>:281                                     ; preds = %280
  %empty_242 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_346 = extractvalue { i8, i1, i1 } %empty_242, 0
  %tmp_45_243 = zext i5 %i_256 to i64
  %plaintext_addr_46 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_45_243
  store i8 %tmp_data_346, i8* %plaintext_addr_46, align 1
  br label %280

; <label>:282                                     ; preds = %278
  %tmp_1_45 = zext i5 %i_1_45 to i64
  %out_addr_46 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_45
  %tmp_data_347 = load i8* %out_addr_46, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_347, i1 true, i1 false)
  br label %278

; <label>:283                                     ; preds = %284
  %empty_244 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_48)
  %tmp_49 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %292

; <label>:284                                     ; preds = %288, %285
  %i_1_46 = phi i5 [ 0, %285 ], [ %i_4_46, %288 ]
  %exitcond_46 = icmp eq i5 %i_1_46, -16
  %empty_245 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_46 = add i5 %i_1_46, 1
  br i1 %exitcond_46, label %283, label %288

; <label>:285                                     ; preds = %286
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %284

; <label>:286                                     ; preds = %287, %277
  %i_47 = phi i5 [ 0, %277 ], [ %i_3_46, %287 ]
  %exitcond2_46 = icmp eq i5 %i_47, -16
  %empty_246 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_46 = add i5 %i_47, 1
  br i1 %exitcond2_46, label %285, label %287

; <label>:287                                     ; preds = %286
  %empty_247 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_348 = extractvalue { i8, i1, i1 } %empty_247, 0
  %tmp_46_248 = zext i5 %i_47 to i64
  %plaintext_addr_47 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_46_248
  store i8 %tmp_data_348, i8* %plaintext_addr_47, align 1
  br label %286

; <label>:288                                     ; preds = %284
  %tmp_1_46 = zext i5 %i_1_46 to i64
  %out_addr_47 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_46
  %tmp_data_349 = load i8* %out_addr_47, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_349, i1 true, i1 false)
  br label %284

; <label>:289                                     ; preds = %290
  %empty_249 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_49)
  %tmp_50 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %298

; <label>:290                                     ; preds = %294, %291
  %i_1_47 = phi i5 [ 0, %291 ], [ %i_4_47, %294 ]
  %exitcond_47 = icmp eq i5 %i_1_47, -16
  %empty_250 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_47 = add i5 %i_1_47, 1
  br i1 %exitcond_47, label %289, label %294

; <label>:291                                     ; preds = %292
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %290

; <label>:292                                     ; preds = %293, %283
  %i_48 = phi i5 [ 0, %283 ], [ %i_3_47, %293 ]
  %exitcond2_47 = icmp eq i5 %i_48, -16
  %empty_251 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_47 = add i5 %i_48, 1
  br i1 %exitcond2_47, label %291, label %293

; <label>:293                                     ; preds = %292
  %empty_252 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_350 = extractvalue { i8, i1, i1 } %empty_252, 0
  %tmp_47_253 = zext i5 %i_48 to i64
  %plaintext_addr_48 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_47_253
  store i8 %tmp_data_350, i8* %plaintext_addr_48, align 1
  br label %292

; <label>:294                                     ; preds = %290
  %tmp_1_47 = zext i5 %i_1_47 to i64
  %out_addr_48 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_47
  %tmp_data_351 = load i8* %out_addr_48, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_351, i1 true, i1 false)
  br label %290

; <label>:295                                     ; preds = %296
  %empty_254 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_50)
  %tmp_51 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %304

; <label>:296                                     ; preds = %300, %297
  %i_1_48 = phi i5 [ 0, %297 ], [ %i_4_48, %300 ]
  %exitcond_48 = icmp eq i5 %i_1_48, -16
  %empty_255 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_48 = add i5 %i_1_48, 1
  br i1 %exitcond_48, label %295, label %300

; <label>:297                                     ; preds = %298
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %296

; <label>:298                                     ; preds = %299, %289
  %i_49 = phi i5 [ 0, %289 ], [ %i_3_48, %299 ]
  %exitcond2_48 = icmp eq i5 %i_49, -16
  %empty_256 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_48 = add i5 %i_49, 1
  br i1 %exitcond2_48, label %297, label %299

; <label>:299                                     ; preds = %298
  %empty_257 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_352 = extractvalue { i8, i1, i1 } %empty_257, 0
  %tmp_48_258 = zext i5 %i_49 to i64
  %plaintext_addr_49 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_48_258
  store i8 %tmp_data_352, i8* %plaintext_addr_49, align 1
  br label %298

; <label>:300                                     ; preds = %296
  %tmp_1_48 = zext i5 %i_1_48 to i64
  %out_addr_49 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_48
  %tmp_data_353 = load i8* %out_addr_49, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_353, i1 true, i1 false)
  br label %296

; <label>:301                                     ; preds = %302
  %empty_259 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_51)
  %tmp_52 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %310

; <label>:302                                     ; preds = %306, %303
  %i_1_49 = phi i5 [ 0, %303 ], [ %i_4_49, %306 ]
  %exitcond_49 = icmp eq i5 %i_1_49, -16
  %empty_260 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_49 = add i5 %i_1_49, 1
  br i1 %exitcond_49, label %301, label %306

; <label>:303                                     ; preds = %304
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %302

; <label>:304                                     ; preds = %305, %295
  %i_50 = phi i5 [ 0, %295 ], [ %i_3_49, %305 ]
  %exitcond2_49 = icmp eq i5 %i_50, -16
  %empty_261 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_49 = add i5 %i_50, 1
  br i1 %exitcond2_49, label %303, label %305

; <label>:305                                     ; preds = %304
  %empty_262 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_354 = extractvalue { i8, i1, i1 } %empty_262, 0
  %tmp_49_263 = zext i5 %i_50 to i64
  %plaintext_addr_50 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_49_263
  store i8 %tmp_data_354, i8* %plaintext_addr_50, align 1
  br label %304

; <label>:306                                     ; preds = %302
  %tmp_1_49 = zext i5 %i_1_49 to i64
  %out_addr_50 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_49
  %tmp_data_355 = load i8* %out_addr_50, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_355, i1 true, i1 false)
  br label %302

; <label>:307                                     ; preds = %308
  %empty_264 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_52)
  %tmp_53 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %316

; <label>:308                                     ; preds = %312, %309
  %i_1_50 = phi i5 [ 0, %309 ], [ %i_4_50, %312 ]
  %exitcond_50 = icmp eq i5 %i_1_50, -16
  %empty_265 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_50 = add i5 %i_1_50, 1
  br i1 %exitcond_50, label %307, label %312

; <label>:309                                     ; preds = %310
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %308

; <label>:310                                     ; preds = %311, %301
  %i_51 = phi i5 [ 0, %301 ], [ %i_3_50, %311 ]
  %exitcond2_50 = icmp eq i5 %i_51, -16
  %empty_266 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_50 = add i5 %i_51, 1
  br i1 %exitcond2_50, label %309, label %311

; <label>:311                                     ; preds = %310
  %empty_267 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_356 = extractvalue { i8, i1, i1 } %empty_267, 0
  %tmp_50_268 = zext i5 %i_51 to i64
  %plaintext_addr_51 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_50_268
  store i8 %tmp_data_356, i8* %plaintext_addr_51, align 1
  br label %310

; <label>:312                                     ; preds = %308
  %tmp_1_50 = zext i5 %i_1_50 to i64
  %out_addr_51 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_50
  %tmp_data_357 = load i8* %out_addr_51, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_357, i1 true, i1 false)
  br label %308

; <label>:313                                     ; preds = %314
  %empty_269 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_53)
  %tmp_54 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %322

; <label>:314                                     ; preds = %318, %315
  %i_1_51 = phi i5 [ 0, %315 ], [ %i_4_51, %318 ]
  %exitcond_51 = icmp eq i5 %i_1_51, -16
  %empty_270 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_51 = add i5 %i_1_51, 1
  br i1 %exitcond_51, label %313, label %318

; <label>:315                                     ; preds = %316
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %314

; <label>:316                                     ; preds = %317, %307
  %i_52 = phi i5 [ 0, %307 ], [ %i_3_51, %317 ]
  %exitcond2_51 = icmp eq i5 %i_52, -16
  %empty_271 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_51 = add i5 %i_52, 1
  br i1 %exitcond2_51, label %315, label %317

; <label>:317                                     ; preds = %316
  %empty_272 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_358 = extractvalue { i8, i1, i1 } %empty_272, 0
  %tmp_51_273 = zext i5 %i_52 to i64
  %plaintext_addr_52 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_51_273
  store i8 %tmp_data_358, i8* %plaintext_addr_52, align 1
  br label %316

; <label>:318                                     ; preds = %314
  %tmp_1_51 = zext i5 %i_1_51 to i64
  %out_addr_52 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_51
  %tmp_data_359 = load i8* %out_addr_52, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_359, i1 true, i1 false)
  br label %314

; <label>:319                                     ; preds = %320
  %empty_274 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_54)
  %tmp_55 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %328

; <label>:320                                     ; preds = %324, %321
  %i_1_52 = phi i5 [ 0, %321 ], [ %i_4_52, %324 ]
  %exitcond_52 = icmp eq i5 %i_1_52, -16
  %empty_275 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_52 = add i5 %i_1_52, 1
  br i1 %exitcond_52, label %319, label %324

; <label>:321                                     ; preds = %322
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %320

; <label>:322                                     ; preds = %323, %313
  %i_53 = phi i5 [ 0, %313 ], [ %i_3_52, %323 ]
  %exitcond2_52 = icmp eq i5 %i_53, -16
  %empty_276 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_52 = add i5 %i_53, 1
  br i1 %exitcond2_52, label %321, label %323

; <label>:323                                     ; preds = %322
  %empty_277 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_360 = extractvalue { i8, i1, i1 } %empty_277, 0
  %tmp_52_278 = zext i5 %i_53 to i64
  %plaintext_addr_53 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_52_278
  store i8 %tmp_data_360, i8* %plaintext_addr_53, align 1
  br label %322

; <label>:324                                     ; preds = %320
  %tmp_1_52 = zext i5 %i_1_52 to i64
  %out_addr_53 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_52
  %tmp_data_361 = load i8* %out_addr_53, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_361, i1 true, i1 false)
  br label %320

; <label>:325                                     ; preds = %326
  %empty_279 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_55)
  %tmp_56 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %334

; <label>:326                                     ; preds = %330, %327
  %i_1_53 = phi i5 [ 0, %327 ], [ %i_4_53, %330 ]
  %exitcond_53 = icmp eq i5 %i_1_53, -16
  %empty_280 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_53 = add i5 %i_1_53, 1
  br i1 %exitcond_53, label %325, label %330

; <label>:327                                     ; preds = %328
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %326

; <label>:328                                     ; preds = %329, %319
  %i_54 = phi i5 [ 0, %319 ], [ %i_3_53, %329 ]
  %exitcond2_53 = icmp eq i5 %i_54, -16
  %empty_281 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_53 = add i5 %i_54, 1
  br i1 %exitcond2_53, label %327, label %329

; <label>:329                                     ; preds = %328
  %empty_282 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_362 = extractvalue { i8, i1, i1 } %empty_282, 0
  %tmp_53_283 = zext i5 %i_54 to i64
  %plaintext_addr_54 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_53_283
  store i8 %tmp_data_362, i8* %plaintext_addr_54, align 1
  br label %328

; <label>:330                                     ; preds = %326
  %tmp_1_53 = zext i5 %i_1_53 to i64
  %out_addr_54 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_53
  %tmp_data_363 = load i8* %out_addr_54, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_363, i1 true, i1 false)
  br label %326

; <label>:331                                     ; preds = %332
  %empty_284 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_56)
  %tmp_57 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %340

; <label>:332                                     ; preds = %336, %333
  %i_1_54 = phi i5 [ 0, %333 ], [ %i_4_54, %336 ]
  %exitcond_54 = icmp eq i5 %i_1_54, -16
  %empty_285 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_54 = add i5 %i_1_54, 1
  br i1 %exitcond_54, label %331, label %336

; <label>:333                                     ; preds = %334
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %332

; <label>:334                                     ; preds = %335, %325
  %i_55 = phi i5 [ 0, %325 ], [ %i_3_54, %335 ]
  %exitcond2_54 = icmp eq i5 %i_55, -16
  %empty_286 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_54 = add i5 %i_55, 1
  br i1 %exitcond2_54, label %333, label %335

; <label>:335                                     ; preds = %334
  %empty_287 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_364 = extractvalue { i8, i1, i1 } %empty_287, 0
  %tmp_54_288 = zext i5 %i_55 to i64
  %plaintext_addr_55 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_54_288
  store i8 %tmp_data_364, i8* %plaintext_addr_55, align 1
  br label %334

; <label>:336                                     ; preds = %332
  %tmp_1_54 = zext i5 %i_1_54 to i64
  %out_addr_55 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_54
  %tmp_data_365 = load i8* %out_addr_55, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_365, i1 true, i1 false)
  br label %332

; <label>:337                                     ; preds = %338
  %empty_289 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_57)
  %tmp_58 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %346

; <label>:338                                     ; preds = %342, %339
  %i_1_55 = phi i5 [ 0, %339 ], [ %i_4_55, %342 ]
  %exitcond_55 = icmp eq i5 %i_1_55, -16
  %empty_290 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_55 = add i5 %i_1_55, 1
  br i1 %exitcond_55, label %337, label %342

; <label>:339                                     ; preds = %340
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %338

; <label>:340                                     ; preds = %341, %331
  %i_56 = phi i5 [ 0, %331 ], [ %i_3_55, %341 ]
  %exitcond2_55 = icmp eq i5 %i_56, -16
  %empty_291 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_55 = add i5 %i_56, 1
  br i1 %exitcond2_55, label %339, label %341

; <label>:341                                     ; preds = %340
  %empty_292 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_366 = extractvalue { i8, i1, i1 } %empty_292, 0
  %tmp_55_293 = zext i5 %i_56 to i64
  %plaintext_addr_56 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_55_293
  store i8 %tmp_data_366, i8* %plaintext_addr_56, align 1
  br label %340

; <label>:342                                     ; preds = %338
  %tmp_1_55 = zext i5 %i_1_55 to i64
  %out_addr_56 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_55
  %tmp_data_367 = load i8* %out_addr_56, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_367, i1 true, i1 false)
  br label %338

; <label>:343                                     ; preds = %344
  %empty_294 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_58)
  %tmp_59 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %352

; <label>:344                                     ; preds = %348, %345
  %i_1_56 = phi i5 [ 0, %345 ], [ %i_4_56, %348 ]
  %exitcond_56 = icmp eq i5 %i_1_56, -16
  %empty_295 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_56 = add i5 %i_1_56, 1
  br i1 %exitcond_56, label %343, label %348

; <label>:345                                     ; preds = %346
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %344

; <label>:346                                     ; preds = %347, %337
  %i_57 = phi i5 [ 0, %337 ], [ %i_3_56, %347 ]
  %exitcond2_56 = icmp eq i5 %i_57, -16
  %empty_296 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_56 = add i5 %i_57, 1
  br i1 %exitcond2_56, label %345, label %347

; <label>:347                                     ; preds = %346
  %empty_297 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_368 = extractvalue { i8, i1, i1 } %empty_297, 0
  %tmp_56_298 = zext i5 %i_57 to i64
  %plaintext_addr_57 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_56_298
  store i8 %tmp_data_368, i8* %plaintext_addr_57, align 1
  br label %346

; <label>:348                                     ; preds = %344
  %tmp_1_56 = zext i5 %i_1_56 to i64
  %out_addr_57 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_56
  %tmp_data_369 = load i8* %out_addr_57, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_369, i1 true, i1 false)
  br label %344

; <label>:349                                     ; preds = %350
  %empty_299 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_59)
  %tmp_60 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %358

; <label>:350                                     ; preds = %354, %351
  %i_1_57 = phi i5 [ 0, %351 ], [ %i_4_57, %354 ]
  %exitcond_57 = icmp eq i5 %i_1_57, -16
  %empty_300 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_57 = add i5 %i_1_57, 1
  br i1 %exitcond_57, label %349, label %354

; <label>:351                                     ; preds = %352
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %350

; <label>:352                                     ; preds = %353, %343
  %i_58 = phi i5 [ 0, %343 ], [ %i_3_57, %353 ]
  %exitcond2_57 = icmp eq i5 %i_58, -16
  %empty_301 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_57 = add i5 %i_58, 1
  br i1 %exitcond2_57, label %351, label %353

; <label>:353                                     ; preds = %352
  %empty_302 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_370 = extractvalue { i8, i1, i1 } %empty_302, 0
  %tmp_57_303 = zext i5 %i_58 to i64
  %plaintext_addr_58 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_57_303
  store i8 %tmp_data_370, i8* %plaintext_addr_58, align 1
  br label %352

; <label>:354                                     ; preds = %350
  %tmp_1_57 = zext i5 %i_1_57 to i64
  %out_addr_58 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_57
  %tmp_data_371 = load i8* %out_addr_58, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_371, i1 true, i1 false)
  br label %350

; <label>:355                                     ; preds = %356
  %empty_304 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_60)
  %tmp_61 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %364

; <label>:356                                     ; preds = %360, %357
  %i_1_58 = phi i5 [ 0, %357 ], [ %i_4_58, %360 ]
  %exitcond_58 = icmp eq i5 %i_1_58, -16
  %empty_305 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_58 = add i5 %i_1_58, 1
  br i1 %exitcond_58, label %355, label %360

; <label>:357                                     ; preds = %358
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %356

; <label>:358                                     ; preds = %359, %349
  %i_59 = phi i5 [ 0, %349 ], [ %i_3_58, %359 ]
  %exitcond2_58 = icmp eq i5 %i_59, -16
  %empty_306 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_58 = add i5 %i_59, 1
  br i1 %exitcond2_58, label %357, label %359

; <label>:359                                     ; preds = %358
  %empty_307 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_372 = extractvalue { i8, i1, i1 } %empty_307, 0
  %tmp_58_308 = zext i5 %i_59 to i64
  %plaintext_addr_59 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_58_308
  store i8 %tmp_data_372, i8* %plaintext_addr_59, align 1
  br label %358

; <label>:360                                     ; preds = %356
  %tmp_1_58 = zext i5 %i_1_58 to i64
  %out_addr_59 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_58
  %tmp_data_373 = load i8* %out_addr_59, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_373, i1 true, i1 false)
  br label %356

; <label>:361                                     ; preds = %362
  %empty_309 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_61)
  %tmp_62 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %370

; <label>:362                                     ; preds = %366, %363
  %i_1_59 = phi i5 [ 0, %363 ], [ %i_4_59, %366 ]
  %exitcond_59 = icmp eq i5 %i_1_59, -16
  %empty_310 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_59 = add i5 %i_1_59, 1
  br i1 %exitcond_59, label %361, label %366

; <label>:363                                     ; preds = %364
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %362

; <label>:364                                     ; preds = %365, %355
  %i_60 = phi i5 [ 0, %355 ], [ %i_3_59, %365 ]
  %exitcond2_59 = icmp eq i5 %i_60, -16
  %empty_311 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_59 = add i5 %i_60, 1
  br i1 %exitcond2_59, label %363, label %365

; <label>:365                                     ; preds = %364
  %empty_312 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_374 = extractvalue { i8, i1, i1 } %empty_312, 0
  %tmp_59_313 = zext i5 %i_60 to i64
  %plaintext_addr_60 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_59_313
  store i8 %tmp_data_374, i8* %plaintext_addr_60, align 1
  br label %364

; <label>:366                                     ; preds = %362
  %tmp_1_59 = zext i5 %i_1_59 to i64
  %out_addr_60 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_59
  %tmp_data_375 = load i8* %out_addr_60, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_375, i1 true, i1 false)
  br label %362

; <label>:367                                     ; preds = %368
  %empty_314 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_62)
  %tmp_63 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %376

; <label>:368                                     ; preds = %372, %369
  %i_1_60 = phi i5 [ 0, %369 ], [ %i_4_60, %372 ]
  %exitcond_60 = icmp eq i5 %i_1_60, -16
  %empty_315 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_60 = add i5 %i_1_60, 1
  br i1 %exitcond_60, label %367, label %372

; <label>:369                                     ; preds = %370
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %368

; <label>:370                                     ; preds = %371, %361
  %i_61 = phi i5 [ 0, %361 ], [ %i_3_60, %371 ]
  %exitcond2_60 = icmp eq i5 %i_61, -16
  %empty_316 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_60 = add i5 %i_61, 1
  br i1 %exitcond2_60, label %369, label %371

; <label>:371                                     ; preds = %370
  %empty_317 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_376 = extractvalue { i8, i1, i1 } %empty_317, 0
  %tmp_60_318 = zext i5 %i_61 to i64
  %plaintext_addr_61 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_60_318
  store i8 %tmp_data_376, i8* %plaintext_addr_61, align 1
  br label %370

; <label>:372                                     ; preds = %368
  %tmp_1_60 = zext i5 %i_1_60 to i64
  %out_addr_61 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_60
  %tmp_data_377 = load i8* %out_addr_61, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_377, i1 true, i1 false)
  br label %368

; <label>:373                                     ; preds = %374
  %empty_319 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_63)
  %tmp_64 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %382

; <label>:374                                     ; preds = %378, %375
  %i_1_61 = phi i5 [ 0, %375 ], [ %i_4_61, %378 ]
  %exitcond_61 = icmp eq i5 %i_1_61, -16
  %empty_320 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_61 = add i5 %i_1_61, 1
  br i1 %exitcond_61, label %373, label %378

; <label>:375                                     ; preds = %376
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %374

; <label>:376                                     ; preds = %377, %367
  %i_62 = phi i5 [ 0, %367 ], [ %i_3_61, %377 ]
  %exitcond2_61 = icmp eq i5 %i_62, -16
  %empty_321 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_61 = add i5 %i_62, 1
  br i1 %exitcond2_61, label %375, label %377

; <label>:377                                     ; preds = %376
  %empty_322 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_378 = extractvalue { i8, i1, i1 } %empty_322, 0
  %tmp_61_323 = zext i5 %i_62 to i64
  %plaintext_addr_62 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_61_323
  store i8 %tmp_data_378, i8* %plaintext_addr_62, align 1
  br label %376

; <label>:378                                     ; preds = %374
  %tmp_1_61 = zext i5 %i_1_61 to i64
  %out_addr_62 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_61
  %tmp_data_379 = load i8* %out_addr_62, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_379, i1 true, i1 false)
  br label %374

; <label>:379                                     ; preds = %380
  %empty_324 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_64)
  %tmp_65 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %388

; <label>:380                                     ; preds = %384, %381
  %i_1_62 = phi i5 [ 0, %381 ], [ %i_4_62, %384 ]
  %exitcond_62 = icmp eq i5 %i_1_62, -16
  %empty_325 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_62 = add i5 %i_1_62, 1
  br i1 %exitcond_62, label %379, label %384

; <label>:381                                     ; preds = %382
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %380

; <label>:382                                     ; preds = %383, %373
  %i_63 = phi i5 [ 0, %373 ], [ %i_3_62, %383 ]
  %exitcond2_62 = icmp eq i5 %i_63, -16
  %empty_326 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_62 = add i5 %i_63, 1
  br i1 %exitcond2_62, label %381, label %383

; <label>:383                                     ; preds = %382
  %empty_327 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_380 = extractvalue { i8, i1, i1 } %empty_327, 0
  %tmp_62_328 = zext i5 %i_63 to i64
  %plaintext_addr_63 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_62_328
  store i8 %tmp_data_380, i8* %plaintext_addr_63, align 1
  br label %382

; <label>:384                                     ; preds = %380
  %tmp_1_62 = zext i5 %i_1_62 to i64
  %out_addr_63 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_62
  %tmp_data_381 = load i8* %out_addr_63, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_381, i1 true, i1 false)
  br label %380

; <label>:385                                     ; preds = %386
  %empty_329 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_65)
  %tmp_66 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %394

; <label>:386                                     ; preds = %390, %387
  %i_1_63 = phi i5 [ 0, %387 ], [ %i_4_63, %390 ]
  %exitcond_63 = icmp eq i5 %i_1_63, -16
  %empty_330 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_63 = add i5 %i_1_63, 1
  br i1 %exitcond_63, label %385, label %390

; <label>:387                                     ; preds = %388
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %386

; <label>:388                                     ; preds = %389, %379
  %i_64 = phi i5 [ 0, %379 ], [ %i_3_63, %389 ]
  %exitcond2_63 = icmp eq i5 %i_64, -16
  %empty_331 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_63 = add i5 %i_64, 1
  br i1 %exitcond2_63, label %387, label %389

; <label>:389                                     ; preds = %388
  %empty_332 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_382 = extractvalue { i8, i1, i1 } %empty_332, 0
  %tmp_63_333 = zext i5 %i_64 to i64
  %plaintext_addr_64 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_63_333
  store i8 %tmp_data_382, i8* %plaintext_addr_64, align 1
  br label %388

; <label>:390                                     ; preds = %386
  %tmp_1_63 = zext i5 %i_1_63 to i64
  %out_addr_64 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_63
  %tmp_data_383 = load i8* %out_addr_64, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_383, i1 true, i1 false)
  br label %386

; <label>:391                                     ; preds = %392
  %empty_334 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_66)
  %tmp_67 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %400

; <label>:392                                     ; preds = %396, %393
  %i_1_64 = phi i5 [ 0, %393 ], [ %i_4_64, %396 ]
  %exitcond_64 = icmp eq i5 %i_1_64, -16
  %empty_335 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_64 = add i5 %i_1_64, 1
  br i1 %exitcond_64, label %391, label %396

; <label>:393                                     ; preds = %394
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %392

; <label>:394                                     ; preds = %395, %385
  %i_65 = phi i5 [ 0, %385 ], [ %i_3_64, %395 ]
  %exitcond2_64 = icmp eq i5 %i_65, -16
  %empty_336 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_64 = add i5 %i_65, 1
  br i1 %exitcond2_64, label %393, label %395

; <label>:395                                     ; preds = %394
  %empty_337 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_384 = extractvalue { i8, i1, i1 } %empty_337, 0
  %tmp_64_338 = zext i5 %i_65 to i64
  %plaintext_addr_65 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_64_338
  store i8 %tmp_data_384, i8* %plaintext_addr_65, align 1
  br label %394

; <label>:396                                     ; preds = %392
  %tmp_1_64 = zext i5 %i_1_64 to i64
  %out_addr_65 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_64
  %tmp_data_385 = load i8* %out_addr_65, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_385, i1 true, i1 false)
  br label %392

; <label>:397                                     ; preds = %398
  %empty_339 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_67)
  %tmp_68 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %406

; <label>:398                                     ; preds = %402, %399
  %i_1_65 = phi i5 [ 0, %399 ], [ %i_4_65, %402 ]
  %exitcond_65 = icmp eq i5 %i_1_65, -16
  %empty_340 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_65 = add i5 %i_1_65, 1
  br i1 %exitcond_65, label %397, label %402

; <label>:399                                     ; preds = %400
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %398

; <label>:400                                     ; preds = %401, %391
  %i_66 = phi i5 [ 0, %391 ], [ %i_3_65, %401 ]
  %exitcond2_65 = icmp eq i5 %i_66, -16
  %empty_341 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_65 = add i5 %i_66, 1
  br i1 %exitcond2_65, label %399, label %401

; <label>:401                                     ; preds = %400
  %empty_342 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_386 = extractvalue { i8, i1, i1 } %empty_342, 0
  %tmp_65_343 = zext i5 %i_66 to i64
  %plaintext_addr_66 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_65_343
  store i8 %tmp_data_386, i8* %plaintext_addr_66, align 1
  br label %400

; <label>:402                                     ; preds = %398
  %tmp_1_65 = zext i5 %i_1_65 to i64
  %out_addr_66 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_65
  %tmp_data_387 = load i8* %out_addr_66, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_387, i1 true, i1 false)
  br label %398

; <label>:403                                     ; preds = %404
  %empty_344 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_68)
  %tmp_69 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %412

; <label>:404                                     ; preds = %408, %405
  %i_1_66 = phi i5 [ 0, %405 ], [ %i_4_66, %408 ]
  %exitcond_66 = icmp eq i5 %i_1_66, -16
  %empty_345 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_66 = add i5 %i_1_66, 1
  br i1 %exitcond_66, label %403, label %408

; <label>:405                                     ; preds = %406
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %404

; <label>:406                                     ; preds = %407, %397
  %i_67 = phi i5 [ 0, %397 ], [ %i_3_66, %407 ]
  %exitcond2_66 = icmp eq i5 %i_67, -16
  %empty_346 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_66 = add i5 %i_67, 1
  br i1 %exitcond2_66, label %405, label %407

; <label>:407                                     ; preds = %406
  %empty_347 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_388 = extractvalue { i8, i1, i1 } %empty_347, 0
  %tmp_66_348 = zext i5 %i_67 to i64
  %plaintext_addr_67 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_66_348
  store i8 %tmp_data_388, i8* %plaintext_addr_67, align 1
  br label %406

; <label>:408                                     ; preds = %404
  %tmp_1_66 = zext i5 %i_1_66 to i64
  %out_addr_67 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_66
  %tmp_data_389 = load i8* %out_addr_67, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_389, i1 true, i1 false)
  br label %404

; <label>:409                                     ; preds = %410
  %empty_349 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_69)
  %tmp_70 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %418

; <label>:410                                     ; preds = %414, %411
  %i_1_67 = phi i5 [ 0, %411 ], [ %i_4_67, %414 ]
  %exitcond_67 = icmp eq i5 %i_1_67, -16
  %empty_350 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_67 = add i5 %i_1_67, 1
  br i1 %exitcond_67, label %409, label %414

; <label>:411                                     ; preds = %412
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %410

; <label>:412                                     ; preds = %413, %403
  %i_68 = phi i5 [ 0, %403 ], [ %i_3_67, %413 ]
  %exitcond2_67 = icmp eq i5 %i_68, -16
  %empty_351 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_67 = add i5 %i_68, 1
  br i1 %exitcond2_67, label %411, label %413

; <label>:413                                     ; preds = %412
  %empty_352 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_390 = extractvalue { i8, i1, i1 } %empty_352, 0
  %tmp_67_353 = zext i5 %i_68 to i64
  %plaintext_addr_68 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_67_353
  store i8 %tmp_data_390, i8* %plaintext_addr_68, align 1
  br label %412

; <label>:414                                     ; preds = %410
  %tmp_1_67 = zext i5 %i_1_67 to i64
  %out_addr_68 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_67
  %tmp_data_391 = load i8* %out_addr_68, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_391, i1 true, i1 false)
  br label %410

; <label>:415                                     ; preds = %416
  %empty_354 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_70)
  %tmp_71 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %424

; <label>:416                                     ; preds = %420, %417
  %i_1_68 = phi i5 [ 0, %417 ], [ %i_4_68, %420 ]
  %exitcond_68 = icmp eq i5 %i_1_68, -16
  %empty_355 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_68 = add i5 %i_1_68, 1
  br i1 %exitcond_68, label %415, label %420

; <label>:417                                     ; preds = %418
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %416

; <label>:418                                     ; preds = %419, %409
  %i_69 = phi i5 [ 0, %409 ], [ %i_3_68, %419 ]
  %exitcond2_68 = icmp eq i5 %i_69, -16
  %empty_356 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_68 = add i5 %i_69, 1
  br i1 %exitcond2_68, label %417, label %419

; <label>:419                                     ; preds = %418
  %empty_357 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_392 = extractvalue { i8, i1, i1 } %empty_357, 0
  %tmp_68_358 = zext i5 %i_69 to i64
  %plaintext_addr_69 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_68_358
  store i8 %tmp_data_392, i8* %plaintext_addr_69, align 1
  br label %418

; <label>:420                                     ; preds = %416
  %tmp_1_68 = zext i5 %i_1_68 to i64
  %out_addr_69 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_68
  %tmp_data_393 = load i8* %out_addr_69, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_393, i1 true, i1 false)
  br label %416

; <label>:421                                     ; preds = %422
  %empty_359 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_71)
  %tmp_72 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %430

; <label>:422                                     ; preds = %426, %423
  %i_1_69 = phi i5 [ 0, %423 ], [ %i_4_69, %426 ]
  %exitcond_69 = icmp eq i5 %i_1_69, -16
  %empty_360 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_69 = add i5 %i_1_69, 1
  br i1 %exitcond_69, label %421, label %426

; <label>:423                                     ; preds = %424
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %422

; <label>:424                                     ; preds = %425, %415
  %i_70 = phi i5 [ 0, %415 ], [ %i_3_69, %425 ]
  %exitcond2_69 = icmp eq i5 %i_70, -16
  %empty_361 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_69 = add i5 %i_70, 1
  br i1 %exitcond2_69, label %423, label %425

; <label>:425                                     ; preds = %424
  %empty_362 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_394 = extractvalue { i8, i1, i1 } %empty_362, 0
  %tmp_69_363 = zext i5 %i_70 to i64
  %plaintext_addr_70 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_69_363
  store i8 %tmp_data_394, i8* %plaintext_addr_70, align 1
  br label %424

; <label>:426                                     ; preds = %422
  %tmp_1_69 = zext i5 %i_1_69 to i64
  %out_addr_70 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_69
  %tmp_data_395 = load i8* %out_addr_70, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_395, i1 true, i1 false)
  br label %422

; <label>:427                                     ; preds = %428
  %empty_364 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_72)
  %tmp_73 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %436

; <label>:428                                     ; preds = %432, %429
  %i_1_70 = phi i5 [ 0, %429 ], [ %i_4_70, %432 ]
  %exitcond_70 = icmp eq i5 %i_1_70, -16
  %empty_365 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_70 = add i5 %i_1_70, 1
  br i1 %exitcond_70, label %427, label %432

; <label>:429                                     ; preds = %430
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %428

; <label>:430                                     ; preds = %431, %421
  %i_71 = phi i5 [ 0, %421 ], [ %i_3_70, %431 ]
  %exitcond2_70 = icmp eq i5 %i_71, -16
  %empty_366 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_70 = add i5 %i_71, 1
  br i1 %exitcond2_70, label %429, label %431

; <label>:431                                     ; preds = %430
  %empty_367 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_396 = extractvalue { i8, i1, i1 } %empty_367, 0
  %tmp_70_368 = zext i5 %i_71 to i64
  %plaintext_addr_71 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_70_368
  store i8 %tmp_data_396, i8* %plaintext_addr_71, align 1
  br label %430

; <label>:432                                     ; preds = %428
  %tmp_1_70 = zext i5 %i_1_70 to i64
  %out_addr_71 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_70
  %tmp_data_397 = load i8* %out_addr_71, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_397, i1 true, i1 false)
  br label %428

; <label>:433                                     ; preds = %434
  %empty_369 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_73)
  %tmp_74 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %442

; <label>:434                                     ; preds = %438, %435
  %i_1_71 = phi i5 [ 0, %435 ], [ %i_4_71, %438 ]
  %exitcond_71 = icmp eq i5 %i_1_71, -16
  %empty_370 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_71 = add i5 %i_1_71, 1
  br i1 %exitcond_71, label %433, label %438

; <label>:435                                     ; preds = %436
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %434

; <label>:436                                     ; preds = %437, %427
  %i_72 = phi i5 [ 0, %427 ], [ %i_3_71, %437 ]
  %exitcond2_71 = icmp eq i5 %i_72, -16
  %empty_371 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_71 = add i5 %i_72, 1
  br i1 %exitcond2_71, label %435, label %437

; <label>:437                                     ; preds = %436
  %empty_372 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_398 = extractvalue { i8, i1, i1 } %empty_372, 0
  %tmp_71_373 = zext i5 %i_72 to i64
  %plaintext_addr_72 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_71_373
  store i8 %tmp_data_398, i8* %plaintext_addr_72, align 1
  br label %436

; <label>:438                                     ; preds = %434
  %tmp_1_71 = zext i5 %i_1_71 to i64
  %out_addr_72 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_71
  %tmp_data_399 = load i8* %out_addr_72, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_399, i1 true, i1 false)
  br label %434

; <label>:439                                     ; preds = %440
  %empty_374 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_74)
  %tmp_75 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %448

; <label>:440                                     ; preds = %444, %441
  %i_1_72 = phi i5 [ 0, %441 ], [ %i_4_72, %444 ]
  %exitcond_72 = icmp eq i5 %i_1_72, -16
  %empty_375 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_72 = add i5 %i_1_72, 1
  br i1 %exitcond_72, label %439, label %444

; <label>:441                                     ; preds = %442
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %440

; <label>:442                                     ; preds = %443, %433
  %i_73 = phi i5 [ 0, %433 ], [ %i_3_72, %443 ]
  %exitcond2_72 = icmp eq i5 %i_73, -16
  %empty_376 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_72 = add i5 %i_73, 1
  br i1 %exitcond2_72, label %441, label %443

; <label>:443                                     ; preds = %442
  %empty_377 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_400 = extractvalue { i8, i1, i1 } %empty_377, 0
  %tmp_72_378 = zext i5 %i_73 to i64
  %plaintext_addr_73 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_72_378
  store i8 %tmp_data_400, i8* %plaintext_addr_73, align 1
  br label %442

; <label>:444                                     ; preds = %440
  %tmp_1_72 = zext i5 %i_1_72 to i64
  %out_addr_73 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_72
  %tmp_data_401 = load i8* %out_addr_73, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_401, i1 true, i1 false)
  br label %440

; <label>:445                                     ; preds = %446
  %empty_379 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_75)
  %tmp_76 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %454

; <label>:446                                     ; preds = %450, %447
  %i_1_73 = phi i5 [ 0, %447 ], [ %i_4_73, %450 ]
  %exitcond_73 = icmp eq i5 %i_1_73, -16
  %empty_380 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_73 = add i5 %i_1_73, 1
  br i1 %exitcond_73, label %445, label %450

; <label>:447                                     ; preds = %448
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %446

; <label>:448                                     ; preds = %449, %439
  %i_74 = phi i5 [ 0, %439 ], [ %i_3_73, %449 ]
  %exitcond2_73 = icmp eq i5 %i_74, -16
  %empty_381 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_73 = add i5 %i_74, 1
  br i1 %exitcond2_73, label %447, label %449

; <label>:449                                     ; preds = %448
  %empty_382 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_402 = extractvalue { i8, i1, i1 } %empty_382, 0
  %tmp_73_383 = zext i5 %i_74 to i64
  %plaintext_addr_74 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_73_383
  store i8 %tmp_data_402, i8* %plaintext_addr_74, align 1
  br label %448

; <label>:450                                     ; preds = %446
  %tmp_1_73 = zext i5 %i_1_73 to i64
  %out_addr_74 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_73
  %tmp_data_403 = load i8* %out_addr_74, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_403, i1 true, i1 false)
  br label %446

; <label>:451                                     ; preds = %452
  %empty_384 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_76)
  %tmp_77 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %460

; <label>:452                                     ; preds = %456, %453
  %i_1_74 = phi i5 [ 0, %453 ], [ %i_4_74, %456 ]
  %exitcond_74 = icmp eq i5 %i_1_74, -16
  %empty_385 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_74 = add i5 %i_1_74, 1
  br i1 %exitcond_74, label %451, label %456

; <label>:453                                     ; preds = %454
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %452

; <label>:454                                     ; preds = %455, %445
  %i_75 = phi i5 [ 0, %445 ], [ %i_3_74, %455 ]
  %exitcond2_74 = icmp eq i5 %i_75, -16
  %empty_386 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_74 = add i5 %i_75, 1
  br i1 %exitcond2_74, label %453, label %455

; <label>:455                                     ; preds = %454
  %empty_387 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_404 = extractvalue { i8, i1, i1 } %empty_387, 0
  %tmp_74_388 = zext i5 %i_75 to i64
  %plaintext_addr_75 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_74_388
  store i8 %tmp_data_404, i8* %plaintext_addr_75, align 1
  br label %454

; <label>:456                                     ; preds = %452
  %tmp_1_74 = zext i5 %i_1_74 to i64
  %out_addr_75 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_74
  %tmp_data_405 = load i8* %out_addr_75, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_405, i1 true, i1 false)
  br label %452

; <label>:457                                     ; preds = %458
  %empty_389 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_77)
  %tmp_78 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %466

; <label>:458                                     ; preds = %462, %459
  %i_1_75 = phi i5 [ 0, %459 ], [ %i_4_75, %462 ]
  %exitcond_75 = icmp eq i5 %i_1_75, -16
  %empty_390 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_75 = add i5 %i_1_75, 1
  br i1 %exitcond_75, label %457, label %462

; <label>:459                                     ; preds = %460
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %458

; <label>:460                                     ; preds = %461, %451
  %i_76 = phi i5 [ 0, %451 ], [ %i_3_75, %461 ]
  %exitcond2_75 = icmp eq i5 %i_76, -16
  %empty_391 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_75 = add i5 %i_76, 1
  br i1 %exitcond2_75, label %459, label %461

; <label>:461                                     ; preds = %460
  %empty_392 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_406 = extractvalue { i8, i1, i1 } %empty_392, 0
  %tmp_75_393 = zext i5 %i_76 to i64
  %plaintext_addr_76 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_75_393
  store i8 %tmp_data_406, i8* %plaintext_addr_76, align 1
  br label %460

; <label>:462                                     ; preds = %458
  %tmp_1_75 = zext i5 %i_1_75 to i64
  %out_addr_76 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_75
  %tmp_data_407 = load i8* %out_addr_76, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_407, i1 true, i1 false)
  br label %458

; <label>:463                                     ; preds = %464
  %empty_394 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_78)
  %tmp_79 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %472

; <label>:464                                     ; preds = %468, %465
  %i_1_76 = phi i5 [ 0, %465 ], [ %i_4_76, %468 ]
  %exitcond_76 = icmp eq i5 %i_1_76, -16
  %empty_395 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_76 = add i5 %i_1_76, 1
  br i1 %exitcond_76, label %463, label %468

; <label>:465                                     ; preds = %466
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %464

; <label>:466                                     ; preds = %467, %457
  %i_77 = phi i5 [ 0, %457 ], [ %i_3_76, %467 ]
  %exitcond2_76 = icmp eq i5 %i_77, -16
  %empty_396 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_76 = add i5 %i_77, 1
  br i1 %exitcond2_76, label %465, label %467

; <label>:467                                     ; preds = %466
  %empty_397 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_408 = extractvalue { i8, i1, i1 } %empty_397, 0
  %tmp_76_398 = zext i5 %i_77 to i64
  %plaintext_addr_77 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_76_398
  store i8 %tmp_data_408, i8* %plaintext_addr_77, align 1
  br label %466

; <label>:468                                     ; preds = %464
  %tmp_1_76 = zext i5 %i_1_76 to i64
  %out_addr_77 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_76
  %tmp_data_409 = load i8* %out_addr_77, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_409, i1 true, i1 false)
  br label %464

; <label>:469                                     ; preds = %470
  %empty_399 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_79)
  %tmp_80 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %478

; <label>:470                                     ; preds = %474, %471
  %i_1_77 = phi i5 [ 0, %471 ], [ %i_4_77, %474 ]
  %exitcond_77 = icmp eq i5 %i_1_77, -16
  %empty_400 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_77 = add i5 %i_1_77, 1
  br i1 %exitcond_77, label %469, label %474

; <label>:471                                     ; preds = %472
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %470

; <label>:472                                     ; preds = %473, %463
  %i_78 = phi i5 [ 0, %463 ], [ %i_3_77, %473 ]
  %exitcond2_77 = icmp eq i5 %i_78, -16
  %empty_401 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_77 = add i5 %i_78, 1
  br i1 %exitcond2_77, label %471, label %473

; <label>:473                                     ; preds = %472
  %empty_402 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_410 = extractvalue { i8, i1, i1 } %empty_402, 0
  %tmp_77_403 = zext i5 %i_78 to i64
  %plaintext_addr_78 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_77_403
  store i8 %tmp_data_410, i8* %plaintext_addr_78, align 1
  br label %472

; <label>:474                                     ; preds = %470
  %tmp_1_77 = zext i5 %i_1_77 to i64
  %out_addr_78 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_77
  %tmp_data_411 = load i8* %out_addr_78, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_411, i1 true, i1 false)
  br label %470

; <label>:475                                     ; preds = %476
  %empty_404 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_80)
  %tmp_81 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %484

; <label>:476                                     ; preds = %480, %477
  %i_1_78 = phi i5 [ 0, %477 ], [ %i_4_78, %480 ]
  %exitcond_78 = icmp eq i5 %i_1_78, -16
  %empty_405 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_78 = add i5 %i_1_78, 1
  br i1 %exitcond_78, label %475, label %480

; <label>:477                                     ; preds = %478
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %476

; <label>:478                                     ; preds = %479, %469
  %i_79 = phi i5 [ 0, %469 ], [ %i_3_78, %479 ]
  %exitcond2_78 = icmp eq i5 %i_79, -16
  %empty_406 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_78 = add i5 %i_79, 1
  br i1 %exitcond2_78, label %477, label %479

; <label>:479                                     ; preds = %478
  %empty_407 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_412 = extractvalue { i8, i1, i1 } %empty_407, 0
  %tmp_78_408 = zext i5 %i_79 to i64
  %plaintext_addr_79 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_78_408
  store i8 %tmp_data_412, i8* %plaintext_addr_79, align 1
  br label %478

; <label>:480                                     ; preds = %476
  %tmp_1_78 = zext i5 %i_1_78 to i64
  %out_addr_79 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_78
  %tmp_data_413 = load i8* %out_addr_79, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_413, i1 true, i1 false)
  br label %476

; <label>:481                                     ; preds = %482
  %empty_409 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_81)
  %tmp_82 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %490

; <label>:482                                     ; preds = %486, %483
  %i_1_79 = phi i5 [ 0, %483 ], [ %i_4_79, %486 ]
  %exitcond_79 = icmp eq i5 %i_1_79, -16
  %empty_410 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_79 = add i5 %i_1_79, 1
  br i1 %exitcond_79, label %481, label %486

; <label>:483                                     ; preds = %484
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %482

; <label>:484                                     ; preds = %485, %475
  %i_80 = phi i5 [ 0, %475 ], [ %i_3_79, %485 ]
  %exitcond2_79 = icmp eq i5 %i_80, -16
  %empty_411 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_79 = add i5 %i_80, 1
  br i1 %exitcond2_79, label %483, label %485

; <label>:485                                     ; preds = %484
  %empty_412 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_414 = extractvalue { i8, i1, i1 } %empty_412, 0
  %tmp_79_413 = zext i5 %i_80 to i64
  %plaintext_addr_80 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_79_413
  store i8 %tmp_data_414, i8* %plaintext_addr_80, align 1
  br label %484

; <label>:486                                     ; preds = %482
  %tmp_1_79 = zext i5 %i_1_79 to i64
  %out_addr_80 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_79
  %tmp_data_415 = load i8* %out_addr_80, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_415, i1 true, i1 false)
  br label %482

; <label>:487                                     ; preds = %488
  %empty_414 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_82)
  %tmp_83 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %496

; <label>:488                                     ; preds = %492, %489
  %i_1_80 = phi i5 [ 0, %489 ], [ %i_4_80, %492 ]
  %exitcond_80 = icmp eq i5 %i_1_80, -16
  %empty_415 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_80 = add i5 %i_1_80, 1
  br i1 %exitcond_80, label %487, label %492

; <label>:489                                     ; preds = %490
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %488

; <label>:490                                     ; preds = %491, %481
  %i_81 = phi i5 [ 0, %481 ], [ %i_3_80, %491 ]
  %exitcond2_80 = icmp eq i5 %i_81, -16
  %empty_416 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_80 = add i5 %i_81, 1
  br i1 %exitcond2_80, label %489, label %491

; <label>:491                                     ; preds = %490
  %empty_417 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_416 = extractvalue { i8, i1, i1 } %empty_417, 0
  %tmp_80_418 = zext i5 %i_81 to i64
  %plaintext_addr_81 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_80_418
  store i8 %tmp_data_416, i8* %plaintext_addr_81, align 1
  br label %490

; <label>:492                                     ; preds = %488
  %tmp_1_80 = zext i5 %i_1_80 to i64
  %out_addr_81 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_80
  %tmp_data_417 = load i8* %out_addr_81, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_417, i1 true, i1 false)
  br label %488

; <label>:493                                     ; preds = %494
  %empty_419 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_83)
  %tmp_84 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %502

; <label>:494                                     ; preds = %498, %495
  %i_1_81 = phi i5 [ 0, %495 ], [ %i_4_81, %498 ]
  %exitcond_81 = icmp eq i5 %i_1_81, -16
  %empty_420 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_81 = add i5 %i_1_81, 1
  br i1 %exitcond_81, label %493, label %498

; <label>:495                                     ; preds = %496
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %494

; <label>:496                                     ; preds = %497, %487
  %i_82 = phi i5 [ 0, %487 ], [ %i_3_81, %497 ]
  %exitcond2_81 = icmp eq i5 %i_82, -16
  %empty_421 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_81 = add i5 %i_82, 1
  br i1 %exitcond2_81, label %495, label %497

; <label>:497                                     ; preds = %496
  %empty_422 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_418 = extractvalue { i8, i1, i1 } %empty_422, 0
  %tmp_81_423 = zext i5 %i_82 to i64
  %plaintext_addr_82 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_81_423
  store i8 %tmp_data_418, i8* %plaintext_addr_82, align 1
  br label %496

; <label>:498                                     ; preds = %494
  %tmp_1_81 = zext i5 %i_1_81 to i64
  %out_addr_82 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_81
  %tmp_data_419 = load i8* %out_addr_82, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_419, i1 true, i1 false)
  br label %494

; <label>:499                                     ; preds = %500
  %empty_424 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_84)
  %tmp_85 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %508

; <label>:500                                     ; preds = %504, %501
  %i_1_82 = phi i5 [ 0, %501 ], [ %i_4_82, %504 ]
  %exitcond_82 = icmp eq i5 %i_1_82, -16
  %empty_425 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_82 = add i5 %i_1_82, 1
  br i1 %exitcond_82, label %499, label %504

; <label>:501                                     ; preds = %502
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %500

; <label>:502                                     ; preds = %503, %493
  %i_83 = phi i5 [ 0, %493 ], [ %i_3_82, %503 ]
  %exitcond2_82 = icmp eq i5 %i_83, -16
  %empty_426 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_82 = add i5 %i_83, 1
  br i1 %exitcond2_82, label %501, label %503

; <label>:503                                     ; preds = %502
  %empty_427 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_420 = extractvalue { i8, i1, i1 } %empty_427, 0
  %tmp_82_428 = zext i5 %i_83 to i64
  %plaintext_addr_83 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_82_428
  store i8 %tmp_data_420, i8* %plaintext_addr_83, align 1
  br label %502

; <label>:504                                     ; preds = %500
  %tmp_1_82 = zext i5 %i_1_82 to i64
  %out_addr_83 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_82
  %tmp_data_421 = load i8* %out_addr_83, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_421, i1 true, i1 false)
  br label %500

; <label>:505                                     ; preds = %506
  %empty_429 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_85)
  %tmp_86 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %514

; <label>:506                                     ; preds = %510, %507
  %i_1_83 = phi i5 [ 0, %507 ], [ %i_4_83, %510 ]
  %exitcond_83 = icmp eq i5 %i_1_83, -16
  %empty_430 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_83 = add i5 %i_1_83, 1
  br i1 %exitcond_83, label %505, label %510

; <label>:507                                     ; preds = %508
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %506

; <label>:508                                     ; preds = %509, %499
  %i_84 = phi i5 [ 0, %499 ], [ %i_3_83, %509 ]
  %exitcond2_83 = icmp eq i5 %i_84, -16
  %empty_431 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_83 = add i5 %i_84, 1
  br i1 %exitcond2_83, label %507, label %509

; <label>:509                                     ; preds = %508
  %empty_432 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_422 = extractvalue { i8, i1, i1 } %empty_432, 0
  %tmp_83_433 = zext i5 %i_84 to i64
  %plaintext_addr_84 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_83_433
  store i8 %tmp_data_422, i8* %plaintext_addr_84, align 1
  br label %508

; <label>:510                                     ; preds = %506
  %tmp_1_83 = zext i5 %i_1_83 to i64
  %out_addr_84 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_83
  %tmp_data_423 = load i8* %out_addr_84, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_423, i1 true, i1 false)
  br label %506

; <label>:511                                     ; preds = %512
  %empty_434 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_86)
  %tmp_87 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %520

; <label>:512                                     ; preds = %516, %513
  %i_1_84 = phi i5 [ 0, %513 ], [ %i_4_84, %516 ]
  %exitcond_84 = icmp eq i5 %i_1_84, -16
  %empty_435 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_84 = add i5 %i_1_84, 1
  br i1 %exitcond_84, label %511, label %516

; <label>:513                                     ; preds = %514
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %512

; <label>:514                                     ; preds = %515, %505
  %i_85 = phi i5 [ 0, %505 ], [ %i_3_84, %515 ]
  %exitcond2_84 = icmp eq i5 %i_85, -16
  %empty_436 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_84 = add i5 %i_85, 1
  br i1 %exitcond2_84, label %513, label %515

; <label>:515                                     ; preds = %514
  %empty_437 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_424 = extractvalue { i8, i1, i1 } %empty_437, 0
  %tmp_84_438 = zext i5 %i_85 to i64
  %plaintext_addr_85 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_84_438
  store i8 %tmp_data_424, i8* %plaintext_addr_85, align 1
  br label %514

; <label>:516                                     ; preds = %512
  %tmp_1_84 = zext i5 %i_1_84 to i64
  %out_addr_85 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_84
  %tmp_data_425 = load i8* %out_addr_85, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_425, i1 true, i1 false)
  br label %512

; <label>:517                                     ; preds = %518
  %empty_439 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_87)
  %tmp_88 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %526

; <label>:518                                     ; preds = %522, %519
  %i_1_85 = phi i5 [ 0, %519 ], [ %i_4_85, %522 ]
  %exitcond_85 = icmp eq i5 %i_1_85, -16
  %empty_440 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_85 = add i5 %i_1_85, 1
  br i1 %exitcond_85, label %517, label %522

; <label>:519                                     ; preds = %520
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %518

; <label>:520                                     ; preds = %521, %511
  %i_86 = phi i5 [ 0, %511 ], [ %i_3_85, %521 ]
  %exitcond2_85 = icmp eq i5 %i_86, -16
  %empty_441 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_85 = add i5 %i_86, 1
  br i1 %exitcond2_85, label %519, label %521

; <label>:521                                     ; preds = %520
  %empty_442 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_426 = extractvalue { i8, i1, i1 } %empty_442, 0
  %tmp_85_443 = zext i5 %i_86 to i64
  %plaintext_addr_86 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_85_443
  store i8 %tmp_data_426, i8* %plaintext_addr_86, align 1
  br label %520

; <label>:522                                     ; preds = %518
  %tmp_1_85 = zext i5 %i_1_85 to i64
  %out_addr_86 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_85
  %tmp_data_427 = load i8* %out_addr_86, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_427, i1 true, i1 false)
  br label %518

; <label>:523                                     ; preds = %524
  %empty_444 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_88)
  %tmp_89 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %532

; <label>:524                                     ; preds = %528, %525
  %i_1_86 = phi i5 [ 0, %525 ], [ %i_4_86, %528 ]
  %exitcond_86 = icmp eq i5 %i_1_86, -16
  %empty_445 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_86 = add i5 %i_1_86, 1
  br i1 %exitcond_86, label %523, label %528

; <label>:525                                     ; preds = %526
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %524

; <label>:526                                     ; preds = %527, %517
  %i_87 = phi i5 [ 0, %517 ], [ %i_3_86, %527 ]
  %exitcond2_86 = icmp eq i5 %i_87, -16
  %empty_446 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_86 = add i5 %i_87, 1
  br i1 %exitcond2_86, label %525, label %527

; <label>:527                                     ; preds = %526
  %empty_447 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_428 = extractvalue { i8, i1, i1 } %empty_447, 0
  %tmp_86_448 = zext i5 %i_87 to i64
  %plaintext_addr_87 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_86_448
  store i8 %tmp_data_428, i8* %plaintext_addr_87, align 1
  br label %526

; <label>:528                                     ; preds = %524
  %tmp_1_86 = zext i5 %i_1_86 to i64
  %out_addr_87 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_86
  %tmp_data_429 = load i8* %out_addr_87, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_429, i1 true, i1 false)
  br label %524

; <label>:529                                     ; preds = %530
  %empty_449 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_89)
  %tmp_90 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %538

; <label>:530                                     ; preds = %534, %531
  %i_1_87 = phi i5 [ 0, %531 ], [ %i_4_87, %534 ]
  %exitcond_87 = icmp eq i5 %i_1_87, -16
  %empty_450 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_87 = add i5 %i_1_87, 1
  br i1 %exitcond_87, label %529, label %534

; <label>:531                                     ; preds = %532
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %530

; <label>:532                                     ; preds = %533, %523
  %i_88 = phi i5 [ 0, %523 ], [ %i_3_87, %533 ]
  %exitcond2_87 = icmp eq i5 %i_88, -16
  %empty_451 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_87 = add i5 %i_88, 1
  br i1 %exitcond2_87, label %531, label %533

; <label>:533                                     ; preds = %532
  %empty_452 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_430 = extractvalue { i8, i1, i1 } %empty_452, 0
  %tmp_87_453 = zext i5 %i_88 to i64
  %plaintext_addr_88 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_87_453
  store i8 %tmp_data_430, i8* %plaintext_addr_88, align 1
  br label %532

; <label>:534                                     ; preds = %530
  %tmp_1_87 = zext i5 %i_1_87 to i64
  %out_addr_88 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_87
  %tmp_data_431 = load i8* %out_addr_88, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_431, i1 true, i1 false)
  br label %530

; <label>:535                                     ; preds = %536
  %empty_454 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_90)
  %tmp_91 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %544

; <label>:536                                     ; preds = %540, %537
  %i_1_88 = phi i5 [ 0, %537 ], [ %i_4_88, %540 ]
  %exitcond_88 = icmp eq i5 %i_1_88, -16
  %empty_455 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_88 = add i5 %i_1_88, 1
  br i1 %exitcond_88, label %535, label %540

; <label>:537                                     ; preds = %538
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %536

; <label>:538                                     ; preds = %539, %529
  %i_89 = phi i5 [ 0, %529 ], [ %i_3_88, %539 ]
  %exitcond2_88 = icmp eq i5 %i_89, -16
  %empty_456 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_88 = add i5 %i_89, 1
  br i1 %exitcond2_88, label %537, label %539

; <label>:539                                     ; preds = %538
  %empty_457 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_432 = extractvalue { i8, i1, i1 } %empty_457, 0
  %tmp_88_458 = zext i5 %i_89 to i64
  %plaintext_addr_89 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_88_458
  store i8 %tmp_data_432, i8* %plaintext_addr_89, align 1
  br label %538

; <label>:540                                     ; preds = %536
  %tmp_1_88 = zext i5 %i_1_88 to i64
  %out_addr_89 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_88
  %tmp_data_433 = load i8* %out_addr_89, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_433, i1 true, i1 false)
  br label %536

; <label>:541                                     ; preds = %542
  %empty_459 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_91)
  %tmp_92 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %550

; <label>:542                                     ; preds = %546, %543
  %i_1_89 = phi i5 [ 0, %543 ], [ %i_4_89, %546 ]
  %exitcond_89 = icmp eq i5 %i_1_89, -16
  %empty_460 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_89 = add i5 %i_1_89, 1
  br i1 %exitcond_89, label %541, label %546

; <label>:543                                     ; preds = %544
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %542

; <label>:544                                     ; preds = %545, %535
  %i_90 = phi i5 [ 0, %535 ], [ %i_3_89, %545 ]
  %exitcond2_89 = icmp eq i5 %i_90, -16
  %empty_461 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_89 = add i5 %i_90, 1
  br i1 %exitcond2_89, label %543, label %545

; <label>:545                                     ; preds = %544
  %empty_462 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_434 = extractvalue { i8, i1, i1 } %empty_462, 0
  %tmp_89_463 = zext i5 %i_90 to i64
  %plaintext_addr_90 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_89_463
  store i8 %tmp_data_434, i8* %plaintext_addr_90, align 1
  br label %544

; <label>:546                                     ; preds = %542
  %tmp_1_89 = zext i5 %i_1_89 to i64
  %out_addr_90 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_89
  %tmp_data_435 = load i8* %out_addr_90, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_435, i1 true, i1 false)
  br label %542

; <label>:547                                     ; preds = %548
  %empty_464 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_92)
  %tmp_93 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %556

; <label>:548                                     ; preds = %552, %549
  %i_1_90 = phi i5 [ 0, %549 ], [ %i_4_90, %552 ]
  %exitcond_90 = icmp eq i5 %i_1_90, -16
  %empty_465 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_90 = add i5 %i_1_90, 1
  br i1 %exitcond_90, label %547, label %552

; <label>:549                                     ; preds = %550
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %548

; <label>:550                                     ; preds = %551, %541
  %i_91 = phi i5 [ 0, %541 ], [ %i_3_90, %551 ]
  %exitcond2_90 = icmp eq i5 %i_91, -16
  %empty_466 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_90 = add i5 %i_91, 1
  br i1 %exitcond2_90, label %549, label %551

; <label>:551                                     ; preds = %550
  %empty_467 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_436 = extractvalue { i8, i1, i1 } %empty_467, 0
  %tmp_90_468 = zext i5 %i_91 to i64
  %plaintext_addr_91 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_90_468
  store i8 %tmp_data_436, i8* %plaintext_addr_91, align 1
  br label %550

; <label>:552                                     ; preds = %548
  %tmp_1_90 = zext i5 %i_1_90 to i64
  %out_addr_91 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_90
  %tmp_data_437 = load i8* %out_addr_91, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_437, i1 true, i1 false)
  br label %548

; <label>:553                                     ; preds = %554
  %empty_469 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_93)
  %tmp_94 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %562

; <label>:554                                     ; preds = %558, %555
  %i_1_91 = phi i5 [ 0, %555 ], [ %i_4_91, %558 ]
  %exitcond_91 = icmp eq i5 %i_1_91, -16
  %empty_470 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_91 = add i5 %i_1_91, 1
  br i1 %exitcond_91, label %553, label %558

; <label>:555                                     ; preds = %556
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %554

; <label>:556                                     ; preds = %557, %547
  %i_92 = phi i5 [ 0, %547 ], [ %i_3_91, %557 ]
  %exitcond2_91 = icmp eq i5 %i_92, -16
  %empty_471 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_91 = add i5 %i_92, 1
  br i1 %exitcond2_91, label %555, label %557

; <label>:557                                     ; preds = %556
  %empty_472 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_438 = extractvalue { i8, i1, i1 } %empty_472, 0
  %tmp_91_473 = zext i5 %i_92 to i64
  %plaintext_addr_92 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_91_473
  store i8 %tmp_data_438, i8* %plaintext_addr_92, align 1
  br label %556

; <label>:558                                     ; preds = %554
  %tmp_1_91 = zext i5 %i_1_91 to i64
  %out_addr_92 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_91
  %tmp_data_439 = load i8* %out_addr_92, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_439, i1 true, i1 false)
  br label %554

; <label>:559                                     ; preds = %560
  %empty_474 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_94)
  %tmp_95 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %568

; <label>:560                                     ; preds = %564, %561
  %i_1_92 = phi i5 [ 0, %561 ], [ %i_4_92, %564 ]
  %exitcond_92 = icmp eq i5 %i_1_92, -16
  %empty_475 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_92 = add i5 %i_1_92, 1
  br i1 %exitcond_92, label %559, label %564

; <label>:561                                     ; preds = %562
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %560

; <label>:562                                     ; preds = %563, %553
  %i_93 = phi i5 [ 0, %553 ], [ %i_3_92, %563 ]
  %exitcond2_92 = icmp eq i5 %i_93, -16
  %empty_476 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_92 = add i5 %i_93, 1
  br i1 %exitcond2_92, label %561, label %563

; <label>:563                                     ; preds = %562
  %empty_477 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_440 = extractvalue { i8, i1, i1 } %empty_477, 0
  %tmp_92_478 = zext i5 %i_93 to i64
  %plaintext_addr_93 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_92_478
  store i8 %tmp_data_440, i8* %plaintext_addr_93, align 1
  br label %562

; <label>:564                                     ; preds = %560
  %tmp_1_92 = zext i5 %i_1_92 to i64
  %out_addr_93 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_92
  %tmp_data_441 = load i8* %out_addr_93, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_441, i1 true, i1 false)
  br label %560

; <label>:565                                     ; preds = %566
  %empty_479 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_95)
  %tmp_96 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %574

; <label>:566                                     ; preds = %570, %567
  %i_1_93 = phi i5 [ 0, %567 ], [ %i_4_93, %570 ]
  %exitcond_93 = icmp eq i5 %i_1_93, -16
  %empty_480 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_93 = add i5 %i_1_93, 1
  br i1 %exitcond_93, label %565, label %570

; <label>:567                                     ; preds = %568
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %566

; <label>:568                                     ; preds = %569, %559
  %i_94 = phi i5 [ 0, %559 ], [ %i_3_93, %569 ]
  %exitcond2_93 = icmp eq i5 %i_94, -16
  %empty_481 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_93 = add i5 %i_94, 1
  br i1 %exitcond2_93, label %567, label %569

; <label>:569                                     ; preds = %568
  %empty_482 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_442 = extractvalue { i8, i1, i1 } %empty_482, 0
  %tmp_93_483 = zext i5 %i_94 to i64
  %plaintext_addr_94 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_93_483
  store i8 %tmp_data_442, i8* %plaintext_addr_94, align 1
  br label %568

; <label>:570                                     ; preds = %566
  %tmp_1_93 = zext i5 %i_1_93 to i64
  %out_addr_94 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_93
  %tmp_data_443 = load i8* %out_addr_94, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_443, i1 true, i1 false)
  br label %566

; <label>:571                                     ; preds = %572
  %empty_484 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_96)
  %tmp_97 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %580

; <label>:572                                     ; preds = %576, %573
  %i_1_94 = phi i5 [ 0, %573 ], [ %i_4_94, %576 ]
  %exitcond_94 = icmp eq i5 %i_1_94, -16
  %empty_485 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_94 = add i5 %i_1_94, 1
  br i1 %exitcond_94, label %571, label %576

; <label>:573                                     ; preds = %574
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %572

; <label>:574                                     ; preds = %575, %565
  %i_95 = phi i5 [ 0, %565 ], [ %i_3_94, %575 ]
  %exitcond2_94 = icmp eq i5 %i_95, -16
  %empty_486 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_94 = add i5 %i_95, 1
  br i1 %exitcond2_94, label %573, label %575

; <label>:575                                     ; preds = %574
  %empty_487 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_444 = extractvalue { i8, i1, i1 } %empty_487, 0
  %tmp_94_488 = zext i5 %i_95 to i64
  %plaintext_addr_95 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_94_488
  store i8 %tmp_data_444, i8* %plaintext_addr_95, align 1
  br label %574

; <label>:576                                     ; preds = %572
  %tmp_1_94 = zext i5 %i_1_94 to i64
  %out_addr_95 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_94
  %tmp_data_445 = load i8* %out_addr_95, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_445, i1 true, i1 false)
  br label %572

; <label>:577                                     ; preds = %578
  %empty_489 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_97)
  %tmp_98 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %586

; <label>:578                                     ; preds = %582, %579
  %i_1_95 = phi i5 [ 0, %579 ], [ %i_4_95, %582 ]
  %exitcond_95 = icmp eq i5 %i_1_95, -16
  %empty_490 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_95 = add i5 %i_1_95, 1
  br i1 %exitcond_95, label %577, label %582

; <label>:579                                     ; preds = %580
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %578

; <label>:580                                     ; preds = %581, %571
  %i_96 = phi i5 [ 0, %571 ], [ %i_3_95, %581 ]
  %exitcond2_95 = icmp eq i5 %i_96, -16
  %empty_491 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_95 = add i5 %i_96, 1
  br i1 %exitcond2_95, label %579, label %581

; <label>:581                                     ; preds = %580
  %empty_492 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_446 = extractvalue { i8, i1, i1 } %empty_492, 0
  %tmp_95_493 = zext i5 %i_96 to i64
  %plaintext_addr_96 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_95_493
  store i8 %tmp_data_446, i8* %plaintext_addr_96, align 1
  br label %580

; <label>:582                                     ; preds = %578
  %tmp_1_95 = zext i5 %i_1_95 to i64
  %out_addr_96 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_95
  %tmp_data_447 = load i8* %out_addr_96, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_447, i1 true, i1 false)
  br label %578

; <label>:583                                     ; preds = %584
  %empty_494 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_98)
  %tmp_99 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %592

; <label>:584                                     ; preds = %588, %585
  %i_1_96 = phi i5 [ 0, %585 ], [ %i_4_96, %588 ]
  %exitcond_96 = icmp eq i5 %i_1_96, -16
  %empty_495 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_96 = add i5 %i_1_96, 1
  br i1 %exitcond_96, label %583, label %588

; <label>:585                                     ; preds = %586
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %584

; <label>:586                                     ; preds = %587, %577
  %i_97 = phi i5 [ 0, %577 ], [ %i_3_96, %587 ]
  %exitcond2_96 = icmp eq i5 %i_97, -16
  %empty_496 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_96 = add i5 %i_97, 1
  br i1 %exitcond2_96, label %585, label %587

; <label>:587                                     ; preds = %586
  %empty_497 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_448 = extractvalue { i8, i1, i1 } %empty_497, 0
  %tmp_96_498 = zext i5 %i_97 to i64
  %plaintext_addr_97 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_96_498
  store i8 %tmp_data_448, i8* %plaintext_addr_97, align 1
  br label %586

; <label>:588                                     ; preds = %584
  %tmp_1_96 = zext i5 %i_1_96 to i64
  %out_addr_97 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_96
  %tmp_data_449 = load i8* %out_addr_97, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_449, i1 true, i1 false)
  br label %584

; <label>:589                                     ; preds = %590
  %empty_499 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_99)
  %tmp_100 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %598

; <label>:590                                     ; preds = %594, %591
  %i_1_97 = phi i5 [ 0, %591 ], [ %i_4_97, %594 ]
  %exitcond_97 = icmp eq i5 %i_1_97, -16
  %empty_500 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_97 = add i5 %i_1_97, 1
  br i1 %exitcond_97, label %589, label %594

; <label>:591                                     ; preds = %592
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %590

; <label>:592                                     ; preds = %593, %583
  %i_98 = phi i5 [ 0, %583 ], [ %i_3_97, %593 ]
  %exitcond2_97 = icmp eq i5 %i_98, -16
  %empty_501 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_97 = add i5 %i_98, 1
  br i1 %exitcond2_97, label %591, label %593

; <label>:593                                     ; preds = %592
  %empty_502 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_450 = extractvalue { i8, i1, i1 } %empty_502, 0
  %tmp_97_503 = zext i5 %i_98 to i64
  %plaintext_addr_98 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_97_503
  store i8 %tmp_data_450, i8* %plaintext_addr_98, align 1
  br label %592

; <label>:594                                     ; preds = %590
  %tmp_1_97 = zext i5 %i_1_97 to i64
  %out_addr_98 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_97
  %tmp_data_451 = load i8* %out_addr_98, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_451, i1 true, i1 false)
  br label %590

; <label>:595                                     ; preds = %596
  %empty_504 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_100)
  %tmp_101 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %604

; <label>:596                                     ; preds = %600, %597
  %i_1_98 = phi i5 [ 0, %597 ], [ %i_4_98, %600 ]
  %exitcond_98 = icmp eq i5 %i_1_98, -16
  %empty_505 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_98 = add i5 %i_1_98, 1
  br i1 %exitcond_98, label %595, label %600

; <label>:597                                     ; preds = %598
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %596

; <label>:598                                     ; preds = %599, %589
  %i_99 = phi i5 [ 0, %589 ], [ %i_3_98, %599 ]
  %exitcond2_98 = icmp eq i5 %i_99, -16
  %empty_506 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_98 = add i5 %i_99, 1
  br i1 %exitcond2_98, label %597, label %599

; <label>:599                                     ; preds = %598
  %empty_507 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_452 = extractvalue { i8, i1, i1 } %empty_507, 0
  %tmp_98_508 = zext i5 %i_99 to i64
  %plaintext_addr_99 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_98_508
  store i8 %tmp_data_452, i8* %plaintext_addr_99, align 1
  br label %598

; <label>:600                                     ; preds = %596
  %tmp_1_98 = zext i5 %i_1_98 to i64
  %out_addr_99 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_98
  %tmp_data_453 = load i8* %out_addr_99, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_453, i1 true, i1 false)
  br label %596

; <label>:601                                     ; preds = %602
  %empty_509 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_101)
  %tmp_102 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %610

; <label>:602                                     ; preds = %606, %603
  %i_1_99 = phi i5 [ 0, %603 ], [ %i_4_99, %606 ]
  %exitcond_99 = icmp eq i5 %i_1_99, -16
  %empty_510 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_99 = add i5 %i_1_99, 1
  br i1 %exitcond_99, label %601, label %606

; <label>:603                                     ; preds = %604
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %602

; <label>:604                                     ; preds = %605, %595
  %i_100 = phi i5 [ 0, %595 ], [ %i_3_99, %605 ]
  %exitcond2_99 = icmp eq i5 %i_100, -16
  %empty_511 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_99 = add i5 %i_100, 1
  br i1 %exitcond2_99, label %603, label %605

; <label>:605                                     ; preds = %604
  %empty_512 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_454 = extractvalue { i8, i1, i1 } %empty_512, 0
  %tmp_99_513 = zext i5 %i_100 to i64
  %plaintext_addr_100 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_99_513
  store i8 %tmp_data_454, i8* %plaintext_addr_100, align 1
  br label %604

; <label>:606                                     ; preds = %602
  %tmp_1_99 = zext i5 %i_1_99 to i64
  %out_addr_100 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_99
  %tmp_data_455 = load i8* %out_addr_100, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_455, i1 true, i1 false)
  br label %602

; <label>:607                                     ; preds = %608
  %empty_514 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_102)
  %tmp_103 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %616

; <label>:608                                     ; preds = %612, %609
  %i_1_100 = phi i5 [ 0, %609 ], [ %i_4_100, %612 ]
  %exitcond_100 = icmp eq i5 %i_1_100, -16
  %empty_515 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_100 = add i5 %i_1_100, 1
  br i1 %exitcond_100, label %607, label %612

; <label>:609                                     ; preds = %610
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %608

; <label>:610                                     ; preds = %611, %601
  %i_101 = phi i5 [ 0, %601 ], [ %i_3_100, %611 ]
  %exitcond2_100 = icmp eq i5 %i_101, -16
  %empty_516 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_100 = add i5 %i_101, 1
  br i1 %exitcond2_100, label %609, label %611

; <label>:611                                     ; preds = %610
  %empty_517 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_456 = extractvalue { i8, i1, i1 } %empty_517, 0
  %tmp_100_518 = zext i5 %i_101 to i64
  %plaintext_addr_101 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_100_518
  store i8 %tmp_data_456, i8* %plaintext_addr_101, align 1
  br label %610

; <label>:612                                     ; preds = %608
  %tmp_1_100 = zext i5 %i_1_100 to i64
  %out_addr_101 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_100
  %tmp_data_457 = load i8* %out_addr_101, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_457, i1 true, i1 false)
  br label %608

; <label>:613                                     ; preds = %614
  %empty_519 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_103)
  %tmp_104 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %622

; <label>:614                                     ; preds = %618, %615
  %i_1_101 = phi i5 [ 0, %615 ], [ %i_4_101, %618 ]
  %exitcond_101 = icmp eq i5 %i_1_101, -16
  %empty_520 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_101 = add i5 %i_1_101, 1
  br i1 %exitcond_101, label %613, label %618

; <label>:615                                     ; preds = %616
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %614

; <label>:616                                     ; preds = %617, %607
  %i_102 = phi i5 [ 0, %607 ], [ %i_3_101, %617 ]
  %exitcond2_101 = icmp eq i5 %i_102, -16
  %empty_521 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_101 = add i5 %i_102, 1
  br i1 %exitcond2_101, label %615, label %617

; <label>:617                                     ; preds = %616
  %empty_522 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_458 = extractvalue { i8, i1, i1 } %empty_522, 0
  %tmp_101_523 = zext i5 %i_102 to i64
  %plaintext_addr_102 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_101_523
  store i8 %tmp_data_458, i8* %plaintext_addr_102, align 1
  br label %616

; <label>:618                                     ; preds = %614
  %tmp_1_101 = zext i5 %i_1_101 to i64
  %out_addr_102 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_101
  %tmp_data_459 = load i8* %out_addr_102, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_459, i1 true, i1 false)
  br label %614

; <label>:619                                     ; preds = %620
  %empty_524 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_104)
  %tmp_105 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %628

; <label>:620                                     ; preds = %624, %621
  %i_1_102 = phi i5 [ 0, %621 ], [ %i_4_102, %624 ]
  %exitcond_102 = icmp eq i5 %i_1_102, -16
  %empty_525 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_102 = add i5 %i_1_102, 1
  br i1 %exitcond_102, label %619, label %624

; <label>:621                                     ; preds = %622
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %620

; <label>:622                                     ; preds = %623, %613
  %i_103 = phi i5 [ 0, %613 ], [ %i_3_102, %623 ]
  %exitcond2_102 = icmp eq i5 %i_103, -16
  %empty_526 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_102 = add i5 %i_103, 1
  br i1 %exitcond2_102, label %621, label %623

; <label>:623                                     ; preds = %622
  %empty_527 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_460 = extractvalue { i8, i1, i1 } %empty_527, 0
  %tmp_102_528 = zext i5 %i_103 to i64
  %plaintext_addr_103 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_102_528
  store i8 %tmp_data_460, i8* %plaintext_addr_103, align 1
  br label %622

; <label>:624                                     ; preds = %620
  %tmp_1_102 = zext i5 %i_1_102 to i64
  %out_addr_103 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_102
  %tmp_data_461 = load i8* %out_addr_103, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_461, i1 true, i1 false)
  br label %620

; <label>:625                                     ; preds = %626
  %empty_529 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_105)
  %tmp_106 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %634

; <label>:626                                     ; preds = %630, %627
  %i_1_103 = phi i5 [ 0, %627 ], [ %i_4_103, %630 ]
  %exitcond_103 = icmp eq i5 %i_1_103, -16
  %empty_530 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_103 = add i5 %i_1_103, 1
  br i1 %exitcond_103, label %625, label %630

; <label>:627                                     ; preds = %628
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %626

; <label>:628                                     ; preds = %629, %619
  %i_104 = phi i5 [ 0, %619 ], [ %i_3_103, %629 ]
  %exitcond2_103 = icmp eq i5 %i_104, -16
  %empty_531 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_103 = add i5 %i_104, 1
  br i1 %exitcond2_103, label %627, label %629

; <label>:629                                     ; preds = %628
  %empty_532 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_462 = extractvalue { i8, i1, i1 } %empty_532, 0
  %tmp_103_533 = zext i5 %i_104 to i64
  %plaintext_addr_104 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_103_533
  store i8 %tmp_data_462, i8* %plaintext_addr_104, align 1
  br label %628

; <label>:630                                     ; preds = %626
  %tmp_1_103 = zext i5 %i_1_103 to i64
  %out_addr_104 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_103
  %tmp_data_463 = load i8* %out_addr_104, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_463, i1 true, i1 false)
  br label %626

; <label>:631                                     ; preds = %632
  %empty_534 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_106)
  %tmp_107 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %640

; <label>:632                                     ; preds = %636, %633
  %i_1_104 = phi i5 [ 0, %633 ], [ %i_4_104, %636 ]
  %exitcond_104 = icmp eq i5 %i_1_104, -16
  %empty_535 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_104 = add i5 %i_1_104, 1
  br i1 %exitcond_104, label %631, label %636

; <label>:633                                     ; preds = %634
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %632

; <label>:634                                     ; preds = %635, %625
  %i_105 = phi i5 [ 0, %625 ], [ %i_3_104, %635 ]
  %exitcond2_104 = icmp eq i5 %i_105, -16
  %empty_536 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_104 = add i5 %i_105, 1
  br i1 %exitcond2_104, label %633, label %635

; <label>:635                                     ; preds = %634
  %empty_537 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_464 = extractvalue { i8, i1, i1 } %empty_537, 0
  %tmp_104_538 = zext i5 %i_105 to i64
  %plaintext_addr_105 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_104_538
  store i8 %tmp_data_464, i8* %plaintext_addr_105, align 1
  br label %634

; <label>:636                                     ; preds = %632
  %tmp_1_104 = zext i5 %i_1_104 to i64
  %out_addr_105 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_104
  %tmp_data_465 = load i8* %out_addr_105, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_465, i1 true, i1 false)
  br label %632

; <label>:637                                     ; preds = %638
  %empty_539 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_107)
  %tmp_108 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %646

; <label>:638                                     ; preds = %642, %639
  %i_1_105 = phi i5 [ 0, %639 ], [ %i_4_105, %642 ]
  %exitcond_105 = icmp eq i5 %i_1_105, -16
  %empty_540 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_105 = add i5 %i_1_105, 1
  br i1 %exitcond_105, label %637, label %642

; <label>:639                                     ; preds = %640
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %638

; <label>:640                                     ; preds = %641, %631
  %i_106 = phi i5 [ 0, %631 ], [ %i_3_105, %641 ]
  %exitcond2_105 = icmp eq i5 %i_106, -16
  %empty_541 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_105 = add i5 %i_106, 1
  br i1 %exitcond2_105, label %639, label %641

; <label>:641                                     ; preds = %640
  %empty_542 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_466 = extractvalue { i8, i1, i1 } %empty_542, 0
  %tmp_105_543 = zext i5 %i_106 to i64
  %plaintext_addr_106 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_105_543
  store i8 %tmp_data_466, i8* %plaintext_addr_106, align 1
  br label %640

; <label>:642                                     ; preds = %638
  %tmp_1_105 = zext i5 %i_1_105 to i64
  %out_addr_106 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_105
  %tmp_data_467 = load i8* %out_addr_106, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_467, i1 true, i1 false)
  br label %638

; <label>:643                                     ; preds = %644
  %empty_544 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_108)
  %tmp_109 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %652

; <label>:644                                     ; preds = %648, %645
  %i_1_106 = phi i5 [ 0, %645 ], [ %i_4_106, %648 ]
  %exitcond_106 = icmp eq i5 %i_1_106, -16
  %empty_545 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_106 = add i5 %i_1_106, 1
  br i1 %exitcond_106, label %643, label %648

; <label>:645                                     ; preds = %646
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %644

; <label>:646                                     ; preds = %647, %637
  %i_107 = phi i5 [ 0, %637 ], [ %i_3_106, %647 ]
  %exitcond2_106 = icmp eq i5 %i_107, -16
  %empty_546 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_106 = add i5 %i_107, 1
  br i1 %exitcond2_106, label %645, label %647

; <label>:647                                     ; preds = %646
  %empty_547 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_468 = extractvalue { i8, i1, i1 } %empty_547, 0
  %tmp_106_548 = zext i5 %i_107 to i64
  %plaintext_addr_107 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_106_548
  store i8 %tmp_data_468, i8* %plaintext_addr_107, align 1
  br label %646

; <label>:648                                     ; preds = %644
  %tmp_1_106 = zext i5 %i_1_106 to i64
  %out_addr_107 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_106
  %tmp_data_469 = load i8* %out_addr_107, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_469, i1 true, i1 false)
  br label %644

; <label>:649                                     ; preds = %650
  %empty_549 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_109)
  %tmp_110 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %658

; <label>:650                                     ; preds = %654, %651
  %i_1_107 = phi i5 [ 0, %651 ], [ %i_4_107, %654 ]
  %exitcond_107 = icmp eq i5 %i_1_107, -16
  %empty_550 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_107 = add i5 %i_1_107, 1
  br i1 %exitcond_107, label %649, label %654

; <label>:651                                     ; preds = %652
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %650

; <label>:652                                     ; preds = %653, %643
  %i_108 = phi i5 [ 0, %643 ], [ %i_3_107, %653 ]
  %exitcond2_107 = icmp eq i5 %i_108, -16
  %empty_551 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_107 = add i5 %i_108, 1
  br i1 %exitcond2_107, label %651, label %653

; <label>:653                                     ; preds = %652
  %empty_552 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_470 = extractvalue { i8, i1, i1 } %empty_552, 0
  %tmp_107_553 = zext i5 %i_108 to i64
  %plaintext_addr_108 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_107_553
  store i8 %tmp_data_470, i8* %plaintext_addr_108, align 1
  br label %652

; <label>:654                                     ; preds = %650
  %tmp_1_107 = zext i5 %i_1_107 to i64
  %out_addr_108 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_107
  %tmp_data_471 = load i8* %out_addr_108, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_471, i1 true, i1 false)
  br label %650

; <label>:655                                     ; preds = %656
  %empty_554 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_110)
  %tmp_111 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %664

; <label>:656                                     ; preds = %660, %657
  %i_1_108 = phi i5 [ 0, %657 ], [ %i_4_108, %660 ]
  %exitcond_108 = icmp eq i5 %i_1_108, -16
  %empty_555 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_108 = add i5 %i_1_108, 1
  br i1 %exitcond_108, label %655, label %660

; <label>:657                                     ; preds = %658
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %656

; <label>:658                                     ; preds = %659, %649
  %i_109 = phi i5 [ 0, %649 ], [ %i_3_108, %659 ]
  %exitcond2_108 = icmp eq i5 %i_109, -16
  %empty_556 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_108 = add i5 %i_109, 1
  br i1 %exitcond2_108, label %657, label %659

; <label>:659                                     ; preds = %658
  %empty_557 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_472 = extractvalue { i8, i1, i1 } %empty_557, 0
  %tmp_108_558 = zext i5 %i_109 to i64
  %plaintext_addr_109 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_108_558
  store i8 %tmp_data_472, i8* %plaintext_addr_109, align 1
  br label %658

; <label>:660                                     ; preds = %656
  %tmp_1_108 = zext i5 %i_1_108 to i64
  %out_addr_109 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_108
  %tmp_data_473 = load i8* %out_addr_109, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_473, i1 true, i1 false)
  br label %656

; <label>:661                                     ; preds = %662
  %empty_559 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_111)
  %tmp_112 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %670

; <label>:662                                     ; preds = %666, %663
  %i_1_109 = phi i5 [ 0, %663 ], [ %i_4_109, %666 ]
  %exitcond_109 = icmp eq i5 %i_1_109, -16
  %empty_560 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_109 = add i5 %i_1_109, 1
  br i1 %exitcond_109, label %661, label %666

; <label>:663                                     ; preds = %664
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %662

; <label>:664                                     ; preds = %665, %655
  %i_110 = phi i5 [ 0, %655 ], [ %i_3_109, %665 ]
  %exitcond2_109 = icmp eq i5 %i_110, -16
  %empty_561 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_109 = add i5 %i_110, 1
  br i1 %exitcond2_109, label %663, label %665

; <label>:665                                     ; preds = %664
  %empty_562 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_474 = extractvalue { i8, i1, i1 } %empty_562, 0
  %tmp_109_563 = zext i5 %i_110 to i64
  %plaintext_addr_110 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_109_563
  store i8 %tmp_data_474, i8* %plaintext_addr_110, align 1
  br label %664

; <label>:666                                     ; preds = %662
  %tmp_1_109 = zext i5 %i_1_109 to i64
  %out_addr_110 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_109
  %tmp_data_475 = load i8* %out_addr_110, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_475, i1 true, i1 false)
  br label %662

; <label>:667                                     ; preds = %668
  %empty_564 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_112)
  %tmp_113 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %676

; <label>:668                                     ; preds = %672, %669
  %i_1_110 = phi i5 [ 0, %669 ], [ %i_4_110, %672 ]
  %exitcond_110 = icmp eq i5 %i_1_110, -16
  %empty_565 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_110 = add i5 %i_1_110, 1
  br i1 %exitcond_110, label %667, label %672

; <label>:669                                     ; preds = %670
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %668

; <label>:670                                     ; preds = %671, %661
  %i_111 = phi i5 [ 0, %661 ], [ %i_3_110, %671 ]
  %exitcond2_110 = icmp eq i5 %i_111, -16
  %empty_566 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_110 = add i5 %i_111, 1
  br i1 %exitcond2_110, label %669, label %671

; <label>:671                                     ; preds = %670
  %empty_567 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_476 = extractvalue { i8, i1, i1 } %empty_567, 0
  %tmp_110_568 = zext i5 %i_111 to i64
  %plaintext_addr_111 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_110_568
  store i8 %tmp_data_476, i8* %plaintext_addr_111, align 1
  br label %670

; <label>:672                                     ; preds = %668
  %tmp_1_110 = zext i5 %i_1_110 to i64
  %out_addr_111 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_110
  %tmp_data_477 = load i8* %out_addr_111, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_477, i1 true, i1 false)
  br label %668

; <label>:673                                     ; preds = %674
  %empty_569 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_113)
  %tmp_114 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %682

; <label>:674                                     ; preds = %678, %675
  %i_1_111 = phi i5 [ 0, %675 ], [ %i_4_111, %678 ]
  %exitcond_111 = icmp eq i5 %i_1_111, -16
  %empty_570 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_111 = add i5 %i_1_111, 1
  br i1 %exitcond_111, label %673, label %678

; <label>:675                                     ; preds = %676
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %674

; <label>:676                                     ; preds = %677, %667
  %i_112 = phi i5 [ 0, %667 ], [ %i_3_111, %677 ]
  %exitcond2_111 = icmp eq i5 %i_112, -16
  %empty_571 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_111 = add i5 %i_112, 1
  br i1 %exitcond2_111, label %675, label %677

; <label>:677                                     ; preds = %676
  %empty_572 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_478 = extractvalue { i8, i1, i1 } %empty_572, 0
  %tmp_111_573 = zext i5 %i_112 to i64
  %plaintext_addr_112 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_111_573
  store i8 %tmp_data_478, i8* %plaintext_addr_112, align 1
  br label %676

; <label>:678                                     ; preds = %674
  %tmp_1_111 = zext i5 %i_1_111 to i64
  %out_addr_112 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_111
  %tmp_data_479 = load i8* %out_addr_112, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_479, i1 true, i1 false)
  br label %674

; <label>:679                                     ; preds = %680
  %empty_574 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_114)
  %tmp_115 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %688

; <label>:680                                     ; preds = %684, %681
  %i_1_112 = phi i5 [ 0, %681 ], [ %i_4_112, %684 ]
  %exitcond_112 = icmp eq i5 %i_1_112, -16
  %empty_575 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_112 = add i5 %i_1_112, 1
  br i1 %exitcond_112, label %679, label %684

; <label>:681                                     ; preds = %682
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %680

; <label>:682                                     ; preds = %683, %673
  %i_113 = phi i5 [ 0, %673 ], [ %i_3_112, %683 ]
  %exitcond2_112 = icmp eq i5 %i_113, -16
  %empty_576 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_112 = add i5 %i_113, 1
  br i1 %exitcond2_112, label %681, label %683

; <label>:683                                     ; preds = %682
  %empty_577 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_480 = extractvalue { i8, i1, i1 } %empty_577, 0
  %tmp_112_578 = zext i5 %i_113 to i64
  %plaintext_addr_113 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_112_578
  store i8 %tmp_data_480, i8* %plaintext_addr_113, align 1
  br label %682

; <label>:684                                     ; preds = %680
  %tmp_1_112 = zext i5 %i_1_112 to i64
  %out_addr_113 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_112
  %tmp_data_481 = load i8* %out_addr_113, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_481, i1 true, i1 false)
  br label %680

; <label>:685                                     ; preds = %686
  %empty_579 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_115)
  %tmp_116 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %694

; <label>:686                                     ; preds = %690, %687
  %i_1_113 = phi i5 [ 0, %687 ], [ %i_4_113, %690 ]
  %exitcond_113 = icmp eq i5 %i_1_113, -16
  %empty_580 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_113 = add i5 %i_1_113, 1
  br i1 %exitcond_113, label %685, label %690

; <label>:687                                     ; preds = %688
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %686

; <label>:688                                     ; preds = %689, %679
  %i_114 = phi i5 [ 0, %679 ], [ %i_3_113, %689 ]
  %exitcond2_113 = icmp eq i5 %i_114, -16
  %empty_581 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_113 = add i5 %i_114, 1
  br i1 %exitcond2_113, label %687, label %689

; <label>:689                                     ; preds = %688
  %empty_582 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_482 = extractvalue { i8, i1, i1 } %empty_582, 0
  %tmp_113_583 = zext i5 %i_114 to i64
  %plaintext_addr_114 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_113_583
  store i8 %tmp_data_482, i8* %plaintext_addr_114, align 1
  br label %688

; <label>:690                                     ; preds = %686
  %tmp_1_113 = zext i5 %i_1_113 to i64
  %out_addr_114 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_113
  %tmp_data_483 = load i8* %out_addr_114, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_483, i1 true, i1 false)
  br label %686

; <label>:691                                     ; preds = %692
  %empty_584 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_116)
  %tmp_117 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %700

; <label>:692                                     ; preds = %696, %693
  %i_1_114 = phi i5 [ 0, %693 ], [ %i_4_114, %696 ]
  %exitcond_114 = icmp eq i5 %i_1_114, -16
  %empty_585 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_114 = add i5 %i_1_114, 1
  br i1 %exitcond_114, label %691, label %696

; <label>:693                                     ; preds = %694
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %692

; <label>:694                                     ; preds = %695, %685
  %i_115 = phi i5 [ 0, %685 ], [ %i_3_114, %695 ]
  %exitcond2_114 = icmp eq i5 %i_115, -16
  %empty_586 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_114 = add i5 %i_115, 1
  br i1 %exitcond2_114, label %693, label %695

; <label>:695                                     ; preds = %694
  %empty_587 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_484 = extractvalue { i8, i1, i1 } %empty_587, 0
  %tmp_114_588 = zext i5 %i_115 to i64
  %plaintext_addr_115 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_114_588
  store i8 %tmp_data_484, i8* %plaintext_addr_115, align 1
  br label %694

; <label>:696                                     ; preds = %692
  %tmp_1_114 = zext i5 %i_1_114 to i64
  %out_addr_115 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_114
  %tmp_data_485 = load i8* %out_addr_115, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_485, i1 true, i1 false)
  br label %692

; <label>:697                                     ; preds = %698
  %empty_589 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_117)
  %tmp_118 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %706

; <label>:698                                     ; preds = %702, %699
  %i_1_115 = phi i5 [ 0, %699 ], [ %i_4_115, %702 ]
  %exitcond_115 = icmp eq i5 %i_1_115, -16
  %empty_590 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_115 = add i5 %i_1_115, 1
  br i1 %exitcond_115, label %697, label %702

; <label>:699                                     ; preds = %700
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %698

; <label>:700                                     ; preds = %701, %691
  %i_116 = phi i5 [ 0, %691 ], [ %i_3_115, %701 ]
  %exitcond2_115 = icmp eq i5 %i_116, -16
  %empty_591 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_115 = add i5 %i_116, 1
  br i1 %exitcond2_115, label %699, label %701

; <label>:701                                     ; preds = %700
  %empty_592 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_486 = extractvalue { i8, i1, i1 } %empty_592, 0
  %tmp_115_593 = zext i5 %i_116 to i64
  %plaintext_addr_116 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_115_593
  store i8 %tmp_data_486, i8* %plaintext_addr_116, align 1
  br label %700

; <label>:702                                     ; preds = %698
  %tmp_1_115 = zext i5 %i_1_115 to i64
  %out_addr_116 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_115
  %tmp_data_487 = load i8* %out_addr_116, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_487, i1 true, i1 false)
  br label %698

; <label>:703                                     ; preds = %704
  %empty_594 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_118)
  %tmp_119 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %712

; <label>:704                                     ; preds = %708, %705
  %i_1_116 = phi i5 [ 0, %705 ], [ %i_4_116, %708 ]
  %exitcond_116 = icmp eq i5 %i_1_116, -16
  %empty_595 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_116 = add i5 %i_1_116, 1
  br i1 %exitcond_116, label %703, label %708

; <label>:705                                     ; preds = %706
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %704

; <label>:706                                     ; preds = %707, %697
  %i_117 = phi i5 [ 0, %697 ], [ %i_3_116, %707 ]
  %exitcond2_116 = icmp eq i5 %i_117, -16
  %empty_596 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_116 = add i5 %i_117, 1
  br i1 %exitcond2_116, label %705, label %707

; <label>:707                                     ; preds = %706
  %empty_597 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_488 = extractvalue { i8, i1, i1 } %empty_597, 0
  %tmp_116_598 = zext i5 %i_117 to i64
  %plaintext_addr_117 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_116_598
  store i8 %tmp_data_488, i8* %plaintext_addr_117, align 1
  br label %706

; <label>:708                                     ; preds = %704
  %tmp_1_116 = zext i5 %i_1_116 to i64
  %out_addr_117 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_116
  %tmp_data_489 = load i8* %out_addr_117, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_489, i1 true, i1 false)
  br label %704

; <label>:709                                     ; preds = %710
  %empty_599 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_119)
  %tmp_120 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %718

; <label>:710                                     ; preds = %714, %711
  %i_1_117 = phi i5 [ 0, %711 ], [ %i_4_117, %714 ]
  %exitcond_117 = icmp eq i5 %i_1_117, -16
  %empty_600 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_117 = add i5 %i_1_117, 1
  br i1 %exitcond_117, label %709, label %714

; <label>:711                                     ; preds = %712
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %710

; <label>:712                                     ; preds = %713, %703
  %i_118 = phi i5 [ 0, %703 ], [ %i_3_117, %713 ]
  %exitcond2_117 = icmp eq i5 %i_118, -16
  %empty_601 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_117 = add i5 %i_118, 1
  br i1 %exitcond2_117, label %711, label %713

; <label>:713                                     ; preds = %712
  %empty_602 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_490 = extractvalue { i8, i1, i1 } %empty_602, 0
  %tmp_117_603 = zext i5 %i_118 to i64
  %plaintext_addr_118 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_117_603
  store i8 %tmp_data_490, i8* %plaintext_addr_118, align 1
  br label %712

; <label>:714                                     ; preds = %710
  %tmp_1_117 = zext i5 %i_1_117 to i64
  %out_addr_118 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_117
  %tmp_data_491 = load i8* %out_addr_118, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_491, i1 true, i1 false)
  br label %710

; <label>:715                                     ; preds = %716
  %empty_604 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_120)
  %tmp_121 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %724

; <label>:716                                     ; preds = %720, %717
  %i_1_118 = phi i5 [ 0, %717 ], [ %i_4_118, %720 ]
  %exitcond_118 = icmp eq i5 %i_1_118, -16
  %empty_605 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_118 = add i5 %i_1_118, 1
  br i1 %exitcond_118, label %715, label %720

; <label>:717                                     ; preds = %718
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %716

; <label>:718                                     ; preds = %719, %709
  %i_119 = phi i5 [ 0, %709 ], [ %i_3_118, %719 ]
  %exitcond2_118 = icmp eq i5 %i_119, -16
  %empty_606 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_118 = add i5 %i_119, 1
  br i1 %exitcond2_118, label %717, label %719

; <label>:719                                     ; preds = %718
  %empty_607 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_492 = extractvalue { i8, i1, i1 } %empty_607, 0
  %tmp_118_608 = zext i5 %i_119 to i64
  %plaintext_addr_119 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_118_608
  store i8 %tmp_data_492, i8* %plaintext_addr_119, align 1
  br label %718

; <label>:720                                     ; preds = %716
  %tmp_1_118 = zext i5 %i_1_118 to i64
  %out_addr_119 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_118
  %tmp_data_493 = load i8* %out_addr_119, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_493, i1 true, i1 false)
  br label %716

; <label>:721                                     ; preds = %722
  %empty_609 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_121)
  %tmp_122 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %730

; <label>:722                                     ; preds = %726, %723
  %i_1_119 = phi i5 [ 0, %723 ], [ %i_4_119, %726 ]
  %exitcond_119 = icmp eq i5 %i_1_119, -16
  %empty_610 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_119 = add i5 %i_1_119, 1
  br i1 %exitcond_119, label %721, label %726

; <label>:723                                     ; preds = %724
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %722

; <label>:724                                     ; preds = %725, %715
  %i_120 = phi i5 [ 0, %715 ], [ %i_3_119, %725 ]
  %exitcond2_119 = icmp eq i5 %i_120, -16
  %empty_611 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_119 = add i5 %i_120, 1
  br i1 %exitcond2_119, label %723, label %725

; <label>:725                                     ; preds = %724
  %empty_612 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_494 = extractvalue { i8, i1, i1 } %empty_612, 0
  %tmp_119_613 = zext i5 %i_120 to i64
  %plaintext_addr_120 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_119_613
  store i8 %tmp_data_494, i8* %plaintext_addr_120, align 1
  br label %724

; <label>:726                                     ; preds = %722
  %tmp_1_119 = zext i5 %i_1_119 to i64
  %out_addr_120 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_119
  %tmp_data_495 = load i8* %out_addr_120, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_495, i1 true, i1 false)
  br label %722

; <label>:727                                     ; preds = %728
  %empty_614 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_122)
  %tmp_123 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %736

; <label>:728                                     ; preds = %732, %729
  %i_1_120 = phi i5 [ 0, %729 ], [ %i_4_120, %732 ]
  %exitcond_120 = icmp eq i5 %i_1_120, -16
  %empty_615 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_120 = add i5 %i_1_120, 1
  br i1 %exitcond_120, label %727, label %732

; <label>:729                                     ; preds = %730
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %728

; <label>:730                                     ; preds = %731, %721
  %i_121 = phi i5 [ 0, %721 ], [ %i_3_120, %731 ]
  %exitcond2_120 = icmp eq i5 %i_121, -16
  %empty_616 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_120 = add i5 %i_121, 1
  br i1 %exitcond2_120, label %729, label %731

; <label>:731                                     ; preds = %730
  %empty_617 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_496 = extractvalue { i8, i1, i1 } %empty_617, 0
  %tmp_120_618 = zext i5 %i_121 to i64
  %plaintext_addr_121 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_120_618
  store i8 %tmp_data_496, i8* %plaintext_addr_121, align 1
  br label %730

; <label>:732                                     ; preds = %728
  %tmp_1_120 = zext i5 %i_1_120 to i64
  %out_addr_121 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_120
  %tmp_data_497 = load i8* %out_addr_121, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_497, i1 true, i1 false)
  br label %728

; <label>:733                                     ; preds = %734
  %empty_619 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_123)
  %tmp_124 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %742

; <label>:734                                     ; preds = %738, %735
  %i_1_121 = phi i5 [ 0, %735 ], [ %i_4_121, %738 ]
  %exitcond_121 = icmp eq i5 %i_1_121, -16
  %empty_620 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_121 = add i5 %i_1_121, 1
  br i1 %exitcond_121, label %733, label %738

; <label>:735                                     ; preds = %736
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %734

; <label>:736                                     ; preds = %737, %727
  %i_122 = phi i5 [ 0, %727 ], [ %i_3_121, %737 ]
  %exitcond2_121 = icmp eq i5 %i_122, -16
  %empty_621 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_121 = add i5 %i_122, 1
  br i1 %exitcond2_121, label %735, label %737

; <label>:737                                     ; preds = %736
  %empty_622 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_498 = extractvalue { i8, i1, i1 } %empty_622, 0
  %tmp_121_623 = zext i5 %i_122 to i64
  %plaintext_addr_122 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_121_623
  store i8 %tmp_data_498, i8* %plaintext_addr_122, align 1
  br label %736

; <label>:738                                     ; preds = %734
  %tmp_1_121 = zext i5 %i_1_121 to i64
  %out_addr_122 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_121
  %tmp_data_499 = load i8* %out_addr_122, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_499, i1 true, i1 false)
  br label %734

; <label>:739                                     ; preds = %740
  %empty_624 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_124)
  %tmp_125 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %748

; <label>:740                                     ; preds = %744, %741
  %i_1_122 = phi i5 [ 0, %741 ], [ %i_4_122, %744 ]
  %exitcond_122 = icmp eq i5 %i_1_122, -16
  %empty_625 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_122 = add i5 %i_1_122, 1
  br i1 %exitcond_122, label %739, label %744

; <label>:741                                     ; preds = %742
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %740

; <label>:742                                     ; preds = %743, %733
  %i_123 = phi i5 [ 0, %733 ], [ %i_3_122, %743 ]
  %exitcond2_122 = icmp eq i5 %i_123, -16
  %empty_626 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_122 = add i5 %i_123, 1
  br i1 %exitcond2_122, label %741, label %743

; <label>:743                                     ; preds = %742
  %empty_627 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_500 = extractvalue { i8, i1, i1 } %empty_627, 0
  %tmp_122_628 = zext i5 %i_123 to i64
  %plaintext_addr_123 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_122_628
  store i8 %tmp_data_500, i8* %plaintext_addr_123, align 1
  br label %742

; <label>:744                                     ; preds = %740
  %tmp_1_122 = zext i5 %i_1_122 to i64
  %out_addr_123 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_122
  %tmp_data_501 = load i8* %out_addr_123, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_501, i1 true, i1 false)
  br label %740

; <label>:745                                     ; preds = %746
  %empty_629 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_125)
  %tmp_126 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %754

; <label>:746                                     ; preds = %750, %747
  %i_1_123 = phi i5 [ 0, %747 ], [ %i_4_123, %750 ]
  %exitcond_123 = icmp eq i5 %i_1_123, -16
  %empty_630 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_123 = add i5 %i_1_123, 1
  br i1 %exitcond_123, label %745, label %750

; <label>:747                                     ; preds = %748
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %746

; <label>:748                                     ; preds = %749, %739
  %i_124 = phi i5 [ 0, %739 ], [ %i_3_123, %749 ]
  %exitcond2_123 = icmp eq i5 %i_124, -16
  %empty_631 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_123 = add i5 %i_124, 1
  br i1 %exitcond2_123, label %747, label %749

; <label>:749                                     ; preds = %748
  %empty_632 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_502 = extractvalue { i8, i1, i1 } %empty_632, 0
  %tmp_123_633 = zext i5 %i_124 to i64
  %plaintext_addr_124 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_123_633
  store i8 %tmp_data_502, i8* %plaintext_addr_124, align 1
  br label %748

; <label>:750                                     ; preds = %746
  %tmp_1_123 = zext i5 %i_1_123 to i64
  %out_addr_124 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_123
  %tmp_data_503 = load i8* %out_addr_124, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_503, i1 true, i1 false)
  br label %746

; <label>:751                                     ; preds = %752
  %empty_634 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_126)
  %tmp_127 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %760

; <label>:752                                     ; preds = %756, %753
  %i_1_124 = phi i5 [ 0, %753 ], [ %i_4_124, %756 ]
  %exitcond_124 = icmp eq i5 %i_1_124, -16
  %empty_635 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_124 = add i5 %i_1_124, 1
  br i1 %exitcond_124, label %751, label %756

; <label>:753                                     ; preds = %754
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %752

; <label>:754                                     ; preds = %755, %745
  %i_125 = phi i5 [ 0, %745 ], [ %i_3_124, %755 ]
  %exitcond2_124 = icmp eq i5 %i_125, -16
  %empty_636 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_124 = add i5 %i_125, 1
  br i1 %exitcond2_124, label %753, label %755

; <label>:755                                     ; preds = %754
  %empty_637 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_504 = extractvalue { i8, i1, i1 } %empty_637, 0
  %tmp_124_638 = zext i5 %i_125 to i64
  %plaintext_addr_125 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_124_638
  store i8 %tmp_data_504, i8* %plaintext_addr_125, align 1
  br label %754

; <label>:756                                     ; preds = %752
  %tmp_1_124 = zext i5 %i_1_124 to i64
  %out_addr_125 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_124
  %tmp_data_505 = load i8* %out_addr_125, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_505, i1 true, i1 false)
  br label %752

; <label>:757                                     ; preds = %758
  %empty_639 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_127)
  %tmp_128 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %766

; <label>:758                                     ; preds = %762, %759
  %i_1_125 = phi i5 [ 0, %759 ], [ %i_4_125, %762 ]
  %exitcond_125 = icmp eq i5 %i_1_125, -16
  %empty_640 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_125 = add i5 %i_1_125, 1
  br i1 %exitcond_125, label %757, label %762

; <label>:759                                     ; preds = %760
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %758

; <label>:760                                     ; preds = %761, %751
  %i_126 = phi i5 [ 0, %751 ], [ %i_3_125, %761 ]
  %exitcond2_125 = icmp eq i5 %i_126, -16
  %empty_641 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_125 = add i5 %i_126, 1
  br i1 %exitcond2_125, label %759, label %761

; <label>:761                                     ; preds = %760
  %empty_642 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_506 = extractvalue { i8, i1, i1 } %empty_642, 0
  %tmp_125_643 = zext i5 %i_126 to i64
  %plaintext_addr_126 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_125_643
  store i8 %tmp_data_506, i8* %plaintext_addr_126, align 1
  br label %760

; <label>:762                                     ; preds = %758
  %tmp_1_125 = zext i5 %i_1_125 to i64
  %out_addr_126 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_125
  %tmp_data_507 = load i8* %out_addr_126, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_507, i1 true, i1 false)
  br label %758

; <label>:763                                     ; preds = %764
  %empty_644 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_128)
  %tmp_129 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %772

; <label>:764                                     ; preds = %768, %765
  %i_1_126 = phi i5 [ 0, %765 ], [ %i_4_126, %768 ]
  %exitcond_126 = icmp eq i5 %i_1_126, -16
  %empty_645 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_126 = add i5 %i_1_126, 1
  br i1 %exitcond_126, label %763, label %768

; <label>:765                                     ; preds = %766
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %764

; <label>:766                                     ; preds = %767, %757
  %i_127 = phi i5 [ 0, %757 ], [ %i_3_126, %767 ]
  %exitcond2_126 = icmp eq i5 %i_127, -16
  %empty_646 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_126 = add i5 %i_127, 1
  br i1 %exitcond2_126, label %765, label %767

; <label>:767                                     ; preds = %766
  %empty_647 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_508 = extractvalue { i8, i1, i1 } %empty_647, 0
  %tmp_126_648 = zext i5 %i_127 to i64
  %plaintext_addr_127 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_126_648
  store i8 %tmp_data_508, i8* %plaintext_addr_127, align 1
  br label %766

; <label>:768                                     ; preds = %764
  %tmp_1_126 = zext i5 %i_1_126 to i64
  %out_addr_127 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_126
  %tmp_data_509 = load i8* %out_addr_127, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_509, i1 true, i1 false)
  br label %764

; <label>:769                                     ; preds = %770
  %empty_649 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_129)
  %tmp_130 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %778

; <label>:770                                     ; preds = %774, %771
  %i_1_127 = phi i5 [ 0, %771 ], [ %i_4_127, %774 ]
  %exitcond_127 = icmp eq i5 %i_1_127, -16
  %empty_650 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_127 = add i5 %i_1_127, 1
  br i1 %exitcond_127, label %769, label %774

; <label>:771                                     ; preds = %772
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %770

; <label>:772                                     ; preds = %773, %763
  %i_128 = phi i5 [ 0, %763 ], [ %i_3_127, %773 ]
  %exitcond2_127 = icmp eq i5 %i_128, -16
  %empty_651 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_127 = add i5 %i_128, 1
  br i1 %exitcond2_127, label %771, label %773

; <label>:773                                     ; preds = %772
  %empty_652 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_510 = extractvalue { i8, i1, i1 } %empty_652, 0
  %tmp_127_653 = zext i5 %i_128 to i64
  %plaintext_addr_128 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_127_653
  store i8 %tmp_data_510, i8* %plaintext_addr_128, align 1
  br label %772

; <label>:774                                     ; preds = %770
  %tmp_1_127 = zext i5 %i_1_127 to i64
  %out_addr_128 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_127
  %tmp_data_511 = load i8* %out_addr_128, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_511, i1 true, i1 false)
  br label %770

; <label>:775                                     ; preds = %776
  %empty_654 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_130)
  %tmp_131 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %784

; <label>:776                                     ; preds = %780, %777
  %i_1_128 = phi i5 [ 0, %777 ], [ %i_4_128, %780 ]
  %exitcond_128 = icmp eq i5 %i_1_128, -16
  %empty_655 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_128 = add i5 %i_1_128, 1
  br i1 %exitcond_128, label %775, label %780

; <label>:777                                     ; preds = %778
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %776

; <label>:778                                     ; preds = %779, %769
  %i_129 = phi i5 [ 0, %769 ], [ %i_3_128, %779 ]
  %exitcond2_128 = icmp eq i5 %i_129, -16
  %empty_656 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_128 = add i5 %i_129, 1
  br i1 %exitcond2_128, label %777, label %779

; <label>:779                                     ; preds = %778
  %empty_657 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_512 = extractvalue { i8, i1, i1 } %empty_657, 0
  %tmp_128_658 = zext i5 %i_129 to i64
  %plaintext_addr_129 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_128_658
  store i8 %tmp_data_512, i8* %plaintext_addr_129, align 1
  br label %778

; <label>:780                                     ; preds = %776
  %tmp_1_128 = zext i5 %i_1_128 to i64
  %out_addr_129 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_128
  %tmp_data_513 = load i8* %out_addr_129, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_513, i1 true, i1 false)
  br label %776

; <label>:781                                     ; preds = %782
  %empty_659 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_131)
  %tmp_132 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %790

; <label>:782                                     ; preds = %786, %783
  %i_1_129 = phi i5 [ 0, %783 ], [ %i_4_129, %786 ]
  %exitcond_129 = icmp eq i5 %i_1_129, -16
  %empty_660 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_129 = add i5 %i_1_129, 1
  br i1 %exitcond_129, label %781, label %786

; <label>:783                                     ; preds = %784
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %782

; <label>:784                                     ; preds = %785, %775
  %i_130 = phi i5 [ 0, %775 ], [ %i_3_129, %785 ]
  %exitcond2_129 = icmp eq i5 %i_130, -16
  %empty_661 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_129 = add i5 %i_130, 1
  br i1 %exitcond2_129, label %783, label %785

; <label>:785                                     ; preds = %784
  %empty_662 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_514 = extractvalue { i8, i1, i1 } %empty_662, 0
  %tmp_129_663 = zext i5 %i_130 to i64
  %plaintext_addr_130 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_129_663
  store i8 %tmp_data_514, i8* %plaintext_addr_130, align 1
  br label %784

; <label>:786                                     ; preds = %782
  %tmp_1_129 = zext i5 %i_1_129 to i64
  %out_addr_130 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_129
  %tmp_data_515 = load i8* %out_addr_130, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_515, i1 true, i1 false)
  br label %782

; <label>:787                                     ; preds = %788
  %empty_664 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_132)
  %tmp_133 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %796

; <label>:788                                     ; preds = %792, %789
  %i_1_130 = phi i5 [ 0, %789 ], [ %i_4_130, %792 ]
  %exitcond_130 = icmp eq i5 %i_1_130, -16
  %empty_665 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_130 = add i5 %i_1_130, 1
  br i1 %exitcond_130, label %787, label %792

; <label>:789                                     ; preds = %790
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %788

; <label>:790                                     ; preds = %791, %781
  %i_131 = phi i5 [ 0, %781 ], [ %i_3_130, %791 ]
  %exitcond2_130 = icmp eq i5 %i_131, -16
  %empty_666 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_130 = add i5 %i_131, 1
  br i1 %exitcond2_130, label %789, label %791

; <label>:791                                     ; preds = %790
  %empty_667 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_516 = extractvalue { i8, i1, i1 } %empty_667, 0
  %tmp_130_668 = zext i5 %i_131 to i64
  %plaintext_addr_131 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_130_668
  store i8 %tmp_data_516, i8* %plaintext_addr_131, align 1
  br label %790

; <label>:792                                     ; preds = %788
  %tmp_1_130 = zext i5 %i_1_130 to i64
  %out_addr_131 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_130
  %tmp_data_517 = load i8* %out_addr_131, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_517, i1 true, i1 false)
  br label %788

; <label>:793                                     ; preds = %794
  %empty_669 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_133)
  %tmp_134 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %802

; <label>:794                                     ; preds = %798, %795
  %i_1_131 = phi i5 [ 0, %795 ], [ %i_4_131, %798 ]
  %exitcond_131 = icmp eq i5 %i_1_131, -16
  %empty_670 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_131 = add i5 %i_1_131, 1
  br i1 %exitcond_131, label %793, label %798

; <label>:795                                     ; preds = %796
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %794

; <label>:796                                     ; preds = %797, %787
  %i_132 = phi i5 [ 0, %787 ], [ %i_3_131, %797 ]
  %exitcond2_131 = icmp eq i5 %i_132, -16
  %empty_671 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_131 = add i5 %i_132, 1
  br i1 %exitcond2_131, label %795, label %797

; <label>:797                                     ; preds = %796
  %empty_672 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_518 = extractvalue { i8, i1, i1 } %empty_672, 0
  %tmp_131_673 = zext i5 %i_132 to i64
  %plaintext_addr_132 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_131_673
  store i8 %tmp_data_518, i8* %plaintext_addr_132, align 1
  br label %796

; <label>:798                                     ; preds = %794
  %tmp_1_131 = zext i5 %i_1_131 to i64
  %out_addr_132 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_131
  %tmp_data_519 = load i8* %out_addr_132, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_519, i1 true, i1 false)
  br label %794

; <label>:799                                     ; preds = %800
  %empty_674 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_134)
  %tmp_135 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %808

; <label>:800                                     ; preds = %804, %801
  %i_1_132 = phi i5 [ 0, %801 ], [ %i_4_132, %804 ]
  %exitcond_132 = icmp eq i5 %i_1_132, -16
  %empty_675 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_132 = add i5 %i_1_132, 1
  br i1 %exitcond_132, label %799, label %804

; <label>:801                                     ; preds = %802
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %800

; <label>:802                                     ; preds = %803, %793
  %i_133 = phi i5 [ 0, %793 ], [ %i_3_132, %803 ]
  %exitcond2_132 = icmp eq i5 %i_133, -16
  %empty_676 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_132 = add i5 %i_133, 1
  br i1 %exitcond2_132, label %801, label %803

; <label>:803                                     ; preds = %802
  %empty_677 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_520 = extractvalue { i8, i1, i1 } %empty_677, 0
  %tmp_132_678 = zext i5 %i_133 to i64
  %plaintext_addr_133 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_132_678
  store i8 %tmp_data_520, i8* %plaintext_addr_133, align 1
  br label %802

; <label>:804                                     ; preds = %800
  %tmp_1_132 = zext i5 %i_1_132 to i64
  %out_addr_133 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_132
  %tmp_data_521 = load i8* %out_addr_133, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_521, i1 true, i1 false)
  br label %800

; <label>:805                                     ; preds = %806
  %empty_679 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_135)
  %tmp_136 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %814

; <label>:806                                     ; preds = %810, %807
  %i_1_133 = phi i5 [ 0, %807 ], [ %i_4_133, %810 ]
  %exitcond_133 = icmp eq i5 %i_1_133, -16
  %empty_680 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_133 = add i5 %i_1_133, 1
  br i1 %exitcond_133, label %805, label %810

; <label>:807                                     ; preds = %808
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %806

; <label>:808                                     ; preds = %809, %799
  %i_134 = phi i5 [ 0, %799 ], [ %i_3_133, %809 ]
  %exitcond2_133 = icmp eq i5 %i_134, -16
  %empty_681 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_133 = add i5 %i_134, 1
  br i1 %exitcond2_133, label %807, label %809

; <label>:809                                     ; preds = %808
  %empty_682 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_522 = extractvalue { i8, i1, i1 } %empty_682, 0
  %tmp_133_683 = zext i5 %i_134 to i64
  %plaintext_addr_134 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_133_683
  store i8 %tmp_data_522, i8* %plaintext_addr_134, align 1
  br label %808

; <label>:810                                     ; preds = %806
  %tmp_1_133 = zext i5 %i_1_133 to i64
  %out_addr_134 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_133
  %tmp_data_523 = load i8* %out_addr_134, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_523, i1 true, i1 false)
  br label %806

; <label>:811                                     ; preds = %812
  %empty_684 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_136)
  %tmp_137 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %820

; <label>:812                                     ; preds = %816, %813
  %i_1_134 = phi i5 [ 0, %813 ], [ %i_4_134, %816 ]
  %exitcond_134 = icmp eq i5 %i_1_134, -16
  %empty_685 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_134 = add i5 %i_1_134, 1
  br i1 %exitcond_134, label %811, label %816

; <label>:813                                     ; preds = %814
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %812

; <label>:814                                     ; preds = %815, %805
  %i_135 = phi i5 [ 0, %805 ], [ %i_3_134, %815 ]
  %exitcond2_134 = icmp eq i5 %i_135, -16
  %empty_686 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_134 = add i5 %i_135, 1
  br i1 %exitcond2_134, label %813, label %815

; <label>:815                                     ; preds = %814
  %empty_687 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_524 = extractvalue { i8, i1, i1 } %empty_687, 0
  %tmp_134_688 = zext i5 %i_135 to i64
  %plaintext_addr_135 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_134_688
  store i8 %tmp_data_524, i8* %plaintext_addr_135, align 1
  br label %814

; <label>:816                                     ; preds = %812
  %tmp_1_134 = zext i5 %i_1_134 to i64
  %out_addr_135 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_134
  %tmp_data_525 = load i8* %out_addr_135, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_525, i1 true, i1 false)
  br label %812

; <label>:817                                     ; preds = %818
  %empty_689 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_137)
  %tmp_138 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %826

; <label>:818                                     ; preds = %822, %819
  %i_1_135 = phi i5 [ 0, %819 ], [ %i_4_135, %822 ]
  %exitcond_135 = icmp eq i5 %i_1_135, -16
  %empty_690 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_135 = add i5 %i_1_135, 1
  br i1 %exitcond_135, label %817, label %822

; <label>:819                                     ; preds = %820
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %818

; <label>:820                                     ; preds = %821, %811
  %i_136 = phi i5 [ 0, %811 ], [ %i_3_135, %821 ]
  %exitcond2_135 = icmp eq i5 %i_136, -16
  %empty_691 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_135 = add i5 %i_136, 1
  br i1 %exitcond2_135, label %819, label %821

; <label>:821                                     ; preds = %820
  %empty_692 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_526 = extractvalue { i8, i1, i1 } %empty_692, 0
  %tmp_135_693 = zext i5 %i_136 to i64
  %plaintext_addr_136 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_135_693
  store i8 %tmp_data_526, i8* %plaintext_addr_136, align 1
  br label %820

; <label>:822                                     ; preds = %818
  %tmp_1_135 = zext i5 %i_1_135 to i64
  %out_addr_136 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_135
  %tmp_data_527 = load i8* %out_addr_136, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_527, i1 true, i1 false)
  br label %818

; <label>:823                                     ; preds = %824
  %empty_694 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_138)
  %tmp_139 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %832

; <label>:824                                     ; preds = %828, %825
  %i_1_136 = phi i5 [ 0, %825 ], [ %i_4_136, %828 ]
  %exitcond_136 = icmp eq i5 %i_1_136, -16
  %empty_695 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_136 = add i5 %i_1_136, 1
  br i1 %exitcond_136, label %823, label %828

; <label>:825                                     ; preds = %826
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %824

; <label>:826                                     ; preds = %827, %817
  %i_137 = phi i5 [ 0, %817 ], [ %i_3_136, %827 ]
  %exitcond2_136 = icmp eq i5 %i_137, -16
  %empty_696 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_136 = add i5 %i_137, 1
  br i1 %exitcond2_136, label %825, label %827

; <label>:827                                     ; preds = %826
  %empty_697 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_528 = extractvalue { i8, i1, i1 } %empty_697, 0
  %tmp_136_698 = zext i5 %i_137 to i64
  %plaintext_addr_137 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_136_698
  store i8 %tmp_data_528, i8* %plaintext_addr_137, align 1
  br label %826

; <label>:828                                     ; preds = %824
  %tmp_1_136 = zext i5 %i_1_136 to i64
  %out_addr_137 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_136
  %tmp_data_529 = load i8* %out_addr_137, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_529, i1 true, i1 false)
  br label %824

; <label>:829                                     ; preds = %830
  %empty_699 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_139)
  %tmp_140 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %838

; <label>:830                                     ; preds = %834, %831
  %i_1_137 = phi i5 [ 0, %831 ], [ %i_4_137, %834 ]
  %exitcond_137 = icmp eq i5 %i_1_137, -16
  %empty_700 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_137 = add i5 %i_1_137, 1
  br i1 %exitcond_137, label %829, label %834

; <label>:831                                     ; preds = %832
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %830

; <label>:832                                     ; preds = %833, %823
  %i_138 = phi i5 [ 0, %823 ], [ %i_3_137, %833 ]
  %exitcond2_137 = icmp eq i5 %i_138, -16
  %empty_701 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_137 = add i5 %i_138, 1
  br i1 %exitcond2_137, label %831, label %833

; <label>:833                                     ; preds = %832
  %empty_702 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_530 = extractvalue { i8, i1, i1 } %empty_702, 0
  %tmp_137_703 = zext i5 %i_138 to i64
  %plaintext_addr_138 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_137_703
  store i8 %tmp_data_530, i8* %plaintext_addr_138, align 1
  br label %832

; <label>:834                                     ; preds = %830
  %tmp_1_137 = zext i5 %i_1_137 to i64
  %out_addr_138 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_137
  %tmp_data_531 = load i8* %out_addr_138, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_531, i1 true, i1 false)
  br label %830

; <label>:835                                     ; preds = %836
  %empty_704 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_140)
  %tmp_141 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %844

; <label>:836                                     ; preds = %840, %837
  %i_1_138 = phi i5 [ 0, %837 ], [ %i_4_138, %840 ]
  %exitcond_138 = icmp eq i5 %i_1_138, -16
  %empty_705 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_138 = add i5 %i_1_138, 1
  br i1 %exitcond_138, label %835, label %840

; <label>:837                                     ; preds = %838
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %836

; <label>:838                                     ; preds = %839, %829
  %i_257 = phi i5 [ 0, %829 ], [ %i_3_138, %839 ]
  %exitcond2_138 = icmp eq i5 %i_257, -16
  %empty_706 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_138 = add i5 %i_257, 1
  br i1 %exitcond2_138, label %837, label %839

; <label>:839                                     ; preds = %838
  %empty_707 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_532 = extractvalue { i8, i1, i1 } %empty_707, 0
  %tmp_138_708 = zext i5 %i_257 to i64
  %plaintext_addr_139 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_138_708
  store i8 %tmp_data_532, i8* %plaintext_addr_139, align 1
  br label %838

; <label>:840                                     ; preds = %836
  %tmp_1_138 = zext i5 %i_1_138 to i64
  %out_addr_139 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_138
  %tmp_data_533 = load i8* %out_addr_139, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_533, i1 true, i1 false)
  br label %836

; <label>:841                                     ; preds = %842
  %empty_709 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_141)
  %tmp_142 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %850

; <label>:842                                     ; preds = %846, %843
  %i_1_139 = phi i5 [ 0, %843 ], [ %i_4_139, %846 ]
  %exitcond_139 = icmp eq i5 %i_1_139, -16
  %empty_710 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_139 = add i5 %i_1_139, 1
  br i1 %exitcond_139, label %841, label %846

; <label>:843                                     ; preds = %844
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %842

; <label>:844                                     ; preds = %845, %835
  %i_140 = phi i5 [ 0, %835 ], [ %i_3_139, %845 ]
  %exitcond2_139 = icmp eq i5 %i_140, -16
  %empty_711 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_139 = add i5 %i_140, 1
  br i1 %exitcond2_139, label %843, label %845

; <label>:845                                     ; preds = %844
  %empty_712 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_534 = extractvalue { i8, i1, i1 } %empty_712, 0
  %tmp_139_713 = zext i5 %i_140 to i64
  %plaintext_addr_140 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_139_713
  store i8 %tmp_data_534, i8* %plaintext_addr_140, align 1
  br label %844

; <label>:846                                     ; preds = %842
  %tmp_1_139 = zext i5 %i_1_139 to i64
  %out_addr_140 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_139
  %tmp_data_535 = load i8* %out_addr_140, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_535, i1 true, i1 false)
  br label %842

; <label>:847                                     ; preds = %848
  %empty_714 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_142)
  %tmp_143 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %856

; <label>:848                                     ; preds = %852, %849
  %i_1_140 = phi i5 [ 0, %849 ], [ %i_4_140, %852 ]
  %exitcond_140 = icmp eq i5 %i_1_140, -16
  %empty_715 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_140 = add i5 %i_1_140, 1
  br i1 %exitcond_140, label %847, label %852

; <label>:849                                     ; preds = %850
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %848

; <label>:850                                     ; preds = %851, %841
  %i_141 = phi i5 [ 0, %841 ], [ %i_3_140, %851 ]
  %exitcond2_140 = icmp eq i5 %i_141, -16
  %empty_716 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_140 = add i5 %i_141, 1
  br i1 %exitcond2_140, label %849, label %851

; <label>:851                                     ; preds = %850
  %empty_717 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_536 = extractvalue { i8, i1, i1 } %empty_717, 0
  %tmp_140_718 = zext i5 %i_141 to i64
  %plaintext_addr_141 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_140_718
  store i8 %tmp_data_536, i8* %plaintext_addr_141, align 1
  br label %850

; <label>:852                                     ; preds = %848
  %tmp_1_140 = zext i5 %i_1_140 to i64
  %out_addr_141 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_140
  %tmp_data_537 = load i8* %out_addr_141, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_537, i1 true, i1 false)
  br label %848

; <label>:853                                     ; preds = %854
  %empty_719 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_143)
  %tmp_144 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %862

; <label>:854                                     ; preds = %858, %855
  %i_1_141 = phi i5 [ 0, %855 ], [ %i_4_141, %858 ]
  %exitcond_141 = icmp eq i5 %i_1_141, -16
  %empty_720 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_141 = add i5 %i_1_141, 1
  br i1 %exitcond_141, label %853, label %858

; <label>:855                                     ; preds = %856
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %854

; <label>:856                                     ; preds = %857, %847
  %i_142 = phi i5 [ 0, %847 ], [ %i_3_141, %857 ]
  %exitcond2_141 = icmp eq i5 %i_142, -16
  %empty_721 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_141 = add i5 %i_142, 1
  br i1 %exitcond2_141, label %855, label %857

; <label>:857                                     ; preds = %856
  %empty_722 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_538 = extractvalue { i8, i1, i1 } %empty_722, 0
  %tmp_141_723 = zext i5 %i_142 to i64
  %plaintext_addr_142 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_141_723
  store i8 %tmp_data_538, i8* %plaintext_addr_142, align 1
  br label %856

; <label>:858                                     ; preds = %854
  %tmp_1_141 = zext i5 %i_1_141 to i64
  %out_addr_142 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_141
  %tmp_data_539 = load i8* %out_addr_142, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_539, i1 true, i1 false)
  br label %854

; <label>:859                                     ; preds = %860
  %empty_724 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_144)
  %tmp_145 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %868

; <label>:860                                     ; preds = %864, %861
  %i_1_142 = phi i5 [ 0, %861 ], [ %i_4_142, %864 ]
  %exitcond_142 = icmp eq i5 %i_1_142, -16
  %empty_725 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_142 = add i5 %i_1_142, 1
  br i1 %exitcond_142, label %859, label %864

; <label>:861                                     ; preds = %862
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %860

; <label>:862                                     ; preds = %863, %853
  %i_143 = phi i5 [ 0, %853 ], [ %i_3_142, %863 ]
  %exitcond2_142 = icmp eq i5 %i_143, -16
  %empty_726 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_142 = add i5 %i_143, 1
  br i1 %exitcond2_142, label %861, label %863

; <label>:863                                     ; preds = %862
  %empty_727 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_540 = extractvalue { i8, i1, i1 } %empty_727, 0
  %tmp_142_728 = zext i5 %i_143 to i64
  %plaintext_addr_143 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_142_728
  store i8 %tmp_data_540, i8* %plaintext_addr_143, align 1
  br label %862

; <label>:864                                     ; preds = %860
  %tmp_1_142 = zext i5 %i_1_142 to i64
  %out_addr_143 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_142
  %tmp_data_541 = load i8* %out_addr_143, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_541, i1 true, i1 false)
  br label %860

; <label>:865                                     ; preds = %866
  %empty_729 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_145)
  %tmp_146 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %874

; <label>:866                                     ; preds = %870, %867
  %i_1_143 = phi i5 [ 0, %867 ], [ %i_4_143, %870 ]
  %exitcond_143 = icmp eq i5 %i_1_143, -16
  %empty_730 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_143 = add i5 %i_1_143, 1
  br i1 %exitcond_143, label %865, label %870

; <label>:867                                     ; preds = %868
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %866

; <label>:868                                     ; preds = %869, %859
  %i_144 = phi i5 [ 0, %859 ], [ %i_3_143, %869 ]
  %exitcond2_143 = icmp eq i5 %i_144, -16
  %empty_731 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_143 = add i5 %i_144, 1
  br i1 %exitcond2_143, label %867, label %869

; <label>:869                                     ; preds = %868
  %empty_732 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_542 = extractvalue { i8, i1, i1 } %empty_732, 0
  %tmp_143_733 = zext i5 %i_144 to i64
  %plaintext_addr_144 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_143_733
  store i8 %tmp_data_542, i8* %plaintext_addr_144, align 1
  br label %868

; <label>:870                                     ; preds = %866
  %tmp_1_143 = zext i5 %i_1_143 to i64
  %out_addr_144 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_143
  %tmp_data_543 = load i8* %out_addr_144, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_543, i1 true, i1 false)
  br label %866

; <label>:871                                     ; preds = %872
  %empty_734 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_146)
  %tmp_147 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %880

; <label>:872                                     ; preds = %876, %873
  %i_1_144 = phi i5 [ 0, %873 ], [ %i_4_144, %876 ]
  %exitcond_144 = icmp eq i5 %i_1_144, -16
  %empty_735 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_144 = add i5 %i_1_144, 1
  br i1 %exitcond_144, label %871, label %876

; <label>:873                                     ; preds = %874
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %872

; <label>:874                                     ; preds = %875, %865
  %i_145 = phi i5 [ 0, %865 ], [ %i_3_144, %875 ]
  %exitcond2_144 = icmp eq i5 %i_145, -16
  %empty_736 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_144 = add i5 %i_145, 1
  br i1 %exitcond2_144, label %873, label %875

; <label>:875                                     ; preds = %874
  %empty_737 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_544 = extractvalue { i8, i1, i1 } %empty_737, 0
  %tmp_144_738 = zext i5 %i_145 to i64
  %plaintext_addr_145 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_144_738
  store i8 %tmp_data_544, i8* %plaintext_addr_145, align 1
  br label %874

; <label>:876                                     ; preds = %872
  %tmp_1_144 = zext i5 %i_1_144 to i64
  %out_addr_145 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_144
  %tmp_data_545 = load i8* %out_addr_145, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_545, i1 true, i1 false)
  br label %872

; <label>:877                                     ; preds = %878
  %empty_739 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_147)
  %tmp_148 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %886

; <label>:878                                     ; preds = %882, %879
  %i_1_145 = phi i5 [ 0, %879 ], [ %i_4_145, %882 ]
  %exitcond_145 = icmp eq i5 %i_1_145, -16
  %empty_740 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_145 = add i5 %i_1_145, 1
  br i1 %exitcond_145, label %877, label %882

; <label>:879                                     ; preds = %880
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %878

; <label>:880                                     ; preds = %881, %871
  %i_146 = phi i5 [ 0, %871 ], [ %i_3_145, %881 ]
  %exitcond2_145 = icmp eq i5 %i_146, -16
  %empty_741 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_145 = add i5 %i_146, 1
  br i1 %exitcond2_145, label %879, label %881

; <label>:881                                     ; preds = %880
  %empty_742 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_546 = extractvalue { i8, i1, i1 } %empty_742, 0
  %tmp_145_743 = zext i5 %i_146 to i64
  %plaintext_addr_146 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_145_743
  store i8 %tmp_data_546, i8* %plaintext_addr_146, align 1
  br label %880

; <label>:882                                     ; preds = %878
  %tmp_1_145 = zext i5 %i_1_145 to i64
  %out_addr_146 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_145
  %tmp_data_547 = load i8* %out_addr_146, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_547, i1 true, i1 false)
  br label %878

; <label>:883                                     ; preds = %884
  %empty_744 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_148)
  %tmp_149 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %892

; <label>:884                                     ; preds = %888, %885
  %i_1_146 = phi i5 [ 0, %885 ], [ %i_4_146, %888 ]
  %exitcond_146 = icmp eq i5 %i_1_146, -16
  %empty_745 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_146 = add i5 %i_1_146, 1
  br i1 %exitcond_146, label %883, label %888

; <label>:885                                     ; preds = %886
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %884

; <label>:886                                     ; preds = %887, %877
  %i_147 = phi i5 [ 0, %877 ], [ %i_3_146, %887 ]
  %exitcond2_146 = icmp eq i5 %i_147, -16
  %empty_746 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_146 = add i5 %i_147, 1
  br i1 %exitcond2_146, label %885, label %887

; <label>:887                                     ; preds = %886
  %empty_747 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_548 = extractvalue { i8, i1, i1 } %empty_747, 0
  %tmp_146_748 = zext i5 %i_147 to i64
  %plaintext_addr_147 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_146_748
  store i8 %tmp_data_548, i8* %plaintext_addr_147, align 1
  br label %886

; <label>:888                                     ; preds = %884
  %tmp_1_146 = zext i5 %i_1_146 to i64
  %out_addr_147 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_146
  %tmp_data_549 = load i8* %out_addr_147, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_549, i1 true, i1 false)
  br label %884

; <label>:889                                     ; preds = %890
  %empty_749 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_149)
  %tmp_150 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %898

; <label>:890                                     ; preds = %894, %891
  %i_1_147 = phi i5 [ 0, %891 ], [ %i_4_147, %894 ]
  %exitcond_147 = icmp eq i5 %i_1_147, -16
  %empty_750 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_147 = add i5 %i_1_147, 1
  br i1 %exitcond_147, label %889, label %894

; <label>:891                                     ; preds = %892
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %890

; <label>:892                                     ; preds = %893, %883
  %i_148 = phi i5 [ 0, %883 ], [ %i_3_147, %893 ]
  %exitcond2_147 = icmp eq i5 %i_148, -16
  %empty_751 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_147 = add i5 %i_148, 1
  br i1 %exitcond2_147, label %891, label %893

; <label>:893                                     ; preds = %892
  %empty_752 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_550 = extractvalue { i8, i1, i1 } %empty_752, 0
  %tmp_147_753 = zext i5 %i_148 to i64
  %plaintext_addr_148 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_147_753
  store i8 %tmp_data_550, i8* %plaintext_addr_148, align 1
  br label %892

; <label>:894                                     ; preds = %890
  %tmp_1_147 = zext i5 %i_1_147 to i64
  %out_addr_148 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_147
  %tmp_data_551 = load i8* %out_addr_148, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_551, i1 true, i1 false)
  br label %890

; <label>:895                                     ; preds = %896
  %empty_754 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_150)
  %tmp_151 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %904

; <label>:896                                     ; preds = %900, %897
  %i_1_148 = phi i5 [ 0, %897 ], [ %i_4_148, %900 ]
  %exitcond_148 = icmp eq i5 %i_1_148, -16
  %empty_755 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_148 = add i5 %i_1_148, 1
  br i1 %exitcond_148, label %895, label %900

; <label>:897                                     ; preds = %898
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %896

; <label>:898                                     ; preds = %899, %889
  %i_149 = phi i5 [ 0, %889 ], [ %i_3_148, %899 ]
  %exitcond2_148 = icmp eq i5 %i_149, -16
  %empty_756 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_148 = add i5 %i_149, 1
  br i1 %exitcond2_148, label %897, label %899

; <label>:899                                     ; preds = %898
  %empty_757 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_552 = extractvalue { i8, i1, i1 } %empty_757, 0
  %tmp_148_758 = zext i5 %i_149 to i64
  %plaintext_addr_149 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_148_758
  store i8 %tmp_data_552, i8* %plaintext_addr_149, align 1
  br label %898

; <label>:900                                     ; preds = %896
  %tmp_1_148 = zext i5 %i_1_148 to i64
  %out_addr_149 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_148
  %tmp_data_553 = load i8* %out_addr_149, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_553, i1 true, i1 false)
  br label %896

; <label>:901                                     ; preds = %902
  %empty_759 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_151)
  %tmp_152 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %910

; <label>:902                                     ; preds = %906, %903
  %i_1_149 = phi i5 [ 0, %903 ], [ %i_4_149, %906 ]
  %exitcond_149 = icmp eq i5 %i_1_149, -16
  %empty_760 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_149 = add i5 %i_1_149, 1
  br i1 %exitcond_149, label %901, label %906

; <label>:903                                     ; preds = %904
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %902

; <label>:904                                     ; preds = %905, %895
  %i_150 = phi i5 [ 0, %895 ], [ %i_3_149, %905 ]
  %exitcond2_149 = icmp eq i5 %i_150, -16
  %empty_761 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_149 = add i5 %i_150, 1
  br i1 %exitcond2_149, label %903, label %905

; <label>:905                                     ; preds = %904
  %empty_762 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_554 = extractvalue { i8, i1, i1 } %empty_762, 0
  %tmp_149_763 = zext i5 %i_150 to i64
  %plaintext_addr_150 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_149_763
  store i8 %tmp_data_554, i8* %plaintext_addr_150, align 1
  br label %904

; <label>:906                                     ; preds = %902
  %tmp_1_149 = zext i5 %i_1_149 to i64
  %out_addr_150 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_149
  %tmp_data_555 = load i8* %out_addr_150, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_555, i1 true, i1 false)
  br label %902

; <label>:907                                     ; preds = %908
  %empty_764 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_152)
  %tmp_153 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %916

; <label>:908                                     ; preds = %912, %909
  %i_1_150 = phi i5 [ 0, %909 ], [ %i_4_150, %912 ]
  %exitcond_150 = icmp eq i5 %i_1_150, -16
  %empty_765 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_150 = add i5 %i_1_150, 1
  br i1 %exitcond_150, label %907, label %912

; <label>:909                                     ; preds = %910
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %908

; <label>:910                                     ; preds = %911, %901
  %i_151 = phi i5 [ 0, %901 ], [ %i_3_150, %911 ]
  %exitcond2_150 = icmp eq i5 %i_151, -16
  %empty_766 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_150 = add i5 %i_151, 1
  br i1 %exitcond2_150, label %909, label %911

; <label>:911                                     ; preds = %910
  %empty_767 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_556 = extractvalue { i8, i1, i1 } %empty_767, 0
  %tmp_150_768 = zext i5 %i_151 to i64
  %plaintext_addr_151 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_150_768
  store i8 %tmp_data_556, i8* %plaintext_addr_151, align 1
  br label %910

; <label>:912                                     ; preds = %908
  %tmp_1_150 = zext i5 %i_1_150 to i64
  %out_addr_151 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_150
  %tmp_data_557 = load i8* %out_addr_151, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_557, i1 true, i1 false)
  br label %908

; <label>:913                                     ; preds = %914
  %empty_769 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_153)
  %tmp_154 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %922

; <label>:914                                     ; preds = %918, %915
  %i_1_151 = phi i5 [ 0, %915 ], [ %i_4_151, %918 ]
  %exitcond_151 = icmp eq i5 %i_1_151, -16
  %empty_770 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_151 = add i5 %i_1_151, 1
  br i1 %exitcond_151, label %913, label %918

; <label>:915                                     ; preds = %916
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %914

; <label>:916                                     ; preds = %917, %907
  %i_152 = phi i5 [ 0, %907 ], [ %i_3_151, %917 ]
  %exitcond2_151 = icmp eq i5 %i_152, -16
  %empty_771 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_151 = add i5 %i_152, 1
  br i1 %exitcond2_151, label %915, label %917

; <label>:917                                     ; preds = %916
  %empty_772 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_558 = extractvalue { i8, i1, i1 } %empty_772, 0
  %tmp_151_773 = zext i5 %i_152 to i64
  %plaintext_addr_152 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_151_773
  store i8 %tmp_data_558, i8* %plaintext_addr_152, align 1
  br label %916

; <label>:918                                     ; preds = %914
  %tmp_1_151 = zext i5 %i_1_151 to i64
  %out_addr_152 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_151
  %tmp_data_559 = load i8* %out_addr_152, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_559, i1 true, i1 false)
  br label %914

; <label>:919                                     ; preds = %920
  %empty_774 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_154)
  %tmp_155 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %928

; <label>:920                                     ; preds = %924, %921
  %i_1_152 = phi i5 [ 0, %921 ], [ %i_4_152, %924 ]
  %exitcond_152 = icmp eq i5 %i_1_152, -16
  %empty_775 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_152 = add i5 %i_1_152, 1
  br i1 %exitcond_152, label %919, label %924

; <label>:921                                     ; preds = %922
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %920

; <label>:922                                     ; preds = %923, %913
  %i_153 = phi i5 [ 0, %913 ], [ %i_3_152, %923 ]
  %exitcond2_152 = icmp eq i5 %i_153, -16
  %empty_776 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_152 = add i5 %i_153, 1
  br i1 %exitcond2_152, label %921, label %923

; <label>:923                                     ; preds = %922
  %empty_777 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_560 = extractvalue { i8, i1, i1 } %empty_777, 0
  %tmp_152_778 = zext i5 %i_153 to i64
  %plaintext_addr_153 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_152_778
  store i8 %tmp_data_560, i8* %plaintext_addr_153, align 1
  br label %922

; <label>:924                                     ; preds = %920
  %tmp_1_152 = zext i5 %i_1_152 to i64
  %out_addr_153 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_152
  %tmp_data_561 = load i8* %out_addr_153, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_561, i1 true, i1 false)
  br label %920

; <label>:925                                     ; preds = %926
  %empty_779 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_155)
  %tmp_156 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %934

; <label>:926                                     ; preds = %930, %927
  %i_1_153 = phi i5 [ 0, %927 ], [ %i_4_153, %930 ]
  %exitcond_153 = icmp eq i5 %i_1_153, -16
  %empty_780 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_153 = add i5 %i_1_153, 1
  br i1 %exitcond_153, label %925, label %930

; <label>:927                                     ; preds = %928
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %926

; <label>:928                                     ; preds = %929, %919
  %i_154 = phi i5 [ 0, %919 ], [ %i_3_153, %929 ]
  %exitcond2_153 = icmp eq i5 %i_154, -16
  %empty_781 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_153 = add i5 %i_154, 1
  br i1 %exitcond2_153, label %927, label %929

; <label>:929                                     ; preds = %928
  %empty_782 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_562 = extractvalue { i8, i1, i1 } %empty_782, 0
  %tmp_153_783 = zext i5 %i_154 to i64
  %plaintext_addr_154 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_153_783
  store i8 %tmp_data_562, i8* %plaintext_addr_154, align 1
  br label %928

; <label>:930                                     ; preds = %926
  %tmp_1_153 = zext i5 %i_1_153 to i64
  %out_addr_154 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_153
  %tmp_data_563 = load i8* %out_addr_154, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_563, i1 true, i1 false)
  br label %926

; <label>:931                                     ; preds = %932
  %empty_784 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_156)
  %tmp_157 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %940

; <label>:932                                     ; preds = %936, %933
  %i_1_154 = phi i5 [ 0, %933 ], [ %i_4_154, %936 ]
  %exitcond_154 = icmp eq i5 %i_1_154, -16
  %empty_785 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_154 = add i5 %i_1_154, 1
  br i1 %exitcond_154, label %931, label %936

; <label>:933                                     ; preds = %934
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %932

; <label>:934                                     ; preds = %935, %925
  %i_155 = phi i5 [ 0, %925 ], [ %i_3_154, %935 ]
  %exitcond2_154 = icmp eq i5 %i_155, -16
  %empty_786 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_154 = add i5 %i_155, 1
  br i1 %exitcond2_154, label %933, label %935

; <label>:935                                     ; preds = %934
  %empty_787 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_564 = extractvalue { i8, i1, i1 } %empty_787, 0
  %tmp_154_788 = zext i5 %i_155 to i64
  %plaintext_addr_155 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_154_788
  store i8 %tmp_data_564, i8* %plaintext_addr_155, align 1
  br label %934

; <label>:936                                     ; preds = %932
  %tmp_1_154 = zext i5 %i_1_154 to i64
  %out_addr_155 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_154
  %tmp_data_565 = load i8* %out_addr_155, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_565, i1 true, i1 false)
  br label %932

; <label>:937                                     ; preds = %938
  %empty_789 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_157)
  %tmp_158 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %946

; <label>:938                                     ; preds = %942, %939
  %i_1_155 = phi i5 [ 0, %939 ], [ %i_4_155, %942 ]
  %exitcond_155 = icmp eq i5 %i_1_155, -16
  %empty_790 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_155 = add i5 %i_1_155, 1
  br i1 %exitcond_155, label %937, label %942

; <label>:939                                     ; preds = %940
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %938

; <label>:940                                     ; preds = %941, %931
  %i_156 = phi i5 [ 0, %931 ], [ %i_3_155, %941 ]
  %exitcond2_155 = icmp eq i5 %i_156, -16
  %empty_791 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_155 = add i5 %i_156, 1
  br i1 %exitcond2_155, label %939, label %941

; <label>:941                                     ; preds = %940
  %empty_792 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_566 = extractvalue { i8, i1, i1 } %empty_792, 0
  %tmp_155_793 = zext i5 %i_156 to i64
  %plaintext_addr_156 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_155_793
  store i8 %tmp_data_566, i8* %plaintext_addr_156, align 1
  br label %940

; <label>:942                                     ; preds = %938
  %tmp_1_155 = zext i5 %i_1_155 to i64
  %out_addr_156 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_155
  %tmp_data_567 = load i8* %out_addr_156, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_567, i1 true, i1 false)
  br label %938

; <label>:943                                     ; preds = %944
  %empty_794 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_158)
  %tmp_159 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %952

; <label>:944                                     ; preds = %948, %945
  %i_1_156 = phi i5 [ 0, %945 ], [ %i_4_156, %948 ]
  %exitcond_156 = icmp eq i5 %i_1_156, -16
  %empty_795 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_156 = add i5 %i_1_156, 1
  br i1 %exitcond_156, label %943, label %948

; <label>:945                                     ; preds = %946
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %944

; <label>:946                                     ; preds = %947, %937
  %i_157 = phi i5 [ 0, %937 ], [ %i_3_156, %947 ]
  %exitcond2_156 = icmp eq i5 %i_157, -16
  %empty_796 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_156 = add i5 %i_157, 1
  br i1 %exitcond2_156, label %945, label %947

; <label>:947                                     ; preds = %946
  %empty_797 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_568 = extractvalue { i8, i1, i1 } %empty_797, 0
  %tmp_156_798 = zext i5 %i_157 to i64
  %plaintext_addr_157 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_156_798
  store i8 %tmp_data_568, i8* %plaintext_addr_157, align 1
  br label %946

; <label>:948                                     ; preds = %944
  %tmp_1_156 = zext i5 %i_1_156 to i64
  %out_addr_157 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_156
  %tmp_data_569 = load i8* %out_addr_157, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_569, i1 true, i1 false)
  br label %944

; <label>:949                                     ; preds = %950
  %empty_799 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_159)
  %tmp_160 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %958

; <label>:950                                     ; preds = %954, %951
  %i_1_157 = phi i5 [ 0, %951 ], [ %i_4_157, %954 ]
  %exitcond_157 = icmp eq i5 %i_1_157, -16
  %empty_800 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_157 = add i5 %i_1_157, 1
  br i1 %exitcond_157, label %949, label %954

; <label>:951                                     ; preds = %952
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %950

; <label>:952                                     ; preds = %953, %943
  %i_158 = phi i5 [ 0, %943 ], [ %i_3_157, %953 ]
  %exitcond2_157 = icmp eq i5 %i_158, -16
  %empty_801 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_157 = add i5 %i_158, 1
  br i1 %exitcond2_157, label %951, label %953

; <label>:953                                     ; preds = %952
  %empty_802 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_570 = extractvalue { i8, i1, i1 } %empty_802, 0
  %tmp_157_803 = zext i5 %i_158 to i64
  %plaintext_addr_158 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_157_803
  store i8 %tmp_data_570, i8* %plaintext_addr_158, align 1
  br label %952

; <label>:954                                     ; preds = %950
  %tmp_1_157 = zext i5 %i_1_157 to i64
  %out_addr_158 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_157
  %tmp_data_571 = load i8* %out_addr_158, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_571, i1 true, i1 false)
  br label %950

; <label>:955                                     ; preds = %956
  %empty_804 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_160)
  %tmp_161 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %964

; <label>:956                                     ; preds = %960, %957
  %i_1_158 = phi i5 [ 0, %957 ], [ %i_4_158, %960 ]
  %exitcond_158 = icmp eq i5 %i_1_158, -16
  %empty_805 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_158 = add i5 %i_1_158, 1
  br i1 %exitcond_158, label %955, label %960

; <label>:957                                     ; preds = %958
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %956

; <label>:958                                     ; preds = %959, %949
  %i_159 = phi i5 [ 0, %949 ], [ %i_3_158, %959 ]
  %exitcond2_158 = icmp eq i5 %i_159, -16
  %empty_806 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_158 = add i5 %i_159, 1
  br i1 %exitcond2_158, label %957, label %959

; <label>:959                                     ; preds = %958
  %empty_807 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_572 = extractvalue { i8, i1, i1 } %empty_807, 0
  %tmp_158_808 = zext i5 %i_159 to i64
  %plaintext_addr_159 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_158_808
  store i8 %tmp_data_572, i8* %plaintext_addr_159, align 1
  br label %958

; <label>:960                                     ; preds = %956
  %tmp_1_158 = zext i5 %i_1_158 to i64
  %out_addr_159 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_158
  %tmp_data_573 = load i8* %out_addr_159, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_573, i1 true, i1 false)
  br label %956

; <label>:961                                     ; preds = %962
  %empty_809 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_161)
  %tmp_162 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %970

; <label>:962                                     ; preds = %966, %963
  %i_1_159 = phi i5 [ 0, %963 ], [ %i_4_159, %966 ]
  %exitcond_159 = icmp eq i5 %i_1_159, -16
  %empty_810 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_159 = add i5 %i_1_159, 1
  br i1 %exitcond_159, label %961, label %966

; <label>:963                                     ; preds = %964
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %962

; <label>:964                                     ; preds = %965, %955
  %i_160 = phi i5 [ 0, %955 ], [ %i_3_159, %965 ]
  %exitcond2_159 = icmp eq i5 %i_160, -16
  %empty_811 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_159 = add i5 %i_160, 1
  br i1 %exitcond2_159, label %963, label %965

; <label>:965                                     ; preds = %964
  %empty_812 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_574 = extractvalue { i8, i1, i1 } %empty_812, 0
  %tmp_159_813 = zext i5 %i_160 to i64
  %plaintext_addr_160 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_159_813
  store i8 %tmp_data_574, i8* %plaintext_addr_160, align 1
  br label %964

; <label>:966                                     ; preds = %962
  %tmp_1_159 = zext i5 %i_1_159 to i64
  %out_addr_160 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_159
  %tmp_data_575 = load i8* %out_addr_160, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_575, i1 true, i1 false)
  br label %962

; <label>:967                                     ; preds = %968
  %empty_814 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_162)
  %tmp_163 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %976

; <label>:968                                     ; preds = %972, %969
  %i_1_160 = phi i5 [ 0, %969 ], [ %i_4_160, %972 ]
  %exitcond_160 = icmp eq i5 %i_1_160, -16
  %empty_815 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_160 = add i5 %i_1_160, 1
  br i1 %exitcond_160, label %967, label %972

; <label>:969                                     ; preds = %970
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %968

; <label>:970                                     ; preds = %971, %961
  %i_161 = phi i5 [ 0, %961 ], [ %i_3_160, %971 ]
  %exitcond2_160 = icmp eq i5 %i_161, -16
  %empty_816 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_160 = add i5 %i_161, 1
  br i1 %exitcond2_160, label %969, label %971

; <label>:971                                     ; preds = %970
  %empty_817 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_576 = extractvalue { i8, i1, i1 } %empty_817, 0
  %tmp_160_818 = zext i5 %i_161 to i64
  %plaintext_addr_161 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_160_818
  store i8 %tmp_data_576, i8* %plaintext_addr_161, align 1
  br label %970

; <label>:972                                     ; preds = %968
  %tmp_1_160 = zext i5 %i_1_160 to i64
  %out_addr_161 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_160
  %tmp_data_577 = load i8* %out_addr_161, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_577, i1 true, i1 false)
  br label %968

; <label>:973                                     ; preds = %974
  %empty_819 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_163)
  %tmp_164 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %982

; <label>:974                                     ; preds = %978, %975
  %i_1_161 = phi i5 [ 0, %975 ], [ %i_4_161, %978 ]
  %exitcond_161 = icmp eq i5 %i_1_161, -16
  %empty_820 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_161 = add i5 %i_1_161, 1
  br i1 %exitcond_161, label %973, label %978

; <label>:975                                     ; preds = %976
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %974

; <label>:976                                     ; preds = %977, %967
  %i_162 = phi i5 [ 0, %967 ], [ %i_3_161, %977 ]
  %exitcond2_161 = icmp eq i5 %i_162, -16
  %empty_821 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_161 = add i5 %i_162, 1
  br i1 %exitcond2_161, label %975, label %977

; <label>:977                                     ; preds = %976
  %empty_822 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_578 = extractvalue { i8, i1, i1 } %empty_822, 0
  %tmp_161_823 = zext i5 %i_162 to i64
  %plaintext_addr_162 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_161_823
  store i8 %tmp_data_578, i8* %plaintext_addr_162, align 1
  br label %976

; <label>:978                                     ; preds = %974
  %tmp_1_161 = zext i5 %i_1_161 to i64
  %out_addr_162 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_161
  %tmp_data_579 = load i8* %out_addr_162, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_579, i1 true, i1 false)
  br label %974

; <label>:979                                     ; preds = %980
  %empty_824 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_164)
  %tmp_165 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %988

; <label>:980                                     ; preds = %984, %981
  %i_1_162 = phi i5 [ 0, %981 ], [ %i_4_162, %984 ]
  %exitcond_162 = icmp eq i5 %i_1_162, -16
  %empty_825 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_162 = add i5 %i_1_162, 1
  br i1 %exitcond_162, label %979, label %984

; <label>:981                                     ; preds = %982
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %980

; <label>:982                                     ; preds = %983, %973
  %i_163 = phi i5 [ 0, %973 ], [ %i_3_162, %983 ]
  %exitcond2_162 = icmp eq i5 %i_163, -16
  %empty_826 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_162 = add i5 %i_163, 1
  br i1 %exitcond2_162, label %981, label %983

; <label>:983                                     ; preds = %982
  %empty_827 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_580 = extractvalue { i8, i1, i1 } %empty_827, 0
  %tmp_162_828 = zext i5 %i_163 to i64
  %plaintext_addr_163 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_162_828
  store i8 %tmp_data_580, i8* %plaintext_addr_163, align 1
  br label %982

; <label>:984                                     ; preds = %980
  %tmp_1_162 = zext i5 %i_1_162 to i64
  %out_addr_163 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_162
  %tmp_data_581 = load i8* %out_addr_163, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_581, i1 true, i1 false)
  br label %980

; <label>:985                                     ; preds = %986
  %empty_829 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_165)
  %tmp_166 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %994

; <label>:986                                     ; preds = %990, %987
  %i_1_163 = phi i5 [ 0, %987 ], [ %i_4_163, %990 ]
  %exitcond_163 = icmp eq i5 %i_1_163, -16
  %empty_830 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_163 = add i5 %i_1_163, 1
  br i1 %exitcond_163, label %985, label %990

; <label>:987                                     ; preds = %988
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %986

; <label>:988                                     ; preds = %989, %979
  %i_164 = phi i5 [ 0, %979 ], [ %i_3_163, %989 ]
  %exitcond2_163 = icmp eq i5 %i_164, -16
  %empty_831 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_163 = add i5 %i_164, 1
  br i1 %exitcond2_163, label %987, label %989

; <label>:989                                     ; preds = %988
  %empty_832 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_582 = extractvalue { i8, i1, i1 } %empty_832, 0
  %tmp_163_833 = zext i5 %i_164 to i64
  %plaintext_addr_164 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_163_833
  store i8 %tmp_data_582, i8* %plaintext_addr_164, align 1
  br label %988

; <label>:990                                     ; preds = %986
  %tmp_1_163 = zext i5 %i_1_163 to i64
  %out_addr_164 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_163
  %tmp_data_583 = load i8* %out_addr_164, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_583, i1 true, i1 false)
  br label %986

; <label>:991                                     ; preds = %992
  %empty_834 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_166)
  %tmp_167 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1000

; <label>:992                                     ; preds = %996, %993
  %i_1_164 = phi i5 [ 0, %993 ], [ %i_4_164, %996 ]
  %exitcond_164 = icmp eq i5 %i_1_164, -16
  %empty_835 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_164 = add i5 %i_1_164, 1
  br i1 %exitcond_164, label %991, label %996

; <label>:993                                     ; preds = %994
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %992

; <label>:994                                     ; preds = %995, %985
  %i_165 = phi i5 [ 0, %985 ], [ %i_3_164, %995 ]
  %exitcond2_164 = icmp eq i5 %i_165, -16
  %empty_836 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_164 = add i5 %i_165, 1
  br i1 %exitcond2_164, label %993, label %995

; <label>:995                                     ; preds = %994
  %empty_837 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_584 = extractvalue { i8, i1, i1 } %empty_837, 0
  %tmp_164_838 = zext i5 %i_165 to i64
  %plaintext_addr_165 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_164_838
  store i8 %tmp_data_584, i8* %plaintext_addr_165, align 1
  br label %994

; <label>:996                                     ; preds = %992
  %tmp_1_164 = zext i5 %i_1_164 to i64
  %out_addr_165 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_164
  %tmp_data_585 = load i8* %out_addr_165, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_585, i1 true, i1 false)
  br label %992

; <label>:997                                     ; preds = %998
  %empty_839 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_167)
  %tmp_168 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1006

; <label>:998                                     ; preds = %1002, %999
  %i_1_165 = phi i5 [ 0, %999 ], [ %i_4_165, %1002 ]
  %exitcond_165 = icmp eq i5 %i_1_165, -16
  %empty_840 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_165 = add i5 %i_1_165, 1
  br i1 %exitcond_165, label %997, label %1002

; <label>:999                                     ; preds = %1000
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %998

; <label>:1000                                    ; preds = %1001, %991
  %i_166 = phi i5 [ 0, %991 ], [ %i_3_165, %1001 ]
  %exitcond2_165 = icmp eq i5 %i_166, -16
  %empty_841 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_165 = add i5 %i_166, 1
  br i1 %exitcond2_165, label %999, label %1001

; <label>:1001                                    ; preds = %1000
  %empty_842 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_586 = extractvalue { i8, i1, i1 } %empty_842, 0
  %tmp_165_843 = zext i5 %i_166 to i64
  %plaintext_addr_166 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_165_843
  store i8 %tmp_data_586, i8* %plaintext_addr_166, align 1
  br label %1000

; <label>:1002                                    ; preds = %998
  %tmp_1_165 = zext i5 %i_1_165 to i64
  %out_addr_166 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_165
  %tmp_data_587 = load i8* %out_addr_166, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_587, i1 true, i1 false)
  br label %998

; <label>:1003                                    ; preds = %1004
  %empty_844 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_168)
  %tmp_169 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1012

; <label>:1004                                    ; preds = %1008, %1005
  %i_1_166 = phi i5 [ 0, %1005 ], [ %i_4_166, %1008 ]
  %exitcond_166 = icmp eq i5 %i_1_166, -16
  %empty_845 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_166 = add i5 %i_1_166, 1
  br i1 %exitcond_166, label %1003, label %1008

; <label>:1005                                    ; preds = %1006
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1004

; <label>:1006                                    ; preds = %1007, %997
  %i_167 = phi i5 [ 0, %997 ], [ %i_3_166, %1007 ]
  %exitcond2_166 = icmp eq i5 %i_167, -16
  %empty_846 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_166 = add i5 %i_167, 1
  br i1 %exitcond2_166, label %1005, label %1007

; <label>:1007                                    ; preds = %1006
  %empty_847 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_588 = extractvalue { i8, i1, i1 } %empty_847, 0
  %tmp_166_848 = zext i5 %i_167 to i64
  %plaintext_addr_167 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_166_848
  store i8 %tmp_data_588, i8* %plaintext_addr_167, align 1
  br label %1006

; <label>:1008                                    ; preds = %1004
  %tmp_1_166 = zext i5 %i_1_166 to i64
  %out_addr_167 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_166
  %tmp_data_589 = load i8* %out_addr_167, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_589, i1 true, i1 false)
  br label %1004

; <label>:1009                                    ; preds = %1010
  %empty_849 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_169)
  %tmp_170 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1018

; <label>:1010                                    ; preds = %1014, %1011
  %i_1_167 = phi i5 [ 0, %1011 ], [ %i_4_167, %1014 ]
  %exitcond_167 = icmp eq i5 %i_1_167, -16
  %empty_850 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_167 = add i5 %i_1_167, 1
  br i1 %exitcond_167, label %1009, label %1014

; <label>:1011                                    ; preds = %1012
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1010

; <label>:1012                                    ; preds = %1013, %1003
  %i_168 = phi i5 [ 0, %1003 ], [ %i_3_167, %1013 ]
  %exitcond2_167 = icmp eq i5 %i_168, -16
  %empty_851 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_167 = add i5 %i_168, 1
  br i1 %exitcond2_167, label %1011, label %1013

; <label>:1013                                    ; preds = %1012
  %empty_852 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_590 = extractvalue { i8, i1, i1 } %empty_852, 0
  %tmp_167_853 = zext i5 %i_168 to i64
  %plaintext_addr_168 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_167_853
  store i8 %tmp_data_590, i8* %plaintext_addr_168, align 1
  br label %1012

; <label>:1014                                    ; preds = %1010
  %tmp_1_167 = zext i5 %i_1_167 to i64
  %out_addr_168 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_167
  %tmp_data_591 = load i8* %out_addr_168, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_591, i1 true, i1 false)
  br label %1010

; <label>:1015                                    ; preds = %1016
  %empty_854 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_170)
  %tmp_171 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1024

; <label>:1016                                    ; preds = %1020, %1017
  %i_1_168 = phi i5 [ 0, %1017 ], [ %i_4_168, %1020 ]
  %exitcond_168 = icmp eq i5 %i_1_168, -16
  %empty_855 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_168 = add i5 %i_1_168, 1
  br i1 %exitcond_168, label %1015, label %1020

; <label>:1017                                    ; preds = %1018
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1016

; <label>:1018                                    ; preds = %1019, %1009
  %i_169 = phi i5 [ 0, %1009 ], [ %i_3_168, %1019 ]
  %exitcond2_168 = icmp eq i5 %i_169, -16
  %empty_856 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_168 = add i5 %i_169, 1
  br i1 %exitcond2_168, label %1017, label %1019

; <label>:1019                                    ; preds = %1018
  %empty_857 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_592 = extractvalue { i8, i1, i1 } %empty_857, 0
  %tmp_168_858 = zext i5 %i_169 to i64
  %plaintext_addr_169 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_168_858
  store i8 %tmp_data_592, i8* %plaintext_addr_169, align 1
  br label %1018

; <label>:1020                                    ; preds = %1016
  %tmp_1_168 = zext i5 %i_1_168 to i64
  %out_addr_169 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_168
  %tmp_data_593 = load i8* %out_addr_169, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_593, i1 true, i1 false)
  br label %1016

; <label>:1021                                    ; preds = %1022
  %empty_859 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_171)
  %tmp_172 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1030

; <label>:1022                                    ; preds = %1026, %1023
  %i_1_169 = phi i5 [ 0, %1023 ], [ %i_4_169, %1026 ]
  %exitcond_169 = icmp eq i5 %i_1_169, -16
  %empty_860 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_169 = add i5 %i_1_169, 1
  br i1 %exitcond_169, label %1021, label %1026

; <label>:1023                                    ; preds = %1024
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1022

; <label>:1024                                    ; preds = %1025, %1015
  %i_170 = phi i5 [ 0, %1015 ], [ %i_3_169, %1025 ]
  %exitcond2_169 = icmp eq i5 %i_170, -16
  %empty_861 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_169 = add i5 %i_170, 1
  br i1 %exitcond2_169, label %1023, label %1025

; <label>:1025                                    ; preds = %1024
  %empty_862 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_594 = extractvalue { i8, i1, i1 } %empty_862, 0
  %tmp_169_863 = zext i5 %i_170 to i64
  %plaintext_addr_170 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_169_863
  store i8 %tmp_data_594, i8* %plaintext_addr_170, align 1
  br label %1024

; <label>:1026                                    ; preds = %1022
  %tmp_1_169 = zext i5 %i_1_169 to i64
  %out_addr_170 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_169
  %tmp_data_595 = load i8* %out_addr_170, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_595, i1 true, i1 false)
  br label %1022

; <label>:1027                                    ; preds = %1028
  %empty_864 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_172)
  %tmp_173 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1036

; <label>:1028                                    ; preds = %1032, %1029
  %i_1_170 = phi i5 [ 0, %1029 ], [ %i_4_170, %1032 ]
  %exitcond_170 = icmp eq i5 %i_1_170, -16
  %empty_865 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_170 = add i5 %i_1_170, 1
  br i1 %exitcond_170, label %1027, label %1032

; <label>:1029                                    ; preds = %1030
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1028

; <label>:1030                                    ; preds = %1031, %1021
  %i_171 = phi i5 [ 0, %1021 ], [ %i_3_170, %1031 ]
  %exitcond2_170 = icmp eq i5 %i_171, -16
  %empty_866 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_170 = add i5 %i_171, 1
  br i1 %exitcond2_170, label %1029, label %1031

; <label>:1031                                    ; preds = %1030
  %empty_867 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_596 = extractvalue { i8, i1, i1 } %empty_867, 0
  %tmp_170_868 = zext i5 %i_171 to i64
  %plaintext_addr_171 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_170_868
  store i8 %tmp_data_596, i8* %plaintext_addr_171, align 1
  br label %1030

; <label>:1032                                    ; preds = %1028
  %tmp_1_170 = zext i5 %i_1_170 to i64
  %out_addr_171 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_170
  %tmp_data_597 = load i8* %out_addr_171, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_597, i1 true, i1 false)
  br label %1028

; <label>:1033                                    ; preds = %1034
  %empty_869 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_173)
  %tmp_174 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1042

; <label>:1034                                    ; preds = %1038, %1035
  %i_1_171 = phi i5 [ 0, %1035 ], [ %i_4_171, %1038 ]
  %exitcond_171 = icmp eq i5 %i_1_171, -16
  %empty_870 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_171 = add i5 %i_1_171, 1
  br i1 %exitcond_171, label %1033, label %1038

; <label>:1035                                    ; preds = %1036
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1034

; <label>:1036                                    ; preds = %1037, %1027
  %i_172 = phi i5 [ 0, %1027 ], [ %i_3_171, %1037 ]
  %exitcond2_171 = icmp eq i5 %i_172, -16
  %empty_871 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_171 = add i5 %i_172, 1
  br i1 %exitcond2_171, label %1035, label %1037

; <label>:1037                                    ; preds = %1036
  %empty_872 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_598 = extractvalue { i8, i1, i1 } %empty_872, 0
  %tmp_171_873 = zext i5 %i_172 to i64
  %plaintext_addr_172 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_171_873
  store i8 %tmp_data_598, i8* %plaintext_addr_172, align 1
  br label %1036

; <label>:1038                                    ; preds = %1034
  %tmp_1_171 = zext i5 %i_1_171 to i64
  %out_addr_172 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_171
  %tmp_data_599 = load i8* %out_addr_172, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_599, i1 true, i1 false)
  br label %1034

; <label>:1039                                    ; preds = %1040
  %empty_874 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_174)
  %tmp_175 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1048

; <label>:1040                                    ; preds = %1044, %1041
  %i_1_172 = phi i5 [ 0, %1041 ], [ %i_4_172, %1044 ]
  %exitcond_172 = icmp eq i5 %i_1_172, -16
  %empty_875 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_172 = add i5 %i_1_172, 1
  br i1 %exitcond_172, label %1039, label %1044

; <label>:1041                                    ; preds = %1042
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1040

; <label>:1042                                    ; preds = %1043, %1033
  %i_173 = phi i5 [ 0, %1033 ], [ %i_3_172, %1043 ]
  %exitcond2_172 = icmp eq i5 %i_173, -16
  %empty_876 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_172 = add i5 %i_173, 1
  br i1 %exitcond2_172, label %1041, label %1043

; <label>:1043                                    ; preds = %1042
  %empty_877 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_600 = extractvalue { i8, i1, i1 } %empty_877, 0
  %tmp_172_878 = zext i5 %i_173 to i64
  %plaintext_addr_173 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_172_878
  store i8 %tmp_data_600, i8* %plaintext_addr_173, align 1
  br label %1042

; <label>:1044                                    ; preds = %1040
  %tmp_1_172 = zext i5 %i_1_172 to i64
  %out_addr_173 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_172
  %tmp_data_601 = load i8* %out_addr_173, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_601, i1 true, i1 false)
  br label %1040

; <label>:1045                                    ; preds = %1046
  %empty_879 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_175)
  %tmp_176 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1054

; <label>:1046                                    ; preds = %1050, %1047
  %i_1_173 = phi i5 [ 0, %1047 ], [ %i_4_173, %1050 ]
  %exitcond_173 = icmp eq i5 %i_1_173, -16
  %empty_880 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_173 = add i5 %i_1_173, 1
  br i1 %exitcond_173, label %1045, label %1050

; <label>:1047                                    ; preds = %1048
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1046

; <label>:1048                                    ; preds = %1049, %1039
  %i_174 = phi i5 [ 0, %1039 ], [ %i_3_173, %1049 ]
  %exitcond2_173 = icmp eq i5 %i_174, -16
  %empty_881 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_173 = add i5 %i_174, 1
  br i1 %exitcond2_173, label %1047, label %1049

; <label>:1049                                    ; preds = %1048
  %empty_882 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_602 = extractvalue { i8, i1, i1 } %empty_882, 0
  %tmp_173_883 = zext i5 %i_174 to i64
  %plaintext_addr_174 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_173_883
  store i8 %tmp_data_602, i8* %plaintext_addr_174, align 1
  br label %1048

; <label>:1050                                    ; preds = %1046
  %tmp_1_173 = zext i5 %i_1_173 to i64
  %out_addr_174 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_173
  %tmp_data_603 = load i8* %out_addr_174, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_603, i1 true, i1 false)
  br label %1046

; <label>:1051                                    ; preds = %1052
  %empty_884 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_176)
  %tmp_177 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1060

; <label>:1052                                    ; preds = %1056, %1053
  %i_1_174 = phi i5 [ 0, %1053 ], [ %i_4_174, %1056 ]
  %exitcond_174 = icmp eq i5 %i_1_174, -16
  %empty_885 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_174 = add i5 %i_1_174, 1
  br i1 %exitcond_174, label %1051, label %1056

; <label>:1053                                    ; preds = %1054
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1052

; <label>:1054                                    ; preds = %1055, %1045
  %i_175 = phi i5 [ 0, %1045 ], [ %i_3_174, %1055 ]
  %exitcond2_174 = icmp eq i5 %i_175, -16
  %empty_886 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_174 = add i5 %i_175, 1
  br i1 %exitcond2_174, label %1053, label %1055

; <label>:1055                                    ; preds = %1054
  %empty_887 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_604 = extractvalue { i8, i1, i1 } %empty_887, 0
  %tmp_174_888 = zext i5 %i_175 to i64
  %plaintext_addr_175 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_174_888
  store i8 %tmp_data_604, i8* %plaintext_addr_175, align 1
  br label %1054

; <label>:1056                                    ; preds = %1052
  %tmp_1_174 = zext i5 %i_1_174 to i64
  %out_addr_175 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_174
  %tmp_data_605 = load i8* %out_addr_175, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_605, i1 true, i1 false)
  br label %1052

; <label>:1057                                    ; preds = %1058
  %empty_889 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_177)
  %tmp_178 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1066

; <label>:1058                                    ; preds = %1062, %1059
  %i_1_175 = phi i5 [ 0, %1059 ], [ %i_4_175, %1062 ]
  %exitcond_175 = icmp eq i5 %i_1_175, -16
  %empty_890 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_175 = add i5 %i_1_175, 1
  br i1 %exitcond_175, label %1057, label %1062

; <label>:1059                                    ; preds = %1060
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1058

; <label>:1060                                    ; preds = %1061, %1051
  %i_176 = phi i5 [ 0, %1051 ], [ %i_3_175, %1061 ]
  %exitcond2_175 = icmp eq i5 %i_176, -16
  %empty_891 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_175 = add i5 %i_176, 1
  br i1 %exitcond2_175, label %1059, label %1061

; <label>:1061                                    ; preds = %1060
  %empty_892 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_606 = extractvalue { i8, i1, i1 } %empty_892, 0
  %tmp_175_893 = zext i5 %i_176 to i64
  %plaintext_addr_176 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_175_893
  store i8 %tmp_data_606, i8* %plaintext_addr_176, align 1
  br label %1060

; <label>:1062                                    ; preds = %1058
  %tmp_1_175 = zext i5 %i_1_175 to i64
  %out_addr_176 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_175
  %tmp_data_607 = load i8* %out_addr_176, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_607, i1 true, i1 false)
  br label %1058

; <label>:1063                                    ; preds = %1064
  %empty_894 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_178)
  %tmp_179 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1072

; <label>:1064                                    ; preds = %1068, %1065
  %i_1_176 = phi i5 [ 0, %1065 ], [ %i_4_176, %1068 ]
  %exitcond_176 = icmp eq i5 %i_1_176, -16
  %empty_895 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_176 = add i5 %i_1_176, 1
  br i1 %exitcond_176, label %1063, label %1068

; <label>:1065                                    ; preds = %1066
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1064

; <label>:1066                                    ; preds = %1067, %1057
  %i_177 = phi i5 [ 0, %1057 ], [ %i_3_176, %1067 ]
  %exitcond2_176 = icmp eq i5 %i_177, -16
  %empty_896 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_176 = add i5 %i_177, 1
  br i1 %exitcond2_176, label %1065, label %1067

; <label>:1067                                    ; preds = %1066
  %empty_897 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_608 = extractvalue { i8, i1, i1 } %empty_897, 0
  %tmp_176_898 = zext i5 %i_177 to i64
  %plaintext_addr_177 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_176_898
  store i8 %tmp_data_608, i8* %plaintext_addr_177, align 1
  br label %1066

; <label>:1068                                    ; preds = %1064
  %tmp_1_176 = zext i5 %i_1_176 to i64
  %out_addr_177 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_176
  %tmp_data_609 = load i8* %out_addr_177, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_609, i1 true, i1 false)
  br label %1064

; <label>:1069                                    ; preds = %1070
  %empty_899 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_179)
  %tmp_180 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1078

; <label>:1070                                    ; preds = %1074, %1071
  %i_1_177 = phi i5 [ 0, %1071 ], [ %i_4_177, %1074 ]
  %exitcond_177 = icmp eq i5 %i_1_177, -16
  %empty_900 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_177 = add i5 %i_1_177, 1
  br i1 %exitcond_177, label %1069, label %1074

; <label>:1071                                    ; preds = %1072
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1070

; <label>:1072                                    ; preds = %1073, %1063
  %i_178 = phi i5 [ 0, %1063 ], [ %i_3_177, %1073 ]
  %exitcond2_177 = icmp eq i5 %i_178, -16
  %empty_901 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_177 = add i5 %i_178, 1
  br i1 %exitcond2_177, label %1071, label %1073

; <label>:1073                                    ; preds = %1072
  %empty_902 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_610 = extractvalue { i8, i1, i1 } %empty_902, 0
  %tmp_177_903 = zext i5 %i_178 to i64
  %plaintext_addr_178 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_177_903
  store i8 %tmp_data_610, i8* %plaintext_addr_178, align 1
  br label %1072

; <label>:1074                                    ; preds = %1070
  %tmp_1_177 = zext i5 %i_1_177 to i64
  %out_addr_178 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_177
  %tmp_data_611 = load i8* %out_addr_178, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_611, i1 true, i1 false)
  br label %1070

; <label>:1075                                    ; preds = %1076
  %empty_904 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_180)
  %tmp_181 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1084

; <label>:1076                                    ; preds = %1080, %1077
  %i_1_178 = phi i5 [ 0, %1077 ], [ %i_4_178, %1080 ]
  %exitcond_178 = icmp eq i5 %i_1_178, -16
  %empty_905 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_178 = add i5 %i_1_178, 1
  br i1 %exitcond_178, label %1075, label %1080

; <label>:1077                                    ; preds = %1078
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1076

; <label>:1078                                    ; preds = %1079, %1069
  %i_179 = phi i5 [ 0, %1069 ], [ %i_3_178, %1079 ]
  %exitcond2_178 = icmp eq i5 %i_179, -16
  %empty_906 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_178 = add i5 %i_179, 1
  br i1 %exitcond2_178, label %1077, label %1079

; <label>:1079                                    ; preds = %1078
  %empty_907 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_612 = extractvalue { i8, i1, i1 } %empty_907, 0
  %tmp_178_908 = zext i5 %i_179 to i64
  %plaintext_addr_179 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_178_908
  store i8 %tmp_data_612, i8* %plaintext_addr_179, align 1
  br label %1078

; <label>:1080                                    ; preds = %1076
  %tmp_1_178 = zext i5 %i_1_178 to i64
  %out_addr_179 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_178
  %tmp_data_613 = load i8* %out_addr_179, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_613, i1 true, i1 false)
  br label %1076

; <label>:1081                                    ; preds = %1082
  %empty_909 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_181)
  %tmp_182 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1090

; <label>:1082                                    ; preds = %1086, %1083
  %i_1_179 = phi i5 [ 0, %1083 ], [ %i_4_179, %1086 ]
  %exitcond_179 = icmp eq i5 %i_1_179, -16
  %empty_910 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_179 = add i5 %i_1_179, 1
  br i1 %exitcond_179, label %1081, label %1086

; <label>:1083                                    ; preds = %1084
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1082

; <label>:1084                                    ; preds = %1085, %1075
  %i_180 = phi i5 [ 0, %1075 ], [ %i_3_179, %1085 ]
  %exitcond2_179 = icmp eq i5 %i_180, -16
  %empty_911 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_179 = add i5 %i_180, 1
  br i1 %exitcond2_179, label %1083, label %1085

; <label>:1085                                    ; preds = %1084
  %empty_912 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_614 = extractvalue { i8, i1, i1 } %empty_912, 0
  %tmp_179_913 = zext i5 %i_180 to i64
  %plaintext_addr_180 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_179_913
  store i8 %tmp_data_614, i8* %plaintext_addr_180, align 1
  br label %1084

; <label>:1086                                    ; preds = %1082
  %tmp_1_179 = zext i5 %i_1_179 to i64
  %out_addr_180 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_179
  %tmp_data_615 = load i8* %out_addr_180, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_615, i1 true, i1 false)
  br label %1082

; <label>:1087                                    ; preds = %1088
  %empty_914 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_182)
  %tmp_183 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1096

; <label>:1088                                    ; preds = %1092, %1089
  %i_1_180 = phi i5 [ 0, %1089 ], [ %i_4_180, %1092 ]
  %exitcond_180 = icmp eq i5 %i_1_180, -16
  %empty_915 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_180 = add i5 %i_1_180, 1
  br i1 %exitcond_180, label %1087, label %1092

; <label>:1089                                    ; preds = %1090
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1088

; <label>:1090                                    ; preds = %1091, %1081
  %i_181 = phi i5 [ 0, %1081 ], [ %i_3_180, %1091 ]
  %exitcond2_180 = icmp eq i5 %i_181, -16
  %empty_916 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_180 = add i5 %i_181, 1
  br i1 %exitcond2_180, label %1089, label %1091

; <label>:1091                                    ; preds = %1090
  %empty_917 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_616 = extractvalue { i8, i1, i1 } %empty_917, 0
  %tmp_180_918 = zext i5 %i_181 to i64
  %plaintext_addr_181 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_180_918
  store i8 %tmp_data_616, i8* %plaintext_addr_181, align 1
  br label %1090

; <label>:1092                                    ; preds = %1088
  %tmp_1_180 = zext i5 %i_1_180 to i64
  %out_addr_181 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_180
  %tmp_data_617 = load i8* %out_addr_181, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_617, i1 true, i1 false)
  br label %1088

; <label>:1093                                    ; preds = %1094
  %empty_919 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_183)
  %tmp_184 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1102

; <label>:1094                                    ; preds = %1098, %1095
  %i_1_181 = phi i5 [ 0, %1095 ], [ %i_4_181, %1098 ]
  %exitcond_181 = icmp eq i5 %i_1_181, -16
  %empty_920 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_181 = add i5 %i_1_181, 1
  br i1 %exitcond_181, label %1093, label %1098

; <label>:1095                                    ; preds = %1096
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1094

; <label>:1096                                    ; preds = %1097, %1087
  %i_182 = phi i5 [ 0, %1087 ], [ %i_3_181, %1097 ]
  %exitcond2_181 = icmp eq i5 %i_182, -16
  %empty_921 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_181 = add i5 %i_182, 1
  br i1 %exitcond2_181, label %1095, label %1097

; <label>:1097                                    ; preds = %1096
  %empty_922 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_618 = extractvalue { i8, i1, i1 } %empty_922, 0
  %tmp_181_923 = zext i5 %i_182 to i64
  %plaintext_addr_182 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_181_923
  store i8 %tmp_data_618, i8* %plaintext_addr_182, align 1
  br label %1096

; <label>:1098                                    ; preds = %1094
  %tmp_1_181 = zext i5 %i_1_181 to i64
  %out_addr_182 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_181
  %tmp_data_619 = load i8* %out_addr_182, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_619, i1 true, i1 false)
  br label %1094

; <label>:1099                                    ; preds = %1100
  %empty_924 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_184)
  %tmp_185 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1108

; <label>:1100                                    ; preds = %1104, %1101
  %i_1_182 = phi i5 [ 0, %1101 ], [ %i_4_182, %1104 ]
  %exitcond_182 = icmp eq i5 %i_1_182, -16
  %empty_925 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_182 = add i5 %i_1_182, 1
  br i1 %exitcond_182, label %1099, label %1104

; <label>:1101                                    ; preds = %1102
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1100

; <label>:1102                                    ; preds = %1103, %1093
  %i_183 = phi i5 [ 0, %1093 ], [ %i_3_182, %1103 ]
  %exitcond2_182 = icmp eq i5 %i_183, -16
  %empty_926 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_182 = add i5 %i_183, 1
  br i1 %exitcond2_182, label %1101, label %1103

; <label>:1103                                    ; preds = %1102
  %empty_927 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_620 = extractvalue { i8, i1, i1 } %empty_927, 0
  %tmp_182_928 = zext i5 %i_183 to i64
  %plaintext_addr_183 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_182_928
  store i8 %tmp_data_620, i8* %plaintext_addr_183, align 1
  br label %1102

; <label>:1104                                    ; preds = %1100
  %tmp_1_182 = zext i5 %i_1_182 to i64
  %out_addr_183 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_182
  %tmp_data_621 = load i8* %out_addr_183, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_621, i1 true, i1 false)
  br label %1100

; <label>:1105                                    ; preds = %1106
  %empty_929 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_185)
  %tmp_186 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1114

; <label>:1106                                    ; preds = %1110, %1107
  %i_1_183 = phi i5 [ 0, %1107 ], [ %i_4_183, %1110 ]
  %exitcond_183 = icmp eq i5 %i_1_183, -16
  %empty_930 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_183 = add i5 %i_1_183, 1
  br i1 %exitcond_183, label %1105, label %1110

; <label>:1107                                    ; preds = %1108
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1106

; <label>:1108                                    ; preds = %1109, %1099
  %i_184 = phi i5 [ 0, %1099 ], [ %i_3_183, %1109 ]
  %exitcond2_183 = icmp eq i5 %i_184, -16
  %empty_931 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_183 = add i5 %i_184, 1
  br i1 %exitcond2_183, label %1107, label %1109

; <label>:1109                                    ; preds = %1108
  %empty_932 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_622 = extractvalue { i8, i1, i1 } %empty_932, 0
  %tmp_183_933 = zext i5 %i_184 to i64
  %plaintext_addr_184 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_183_933
  store i8 %tmp_data_622, i8* %plaintext_addr_184, align 1
  br label %1108

; <label>:1110                                    ; preds = %1106
  %tmp_1_183 = zext i5 %i_1_183 to i64
  %out_addr_184 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_183
  %tmp_data_623 = load i8* %out_addr_184, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_623, i1 true, i1 false)
  br label %1106

; <label>:1111                                    ; preds = %1112
  %empty_934 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_186)
  %tmp_187 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1120

; <label>:1112                                    ; preds = %1116, %1113
  %i_1_184 = phi i5 [ 0, %1113 ], [ %i_4_184, %1116 ]
  %exitcond_184 = icmp eq i5 %i_1_184, -16
  %empty_935 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_184 = add i5 %i_1_184, 1
  br i1 %exitcond_184, label %1111, label %1116

; <label>:1113                                    ; preds = %1114
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1112

; <label>:1114                                    ; preds = %1115, %1105
  %i_185 = phi i5 [ 0, %1105 ], [ %i_3_184, %1115 ]
  %exitcond2_184 = icmp eq i5 %i_185, -16
  %empty_936 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_184 = add i5 %i_185, 1
  br i1 %exitcond2_184, label %1113, label %1115

; <label>:1115                                    ; preds = %1114
  %empty_937 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_624 = extractvalue { i8, i1, i1 } %empty_937, 0
  %tmp_184_938 = zext i5 %i_185 to i64
  %plaintext_addr_185 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_184_938
  store i8 %tmp_data_624, i8* %plaintext_addr_185, align 1
  br label %1114

; <label>:1116                                    ; preds = %1112
  %tmp_1_184 = zext i5 %i_1_184 to i64
  %out_addr_185 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_184
  %tmp_data_625 = load i8* %out_addr_185, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_625, i1 true, i1 false)
  br label %1112

; <label>:1117                                    ; preds = %1118
  %empty_939 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_187)
  %tmp_188 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1126

; <label>:1118                                    ; preds = %1122, %1119
  %i_1_185 = phi i5 [ 0, %1119 ], [ %i_4_185, %1122 ]
  %exitcond_185 = icmp eq i5 %i_1_185, -16
  %empty_940 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_185 = add i5 %i_1_185, 1
  br i1 %exitcond_185, label %1117, label %1122

; <label>:1119                                    ; preds = %1120
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1118

; <label>:1120                                    ; preds = %1121, %1111
  %i_186 = phi i5 [ 0, %1111 ], [ %i_3_185, %1121 ]
  %exitcond2_185 = icmp eq i5 %i_186, -16
  %empty_941 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_185 = add i5 %i_186, 1
  br i1 %exitcond2_185, label %1119, label %1121

; <label>:1121                                    ; preds = %1120
  %empty_942 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_626 = extractvalue { i8, i1, i1 } %empty_942, 0
  %tmp_185_943 = zext i5 %i_186 to i64
  %plaintext_addr_186 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_185_943
  store i8 %tmp_data_626, i8* %plaintext_addr_186, align 1
  br label %1120

; <label>:1122                                    ; preds = %1118
  %tmp_1_185 = zext i5 %i_1_185 to i64
  %out_addr_186 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_185
  %tmp_data_627 = load i8* %out_addr_186, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_627, i1 true, i1 false)
  br label %1118

; <label>:1123                                    ; preds = %1124
  %empty_944 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_188)
  %tmp_189 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1132

; <label>:1124                                    ; preds = %1128, %1125
  %i_1_186 = phi i5 [ 0, %1125 ], [ %i_4_186, %1128 ]
  %exitcond_186 = icmp eq i5 %i_1_186, -16
  %empty_945 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_186 = add i5 %i_1_186, 1
  br i1 %exitcond_186, label %1123, label %1128

; <label>:1125                                    ; preds = %1126
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1124

; <label>:1126                                    ; preds = %1127, %1117
  %i_187 = phi i5 [ 0, %1117 ], [ %i_3_186, %1127 ]
  %exitcond2_186 = icmp eq i5 %i_187, -16
  %empty_946 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_186 = add i5 %i_187, 1
  br i1 %exitcond2_186, label %1125, label %1127

; <label>:1127                                    ; preds = %1126
  %empty_947 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_628 = extractvalue { i8, i1, i1 } %empty_947, 0
  %tmp_186_948 = zext i5 %i_187 to i64
  %plaintext_addr_187 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_186_948
  store i8 %tmp_data_628, i8* %plaintext_addr_187, align 1
  br label %1126

; <label>:1128                                    ; preds = %1124
  %tmp_1_186 = zext i5 %i_1_186 to i64
  %out_addr_187 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_186
  %tmp_data_629 = load i8* %out_addr_187, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_629, i1 true, i1 false)
  br label %1124

; <label>:1129                                    ; preds = %1130
  %empty_949 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_189)
  %tmp_190 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1138

; <label>:1130                                    ; preds = %1134, %1131
  %i_1_187 = phi i5 [ 0, %1131 ], [ %i_4_187, %1134 ]
  %exitcond_187 = icmp eq i5 %i_1_187, -16
  %empty_950 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_187 = add i5 %i_1_187, 1
  br i1 %exitcond_187, label %1129, label %1134

; <label>:1131                                    ; preds = %1132
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1130

; <label>:1132                                    ; preds = %1133, %1123
  %i_188 = phi i5 [ 0, %1123 ], [ %i_3_187, %1133 ]
  %exitcond2_187 = icmp eq i5 %i_188, -16
  %empty_951 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_187 = add i5 %i_188, 1
  br i1 %exitcond2_187, label %1131, label %1133

; <label>:1133                                    ; preds = %1132
  %empty_952 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_630 = extractvalue { i8, i1, i1 } %empty_952, 0
  %tmp_187_953 = zext i5 %i_188 to i64
  %plaintext_addr_188 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_187_953
  store i8 %tmp_data_630, i8* %plaintext_addr_188, align 1
  br label %1132

; <label>:1134                                    ; preds = %1130
  %tmp_1_187 = zext i5 %i_1_187 to i64
  %out_addr_188 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_187
  %tmp_data_631 = load i8* %out_addr_188, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_631, i1 true, i1 false)
  br label %1130

; <label>:1135                                    ; preds = %1136
  %empty_954 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_190)
  %tmp_191 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1144

; <label>:1136                                    ; preds = %1140, %1137
  %i_1_188 = phi i5 [ 0, %1137 ], [ %i_4_188, %1140 ]
  %exitcond_188 = icmp eq i5 %i_1_188, -16
  %empty_955 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_188 = add i5 %i_1_188, 1
  br i1 %exitcond_188, label %1135, label %1140

; <label>:1137                                    ; preds = %1138
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1136

; <label>:1138                                    ; preds = %1139, %1129
  %i_189 = phi i5 [ 0, %1129 ], [ %i_3_188, %1139 ]
  %exitcond2_188 = icmp eq i5 %i_189, -16
  %empty_956 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_188 = add i5 %i_189, 1
  br i1 %exitcond2_188, label %1137, label %1139

; <label>:1139                                    ; preds = %1138
  %empty_957 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_632 = extractvalue { i8, i1, i1 } %empty_957, 0
  %tmp_188_958 = zext i5 %i_189 to i64
  %plaintext_addr_189 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_188_958
  store i8 %tmp_data_632, i8* %plaintext_addr_189, align 1
  br label %1138

; <label>:1140                                    ; preds = %1136
  %tmp_1_188 = zext i5 %i_1_188 to i64
  %out_addr_189 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_188
  %tmp_data_633 = load i8* %out_addr_189, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_633, i1 true, i1 false)
  br label %1136

; <label>:1141                                    ; preds = %1142
  %empty_959 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_191)
  %tmp_192 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1150

; <label>:1142                                    ; preds = %1146, %1143
  %i_1_189 = phi i5 [ 0, %1143 ], [ %i_4_189, %1146 ]
  %exitcond_189 = icmp eq i5 %i_1_189, -16
  %empty_960 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_189 = add i5 %i_1_189, 1
  br i1 %exitcond_189, label %1141, label %1146

; <label>:1143                                    ; preds = %1144
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1142

; <label>:1144                                    ; preds = %1145, %1135
  %i_190 = phi i5 [ 0, %1135 ], [ %i_3_189, %1145 ]
  %exitcond2_189 = icmp eq i5 %i_190, -16
  %empty_961 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_189 = add i5 %i_190, 1
  br i1 %exitcond2_189, label %1143, label %1145

; <label>:1145                                    ; preds = %1144
  %empty_962 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_634 = extractvalue { i8, i1, i1 } %empty_962, 0
  %tmp_189_963 = zext i5 %i_190 to i64
  %plaintext_addr_190 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_189_963
  store i8 %tmp_data_634, i8* %plaintext_addr_190, align 1
  br label %1144

; <label>:1146                                    ; preds = %1142
  %tmp_1_189 = zext i5 %i_1_189 to i64
  %out_addr_190 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_189
  %tmp_data_635 = load i8* %out_addr_190, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_635, i1 true, i1 false)
  br label %1142

; <label>:1147                                    ; preds = %1148
  %empty_964 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_192)
  %tmp_193 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1156

; <label>:1148                                    ; preds = %1152, %1149
  %i_1_190 = phi i5 [ 0, %1149 ], [ %i_4_190, %1152 ]
  %exitcond_190 = icmp eq i5 %i_1_190, -16
  %empty_965 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_190 = add i5 %i_1_190, 1
  br i1 %exitcond_190, label %1147, label %1152

; <label>:1149                                    ; preds = %1150
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1148

; <label>:1150                                    ; preds = %1151, %1141
  %i_191 = phi i5 [ 0, %1141 ], [ %i_3_190, %1151 ]
  %exitcond2_190 = icmp eq i5 %i_191, -16
  %empty_966 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_190 = add i5 %i_191, 1
  br i1 %exitcond2_190, label %1149, label %1151

; <label>:1151                                    ; preds = %1150
  %empty_967 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_636 = extractvalue { i8, i1, i1 } %empty_967, 0
  %tmp_190_968 = zext i5 %i_191 to i64
  %plaintext_addr_191 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_190_968
  store i8 %tmp_data_636, i8* %plaintext_addr_191, align 1
  br label %1150

; <label>:1152                                    ; preds = %1148
  %tmp_1_190 = zext i5 %i_1_190 to i64
  %out_addr_191 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_190
  %tmp_data_637 = load i8* %out_addr_191, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_637, i1 true, i1 false)
  br label %1148

; <label>:1153                                    ; preds = %1154
  %empty_969 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_193)
  %tmp_194 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1162

; <label>:1154                                    ; preds = %1158, %1155
  %i_1_191 = phi i5 [ 0, %1155 ], [ %i_4_191, %1158 ]
  %exitcond_191 = icmp eq i5 %i_1_191, -16
  %empty_970 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_191 = add i5 %i_1_191, 1
  br i1 %exitcond_191, label %1153, label %1158

; <label>:1155                                    ; preds = %1156
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1154

; <label>:1156                                    ; preds = %1157, %1147
  %i_192 = phi i5 [ 0, %1147 ], [ %i_3_191, %1157 ]
  %exitcond2_191 = icmp eq i5 %i_192, -16
  %empty_971 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_191 = add i5 %i_192, 1
  br i1 %exitcond2_191, label %1155, label %1157

; <label>:1157                                    ; preds = %1156
  %empty_972 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_638 = extractvalue { i8, i1, i1 } %empty_972, 0
  %tmp_191_973 = zext i5 %i_192 to i64
  %plaintext_addr_192 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_191_973
  store i8 %tmp_data_638, i8* %plaintext_addr_192, align 1
  br label %1156

; <label>:1158                                    ; preds = %1154
  %tmp_1_191 = zext i5 %i_1_191 to i64
  %out_addr_192 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_191
  %tmp_data_639 = load i8* %out_addr_192, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_639, i1 true, i1 false)
  br label %1154

; <label>:1159                                    ; preds = %1160
  %empty_974 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_194)
  %tmp_195 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1168

; <label>:1160                                    ; preds = %1164, %1161
  %i_1_192 = phi i5 [ 0, %1161 ], [ %i_4_192, %1164 ]
  %exitcond_192 = icmp eq i5 %i_1_192, -16
  %empty_975 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_192 = add i5 %i_1_192, 1
  br i1 %exitcond_192, label %1159, label %1164

; <label>:1161                                    ; preds = %1162
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1160

; <label>:1162                                    ; preds = %1163, %1153
  %i_193 = phi i5 [ 0, %1153 ], [ %i_3_192, %1163 ]
  %exitcond2_192 = icmp eq i5 %i_193, -16
  %empty_976 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_192 = add i5 %i_193, 1
  br i1 %exitcond2_192, label %1161, label %1163

; <label>:1163                                    ; preds = %1162
  %empty_977 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_640 = extractvalue { i8, i1, i1 } %empty_977, 0
  %tmp_192_978 = zext i5 %i_193 to i64
  %plaintext_addr_193 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_192_978
  store i8 %tmp_data_640, i8* %plaintext_addr_193, align 1
  br label %1162

; <label>:1164                                    ; preds = %1160
  %tmp_1_192 = zext i5 %i_1_192 to i64
  %out_addr_193 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_192
  %tmp_data_641 = load i8* %out_addr_193, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_641, i1 true, i1 false)
  br label %1160

; <label>:1165                                    ; preds = %1166
  %empty_979 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_195)
  %tmp_196 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1174

; <label>:1166                                    ; preds = %1170, %1167
  %i_1_193 = phi i5 [ 0, %1167 ], [ %i_4_193, %1170 ]
  %exitcond_193 = icmp eq i5 %i_1_193, -16
  %empty_980 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_193 = add i5 %i_1_193, 1
  br i1 %exitcond_193, label %1165, label %1170

; <label>:1167                                    ; preds = %1168
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1166

; <label>:1168                                    ; preds = %1169, %1159
  %i_194 = phi i5 [ 0, %1159 ], [ %i_3_193, %1169 ]
  %exitcond2_193 = icmp eq i5 %i_194, -16
  %empty_981 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_193 = add i5 %i_194, 1
  br i1 %exitcond2_193, label %1167, label %1169

; <label>:1169                                    ; preds = %1168
  %empty_982 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_642 = extractvalue { i8, i1, i1 } %empty_982, 0
  %tmp_193_983 = zext i5 %i_194 to i64
  %plaintext_addr_194 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_193_983
  store i8 %tmp_data_642, i8* %plaintext_addr_194, align 1
  br label %1168

; <label>:1170                                    ; preds = %1166
  %tmp_1_193 = zext i5 %i_1_193 to i64
  %out_addr_194 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_193
  %tmp_data_643 = load i8* %out_addr_194, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_643, i1 true, i1 false)
  br label %1166

; <label>:1171                                    ; preds = %1172
  %empty_984 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_196)
  %tmp_197 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1180

; <label>:1172                                    ; preds = %1176, %1173
  %i_1_194 = phi i5 [ 0, %1173 ], [ %i_4_194, %1176 ]
  %exitcond_194 = icmp eq i5 %i_1_194, -16
  %empty_985 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_194 = add i5 %i_1_194, 1
  br i1 %exitcond_194, label %1171, label %1176

; <label>:1173                                    ; preds = %1174
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1172

; <label>:1174                                    ; preds = %1175, %1165
  %i_195 = phi i5 [ 0, %1165 ], [ %i_3_194, %1175 ]
  %exitcond2_194 = icmp eq i5 %i_195, -16
  %empty_986 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_194 = add i5 %i_195, 1
  br i1 %exitcond2_194, label %1173, label %1175

; <label>:1175                                    ; preds = %1174
  %empty_987 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_644 = extractvalue { i8, i1, i1 } %empty_987, 0
  %tmp_194_988 = zext i5 %i_195 to i64
  %plaintext_addr_195 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_194_988
  store i8 %tmp_data_644, i8* %plaintext_addr_195, align 1
  br label %1174

; <label>:1176                                    ; preds = %1172
  %tmp_1_194 = zext i5 %i_1_194 to i64
  %out_addr_195 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_194
  %tmp_data_645 = load i8* %out_addr_195, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_645, i1 true, i1 false)
  br label %1172

; <label>:1177                                    ; preds = %1178
  %empty_989 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_197)
  %tmp_198 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1186

; <label>:1178                                    ; preds = %1182, %1179
  %i_1_195 = phi i5 [ 0, %1179 ], [ %i_4_195, %1182 ]
  %exitcond_195 = icmp eq i5 %i_1_195, -16
  %empty_990 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_195 = add i5 %i_1_195, 1
  br i1 %exitcond_195, label %1177, label %1182

; <label>:1179                                    ; preds = %1180
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1178

; <label>:1180                                    ; preds = %1181, %1171
  %i_196 = phi i5 [ 0, %1171 ], [ %i_3_195, %1181 ]
  %exitcond2_195 = icmp eq i5 %i_196, -16
  %empty_991 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_195 = add i5 %i_196, 1
  br i1 %exitcond2_195, label %1179, label %1181

; <label>:1181                                    ; preds = %1180
  %empty_992 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_646 = extractvalue { i8, i1, i1 } %empty_992, 0
  %tmp_195_993 = zext i5 %i_196 to i64
  %plaintext_addr_196 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_195_993
  store i8 %tmp_data_646, i8* %plaintext_addr_196, align 1
  br label %1180

; <label>:1182                                    ; preds = %1178
  %tmp_1_195 = zext i5 %i_1_195 to i64
  %out_addr_196 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_195
  %tmp_data_647 = load i8* %out_addr_196, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_647, i1 true, i1 false)
  br label %1178

; <label>:1183                                    ; preds = %1184
  %empty_994 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_198)
  %tmp_199 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1192

; <label>:1184                                    ; preds = %1188, %1185
  %i_1_196 = phi i5 [ 0, %1185 ], [ %i_4_196, %1188 ]
  %exitcond_196 = icmp eq i5 %i_1_196, -16
  %empty_995 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_196 = add i5 %i_1_196, 1
  br i1 %exitcond_196, label %1183, label %1188

; <label>:1185                                    ; preds = %1186
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1184

; <label>:1186                                    ; preds = %1187, %1177
  %i_197 = phi i5 [ 0, %1177 ], [ %i_3_196, %1187 ]
  %exitcond2_196 = icmp eq i5 %i_197, -16
  %empty_996 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_196 = add i5 %i_197, 1
  br i1 %exitcond2_196, label %1185, label %1187

; <label>:1187                                    ; preds = %1186
  %empty_997 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_648 = extractvalue { i8, i1, i1 } %empty_997, 0
  %tmp_196_998 = zext i5 %i_197 to i64
  %plaintext_addr_197 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_196_998
  store i8 %tmp_data_648, i8* %plaintext_addr_197, align 1
  br label %1186

; <label>:1188                                    ; preds = %1184
  %tmp_1_196 = zext i5 %i_1_196 to i64
  %out_addr_197 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_196
  %tmp_data_649 = load i8* %out_addr_197, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_649, i1 true, i1 false)
  br label %1184

; <label>:1189                                    ; preds = %1190
  %empty_999 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_199)
  %tmp_200 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1198

; <label>:1190                                    ; preds = %1194, %1191
  %i_1_197 = phi i5 [ 0, %1191 ], [ %i_4_197, %1194 ]
  %exitcond_197 = icmp eq i5 %i_1_197, -16
  %empty_1000 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_197 = add i5 %i_1_197, 1
  br i1 %exitcond_197, label %1189, label %1194

; <label>:1191                                    ; preds = %1192
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1190

; <label>:1192                                    ; preds = %1193, %1183
  %i_198 = phi i5 [ 0, %1183 ], [ %i_3_197, %1193 ]
  %exitcond2_197 = icmp eq i5 %i_198, -16
  %empty_1001 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_197 = add i5 %i_198, 1
  br i1 %exitcond2_197, label %1191, label %1193

; <label>:1193                                    ; preds = %1192
  %empty_1002 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_650 = extractvalue { i8, i1, i1 } %empty_1002, 0
  %tmp_197_1003 = zext i5 %i_198 to i64
  %plaintext_addr_198 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_197_1003
  store i8 %tmp_data_650, i8* %plaintext_addr_198, align 1
  br label %1192

; <label>:1194                                    ; preds = %1190
  %tmp_1_197 = zext i5 %i_1_197 to i64
  %out_addr_198 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_197
  %tmp_data_651 = load i8* %out_addr_198, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_651, i1 true, i1 false)
  br label %1190

; <label>:1195                                    ; preds = %1196
  %empty_1004 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_200)
  %tmp_201 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1204

; <label>:1196                                    ; preds = %1200, %1197
  %i_1_198 = phi i5 [ 0, %1197 ], [ %i_4_198, %1200 ]
  %exitcond_198 = icmp eq i5 %i_1_198, -16
  %empty_1005 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_198 = add i5 %i_1_198, 1
  br i1 %exitcond_198, label %1195, label %1200

; <label>:1197                                    ; preds = %1198
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1196

; <label>:1198                                    ; preds = %1199, %1189
  %i_199 = phi i5 [ 0, %1189 ], [ %i_3_198, %1199 ]
  %exitcond2_198 = icmp eq i5 %i_199, -16
  %empty_1006 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_198 = add i5 %i_199, 1
  br i1 %exitcond2_198, label %1197, label %1199

; <label>:1199                                    ; preds = %1198
  %empty_1007 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_652 = extractvalue { i8, i1, i1 } %empty_1007, 0
  %tmp_198_1008 = zext i5 %i_199 to i64
  %plaintext_addr_199 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_198_1008
  store i8 %tmp_data_652, i8* %plaintext_addr_199, align 1
  br label %1198

; <label>:1200                                    ; preds = %1196
  %tmp_1_198 = zext i5 %i_1_198 to i64
  %out_addr_199 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_198
  %tmp_data_653 = load i8* %out_addr_199, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_653, i1 true, i1 false)
  br label %1196

; <label>:1201                                    ; preds = %1202
  %empty_1009 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_201)
  %tmp_202 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1210

; <label>:1202                                    ; preds = %1206, %1203
  %i_1_199 = phi i5 [ 0, %1203 ], [ %i_4_199, %1206 ]
  %exitcond_199 = icmp eq i5 %i_1_199, -16
  %empty_1010 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_199 = add i5 %i_1_199, 1
  br i1 %exitcond_199, label %1201, label %1206

; <label>:1203                                    ; preds = %1204
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1202

; <label>:1204                                    ; preds = %1205, %1195
  %i_200 = phi i5 [ 0, %1195 ], [ %i_3_199, %1205 ]
  %exitcond2_199 = icmp eq i5 %i_200, -16
  %empty_1011 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_199 = add i5 %i_200, 1
  br i1 %exitcond2_199, label %1203, label %1205

; <label>:1205                                    ; preds = %1204
  %empty_1012 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_654 = extractvalue { i8, i1, i1 } %empty_1012, 0
  %tmp_199_1013 = zext i5 %i_200 to i64
  %plaintext_addr_200 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_199_1013
  store i8 %tmp_data_654, i8* %plaintext_addr_200, align 1
  br label %1204

; <label>:1206                                    ; preds = %1202
  %tmp_1_199 = zext i5 %i_1_199 to i64
  %out_addr_200 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_199
  %tmp_data_655 = load i8* %out_addr_200, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_655, i1 true, i1 false)
  br label %1202

; <label>:1207                                    ; preds = %1208
  %empty_1014 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_202)
  %tmp_203 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1216

; <label>:1208                                    ; preds = %1212, %1209
  %i_1_200 = phi i5 [ 0, %1209 ], [ %i_4_200, %1212 ]
  %exitcond_200 = icmp eq i5 %i_1_200, -16
  %empty_1015 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_200 = add i5 %i_1_200, 1
  br i1 %exitcond_200, label %1207, label %1212

; <label>:1209                                    ; preds = %1210
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1208

; <label>:1210                                    ; preds = %1211, %1201
  %i_201 = phi i5 [ 0, %1201 ], [ %i_3_200, %1211 ]
  %exitcond2_200 = icmp eq i5 %i_201, -16
  %empty_1016 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_200 = add i5 %i_201, 1
  br i1 %exitcond2_200, label %1209, label %1211

; <label>:1211                                    ; preds = %1210
  %empty_1017 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_656 = extractvalue { i8, i1, i1 } %empty_1017, 0
  %tmp_200_1018 = zext i5 %i_201 to i64
  %plaintext_addr_201 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_200_1018
  store i8 %tmp_data_656, i8* %plaintext_addr_201, align 1
  br label %1210

; <label>:1212                                    ; preds = %1208
  %tmp_1_200 = zext i5 %i_1_200 to i64
  %out_addr_201 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_200
  %tmp_data_657 = load i8* %out_addr_201, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_657, i1 true, i1 false)
  br label %1208

; <label>:1213                                    ; preds = %1214
  %empty_1019 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_203)
  %tmp_204 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1222

; <label>:1214                                    ; preds = %1218, %1215
  %i_1_201 = phi i5 [ 0, %1215 ], [ %i_4_201, %1218 ]
  %exitcond_201 = icmp eq i5 %i_1_201, -16
  %empty_1020 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_201 = add i5 %i_1_201, 1
  br i1 %exitcond_201, label %1213, label %1218

; <label>:1215                                    ; preds = %1216
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1214

; <label>:1216                                    ; preds = %1217, %1207
  %i_202 = phi i5 [ 0, %1207 ], [ %i_3_201, %1217 ]
  %exitcond2_201 = icmp eq i5 %i_202, -16
  %empty_1021 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_201 = add i5 %i_202, 1
  br i1 %exitcond2_201, label %1215, label %1217

; <label>:1217                                    ; preds = %1216
  %empty_1022 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_658 = extractvalue { i8, i1, i1 } %empty_1022, 0
  %tmp_201_1023 = zext i5 %i_202 to i64
  %plaintext_addr_202 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_201_1023
  store i8 %tmp_data_658, i8* %plaintext_addr_202, align 1
  br label %1216

; <label>:1218                                    ; preds = %1214
  %tmp_1_201 = zext i5 %i_1_201 to i64
  %out_addr_202 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_201
  %tmp_data_659 = load i8* %out_addr_202, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_659, i1 true, i1 false)
  br label %1214

; <label>:1219                                    ; preds = %1220
  %empty_1024 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_204)
  %tmp_205 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1228

; <label>:1220                                    ; preds = %1224, %1221
  %i_1_202 = phi i5 [ 0, %1221 ], [ %i_4_202, %1224 ]
  %exitcond_202 = icmp eq i5 %i_1_202, -16
  %empty_1025 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_202 = add i5 %i_1_202, 1
  br i1 %exitcond_202, label %1219, label %1224

; <label>:1221                                    ; preds = %1222
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1220

; <label>:1222                                    ; preds = %1223, %1213
  %i_203 = phi i5 [ 0, %1213 ], [ %i_3_202, %1223 ]
  %exitcond2_202 = icmp eq i5 %i_203, -16
  %empty_1026 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_202 = add i5 %i_203, 1
  br i1 %exitcond2_202, label %1221, label %1223

; <label>:1223                                    ; preds = %1222
  %empty_1027 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_660 = extractvalue { i8, i1, i1 } %empty_1027, 0
  %tmp_202_1028 = zext i5 %i_203 to i64
  %plaintext_addr_203 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_202_1028
  store i8 %tmp_data_660, i8* %plaintext_addr_203, align 1
  br label %1222

; <label>:1224                                    ; preds = %1220
  %tmp_1_202 = zext i5 %i_1_202 to i64
  %out_addr_203 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_202
  %tmp_data_661 = load i8* %out_addr_203, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_661, i1 true, i1 false)
  br label %1220

; <label>:1225                                    ; preds = %1226
  %empty_1029 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_205)
  %tmp_206 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1234

; <label>:1226                                    ; preds = %1230, %1227
  %i_1_203 = phi i5 [ 0, %1227 ], [ %i_4_203, %1230 ]
  %exitcond_203 = icmp eq i5 %i_1_203, -16
  %empty_1030 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_203 = add i5 %i_1_203, 1
  br i1 %exitcond_203, label %1225, label %1230

; <label>:1227                                    ; preds = %1228
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1226

; <label>:1228                                    ; preds = %1229, %1219
  %i_204 = phi i5 [ 0, %1219 ], [ %i_3_203, %1229 ]
  %exitcond2_203 = icmp eq i5 %i_204, -16
  %empty_1031 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_203 = add i5 %i_204, 1
  br i1 %exitcond2_203, label %1227, label %1229

; <label>:1229                                    ; preds = %1228
  %empty_1032 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_662 = extractvalue { i8, i1, i1 } %empty_1032, 0
  %tmp_203_1033 = zext i5 %i_204 to i64
  %plaintext_addr_204 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_203_1033
  store i8 %tmp_data_662, i8* %plaintext_addr_204, align 1
  br label %1228

; <label>:1230                                    ; preds = %1226
  %tmp_1_203 = zext i5 %i_1_203 to i64
  %out_addr_204 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_203
  %tmp_data_663 = load i8* %out_addr_204, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_663, i1 true, i1 false)
  br label %1226

; <label>:1231                                    ; preds = %1232
  %empty_1034 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_206)
  %tmp_207 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1240

; <label>:1232                                    ; preds = %1236, %1233
  %i_1_204 = phi i5 [ 0, %1233 ], [ %i_4_204, %1236 ]
  %exitcond_204 = icmp eq i5 %i_1_204, -16
  %empty_1035 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_204 = add i5 %i_1_204, 1
  br i1 %exitcond_204, label %1231, label %1236

; <label>:1233                                    ; preds = %1234
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1232

; <label>:1234                                    ; preds = %1235, %1225
  %i_205 = phi i5 [ 0, %1225 ], [ %i_3_204, %1235 ]
  %exitcond2_204 = icmp eq i5 %i_205, -16
  %empty_1036 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_204 = add i5 %i_205, 1
  br i1 %exitcond2_204, label %1233, label %1235

; <label>:1235                                    ; preds = %1234
  %empty_1037 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_664 = extractvalue { i8, i1, i1 } %empty_1037, 0
  %tmp_204_1038 = zext i5 %i_205 to i64
  %plaintext_addr_205 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_204_1038
  store i8 %tmp_data_664, i8* %plaintext_addr_205, align 1
  br label %1234

; <label>:1236                                    ; preds = %1232
  %tmp_1_204 = zext i5 %i_1_204 to i64
  %out_addr_205 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_204
  %tmp_data_665 = load i8* %out_addr_205, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_665, i1 true, i1 false)
  br label %1232

; <label>:1237                                    ; preds = %1238
  %empty_1039 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_207)
  %tmp_208 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1246

; <label>:1238                                    ; preds = %1242, %1239
  %i_1_205 = phi i5 [ 0, %1239 ], [ %i_4_205, %1242 ]
  %exitcond_205 = icmp eq i5 %i_1_205, -16
  %empty_1040 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_205 = add i5 %i_1_205, 1
  br i1 %exitcond_205, label %1237, label %1242

; <label>:1239                                    ; preds = %1240
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1238

; <label>:1240                                    ; preds = %1241, %1231
  %i_206 = phi i5 [ 0, %1231 ], [ %i_3_205, %1241 ]
  %exitcond2_205 = icmp eq i5 %i_206, -16
  %empty_1041 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_205 = add i5 %i_206, 1
  br i1 %exitcond2_205, label %1239, label %1241

; <label>:1241                                    ; preds = %1240
  %empty_1042 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_666 = extractvalue { i8, i1, i1 } %empty_1042, 0
  %tmp_205_1043 = zext i5 %i_206 to i64
  %plaintext_addr_206 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_205_1043
  store i8 %tmp_data_666, i8* %plaintext_addr_206, align 1
  br label %1240

; <label>:1242                                    ; preds = %1238
  %tmp_1_205 = zext i5 %i_1_205 to i64
  %out_addr_206 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_205
  %tmp_data_667 = load i8* %out_addr_206, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_667, i1 true, i1 false)
  br label %1238

; <label>:1243                                    ; preds = %1244
  %empty_1044 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_208)
  %tmp_209 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1252

; <label>:1244                                    ; preds = %1248, %1245
  %i_1_206 = phi i5 [ 0, %1245 ], [ %i_4_206, %1248 ]
  %exitcond_206 = icmp eq i5 %i_1_206, -16
  %empty_1045 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_206 = add i5 %i_1_206, 1
  br i1 %exitcond_206, label %1243, label %1248

; <label>:1245                                    ; preds = %1246
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1244

; <label>:1246                                    ; preds = %1247, %1237
  %i_207 = phi i5 [ 0, %1237 ], [ %i_3_206, %1247 ]
  %exitcond2_206 = icmp eq i5 %i_207, -16
  %empty_1046 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_206 = add i5 %i_207, 1
  br i1 %exitcond2_206, label %1245, label %1247

; <label>:1247                                    ; preds = %1246
  %empty_1047 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_668 = extractvalue { i8, i1, i1 } %empty_1047, 0
  %tmp_206_1048 = zext i5 %i_207 to i64
  %plaintext_addr_207 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_206_1048
  store i8 %tmp_data_668, i8* %plaintext_addr_207, align 1
  br label %1246

; <label>:1248                                    ; preds = %1244
  %tmp_1_206 = zext i5 %i_1_206 to i64
  %out_addr_207 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_206
  %tmp_data_669 = load i8* %out_addr_207, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_669, i1 true, i1 false)
  br label %1244

; <label>:1249                                    ; preds = %1250
  %empty_1049 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_209)
  %tmp_210 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1258

; <label>:1250                                    ; preds = %1254, %1251
  %i_1_207 = phi i5 [ 0, %1251 ], [ %i_4_207, %1254 ]
  %exitcond_207 = icmp eq i5 %i_1_207, -16
  %empty_1050 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_207 = add i5 %i_1_207, 1
  br i1 %exitcond_207, label %1249, label %1254

; <label>:1251                                    ; preds = %1252
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1250

; <label>:1252                                    ; preds = %1253, %1243
  %i_208 = phi i5 [ 0, %1243 ], [ %i_3_207, %1253 ]
  %exitcond2_207 = icmp eq i5 %i_208, -16
  %empty_1051 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_207 = add i5 %i_208, 1
  br i1 %exitcond2_207, label %1251, label %1253

; <label>:1253                                    ; preds = %1252
  %empty_1052 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_670 = extractvalue { i8, i1, i1 } %empty_1052, 0
  %tmp_207_1053 = zext i5 %i_208 to i64
  %plaintext_addr_208 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_207_1053
  store i8 %tmp_data_670, i8* %plaintext_addr_208, align 1
  br label %1252

; <label>:1254                                    ; preds = %1250
  %tmp_1_207 = zext i5 %i_1_207 to i64
  %out_addr_208 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_207
  %tmp_data_671 = load i8* %out_addr_208, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_671, i1 true, i1 false)
  br label %1250

; <label>:1255                                    ; preds = %1256
  %empty_1054 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_210)
  %tmp_211 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1264

; <label>:1256                                    ; preds = %1260, %1257
  %i_1_208 = phi i5 [ 0, %1257 ], [ %i_4_208, %1260 ]
  %exitcond_208 = icmp eq i5 %i_1_208, -16
  %empty_1055 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_208 = add i5 %i_1_208, 1
  br i1 %exitcond_208, label %1255, label %1260

; <label>:1257                                    ; preds = %1258
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1256

; <label>:1258                                    ; preds = %1259, %1249
  %i_209 = phi i5 [ 0, %1249 ], [ %i_3_208, %1259 ]
  %exitcond2_208 = icmp eq i5 %i_209, -16
  %empty_1056 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_208 = add i5 %i_209, 1
  br i1 %exitcond2_208, label %1257, label %1259

; <label>:1259                                    ; preds = %1258
  %empty_1057 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_672 = extractvalue { i8, i1, i1 } %empty_1057, 0
  %tmp_208_1058 = zext i5 %i_209 to i64
  %plaintext_addr_209 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_208_1058
  store i8 %tmp_data_672, i8* %plaintext_addr_209, align 1
  br label %1258

; <label>:1260                                    ; preds = %1256
  %tmp_1_208 = zext i5 %i_1_208 to i64
  %out_addr_209 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_208
  %tmp_data_673 = load i8* %out_addr_209, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_673, i1 true, i1 false)
  br label %1256

; <label>:1261                                    ; preds = %1262
  %empty_1059 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_211)
  %tmp_212 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1270

; <label>:1262                                    ; preds = %1266, %1263
  %i_1_209 = phi i5 [ 0, %1263 ], [ %i_4_209, %1266 ]
  %exitcond_209 = icmp eq i5 %i_1_209, -16
  %empty_1060 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_209 = add i5 %i_1_209, 1
  br i1 %exitcond_209, label %1261, label %1266

; <label>:1263                                    ; preds = %1264
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1262

; <label>:1264                                    ; preds = %1265, %1255
  %i_210 = phi i5 [ 0, %1255 ], [ %i_3_209, %1265 ]
  %exitcond2_209 = icmp eq i5 %i_210, -16
  %empty_1061 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_209 = add i5 %i_210, 1
  br i1 %exitcond2_209, label %1263, label %1265

; <label>:1265                                    ; preds = %1264
  %empty_1062 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_674 = extractvalue { i8, i1, i1 } %empty_1062, 0
  %tmp_209_1063 = zext i5 %i_210 to i64
  %plaintext_addr_210 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_209_1063
  store i8 %tmp_data_674, i8* %plaintext_addr_210, align 1
  br label %1264

; <label>:1266                                    ; preds = %1262
  %tmp_1_209 = zext i5 %i_1_209 to i64
  %out_addr_210 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_209
  %tmp_data_675 = load i8* %out_addr_210, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_675, i1 true, i1 false)
  br label %1262

; <label>:1267                                    ; preds = %1268
  %empty_1064 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_212)
  %tmp_213 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1276

; <label>:1268                                    ; preds = %1272, %1269
  %i_1_210 = phi i5 [ 0, %1269 ], [ %i_4_210, %1272 ]
  %exitcond_210 = icmp eq i5 %i_1_210, -16
  %empty_1065 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_210 = add i5 %i_1_210, 1
  br i1 %exitcond_210, label %1267, label %1272

; <label>:1269                                    ; preds = %1270
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1268

; <label>:1270                                    ; preds = %1271, %1261
  %i_211 = phi i5 [ 0, %1261 ], [ %i_3_210, %1271 ]
  %exitcond2_210 = icmp eq i5 %i_211, -16
  %empty_1066 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_210 = add i5 %i_211, 1
  br i1 %exitcond2_210, label %1269, label %1271

; <label>:1271                                    ; preds = %1270
  %empty_1067 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_676 = extractvalue { i8, i1, i1 } %empty_1067, 0
  %tmp_210_1068 = zext i5 %i_211 to i64
  %plaintext_addr_211 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_210_1068
  store i8 %tmp_data_676, i8* %plaintext_addr_211, align 1
  br label %1270

; <label>:1272                                    ; preds = %1268
  %tmp_1_210 = zext i5 %i_1_210 to i64
  %out_addr_211 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_210
  %tmp_data_677 = load i8* %out_addr_211, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_677, i1 true, i1 false)
  br label %1268

; <label>:1273                                    ; preds = %1274
  %empty_1069 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_213)
  %tmp_214 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1282

; <label>:1274                                    ; preds = %1278, %1275
  %i_1_211 = phi i5 [ 0, %1275 ], [ %i_4_211, %1278 ]
  %exitcond_211 = icmp eq i5 %i_1_211, -16
  %empty_1070 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_211 = add i5 %i_1_211, 1
  br i1 %exitcond_211, label %1273, label %1278

; <label>:1275                                    ; preds = %1276
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1274

; <label>:1276                                    ; preds = %1277, %1267
  %i_212 = phi i5 [ 0, %1267 ], [ %i_3_211, %1277 ]
  %exitcond2_211 = icmp eq i5 %i_212, -16
  %empty_1071 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_211 = add i5 %i_212, 1
  br i1 %exitcond2_211, label %1275, label %1277

; <label>:1277                                    ; preds = %1276
  %empty_1072 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_678 = extractvalue { i8, i1, i1 } %empty_1072, 0
  %tmp_211_1073 = zext i5 %i_212 to i64
  %plaintext_addr_212 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_211_1073
  store i8 %tmp_data_678, i8* %plaintext_addr_212, align 1
  br label %1276

; <label>:1278                                    ; preds = %1274
  %tmp_1_211 = zext i5 %i_1_211 to i64
  %out_addr_212 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_211
  %tmp_data_679 = load i8* %out_addr_212, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_679, i1 true, i1 false)
  br label %1274

; <label>:1279                                    ; preds = %1280
  %empty_1074 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_214)
  %tmp_215 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1288

; <label>:1280                                    ; preds = %1284, %1281
  %i_1_212 = phi i5 [ 0, %1281 ], [ %i_4_212, %1284 ]
  %exitcond_212 = icmp eq i5 %i_1_212, -16
  %empty_1075 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_212 = add i5 %i_1_212, 1
  br i1 %exitcond_212, label %1279, label %1284

; <label>:1281                                    ; preds = %1282
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1280

; <label>:1282                                    ; preds = %1283, %1273
  %i_213 = phi i5 [ 0, %1273 ], [ %i_3_212, %1283 ]
  %exitcond2_212 = icmp eq i5 %i_213, -16
  %empty_1076 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_212 = add i5 %i_213, 1
  br i1 %exitcond2_212, label %1281, label %1283

; <label>:1283                                    ; preds = %1282
  %empty_1077 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_680 = extractvalue { i8, i1, i1 } %empty_1077, 0
  %tmp_212_1078 = zext i5 %i_213 to i64
  %plaintext_addr_213 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_212_1078
  store i8 %tmp_data_680, i8* %plaintext_addr_213, align 1
  br label %1282

; <label>:1284                                    ; preds = %1280
  %tmp_1_212 = zext i5 %i_1_212 to i64
  %out_addr_213 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_212
  %tmp_data_681 = load i8* %out_addr_213, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_681, i1 true, i1 false)
  br label %1280

; <label>:1285                                    ; preds = %1286
  %empty_1079 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_215)
  %tmp_216 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1294

; <label>:1286                                    ; preds = %1290, %1287
  %i_1_213 = phi i5 [ 0, %1287 ], [ %i_4_213, %1290 ]
  %exitcond_213 = icmp eq i5 %i_1_213, -16
  %empty_1080 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_213 = add i5 %i_1_213, 1
  br i1 %exitcond_213, label %1285, label %1290

; <label>:1287                                    ; preds = %1288
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1286

; <label>:1288                                    ; preds = %1289, %1279
  %i_214 = phi i5 [ 0, %1279 ], [ %i_3_213, %1289 ]
  %exitcond2_213 = icmp eq i5 %i_214, -16
  %empty_1081 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_213 = add i5 %i_214, 1
  br i1 %exitcond2_213, label %1287, label %1289

; <label>:1289                                    ; preds = %1288
  %empty_1082 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_682 = extractvalue { i8, i1, i1 } %empty_1082, 0
  %tmp_213_1083 = zext i5 %i_214 to i64
  %plaintext_addr_214 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_213_1083
  store i8 %tmp_data_682, i8* %plaintext_addr_214, align 1
  br label %1288

; <label>:1290                                    ; preds = %1286
  %tmp_1_213 = zext i5 %i_1_213 to i64
  %out_addr_214 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_213
  %tmp_data_683 = load i8* %out_addr_214, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_683, i1 true, i1 false)
  br label %1286

; <label>:1291                                    ; preds = %1292
  %empty_1084 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_216)
  %tmp_217 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1300

; <label>:1292                                    ; preds = %1296, %1293
  %i_1_214 = phi i5 [ 0, %1293 ], [ %i_4_214, %1296 ]
  %exitcond_214 = icmp eq i5 %i_1_214, -16
  %empty_1085 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_214 = add i5 %i_1_214, 1
  br i1 %exitcond_214, label %1291, label %1296

; <label>:1293                                    ; preds = %1294
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1292

; <label>:1294                                    ; preds = %1295, %1285
  %i_215 = phi i5 [ 0, %1285 ], [ %i_3_214, %1295 ]
  %exitcond2_214 = icmp eq i5 %i_215, -16
  %empty_1086 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_214 = add i5 %i_215, 1
  br i1 %exitcond2_214, label %1293, label %1295

; <label>:1295                                    ; preds = %1294
  %empty_1087 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_684 = extractvalue { i8, i1, i1 } %empty_1087, 0
  %tmp_214_1088 = zext i5 %i_215 to i64
  %plaintext_addr_215 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_214_1088
  store i8 %tmp_data_684, i8* %plaintext_addr_215, align 1
  br label %1294

; <label>:1296                                    ; preds = %1292
  %tmp_1_214 = zext i5 %i_1_214 to i64
  %out_addr_215 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_214
  %tmp_data_685 = load i8* %out_addr_215, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_685, i1 true, i1 false)
  br label %1292

; <label>:1297                                    ; preds = %1298
  %empty_1089 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_217)
  %tmp_218 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1306

; <label>:1298                                    ; preds = %1302, %1299
  %i_1_215 = phi i5 [ 0, %1299 ], [ %i_4_215, %1302 ]
  %exitcond_215 = icmp eq i5 %i_1_215, -16
  %empty_1090 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_215 = add i5 %i_1_215, 1
  br i1 %exitcond_215, label %1297, label %1302

; <label>:1299                                    ; preds = %1300
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1298

; <label>:1300                                    ; preds = %1301, %1291
  %i_216 = phi i5 [ 0, %1291 ], [ %i_3_215, %1301 ]
  %exitcond2_215 = icmp eq i5 %i_216, -16
  %empty_1091 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_215 = add i5 %i_216, 1
  br i1 %exitcond2_215, label %1299, label %1301

; <label>:1301                                    ; preds = %1300
  %empty_1092 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_686 = extractvalue { i8, i1, i1 } %empty_1092, 0
  %tmp_215_1093 = zext i5 %i_216 to i64
  %plaintext_addr_216 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_215_1093
  store i8 %tmp_data_686, i8* %plaintext_addr_216, align 1
  br label %1300

; <label>:1302                                    ; preds = %1298
  %tmp_1_215 = zext i5 %i_1_215 to i64
  %out_addr_216 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_215
  %tmp_data_687 = load i8* %out_addr_216, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_687, i1 true, i1 false)
  br label %1298

; <label>:1303                                    ; preds = %1304
  %empty_1094 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_218)
  %tmp_219 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1312

; <label>:1304                                    ; preds = %1308, %1305
  %i_1_216 = phi i5 [ 0, %1305 ], [ %i_4_216, %1308 ]
  %exitcond_216 = icmp eq i5 %i_1_216, -16
  %empty_1095 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_216 = add i5 %i_1_216, 1
  br i1 %exitcond_216, label %1303, label %1308

; <label>:1305                                    ; preds = %1306
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1304

; <label>:1306                                    ; preds = %1307, %1297
  %i_217 = phi i5 [ 0, %1297 ], [ %i_3_216, %1307 ]
  %exitcond2_216 = icmp eq i5 %i_217, -16
  %empty_1096 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_216 = add i5 %i_217, 1
  br i1 %exitcond2_216, label %1305, label %1307

; <label>:1307                                    ; preds = %1306
  %empty_1097 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_688 = extractvalue { i8, i1, i1 } %empty_1097, 0
  %tmp_216_1098 = zext i5 %i_217 to i64
  %plaintext_addr_217 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_216_1098
  store i8 %tmp_data_688, i8* %plaintext_addr_217, align 1
  br label %1306

; <label>:1308                                    ; preds = %1304
  %tmp_1_216 = zext i5 %i_1_216 to i64
  %out_addr_217 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_216
  %tmp_data_689 = load i8* %out_addr_217, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_689, i1 true, i1 false)
  br label %1304

; <label>:1309                                    ; preds = %1310
  %empty_1099 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_219)
  %tmp_220 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1318

; <label>:1310                                    ; preds = %1314, %1311
  %i_1_217 = phi i5 [ 0, %1311 ], [ %i_4_217, %1314 ]
  %exitcond_217 = icmp eq i5 %i_1_217, -16
  %empty_1100 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_217 = add i5 %i_1_217, 1
  br i1 %exitcond_217, label %1309, label %1314

; <label>:1311                                    ; preds = %1312
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1310

; <label>:1312                                    ; preds = %1313, %1303
  %i_218 = phi i5 [ 0, %1303 ], [ %i_3_217, %1313 ]
  %exitcond2_217 = icmp eq i5 %i_218, -16
  %empty_1101 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_217 = add i5 %i_218, 1
  br i1 %exitcond2_217, label %1311, label %1313

; <label>:1313                                    ; preds = %1312
  %empty_1102 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_690 = extractvalue { i8, i1, i1 } %empty_1102, 0
  %tmp_217_1103 = zext i5 %i_218 to i64
  %plaintext_addr_218 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_217_1103
  store i8 %tmp_data_690, i8* %plaintext_addr_218, align 1
  br label %1312

; <label>:1314                                    ; preds = %1310
  %tmp_1_217 = zext i5 %i_1_217 to i64
  %out_addr_218 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_217
  %tmp_data_691 = load i8* %out_addr_218, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_691, i1 true, i1 false)
  br label %1310

; <label>:1315                                    ; preds = %1316
  %empty_1104 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_220)
  %tmp_221 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1324

; <label>:1316                                    ; preds = %1320, %1317
  %i_1_218 = phi i5 [ 0, %1317 ], [ %i_4_218, %1320 ]
  %exitcond_218 = icmp eq i5 %i_1_218, -16
  %empty_1105 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_218 = add i5 %i_1_218, 1
  br i1 %exitcond_218, label %1315, label %1320

; <label>:1317                                    ; preds = %1318
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1316

; <label>:1318                                    ; preds = %1319, %1309
  %i_219 = phi i5 [ 0, %1309 ], [ %i_3_218, %1319 ]
  %exitcond2_218 = icmp eq i5 %i_219, -16
  %empty_1106 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_218 = add i5 %i_219, 1
  br i1 %exitcond2_218, label %1317, label %1319

; <label>:1319                                    ; preds = %1318
  %empty_1107 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_692 = extractvalue { i8, i1, i1 } %empty_1107, 0
  %tmp_218_1108 = zext i5 %i_219 to i64
  %plaintext_addr_219 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_218_1108
  store i8 %tmp_data_692, i8* %plaintext_addr_219, align 1
  br label %1318

; <label>:1320                                    ; preds = %1316
  %tmp_1_218 = zext i5 %i_1_218 to i64
  %out_addr_219 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_218
  %tmp_data_693 = load i8* %out_addr_219, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_693, i1 true, i1 false)
  br label %1316

; <label>:1321                                    ; preds = %1322
  %empty_1109 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_221)
  %tmp_222 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1330

; <label>:1322                                    ; preds = %1326, %1323
  %i_1_219 = phi i5 [ 0, %1323 ], [ %i_4_219, %1326 ]
  %exitcond_219 = icmp eq i5 %i_1_219, -16
  %empty_1110 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_219 = add i5 %i_1_219, 1
  br i1 %exitcond_219, label %1321, label %1326

; <label>:1323                                    ; preds = %1324
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1322

; <label>:1324                                    ; preds = %1325, %1315
  %i_220 = phi i5 [ 0, %1315 ], [ %i_3_219, %1325 ]
  %exitcond2_219 = icmp eq i5 %i_220, -16
  %empty_1111 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_219 = add i5 %i_220, 1
  br i1 %exitcond2_219, label %1323, label %1325

; <label>:1325                                    ; preds = %1324
  %empty_1112 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_694 = extractvalue { i8, i1, i1 } %empty_1112, 0
  %tmp_219_1113 = zext i5 %i_220 to i64
  %plaintext_addr_220 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_219_1113
  store i8 %tmp_data_694, i8* %plaintext_addr_220, align 1
  br label %1324

; <label>:1326                                    ; preds = %1322
  %tmp_1_219 = zext i5 %i_1_219 to i64
  %out_addr_220 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_219
  %tmp_data_695 = load i8* %out_addr_220, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_695, i1 true, i1 false)
  br label %1322

; <label>:1327                                    ; preds = %1328
  %empty_1114 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_222)
  %tmp_223 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1336

; <label>:1328                                    ; preds = %1332, %1329
  %i_1_220 = phi i5 [ 0, %1329 ], [ %i_4_220, %1332 ]
  %exitcond_220 = icmp eq i5 %i_1_220, -16
  %empty_1115 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_220 = add i5 %i_1_220, 1
  br i1 %exitcond_220, label %1327, label %1332

; <label>:1329                                    ; preds = %1330
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1328

; <label>:1330                                    ; preds = %1331, %1321
  %i_221 = phi i5 [ 0, %1321 ], [ %i_3_220, %1331 ]
  %exitcond2_220 = icmp eq i5 %i_221, -16
  %empty_1116 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_220 = add i5 %i_221, 1
  br i1 %exitcond2_220, label %1329, label %1331

; <label>:1331                                    ; preds = %1330
  %empty_1117 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_696 = extractvalue { i8, i1, i1 } %empty_1117, 0
  %tmp_220_1118 = zext i5 %i_221 to i64
  %plaintext_addr_221 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_220_1118
  store i8 %tmp_data_696, i8* %plaintext_addr_221, align 1
  br label %1330

; <label>:1332                                    ; preds = %1328
  %tmp_1_220 = zext i5 %i_1_220 to i64
  %out_addr_221 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_220
  %tmp_data_697 = load i8* %out_addr_221, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_697, i1 true, i1 false)
  br label %1328

; <label>:1333                                    ; preds = %1334
  %empty_1119 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_223)
  %tmp_224 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1342

; <label>:1334                                    ; preds = %1338, %1335
  %i_1_221 = phi i5 [ 0, %1335 ], [ %i_4_221, %1338 ]
  %exitcond_221 = icmp eq i5 %i_1_221, -16
  %empty_1120 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_221 = add i5 %i_1_221, 1
  br i1 %exitcond_221, label %1333, label %1338

; <label>:1335                                    ; preds = %1336
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1334

; <label>:1336                                    ; preds = %1337, %1327
  %i_222 = phi i5 [ 0, %1327 ], [ %i_3_221, %1337 ]
  %exitcond2_221 = icmp eq i5 %i_222, -16
  %empty_1121 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_221 = add i5 %i_222, 1
  br i1 %exitcond2_221, label %1335, label %1337

; <label>:1337                                    ; preds = %1336
  %empty_1122 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_698 = extractvalue { i8, i1, i1 } %empty_1122, 0
  %tmp_221_1123 = zext i5 %i_222 to i64
  %plaintext_addr_222 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_221_1123
  store i8 %tmp_data_698, i8* %plaintext_addr_222, align 1
  br label %1336

; <label>:1338                                    ; preds = %1334
  %tmp_1_221 = zext i5 %i_1_221 to i64
  %out_addr_222 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_221
  %tmp_data_699 = load i8* %out_addr_222, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_699, i1 true, i1 false)
  br label %1334

; <label>:1339                                    ; preds = %1340
  %empty_1124 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_224)
  %tmp_225 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1348

; <label>:1340                                    ; preds = %1344, %1341
  %i_1_222 = phi i5 [ 0, %1341 ], [ %i_4_222, %1344 ]
  %exitcond_222 = icmp eq i5 %i_1_222, -16
  %empty_1125 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_222 = add i5 %i_1_222, 1
  br i1 %exitcond_222, label %1339, label %1344

; <label>:1341                                    ; preds = %1342
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1340

; <label>:1342                                    ; preds = %1343, %1333
  %i_223 = phi i5 [ 0, %1333 ], [ %i_3_222, %1343 ]
  %exitcond2_222 = icmp eq i5 %i_223, -16
  %empty_1126 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_222 = add i5 %i_223, 1
  br i1 %exitcond2_222, label %1341, label %1343

; <label>:1343                                    ; preds = %1342
  %empty_1127 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_700 = extractvalue { i8, i1, i1 } %empty_1127, 0
  %tmp_222_1128 = zext i5 %i_223 to i64
  %plaintext_addr_223 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_222_1128
  store i8 %tmp_data_700, i8* %plaintext_addr_223, align 1
  br label %1342

; <label>:1344                                    ; preds = %1340
  %tmp_1_222 = zext i5 %i_1_222 to i64
  %out_addr_223 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_222
  %tmp_data_701 = load i8* %out_addr_223, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_701, i1 true, i1 false)
  br label %1340

; <label>:1345                                    ; preds = %1346
  %empty_1129 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_225)
  %tmp_226 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1354

; <label>:1346                                    ; preds = %1350, %1347
  %i_1_223 = phi i5 [ 0, %1347 ], [ %i_4_223, %1350 ]
  %exitcond_223 = icmp eq i5 %i_1_223, -16
  %empty_1130 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_223 = add i5 %i_1_223, 1
  br i1 %exitcond_223, label %1345, label %1350

; <label>:1347                                    ; preds = %1348
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1346

; <label>:1348                                    ; preds = %1349, %1339
  %i_224 = phi i5 [ 0, %1339 ], [ %i_3_223, %1349 ]
  %exitcond2_223 = icmp eq i5 %i_224, -16
  %empty_1131 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_223 = add i5 %i_224, 1
  br i1 %exitcond2_223, label %1347, label %1349

; <label>:1349                                    ; preds = %1348
  %empty_1132 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_702 = extractvalue { i8, i1, i1 } %empty_1132, 0
  %tmp_223_1133 = zext i5 %i_224 to i64
  %plaintext_addr_224 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_223_1133
  store i8 %tmp_data_702, i8* %plaintext_addr_224, align 1
  br label %1348

; <label>:1350                                    ; preds = %1346
  %tmp_1_223 = zext i5 %i_1_223 to i64
  %out_addr_224 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_223
  %tmp_data_703 = load i8* %out_addr_224, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_703, i1 true, i1 false)
  br label %1346

; <label>:1351                                    ; preds = %1352
  %empty_1134 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_226)
  %tmp_227 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1360

; <label>:1352                                    ; preds = %1356, %1353
  %i_1_224 = phi i5 [ 0, %1353 ], [ %i_4_224, %1356 ]
  %exitcond_224 = icmp eq i5 %i_1_224, -16
  %empty_1135 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_224 = add i5 %i_1_224, 1
  br i1 %exitcond_224, label %1351, label %1356

; <label>:1353                                    ; preds = %1354
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1352

; <label>:1354                                    ; preds = %1355, %1345
  %i_225 = phi i5 [ 0, %1345 ], [ %i_3_224, %1355 ]
  %exitcond2_224 = icmp eq i5 %i_225, -16
  %empty_1136 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_224 = add i5 %i_225, 1
  br i1 %exitcond2_224, label %1353, label %1355

; <label>:1355                                    ; preds = %1354
  %empty_1137 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_704 = extractvalue { i8, i1, i1 } %empty_1137, 0
  %tmp_224_1138 = zext i5 %i_225 to i64
  %plaintext_addr_225 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_224_1138
  store i8 %tmp_data_704, i8* %plaintext_addr_225, align 1
  br label %1354

; <label>:1356                                    ; preds = %1352
  %tmp_1_224 = zext i5 %i_1_224 to i64
  %out_addr_225 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_224
  %tmp_data_705 = load i8* %out_addr_225, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_705, i1 true, i1 false)
  br label %1352

; <label>:1357                                    ; preds = %1358
  %empty_1139 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_227)
  %tmp_228 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1366

; <label>:1358                                    ; preds = %1362, %1359
  %i_1_225 = phi i5 [ 0, %1359 ], [ %i_4_225, %1362 ]
  %exitcond_225 = icmp eq i5 %i_1_225, -16
  %empty_1140 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_225 = add i5 %i_1_225, 1
  br i1 %exitcond_225, label %1357, label %1362

; <label>:1359                                    ; preds = %1360
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1358

; <label>:1360                                    ; preds = %1361, %1351
  %i_226 = phi i5 [ 0, %1351 ], [ %i_3_225, %1361 ]
  %exitcond2_225 = icmp eq i5 %i_226, -16
  %empty_1141 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_225 = add i5 %i_226, 1
  br i1 %exitcond2_225, label %1359, label %1361

; <label>:1361                                    ; preds = %1360
  %empty_1142 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_706 = extractvalue { i8, i1, i1 } %empty_1142, 0
  %tmp_225_1143 = zext i5 %i_226 to i64
  %plaintext_addr_226 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_225_1143
  store i8 %tmp_data_706, i8* %plaintext_addr_226, align 1
  br label %1360

; <label>:1362                                    ; preds = %1358
  %tmp_1_225 = zext i5 %i_1_225 to i64
  %out_addr_226 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_225
  %tmp_data_707 = load i8* %out_addr_226, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_707, i1 true, i1 false)
  br label %1358

; <label>:1363                                    ; preds = %1364
  %empty_1144 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_228)
  %tmp_229 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1372

; <label>:1364                                    ; preds = %1368, %1365
  %i_1_226 = phi i5 [ 0, %1365 ], [ %i_4_226, %1368 ]
  %exitcond_226 = icmp eq i5 %i_1_226, -16
  %empty_1145 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_226 = add i5 %i_1_226, 1
  br i1 %exitcond_226, label %1363, label %1368

; <label>:1365                                    ; preds = %1366
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1364

; <label>:1366                                    ; preds = %1367, %1357
  %i_227 = phi i5 [ 0, %1357 ], [ %i_3_226, %1367 ]
  %exitcond2_226 = icmp eq i5 %i_227, -16
  %empty_1146 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_226 = add i5 %i_227, 1
  br i1 %exitcond2_226, label %1365, label %1367

; <label>:1367                                    ; preds = %1366
  %empty_1147 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_708 = extractvalue { i8, i1, i1 } %empty_1147, 0
  %tmp_226_1148 = zext i5 %i_227 to i64
  %plaintext_addr_227 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_226_1148
  store i8 %tmp_data_708, i8* %plaintext_addr_227, align 1
  br label %1366

; <label>:1368                                    ; preds = %1364
  %tmp_1_226 = zext i5 %i_1_226 to i64
  %out_addr_227 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_226
  %tmp_data_709 = load i8* %out_addr_227, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_709, i1 true, i1 false)
  br label %1364

; <label>:1369                                    ; preds = %1370
  %empty_1149 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_229)
  %tmp_230 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1378

; <label>:1370                                    ; preds = %1374, %1371
  %i_1_227 = phi i5 [ 0, %1371 ], [ %i_4_227, %1374 ]
  %exitcond_227 = icmp eq i5 %i_1_227, -16
  %empty_1150 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_227 = add i5 %i_1_227, 1
  br i1 %exitcond_227, label %1369, label %1374

; <label>:1371                                    ; preds = %1372
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1370

; <label>:1372                                    ; preds = %1373, %1363
  %i_228 = phi i5 [ 0, %1363 ], [ %i_3_227, %1373 ]
  %exitcond2_227 = icmp eq i5 %i_228, -16
  %empty_1151 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_227 = add i5 %i_228, 1
  br i1 %exitcond2_227, label %1371, label %1373

; <label>:1373                                    ; preds = %1372
  %empty_1152 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_710 = extractvalue { i8, i1, i1 } %empty_1152, 0
  %tmp_227_1153 = zext i5 %i_228 to i64
  %plaintext_addr_228 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_227_1153
  store i8 %tmp_data_710, i8* %plaintext_addr_228, align 1
  br label %1372

; <label>:1374                                    ; preds = %1370
  %tmp_1_227 = zext i5 %i_1_227 to i64
  %out_addr_228 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_227
  %tmp_data_711 = load i8* %out_addr_228, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_711, i1 true, i1 false)
  br label %1370

; <label>:1375                                    ; preds = %1376
  %empty_1154 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_230)
  %tmp_231 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1384

; <label>:1376                                    ; preds = %1380, %1377
  %i_1_228 = phi i5 [ 0, %1377 ], [ %i_4_228, %1380 ]
  %exitcond_228 = icmp eq i5 %i_1_228, -16
  %empty_1155 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_228 = add i5 %i_1_228, 1
  br i1 %exitcond_228, label %1375, label %1380

; <label>:1377                                    ; preds = %1378
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1376

; <label>:1378                                    ; preds = %1379, %1369
  %i_229 = phi i5 [ 0, %1369 ], [ %i_3_228, %1379 ]
  %exitcond2_228 = icmp eq i5 %i_229, -16
  %empty_1156 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_228 = add i5 %i_229, 1
  br i1 %exitcond2_228, label %1377, label %1379

; <label>:1379                                    ; preds = %1378
  %empty_1157 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_712 = extractvalue { i8, i1, i1 } %empty_1157, 0
  %tmp_228_1158 = zext i5 %i_229 to i64
  %plaintext_addr_229 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_228_1158
  store i8 %tmp_data_712, i8* %plaintext_addr_229, align 1
  br label %1378

; <label>:1380                                    ; preds = %1376
  %tmp_1_228 = zext i5 %i_1_228 to i64
  %out_addr_229 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_228
  %tmp_data_713 = load i8* %out_addr_229, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_713, i1 true, i1 false)
  br label %1376

; <label>:1381                                    ; preds = %1382
  %empty_1159 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_231)
  %tmp_232 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1390

; <label>:1382                                    ; preds = %1386, %1383
  %i_1_229 = phi i5 [ 0, %1383 ], [ %i_4_229, %1386 ]
  %exitcond_229 = icmp eq i5 %i_1_229, -16
  %empty_1160 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_229 = add i5 %i_1_229, 1
  br i1 %exitcond_229, label %1381, label %1386

; <label>:1383                                    ; preds = %1384
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1382

; <label>:1384                                    ; preds = %1385, %1375
  %i_230 = phi i5 [ 0, %1375 ], [ %i_3_229, %1385 ]
  %exitcond2_229 = icmp eq i5 %i_230, -16
  %empty_1161 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_229 = add i5 %i_230, 1
  br i1 %exitcond2_229, label %1383, label %1385

; <label>:1385                                    ; preds = %1384
  %empty_1162 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_714 = extractvalue { i8, i1, i1 } %empty_1162, 0
  %tmp_229_1163 = zext i5 %i_230 to i64
  %plaintext_addr_230 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_229_1163
  store i8 %tmp_data_714, i8* %plaintext_addr_230, align 1
  br label %1384

; <label>:1386                                    ; preds = %1382
  %tmp_1_229 = zext i5 %i_1_229 to i64
  %out_addr_230 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_229
  %tmp_data_715 = load i8* %out_addr_230, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_715, i1 true, i1 false)
  br label %1382

; <label>:1387                                    ; preds = %1388
  %empty_1164 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_232)
  %tmp_233 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1396

; <label>:1388                                    ; preds = %1392, %1389
  %i_1_230 = phi i5 [ 0, %1389 ], [ %i_4_230, %1392 ]
  %exitcond_230 = icmp eq i5 %i_1_230, -16
  %empty_1165 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_230 = add i5 %i_1_230, 1
  br i1 %exitcond_230, label %1387, label %1392

; <label>:1389                                    ; preds = %1390
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1388

; <label>:1390                                    ; preds = %1391, %1381
  %i_231 = phi i5 [ 0, %1381 ], [ %i_3_230, %1391 ]
  %exitcond2_230 = icmp eq i5 %i_231, -16
  %empty_1166 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_230 = add i5 %i_231, 1
  br i1 %exitcond2_230, label %1389, label %1391

; <label>:1391                                    ; preds = %1390
  %empty_1167 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_716 = extractvalue { i8, i1, i1 } %empty_1167, 0
  %tmp_230_1168 = zext i5 %i_231 to i64
  %plaintext_addr_231 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_230_1168
  store i8 %tmp_data_716, i8* %plaintext_addr_231, align 1
  br label %1390

; <label>:1392                                    ; preds = %1388
  %tmp_1_230 = zext i5 %i_1_230 to i64
  %out_addr_231 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_230
  %tmp_data_717 = load i8* %out_addr_231, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_717, i1 true, i1 false)
  br label %1388

; <label>:1393                                    ; preds = %1394
  %empty_1169 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_233)
  %tmp_234 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1402

; <label>:1394                                    ; preds = %1398, %1395
  %i_1_231 = phi i5 [ 0, %1395 ], [ %i_4_231, %1398 ]
  %exitcond_231 = icmp eq i5 %i_1_231, -16
  %empty_1170 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_231 = add i5 %i_1_231, 1
  br i1 %exitcond_231, label %1393, label %1398

; <label>:1395                                    ; preds = %1396
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1394

; <label>:1396                                    ; preds = %1397, %1387
  %i_232 = phi i5 [ 0, %1387 ], [ %i_3_231, %1397 ]
  %exitcond2_231 = icmp eq i5 %i_232, -16
  %empty_1171 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_231 = add i5 %i_232, 1
  br i1 %exitcond2_231, label %1395, label %1397

; <label>:1397                                    ; preds = %1396
  %empty_1172 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_718 = extractvalue { i8, i1, i1 } %empty_1172, 0
  %tmp_231_1173 = zext i5 %i_232 to i64
  %plaintext_addr_232 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_231_1173
  store i8 %tmp_data_718, i8* %plaintext_addr_232, align 1
  br label %1396

; <label>:1398                                    ; preds = %1394
  %tmp_1_231 = zext i5 %i_1_231 to i64
  %out_addr_232 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_231
  %tmp_data_719 = load i8* %out_addr_232, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_719, i1 true, i1 false)
  br label %1394

; <label>:1399                                    ; preds = %1400
  %empty_1174 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_234)
  %tmp_235 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1408

; <label>:1400                                    ; preds = %1404, %1401
  %i_1_232 = phi i5 [ 0, %1401 ], [ %i_4_232, %1404 ]
  %exitcond_232 = icmp eq i5 %i_1_232, -16
  %empty_1175 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_232 = add i5 %i_1_232, 1
  br i1 %exitcond_232, label %1399, label %1404

; <label>:1401                                    ; preds = %1402
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1400

; <label>:1402                                    ; preds = %1403, %1393
  %i_233 = phi i5 [ 0, %1393 ], [ %i_3_232, %1403 ]
  %exitcond2_232 = icmp eq i5 %i_233, -16
  %empty_1176 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_232 = add i5 %i_233, 1
  br i1 %exitcond2_232, label %1401, label %1403

; <label>:1403                                    ; preds = %1402
  %empty_1177 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_720 = extractvalue { i8, i1, i1 } %empty_1177, 0
  %tmp_232_1178 = zext i5 %i_233 to i64
  %plaintext_addr_233 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_232_1178
  store i8 %tmp_data_720, i8* %plaintext_addr_233, align 1
  br label %1402

; <label>:1404                                    ; preds = %1400
  %tmp_1_232 = zext i5 %i_1_232 to i64
  %out_addr_233 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_232
  %tmp_data_721 = load i8* %out_addr_233, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_721, i1 true, i1 false)
  br label %1400

; <label>:1405                                    ; preds = %1406
  %empty_1179 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_235)
  %tmp_236 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1414

; <label>:1406                                    ; preds = %1410, %1407
  %i_1_233 = phi i5 [ 0, %1407 ], [ %i_4_233, %1410 ]
  %exitcond_233 = icmp eq i5 %i_1_233, -16
  %empty_1180 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_233 = add i5 %i_1_233, 1
  br i1 %exitcond_233, label %1405, label %1410

; <label>:1407                                    ; preds = %1408
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1406

; <label>:1408                                    ; preds = %1409, %1399
  %i_234 = phi i5 [ 0, %1399 ], [ %i_3_233, %1409 ]
  %exitcond2_233 = icmp eq i5 %i_234, -16
  %empty_1181 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_233 = add i5 %i_234, 1
  br i1 %exitcond2_233, label %1407, label %1409

; <label>:1409                                    ; preds = %1408
  %empty_1182 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_722 = extractvalue { i8, i1, i1 } %empty_1182, 0
  %tmp_233_1183 = zext i5 %i_234 to i64
  %plaintext_addr_234 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_233_1183
  store i8 %tmp_data_722, i8* %plaintext_addr_234, align 1
  br label %1408

; <label>:1410                                    ; preds = %1406
  %tmp_1_233 = zext i5 %i_1_233 to i64
  %out_addr_234 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_233
  %tmp_data_723 = load i8* %out_addr_234, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_723, i1 true, i1 false)
  br label %1406

; <label>:1411                                    ; preds = %1412
  %empty_1184 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_236)
  %tmp_237 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1420

; <label>:1412                                    ; preds = %1416, %1413
  %i_1_234 = phi i5 [ 0, %1413 ], [ %i_4_234, %1416 ]
  %exitcond_234 = icmp eq i5 %i_1_234, -16
  %empty_1185 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_234 = add i5 %i_1_234, 1
  br i1 %exitcond_234, label %1411, label %1416

; <label>:1413                                    ; preds = %1414
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1412

; <label>:1414                                    ; preds = %1415, %1405
  %i_235 = phi i5 [ 0, %1405 ], [ %i_3_234, %1415 ]
  %exitcond2_234 = icmp eq i5 %i_235, -16
  %empty_1186 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_234 = add i5 %i_235, 1
  br i1 %exitcond2_234, label %1413, label %1415

; <label>:1415                                    ; preds = %1414
  %empty_1187 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_724 = extractvalue { i8, i1, i1 } %empty_1187, 0
  %tmp_234_1188 = zext i5 %i_235 to i64
  %plaintext_addr_235 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_234_1188
  store i8 %tmp_data_724, i8* %plaintext_addr_235, align 1
  br label %1414

; <label>:1416                                    ; preds = %1412
  %tmp_1_234 = zext i5 %i_1_234 to i64
  %out_addr_235 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_234
  %tmp_data_725 = load i8* %out_addr_235, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_725, i1 true, i1 false)
  br label %1412

; <label>:1417                                    ; preds = %1418
  %empty_1189 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_237)
  %tmp_238 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1426

; <label>:1418                                    ; preds = %1422, %1419
  %i_1_235 = phi i5 [ 0, %1419 ], [ %i_4_235, %1422 ]
  %exitcond_235 = icmp eq i5 %i_1_235, -16
  %empty_1190 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_235 = add i5 %i_1_235, 1
  br i1 %exitcond_235, label %1417, label %1422

; <label>:1419                                    ; preds = %1420
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1418

; <label>:1420                                    ; preds = %1421, %1411
  %i_236 = phi i5 [ 0, %1411 ], [ %i_3_235, %1421 ]
  %exitcond2_235 = icmp eq i5 %i_236, -16
  %empty_1191 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_235 = add i5 %i_236, 1
  br i1 %exitcond2_235, label %1419, label %1421

; <label>:1421                                    ; preds = %1420
  %empty_1192 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_726 = extractvalue { i8, i1, i1 } %empty_1192, 0
  %tmp_235_1193 = zext i5 %i_236 to i64
  %plaintext_addr_236 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_235_1193
  store i8 %tmp_data_726, i8* %plaintext_addr_236, align 1
  br label %1420

; <label>:1422                                    ; preds = %1418
  %tmp_1_235 = zext i5 %i_1_235 to i64
  %out_addr_236 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_235
  %tmp_data_727 = load i8* %out_addr_236, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_727, i1 true, i1 false)
  br label %1418

; <label>:1423                                    ; preds = %1424
  %empty_1194 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_238)
  %tmp_239 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1432

; <label>:1424                                    ; preds = %1428, %1425
  %i_1_236 = phi i5 [ 0, %1425 ], [ %i_4_236, %1428 ]
  %exitcond_236 = icmp eq i5 %i_1_236, -16
  %empty_1195 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_236 = add i5 %i_1_236, 1
  br i1 %exitcond_236, label %1423, label %1428

; <label>:1425                                    ; preds = %1426
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1424

; <label>:1426                                    ; preds = %1427, %1417
  %i_237 = phi i5 [ 0, %1417 ], [ %i_3_236, %1427 ]
  %exitcond2_236 = icmp eq i5 %i_237, -16
  %empty_1196 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_236 = add i5 %i_237, 1
  br i1 %exitcond2_236, label %1425, label %1427

; <label>:1427                                    ; preds = %1426
  %empty_1197 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_728 = extractvalue { i8, i1, i1 } %empty_1197, 0
  %tmp_236_1198 = zext i5 %i_237 to i64
  %plaintext_addr_237 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_236_1198
  store i8 %tmp_data_728, i8* %plaintext_addr_237, align 1
  br label %1426

; <label>:1428                                    ; preds = %1424
  %tmp_1_236 = zext i5 %i_1_236 to i64
  %out_addr_237 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_236
  %tmp_data_729 = load i8* %out_addr_237, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_729, i1 true, i1 false)
  br label %1424

; <label>:1429                                    ; preds = %1430
  %empty_1199 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_239)
  %tmp_240 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1438

; <label>:1430                                    ; preds = %1434, %1431
  %i_1_237 = phi i5 [ 0, %1431 ], [ %i_4_237, %1434 ]
  %exitcond_237 = icmp eq i5 %i_1_237, -16
  %empty_1200 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_237 = add i5 %i_1_237, 1
  br i1 %exitcond_237, label %1429, label %1434

; <label>:1431                                    ; preds = %1432
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1430

; <label>:1432                                    ; preds = %1433, %1423
  %i_238 = phi i5 [ 0, %1423 ], [ %i_3_237, %1433 ]
  %exitcond2_237 = icmp eq i5 %i_238, -16
  %empty_1201 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_237 = add i5 %i_238, 1
  br i1 %exitcond2_237, label %1431, label %1433

; <label>:1433                                    ; preds = %1432
  %empty_1202 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_730 = extractvalue { i8, i1, i1 } %empty_1202, 0
  %tmp_237_1203 = zext i5 %i_238 to i64
  %plaintext_addr_238 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_237_1203
  store i8 %tmp_data_730, i8* %plaintext_addr_238, align 1
  br label %1432

; <label>:1434                                    ; preds = %1430
  %tmp_1_237 = zext i5 %i_1_237 to i64
  %out_addr_238 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_237
  %tmp_data_731 = load i8* %out_addr_238, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_731, i1 true, i1 false)
  br label %1430

; <label>:1435                                    ; preds = %1436
  %empty_1204 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_240)
  %tmp_241 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1444

; <label>:1436                                    ; preds = %1440, %1437
  %i_1_238 = phi i5 [ 0, %1437 ], [ %i_4_238, %1440 ]
  %exitcond_238 = icmp eq i5 %i_1_238, -16
  %empty_1205 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_238 = add i5 %i_1_238, 1
  br i1 %exitcond_238, label %1435, label %1440

; <label>:1437                                    ; preds = %1438
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1436

; <label>:1438                                    ; preds = %1439, %1429
  %i_239 = phi i5 [ 0, %1429 ], [ %i_3_238, %1439 ]
  %exitcond2_238 = icmp eq i5 %i_239, -16
  %empty_1206 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_238 = add i5 %i_239, 1
  br i1 %exitcond2_238, label %1437, label %1439

; <label>:1439                                    ; preds = %1438
  %empty_1207 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_732 = extractvalue { i8, i1, i1 } %empty_1207, 0
  %tmp_238_1208 = zext i5 %i_239 to i64
  %plaintext_addr_239 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_238_1208
  store i8 %tmp_data_732, i8* %plaintext_addr_239, align 1
  br label %1438

; <label>:1440                                    ; preds = %1436
  %tmp_1_238 = zext i5 %i_1_238 to i64
  %out_addr_239 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_238
  %tmp_data_733 = load i8* %out_addr_239, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_733, i1 true, i1 false)
  br label %1436

; <label>:1441                                    ; preds = %1442
  %empty_1209 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_241)
  %tmp_242 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1450

; <label>:1442                                    ; preds = %1446, %1443
  %i_1_239 = phi i5 [ 0, %1443 ], [ %i_4_239, %1446 ]
  %exitcond_239 = icmp eq i5 %i_1_239, -16
  %empty_1210 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_239 = add i5 %i_1_239, 1
  br i1 %exitcond_239, label %1441, label %1446

; <label>:1443                                    ; preds = %1444
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1442

; <label>:1444                                    ; preds = %1445, %1435
  %i_240 = phi i5 [ 0, %1435 ], [ %i_3_239, %1445 ]
  %exitcond2_239 = icmp eq i5 %i_240, -16
  %empty_1211 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_239 = add i5 %i_240, 1
  br i1 %exitcond2_239, label %1443, label %1445

; <label>:1445                                    ; preds = %1444
  %empty_1212 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_734 = extractvalue { i8, i1, i1 } %empty_1212, 0
  %tmp_239_1213 = zext i5 %i_240 to i64
  %plaintext_addr_240 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_239_1213
  store i8 %tmp_data_734, i8* %plaintext_addr_240, align 1
  br label %1444

; <label>:1446                                    ; preds = %1442
  %tmp_1_239 = zext i5 %i_1_239 to i64
  %out_addr_240 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_239
  %tmp_data_735 = load i8* %out_addr_240, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_735, i1 true, i1 false)
  br label %1442

; <label>:1447                                    ; preds = %1448
  %empty_1214 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_242)
  %tmp_243 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1456

; <label>:1448                                    ; preds = %1452, %1449
  %i_1_240 = phi i5 [ 0, %1449 ], [ %i_4_240, %1452 ]
  %exitcond_240 = icmp eq i5 %i_1_240, -16
  %empty_1215 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_240 = add i5 %i_1_240, 1
  br i1 %exitcond_240, label %1447, label %1452

; <label>:1449                                    ; preds = %1450
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1448

; <label>:1450                                    ; preds = %1451, %1441
  %i_241 = phi i5 [ 0, %1441 ], [ %i_3_240, %1451 ]
  %exitcond2_240 = icmp eq i5 %i_241, -16
  %empty_1216 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_240 = add i5 %i_241, 1
  br i1 %exitcond2_240, label %1449, label %1451

; <label>:1451                                    ; preds = %1450
  %empty_1217 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_736 = extractvalue { i8, i1, i1 } %empty_1217, 0
  %tmp_240_1218 = zext i5 %i_241 to i64
  %plaintext_addr_241 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_240_1218
  store i8 %tmp_data_736, i8* %plaintext_addr_241, align 1
  br label %1450

; <label>:1452                                    ; preds = %1448
  %tmp_1_240 = zext i5 %i_1_240 to i64
  %out_addr_241 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_240
  %tmp_data_737 = load i8* %out_addr_241, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_737, i1 true, i1 false)
  br label %1448

; <label>:1453                                    ; preds = %1454
  %empty_1219 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_243)
  %tmp_244 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1462

; <label>:1454                                    ; preds = %1458, %1455
  %i_1_241 = phi i5 [ 0, %1455 ], [ %i_4_241, %1458 ]
  %exitcond_241 = icmp eq i5 %i_1_241, -16
  %empty_1220 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_241 = add i5 %i_1_241, 1
  br i1 %exitcond_241, label %1453, label %1458

; <label>:1455                                    ; preds = %1456
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1454

; <label>:1456                                    ; preds = %1457, %1447
  %i_242 = phi i5 [ 0, %1447 ], [ %i_3_241, %1457 ]
  %exitcond2_241 = icmp eq i5 %i_242, -16
  %empty_1221 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_241 = add i5 %i_242, 1
  br i1 %exitcond2_241, label %1455, label %1457

; <label>:1457                                    ; preds = %1456
  %empty_1222 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_738 = extractvalue { i8, i1, i1 } %empty_1222, 0
  %tmp_241_1223 = zext i5 %i_242 to i64
  %plaintext_addr_242 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_241_1223
  store i8 %tmp_data_738, i8* %plaintext_addr_242, align 1
  br label %1456

; <label>:1458                                    ; preds = %1454
  %tmp_1_241 = zext i5 %i_1_241 to i64
  %out_addr_242 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_241
  %tmp_data_739 = load i8* %out_addr_242, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_739, i1 true, i1 false)
  br label %1454

; <label>:1459                                    ; preds = %1460
  %empty_1224 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_244)
  %tmp_245 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1468

; <label>:1460                                    ; preds = %1464, %1461
  %i_1_242 = phi i5 [ 0, %1461 ], [ %i_4_242, %1464 ]
  %exitcond_242 = icmp eq i5 %i_1_242, -16
  %empty_1225 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_242 = add i5 %i_1_242, 1
  br i1 %exitcond_242, label %1459, label %1464

; <label>:1461                                    ; preds = %1462
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1460

; <label>:1462                                    ; preds = %1463, %1453
  %i_243 = phi i5 [ 0, %1453 ], [ %i_3_242, %1463 ]
  %exitcond2_242 = icmp eq i5 %i_243, -16
  %empty_1226 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_242 = add i5 %i_243, 1
  br i1 %exitcond2_242, label %1461, label %1463

; <label>:1463                                    ; preds = %1462
  %empty_1227 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_740 = extractvalue { i8, i1, i1 } %empty_1227, 0
  %tmp_242_1228 = zext i5 %i_243 to i64
  %plaintext_addr_243 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_242_1228
  store i8 %tmp_data_740, i8* %plaintext_addr_243, align 1
  br label %1462

; <label>:1464                                    ; preds = %1460
  %tmp_1_242 = zext i5 %i_1_242 to i64
  %out_addr_243 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_242
  %tmp_data_741 = load i8* %out_addr_243, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_741, i1 true, i1 false)
  br label %1460

; <label>:1465                                    ; preds = %1466
  %empty_1229 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_245)
  %tmp_246 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1474

; <label>:1466                                    ; preds = %1470, %1467
  %i_1_243 = phi i5 [ 0, %1467 ], [ %i_4_243, %1470 ]
  %exitcond_243 = icmp eq i5 %i_1_243, -16
  %empty_1230 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_243 = add i5 %i_1_243, 1
  br i1 %exitcond_243, label %1465, label %1470

; <label>:1467                                    ; preds = %1468
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1466

; <label>:1468                                    ; preds = %1469, %1459
  %i_244 = phi i5 [ 0, %1459 ], [ %i_3_243, %1469 ]
  %exitcond2_243 = icmp eq i5 %i_244, -16
  %empty_1231 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_243 = add i5 %i_244, 1
  br i1 %exitcond2_243, label %1467, label %1469

; <label>:1469                                    ; preds = %1468
  %empty_1232 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_742 = extractvalue { i8, i1, i1 } %empty_1232, 0
  %tmp_243_1233 = zext i5 %i_244 to i64
  %plaintext_addr_244 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_243_1233
  store i8 %tmp_data_742, i8* %plaintext_addr_244, align 1
  br label %1468

; <label>:1470                                    ; preds = %1466
  %tmp_1_243 = zext i5 %i_1_243 to i64
  %out_addr_244 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_243
  %tmp_data_743 = load i8* %out_addr_244, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_743, i1 true, i1 false)
  br label %1466

; <label>:1471                                    ; preds = %1472
  %empty_1234 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_246)
  %tmp_247 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1480

; <label>:1472                                    ; preds = %1476, %1473
  %i_1_244 = phi i5 [ 0, %1473 ], [ %i_4_244, %1476 ]
  %exitcond_244 = icmp eq i5 %i_1_244, -16
  %empty_1235 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_244 = add i5 %i_1_244, 1
  br i1 %exitcond_244, label %1471, label %1476

; <label>:1473                                    ; preds = %1474
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1472

; <label>:1474                                    ; preds = %1475, %1465
  %i_245 = phi i5 [ 0, %1465 ], [ %i_3_244, %1475 ]
  %exitcond2_244 = icmp eq i5 %i_245, -16
  %empty_1236 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_244 = add i5 %i_245, 1
  br i1 %exitcond2_244, label %1473, label %1475

; <label>:1475                                    ; preds = %1474
  %empty_1237 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_744 = extractvalue { i8, i1, i1 } %empty_1237, 0
  %tmp_244_1238 = zext i5 %i_245 to i64
  %plaintext_addr_245 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_244_1238
  store i8 %tmp_data_744, i8* %plaintext_addr_245, align 1
  br label %1474

; <label>:1476                                    ; preds = %1472
  %tmp_1_244 = zext i5 %i_1_244 to i64
  %out_addr_245 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_244
  %tmp_data_745 = load i8* %out_addr_245, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_745, i1 true, i1 false)
  br label %1472

; <label>:1477                                    ; preds = %1478
  %empty_1239 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_247)
  %tmp_248 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1486

; <label>:1478                                    ; preds = %1482, %1479
  %i_1_245 = phi i5 [ 0, %1479 ], [ %i_4_245, %1482 ]
  %exitcond_245 = icmp eq i5 %i_1_245, -16
  %empty_1240 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_245 = add i5 %i_1_245, 1
  br i1 %exitcond_245, label %1477, label %1482

; <label>:1479                                    ; preds = %1480
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1478

; <label>:1480                                    ; preds = %1481, %1471
  %i_246 = phi i5 [ 0, %1471 ], [ %i_3_245, %1481 ]
  %exitcond2_245 = icmp eq i5 %i_246, -16
  %empty_1241 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_245 = add i5 %i_246, 1
  br i1 %exitcond2_245, label %1479, label %1481

; <label>:1481                                    ; preds = %1480
  %empty_1242 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_746 = extractvalue { i8, i1, i1 } %empty_1242, 0
  %tmp_245_1243 = zext i5 %i_246 to i64
  %plaintext_addr_246 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_245_1243
  store i8 %tmp_data_746, i8* %plaintext_addr_246, align 1
  br label %1480

; <label>:1482                                    ; preds = %1478
  %tmp_1_245 = zext i5 %i_1_245 to i64
  %out_addr_246 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_245
  %tmp_data_747 = load i8* %out_addr_246, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_747, i1 true, i1 false)
  br label %1478

; <label>:1483                                    ; preds = %1484
  %empty_1244 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_248)
  %tmp_249 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1492

; <label>:1484                                    ; preds = %1488, %1485
  %i_1_246 = phi i5 [ 0, %1485 ], [ %i_4_246, %1488 ]
  %exitcond_246 = icmp eq i5 %i_1_246, -16
  %empty_1245 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_246 = add i5 %i_1_246, 1
  br i1 %exitcond_246, label %1483, label %1488

; <label>:1485                                    ; preds = %1486
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1484

; <label>:1486                                    ; preds = %1487, %1477
  %i_247 = phi i5 [ 0, %1477 ], [ %i_3_246, %1487 ]
  %exitcond2_246 = icmp eq i5 %i_247, -16
  %empty_1246 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_246 = add i5 %i_247, 1
  br i1 %exitcond2_246, label %1485, label %1487

; <label>:1487                                    ; preds = %1486
  %empty_1247 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_748 = extractvalue { i8, i1, i1 } %empty_1247, 0
  %tmp_246_1248 = zext i5 %i_247 to i64
  %plaintext_addr_247 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_246_1248
  store i8 %tmp_data_748, i8* %plaintext_addr_247, align 1
  br label %1486

; <label>:1488                                    ; preds = %1484
  %tmp_1_246 = zext i5 %i_1_246 to i64
  %out_addr_247 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_246
  %tmp_data_749 = load i8* %out_addr_247, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_749, i1 true, i1 false)
  br label %1484

; <label>:1489                                    ; preds = %1490
  %empty_1249 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_249)
  %tmp_250 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1498

; <label>:1490                                    ; preds = %1494, %1491
  %i_1_247 = phi i5 [ 0, %1491 ], [ %i_4_247, %1494 ]
  %exitcond_247 = icmp eq i5 %i_1_247, -16
  %empty_1250 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_247 = add i5 %i_1_247, 1
  br i1 %exitcond_247, label %1489, label %1494

; <label>:1491                                    ; preds = %1492
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1490

; <label>:1492                                    ; preds = %1493, %1483
  %i_248 = phi i5 [ 0, %1483 ], [ %i_3_247, %1493 ]
  %exitcond2_247 = icmp eq i5 %i_248, -16
  %empty_1251 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_247 = add i5 %i_248, 1
  br i1 %exitcond2_247, label %1491, label %1493

; <label>:1493                                    ; preds = %1492
  %empty_1252 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_750 = extractvalue { i8, i1, i1 } %empty_1252, 0
  %tmp_247_1253 = zext i5 %i_248 to i64
  %plaintext_addr_248 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_247_1253
  store i8 %tmp_data_750, i8* %plaintext_addr_248, align 1
  br label %1492

; <label>:1494                                    ; preds = %1490
  %tmp_1_247 = zext i5 %i_1_247 to i64
  %out_addr_248 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_247
  %tmp_data_751 = load i8* %out_addr_248, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_751, i1 true, i1 false)
  br label %1490

; <label>:1495                                    ; preds = %1496
  %empty_1254 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_250)
  %tmp_251 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1504

; <label>:1496                                    ; preds = %1500, %1497
  %i_1_248 = phi i5 [ 0, %1497 ], [ %i_4_248, %1500 ]
  %exitcond_248 = icmp eq i5 %i_1_248, -16
  %empty_1255 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_248 = add i5 %i_1_248, 1
  br i1 %exitcond_248, label %1495, label %1500

; <label>:1497                                    ; preds = %1498
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1496

; <label>:1498                                    ; preds = %1499, %1489
  %i_249 = phi i5 [ 0, %1489 ], [ %i_3_248, %1499 ]
  %exitcond2_248 = icmp eq i5 %i_249, -16
  %empty_1256 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_248 = add i5 %i_249, 1
  br i1 %exitcond2_248, label %1497, label %1499

; <label>:1499                                    ; preds = %1498
  %empty_1257 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_752 = extractvalue { i8, i1, i1 } %empty_1257, 0
  %tmp_248_1258 = zext i5 %i_249 to i64
  %plaintext_addr_249 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_248_1258
  store i8 %tmp_data_752, i8* %plaintext_addr_249, align 1
  br label %1498

; <label>:1500                                    ; preds = %1496
  %tmp_1_248 = zext i5 %i_1_248 to i64
  %out_addr_249 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_248
  %tmp_data_753 = load i8* %out_addr_249, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_753, i1 true, i1 false)
  br label %1496

; <label>:1501                                    ; preds = %1502
  %empty_1259 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_251)
  %tmp_252 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1510

; <label>:1502                                    ; preds = %1506, %1503
  %i_1_249 = phi i5 [ 0, %1503 ], [ %i_4_249, %1506 ]
  %exitcond_249 = icmp eq i5 %i_1_249, -16
  %empty_1260 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_249 = add i5 %i_1_249, 1
  br i1 %exitcond_249, label %1501, label %1506

; <label>:1503                                    ; preds = %1504
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1502

; <label>:1504                                    ; preds = %1505, %1495
  %i_250 = phi i5 [ 0, %1495 ], [ %i_3_249, %1505 ]
  %exitcond2_249 = icmp eq i5 %i_250, -16
  %empty_1261 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_249 = add i5 %i_250, 1
  br i1 %exitcond2_249, label %1503, label %1505

; <label>:1505                                    ; preds = %1504
  %empty_1262 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_754 = extractvalue { i8, i1, i1 } %empty_1262, 0
  %tmp_249_1263 = zext i5 %i_250 to i64
  %plaintext_addr_250 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_249_1263
  store i8 %tmp_data_754, i8* %plaintext_addr_250, align 1
  br label %1504

; <label>:1506                                    ; preds = %1502
  %tmp_1_249 = zext i5 %i_1_249 to i64
  %out_addr_250 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_249
  %tmp_data_755 = load i8* %out_addr_250, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_755, i1 true, i1 false)
  br label %1502

; <label>:1507                                    ; preds = %1508
  %empty_1264 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_252)
  %tmp_253 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1516

; <label>:1508                                    ; preds = %1512, %1509
  %i_1_250 = phi i5 [ 0, %1509 ], [ %i_4_250, %1512 ]
  %exitcond_250 = icmp eq i5 %i_1_250, -16
  %empty_1265 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_250 = add i5 %i_1_250, 1
  br i1 %exitcond_250, label %1507, label %1512

; <label>:1509                                    ; preds = %1510
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1508

; <label>:1510                                    ; preds = %1511, %1501
  %i_251 = phi i5 [ 0, %1501 ], [ %i_3_250, %1511 ]
  %exitcond2_250 = icmp eq i5 %i_251, -16
  %empty_1266 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_250 = add i5 %i_251, 1
  br i1 %exitcond2_250, label %1509, label %1511

; <label>:1511                                    ; preds = %1510
  %empty_1267 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_756 = extractvalue { i8, i1, i1 } %empty_1267, 0
  %tmp_250_1268 = zext i5 %i_251 to i64
  %plaintext_addr_251 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_250_1268
  store i8 %tmp_data_756, i8* %plaintext_addr_251, align 1
  br label %1510

; <label>:1512                                    ; preds = %1508
  %tmp_1_250 = zext i5 %i_1_250 to i64
  %out_addr_251 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_250
  %tmp_data_757 = load i8* %out_addr_251, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_757, i1 true, i1 false)
  br label %1508

; <label>:1513                                    ; preds = %1514
  %empty_1269 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_253)
  %tmp_254 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1522

; <label>:1514                                    ; preds = %1518, %1515
  %i_1_251 = phi i5 [ 0, %1515 ], [ %i_4_251, %1518 ]
  %exitcond_251 = icmp eq i5 %i_1_251, -16
  %empty_1270 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_251 = add i5 %i_1_251, 1
  br i1 %exitcond_251, label %1513, label %1518

; <label>:1515                                    ; preds = %1516
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1514

; <label>:1516                                    ; preds = %1517, %1507
  %i_252 = phi i5 [ 0, %1507 ], [ %i_3_251, %1517 ]
  %exitcond2_251 = icmp eq i5 %i_252, -16
  %empty_1271 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_251 = add i5 %i_252, 1
  br i1 %exitcond2_251, label %1515, label %1517

; <label>:1517                                    ; preds = %1516
  %empty_1272 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_758 = extractvalue { i8, i1, i1 } %empty_1272, 0
  %tmp_251_1273 = zext i5 %i_252 to i64
  %plaintext_addr_252 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_251_1273
  store i8 %tmp_data_758, i8* %plaintext_addr_252, align 1
  br label %1516

; <label>:1518                                    ; preds = %1514
  %tmp_1_251 = zext i5 %i_1_251 to i64
  %out_addr_252 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_251
  %tmp_data_759 = load i8* %out_addr_252, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_759, i1 true, i1 false)
  br label %1514

; <label>:1519                                    ; preds = %1520
  %empty_1274 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_254)
  %tmp_255 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1528

; <label>:1520                                    ; preds = %1524, %1521
  %i_1_252 = phi i5 [ 0, %1521 ], [ %i_4_252, %1524 ]
  %exitcond_252 = icmp eq i5 %i_1_252, -16
  %empty_1275 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_252 = add i5 %i_1_252, 1
  br i1 %exitcond_252, label %1519, label %1524

; <label>:1521                                    ; preds = %1522
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1520

; <label>:1522                                    ; preds = %1523, %1513
  %i_253 = phi i5 [ 0, %1513 ], [ %i_3_252, %1523 ]
  %exitcond2_252 = icmp eq i5 %i_253, -16
  %empty_1276 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_252 = add i5 %i_253, 1
  br i1 %exitcond2_252, label %1521, label %1523

; <label>:1523                                    ; preds = %1522
  %empty_1277 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_760 = extractvalue { i8, i1, i1 } %empty_1277, 0
  %tmp_252_1278 = zext i5 %i_253 to i64
  %plaintext_addr_253 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_252_1278
  store i8 %tmp_data_760, i8* %plaintext_addr_253, align 1
  br label %1522

; <label>:1524                                    ; preds = %1520
  %tmp_1_252 = zext i5 %i_1_252 to i64
  %out_addr_253 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_252
  %tmp_data_761 = load i8* %out_addr_253, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_761, i1 true, i1 false)
  br label %1520

; <label>:1525                                    ; preds = %1526
  %empty_1279 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_255)
  %tmp_256 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  br label %1534

; <label>:1526                                    ; preds = %1530, %1527
  %i_1_253 = phi i5 [ 0, %1527 ], [ %i_4_253, %1530 ]
  %exitcond_253 = icmp eq i5 %i_1_253, -16
  %empty_1280 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_253 = add i5 %i_1_253, 1
  br i1 %exitcond_253, label %1525, label %1530

; <label>:1527                                    ; preds = %1528
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1526

; <label>:1528                                    ; preds = %1529, %1519
  %i_254 = phi i5 [ 0, %1519 ], [ %i_3_253, %1529 ]
  %exitcond2_253 = icmp eq i5 %i_254, -16
  %empty_1281 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_253 = add i5 %i_254, 1
  br i1 %exitcond2_253, label %1527, label %1529

; <label>:1529                                    ; preds = %1528
  %empty_1282 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_762 = extractvalue { i8, i1, i1 } %empty_1282, 0
  %tmp_253_1283 = zext i5 %i_254 to i64
  %plaintext_addr_254 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_253_1283
  store i8 %tmp_data_762, i8* %plaintext_addr_254, align 1
  br label %1528

; <label>:1530                                    ; preds = %1526
  %tmp_1_253 = zext i5 %i_1_253 to i64
  %out_addr_254 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_253
  %tmp_data_763 = load i8* %out_addr_254, align 1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_763, i1 true, i1 false)
  br label %1526

; <label>:1531                                    ; preds = %1532
  %empty_1284 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_256)
  ret void

; <label>:1532                                    ; preds = %1536, %1533
  %i_1_254 = phi i5 [ 0, %1533 ], [ %i_4_254, %1536 ]
  %exitcond_254 = icmp eq i5 %i_1_254, -16
  %empty_1285 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_4_254 = add i5 %i_1_254, 1
  br i1 %exitcond_254, label %1531, label %1536

; <label>:1533                                    ; preds = %1534
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w)
  br label %1532

; <label>:1534                                    ; preds = %1535, %1525
  %i_255 = phi i5 [ 0, %1525 ], [ %i_3_254, %1535 ]
  %exitcond2_254 = icmp eq i5 %i_255, -16
  %empty_1286 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %i_3_254 = add i5 %i_255, 1
  br i1 %exitcond2_254, label %1533, label %1535

; <label>:1535                                    ; preds = %1534
  %empty_1287 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V)
  %tmp_data_764 = extractvalue { i8, i1, i1 } %empty_1287, 0
  %tmp_254_1288 = zext i5 %i_255 to i64
  %plaintext_addr_255 = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp_254_1288
  store i8 %tmp_data_764, i8* %plaintext_addr_255, align 1
  br label %1534

; <label>:1536                                    ; preds = %1532
  %tmp_1_254 = zext i5 %i_1_254 to i64
  %out_addr_255 = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_1_254
  %tmp_data_765 = load i8* %out_addr_255, align 1
  %tmp_last_V = icmp eq i5 %i_1_254, 15
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_765, i1 true, i1 %tmp_last_V)
  br label %1532
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
  %tmp_6 = trunc i3 %indvars_iv to i2
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_6, i2 0)
  %tmp_3 = zext i4 %tmp_s to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_3
  %tmp_4 = or i4 %tmp_s, 3
  %tmp_5 = zext i4 %tmp_4 to i64
  %state_addr_1 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_5
  br label %.preheader

.preheader:                                       ; preds = %5, %.preheader.preheader
  %s = phi i2 [ %s_1, %5 ], [ 0, %.preheader.preheader ]
  %s_cast = zext i2 %s to i4
  %exitcond1 = icmp eq i4 %s_cast, %indvars_iv_cast
  %empty_1289 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 0)
  %s_1 = add i2 %s, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp = load i8* %state_addr, align 1
  br label %3

; <label>:3                                       ; preds = %4, %2
  %k = phi i3 [ 1, %2 ], [ %k_1, %4 ]
  %exitcond = icmp eq i3 %k, -4
  %empty_1290 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %tmp_9 = trunc i3 %k to i2
  %tmp_6_cast = zext i3 %k to i4
  %tmp_7 = add i4 %tmp_6_cast, %tmp_s
  %tmp_8 = zext i4 %tmp_7 to i64
  %state_addr_2 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_8
  %state_load = load i8* %state_addr_2, align 1
  %tmp1 = add i2 -1, %tmp_9
  %tmp_1 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_6, i2 %tmp1)
  %tmp_2 = zext i4 %tmp_1 to i64
  %state_addr_3 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_2
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
  %i = phi i3 [ 0, %.preheader.preheader ], [ %i_2, %_ifconv ]
  %exitcond1 = icmp eq i3 %i, -4
  %empty_1291 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_2 = add i3 %i, 1
  br i1 %exitcond1, label %1, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %col_0_load_1 = load i8* %col_0_s
  %col_1_load_1 = load i8* %col_1_s
  %col_2_load_1 = load i8* %col_2_s
  %col_3_load_1 = load i8* %col_3_s
  %tmp_15 = trunc i3 %i to i2
  %tmp_3 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_15, i2 0)
  %tmp_4 = add i4 %tmp_cast, %tmp_3
  %tmp_5 = zext i4 %tmp_4 to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_5
  %col_0 = load i8* %state_addr, align 1
  %sel_tmp = icmp eq i2 %tmp_15, -2
  %sel_tmp2 = icmp eq i2 %tmp_15, 1
  %sel_tmp4 = icmp eq i2 %tmp_15, 0
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
  %tmp_i_1292 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_1_load)
  %tmp_12_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_2_load)
  %tmp_13_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_3_load)
  %tmp = xor i8 %tmp_i_1292, %tmp_i
  %tmp7 = xor i8 %tmp_12_i, %tmp_13_i
  %res_0 = xor i8 %tmp7, %tmp
  %tmp_16_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_0_load)
  %tmp_17_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_1_load)
  %tmp_18_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_2_load)
  %tmp8 = xor i8 %tmp_17_i, %tmp_16_i
  %tmp9 = xor i8 %tmp_18_i, %tmp_13_i
  %res_1 = xor i8 %tmp9, %tmp8
  %tmp_21_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_1_load)
  %tmp_22_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_2_load)
  %tmp_23_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_3_load)
  %tmp10 = xor i8 %tmp_21_i, %tmp_16_i
  %tmp11 = xor i8 %tmp_22_i, %tmp_23_i
  %res_2 = xor i8 %tmp11, %tmp10
  %tmp_26_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_0_load)
  %tmp_27_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_3_load)
  %tmp12 = xor i8 %tmp_21_i, %tmp_26_i
  %tmp13 = xor i8 %tmp_12_i, %tmp_27_i
  %res_3 = xor i8 %tmp13, %tmp12
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i_1 = phi i3 [ 0, %1 ], [ %i_3, %3 ]
  %exitcond = icmp eq i3 %i_1, -4
  %empty_1293 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_3 = add i3 %i_1, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %2
  %tmp_16 = trunc i3 %i_1 to i2
  %tmp_14 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %res_0, i8 %res_1, i8 %res_2, i8 %res_3, i2 %tmp_16)
  %tmp_7 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_16, i2 0)
  %tmp_8 = add i4 %tmp_cast, %tmp_7
  %tmp_9 = zext i4 %tmp_8 to i64
  %state_addr_4 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_9
  store i8 %tmp_14, i8* %state_addr_4, align 1
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
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %p = phi i8 [ 0, %0 ], [ %p_0_s, %2 ]
  %p_s = phi i8 [ %b_read, %0 ], [ %tmp_17, %2 ]
  %p_0 = phi i8 [ %a_cast, %0 ], [ %a_assign_2, %2 ]
  %exitcond = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_4 = add i4 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = trunc i8 %p_s to i1
  %tmp_10 = select i1 %tmp, i8 %p_0, i8 0
  %p_0_s = xor i8 %tmp_10, %p
  %tmp_18 = shl i8 %p_0, 1
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0, i32 7)
  %a_assign_1 = xor i8 %tmp_18, 27
  %a_assign_2 = select i1 %tmp_19, i8 %a_assign_1, i8 %tmp_18
  %b_assign = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %p_s, i32 1, i32 7)
  %tmp_17 = zext i7 %b_assign to i8
  br label %1

; <label>:3                                       ; preds = %1
  ret i8 %p
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
  %tmp_30 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %i_1, i2 0)
  %tmp_31 = add i8 -4, %tmp_30
  %tmp_32 = zext i8 %tmp_31 to i64
  %w_addr_16 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_32
  %tmp_29 = load i8* %w_addr_16, align 1
  %tmp_33 = add i8 -3, %tmp_30
  %tmp_34 = zext i8 %tmp_33 to i64
  %w_addr_17 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_34
  %tmp_1 = load i8* %w_addr_17, align 1
  %tmp_35 = add i8 -2, %tmp_30
  %tmp_36 = zext i8 %tmp_35 to i64
  %w_addr_18 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_36
  %tmp_2 = load i8* %w_addr_18, align 1
  %tmp_37 = add i8 -1, %tmp_30
  %tmp_38 = zext i8 %tmp_37 to i64
  %w_addr_19 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_38
  %tmp_3_1 = load i8* %w_addr_19, align 1
  %tmp_21 = trunc i6 %i_1 to i2
  %tmp_40 = icmp eq i2 %tmp_21, 0
  br i1 %tmp_40, label %.preheader49, label %._crit_edge

.preheader49:                                     ; preds = %0, %_ifconv.i
  %write_flag_i = phi i1 [ %write_flag_1_i, %_ifconv.i ], [ false, %0 ]
  %w_3_read_assign_2 = phi i8 [ %w_3_read_assign_3, %_ifconv.i ], [ undef, %0 ]
  %tmp_2_1 = phi i8 [ %w_3_read_assign_5, %_ifconv.i ], [ %tmp_2, %0 ]
  %tmp_1_1 = phi i8 [ %w_3_read_assign_7, %_ifconv.i ], [ %tmp_1, %0 ]
  %i_i2 = phi i2 [ %i_5, %_ifconv.i ], [ 0, %0 ]
  %exitcond_i2 = icmp eq i2 %i_i2, -1
  %empty_1294 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
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
  %tmp_0_1 = select i1 %write_flag_i, i8 %w_3_read_assign_2, i8 %tmp_29
  br label %1

; <label>:1                                       ; preds = %_ifconv, %rot_word.exit
  %a_3_read_assign = phi i8 [ %tmp_29, %rot_word.exit ], [ %tmp_3, %_ifconv ]
  %a_2_read_assign = phi i8 [ %tmp_2_1, %rot_word.exit ], [ %tmp_3_4, %_ifconv ]
  %tmp_3_3 = phi i8 [ %tmp_1_1, %rot_word.exit ], [ %tmp_3_7, %_ifconv ]
  %tmp_3_6 = phi i8 [ %tmp_0_1, %rot_word.exit ], [ %tmp_3_8, %_ifconv ]
  %i_i = phi i3 [ 0, %rot_word.exit ], [ %i_6, %_ifconv ]
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty_1295 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_6 = add i3 %i_i, 1
  br i1 %exitcond_i, label %sub_word.exit, label %_ifconv

_ifconv:                                          ; preds = %1
  %tmp_22 = trunc i3 %i_i to i2
  %tmp = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %tmp_3_6, i8 %tmp_3_3, i8 %a_2_read_assign, i8 %a_3_read_assign, i2 %tmp_22)
  %tmp_1_i = zext i8 %tmp to i64
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_1_i
  %tmp_3_11 = load i8* %s_box_addr, align 1
  %sel_tmp = icmp eq i2 %tmp_22, -2
  %sel_tmp8 = icmp eq i2 %tmp_22, 1
  %sel_tmp2 = icmp eq i2 %tmp_22, 0
  %or_cond = or i1 %sel_tmp2, %sel_tmp8
  %newSel = select i1 %sel_tmp, i8 %a_3_read_assign, i8 %tmp_3_11
  %tmp_3 = select i1 %or_cond, i8 %a_3_read_assign, i8 %newSel
  %newSel5 = select i1 %sel_tmp, i8 %tmp_3_11, i8 %a_2_read_assign
  %tmp_3_4 = select i1 %or_cond, i8 %a_2_read_assign, i8 %newSel5
  %tmp_3_5 = select i1 %sel_tmp8, i8 %tmp_3_11, i8 %tmp_3_3
  %tmp_3_7 = select i1 %sel_tmp2, i8 %tmp_3_3, i8 %tmp_3_5
  %tmp_3_8 = select i1 %sel_tmp2, i8 %tmp_3_11, i8 %tmp_3_6
  br label %1

sub_word.exit:                                    ; preds = %1
  %i_assign = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5)
  %i_assign_cast1 = zext i4 %i_assign to i8
  %tmp_41 = icmp eq i4 %i_assign, 1
  br i1 %tmp_41, label %2, label %3

; <label>:2                                       ; preds = %sub_word.exit
  store i8 1, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1
  br label %Rcon.exit

; <label>:3                                       ; preds = %sub_word.exit
  %tmp_23 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %i_1, i32 3, i32 5)
  %icmp = icmp eq i3 %tmp_23, 0
  br i1 %icmp, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader76, %3
  %a_assign = phi i8 [ 2, %3 ], [ %p_i, %.preheader76 ]
  %p_0_in_i = phi i8 [ %i_assign_cast1, %3 ], [ %i_assign_1, %.preheader76 ]
  %i_assign_1 = add i8 %p_0_in_i, -1
  %tmp_24 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %i_assign_1, i32 1, i32 7)
  %icmp1 = icmp eq i7 %tmp_24, 0
  br i1 %icmp1, label %.loopexit.i.loopexit, label %.preheader76

.preheader76:                                     ; preds = %.preheader.i, %4
  %i_i1 = phi i4 [ %i_7, %4 ], [ 0, %.preheader.i ]
  %p_i = phi i8 [ %p_0_i_1298, %4 ], [ 0, %.preheader.i ]
  %p_i_1296 = phi i5 [ %b_assign, %4 ], [ 2, %.preheader.i ]
  %p_0_i = phi i8 [ %a_assign_5, %4 ], [ %a_assign, %.preheader.i ]
  %exitcond_i1 = icmp eq i4 %i_i1, -8
  %empty_1297 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_7 = add i4 %i_i1, 1
  br i1 %exitcond_i1, label %.preheader.i, label %4

; <label>:4                                       ; preds = %.preheader76
  %tmp_25 = trunc i5 %p_i_1296 to i1
  %tmp_10_i = select i1 %tmp_25, i8 %p_0_i, i8 0
  %p_0_i_1298 = xor i8 %tmp_10_i, %p_i
  %tmp_26 = shl i8 %p_0_i, 1
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0_i, i32 7)
  %a_assign_4 = xor i8 %tmp_26, 27
  %a_assign_5 = select i1 %tmp_27, i8 %a_assign_4, i8 %tmp_26
  %tmp_28 = call i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5 %p_i_1296, i32 1, i32 4)
  %b_assign = zext i4 %tmp_28 to i5
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
  %tmp_0_s = phi i8 [ %tmp_0, %Rcon.exit ], [ %tmp_29, %0 ]
  %tmp_46 = add i8 %tmp_30, -16
  %tmp_47 = zext i8 %tmp_46 to i64
  %w_addr_20 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_47
  %w_load = load i8* %w_addr_20, align 1
  %tmp_48 = xor i8 %w_load, %tmp_0_s
  %tmp_49 = zext i8 %tmp_30 to i64
  %w_addr_21 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_49
  store i8 %tmp_48, i8* %w_addr_21, align 1
  %tmp_50 = add i8 %tmp_30, -15
  %tmp_51 = zext i8 %tmp_50 to i64
  %w_addr_22 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_51
  %w_load_1 = load i8* %w_addr_22, align 1
  %tmp_52 = xor i8 %w_load_1, %tmp_1_s
  %tmp_53 = or i8 %tmp_30, 1
  %tmp_54 = zext i8 %tmp_53 to i64
  %w_addr_23 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_54
  store i8 %tmp_52, i8* %w_addr_23, align 1
  %tmp_55 = add i8 %tmp_30, -14
  %tmp_56 = zext i8 %tmp_55 to i64
  %w_addr_24 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_56
  %w_load_2 = load i8* %w_addr_24, align 1
  %tmp_57 = xor i8 %w_load_2, %tmp_2_3_2
  %tmp_58 = or i8 %tmp_30, 2
  %tmp_59 = zext i8 %tmp_58 to i64
  %w_addr_25 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_59
  store i8 %tmp_57, i8* %w_addr_25, align 1
  %tmp_60 = add i8 %tmp_30, -13
  %tmp_61 = zext i8 %tmp_60 to i64
  %w_addr_26 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_61
  %w_load_3 = load i8* %w_addr_26, align 1
  %tmp_62 = xor i8 %w_load_3, %tmp_3_s
  %tmp_63 = or i8 %tmp_30, 3
  %tmp_64 = zext i8 %tmp_63 to i64
  %w_addr_27 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_64
  store i8 %tmp_62, i8* %w_addr_27, align 1
  %i = add i6 %i_1, 1
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* nocapture %in_r, [16 x i8]* nocapture %out_r, [176 x i8]* nocapture %w) {
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
  %tmp_100 = zext i3 %i to i64
  %in_addr = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_100
  %in_load = load i8* %in_addr, align 1
  %tmp_102 = zext i4 %tmp_s to i64
  %state_addr = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_102
  store i8 %in_load, i8* %state_addr, align 4
  %tmp_99_1 = xor i3 %i, -4
  %tmp_100_1 = zext i3 %tmp_99_1 to i64
  %in_addr_1 = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_100_1
  %in_load_1 = load i8* %in_addr_1, align 1
  %tmp_101_s = or i4 %tmp_s, 1
  %tmp_102_1 = zext i4 %tmp_101_s to i64
  %state_addr_5 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_102_1
  store i8 %in_load_1, i8* %state_addr_5, align 1
  %tmp_99_s = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i)
  %tmp_100_2 = zext i4 %tmp_99_s to i64
  %in_addr_2 = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_100_2
  %in_load_2 = load i8* %in_addr_2, align 1
  %tmp_101_1 = or i4 %tmp_s, 2
  %tmp_102_2 = zext i4 %tmp_101_1 to i64
  %state_addr_6 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_102_2
  store i8 %in_load_2, i8* %state_addr_6, align 2
  %tmp_99_3_cast7 = sext i3 %tmp_99_1 to i4
  %tmp_100_3 = zext i4 %tmp_99_3_cast7 to i64
  %in_addr_3 = getelementptr [16 x i8]* %in_r, i64 0, i64 %tmp_100_3
  %in_load_3 = load i8* %in_addr_3, align 1
  %tmp_101_2 = or i4 %tmp_s, 3
  %tmp_102_3 = zext i4 %tmp_101_2 to i64
  %state_addr_7 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_102_3
  store i8 %in_load_3, i8* %state_addr_7, align 1
  br label %1

; <label>:2                                       ; preds = %1
  call fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext 0)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %r = phi i4 [ 1, %2 ], [ %r_1, %4 ]
  %exitcond2 = icmp eq i4 %r, -6
  %empty_1299 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
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
  br label %6

; <label>:6                                       ; preds = %.preheader.preheader, %5
  %i_1 = phi i3 [ 0, %5 ], [ %i_8, %.preheader.preheader ]
  %exitcond1 = icmp eq i3 %i_1, -4
  %empty_1300 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_8 = add i3 %i_1, 1
  br i1 %exitcond1, label %7, label %.preheader.preheader

.preheader.preheader:                             ; preds = %6
  %tmp_30 = trunc i3 %i_1 to i2
  %tmp_66 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_30, i2 0)
  %tmp_107 = zext i4 %tmp_66 to i64
  %state_addr_8 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_107
  %state_load = load i8* %state_addr_8, align 4
  %tmp_110 = zext i3 %i_1 to i64
  %out_addr = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_110
  store i8 %state_load, i8* %out_addr, align 1
  %tmp_106_s = or i4 %tmp_66, 1
  %tmp_107_1 = zext i4 %tmp_106_s to i64
  %state_addr_9 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_107_1
  %state_load_1 = load i8* %state_addr_9, align 1
  %tmp_109_1 = xor i3 %i_1, -4
  %tmp_110_1 = zext i3 %tmp_109_1 to i64
  %out_addr_256 = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_110_1
  store i8 %state_load_1, i8* %out_addr_256, align 1
  %tmp_106_1 = or i4 %tmp_66, 2
  %tmp_107_2 = zext i4 %tmp_106_1 to i64
  %state_addr_10 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_107_2
  %state_load_2 = load i8* %state_addr_10, align 2
  %tmp_109_s = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %i_1)
  %tmp_110_2 = zext i4 %tmp_109_s to i64
  %out_addr_257 = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_110_2
  store i8 %state_load_2, i8* %out_addr_257, align 1
  %tmp_106_2 = or i4 %tmp_66, 3
  %tmp_107_3 = zext i4 %tmp_106_2 to i64
  %state_addr_11 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_107_3
  %state_load_3 = load i8* %state_addr_11, align 1
  %tmp_109_3_cast6 = sext i3 %tmp_109_1 to i4
  %tmp_110_3 = zext i4 %tmp_109_3_cast6 to i64
  %out_addr_258 = getelementptr [16 x i8]* %out_r, i64 0, i64 %tmp_110_3
  store i8 %state_load_3, i8* %out_addr_258, align 1
  br label %6

; <label>:7                                       ; preds = %6
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
  %tmp_67 = zext i3 %c to i64
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_67
  %state_load = load i8* %state_addr, align 1
  %tmp = trunc i3 %c to i2
  %tmp_31 = trunc i6 %r_read to i4
  %tmp_70 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4 %tmp_31, i2 %tmp, i2 0)
  %tmp_71 = zext i8 %tmp_70 to i64
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_71
  %w_load = load i8* %w_addr, align 1
  %tmp_72 = xor i8 %w_load, %state_load
  store i8 %tmp_72, i8* %state_addr, align 1
  %tmp_73 = xor i3 %c, -4
  %tmp_74 = zext i3 %tmp_73 to i64
  %state_addr_12 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_74
  %state_load_1 = load i8* %state_addr_12, align 1
  %tmp_75 = or i8 %tmp_70, 1
  %tmp_76 = zext i8 %tmp_75 to i64
  %w_addr_28 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_76
  %w_load_4 = load i8* %w_addr_28, align 1
  %tmp_77 = xor i8 %w_load_4, %state_load_1
  store i8 %tmp_77, i8* %state_addr_12, align 1
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %c)
  %tmp_79 = zext i4 %tmp_s to i64
  %state_addr_13 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_79
  %state_load_2 = load i8* %state_addr_13, align 1
  %tmp_80 = or i8 %tmp_70, 2
  %tmp_81 = zext i8 %tmp_80 to i64
  %w_addr_29 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_81
  %w_load_5 = load i8* %w_addr_29, align 1
  %tmp_82 = xor i8 %w_load_5, %state_load_2
  store i8 %tmp_82, i8* %state_addr_13, align 1
  %tmp_83_cast3 = sext i3 %tmp_73 to i4
  %tmp_84 = zext i4 %tmp_83_cast3 to i64
  %state_addr_14 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_84
  %state_load_3 = load i8* %state_addr_14, align 1
  %tmp_85 = or i8 %tmp_70, 3
  %tmp_86 = zext i8 %tmp_85 to i64
  %w_addr_30 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_86
  %w_load_6 = load i8* %w_addr_30, align 1
  %tmp_87 = xor i8 %w_load_6, %state_load_3
  store i8 %tmp_87, i8* %state_addr_14, align 1
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
  %empty_1301 = load i1* %1
  %empty_1302 = load i1* %2
  %mrv_0 = insertvalue { i8, i1, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1 } %mrv_0, i1 %empty_1301, 1
  %mrv2 = insertvalue { i8, i1, i1 } %mrv1, i1 %empty_1302, 2
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
  %empty_1303 = trunc i8 %empty to i7
  ret i7 %empty_1303
}

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_1304 = trunc i6 %empty to i4
  ret i4 %empty_1304
}

define weak i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2)
  %empty_1305 = trunc i5 %empty to i4
  ret i4 %empty_1305
}

define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_1306 = trunc i6 %empty to i3
  ret i3 %empty_1306
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
  %empty_1307 = shl i8 1, %empty
  %empty_1308 = and i8 %0, %empty_1307
  %empty_1309 = icmp ne i8 %empty_1308, 0
  ret i1 %empty_1309
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_1310 = zext i2 %1 to i8
  %empty_1311 = shl i8 %empty, 2
  %empty_1312 = or i8 %empty_1311, %empty_1310
  ret i8 %empty_1312
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4, i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %1 to i4
  %empty_1313 = zext i2 %2 to i4
  %empty_1314 = shl i4 %empty, 2
  %empty_1315 = or i4 %empty_1314, %empty_1313
  %empty_1316 = zext i4 %0 to i8
  %empty_1317 = zext i4 %empty_1315 to i8
  %empty_1318 = shl i8 %empty_1316, 4
  %empty_1319 = or i8 %empty_1318, %empty_1317
  ret i8 %empty_1319
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_1320 = zext i2 %1 to i4
  %empty_1321 = shl i4 %empty, 2
  %empty_1322 = or i4 %empty_1321, %empty_1320
  ret i4 %empty_1322
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4
  %empty_1323 = zext i3 %1 to i4
  %empty_1324 = shl i4 %empty, 3
  %empty_1325 = or i4 %empty_1324, %empty_1323
  ret i4 %empty_1325
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
