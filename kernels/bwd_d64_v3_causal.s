.amdgcn_target "amdgcn-amd-amdhsa--gfx950"

.text
.globl _ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE
.p2align 8
.type _ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE,@function
_ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE:
    s_and_b32 s1, s1, 0xffff
    s_load_dwordx2 s[32:33], s[0:1], 0x0
    s_load_dwordx2 s[36:37], s[0:1], 0x10
    s_load_dwordx2 s[40:41], s[0:1], 0x20
    s_load_dwordx2 s[8:9], s[0:1], 0x30
    s_load_dwordx2 s[12:13], s[0:1], 0x40
    s_load_dwordx2 s[16:17], s[0:1], 0x50
    s_load_dwordx2 s[20:21], s[0:1], 0x60
    s_load_dwordx2 s[24:25], s[0:1], 0x70
    s_load_dwordx2 s[28:29], s[0:1], 0x80
    s_load_dword s48, s[0:1], 0x90
    s_load_dword s49, s[0:1], 0xa0
    s_load_dword s50, s[0:1], 0xb0
    s_load_dword s51, s[0:1], 0xc0
    s_load_dword s52, s[0:1], 0xd0
    s_load_dword s53, s[0:1], 0xe0
    s_load_dword s70, s[0:1], 0xf0
    s_load_dword s44, s[0:1], 0x100
    s_load_dword s5, s[0:1], 0x110
    s_load_dword s6, s[0:1], 0x120
    s_load_dword s7, s[0:1], 0x130
    s_load_dword s46, s[0:1], 0x140
    s_load_dword s93, s[0:1], 0x180
    s_load_dword s92, s[0:1], 0x240
    v_lshrrev_b32_e32 v1, 10, v0
    v_lshrrev_b32_e32 v2, 10, v1
    v_and_b32_e32 v2, 0x3ff, v2
    v_and_b32_e32 v1, 0x3ff, v1
    v_and_b32_e32 v0, 0x3ff, v0
    v_lshrrev_b32_e32 v3, 6, v0
    v_and_b32_e32 v0, 63, v0
    s_mov_b32 s2, s2
    s_mov_b32 s3, s3
    s_mov_b32 s4, s4
    v_readfirstlane_b32 s47, v3
    s_waitcnt lgkmcnt(0)
    s_mov_b32 s10, 0x80000000
    s_mov_b32 s14, 0x80000000
    s_mov_b32 s18, 0x80000000
    s_mov_b32 s22, 0x80000000
    s_mov_b32 s26, 0x80000000
    s_mov_b32 s30, 0x80000000
    s_mov_b32 s38, 0x80000000
    s_mov_b32 s42, 0x80000000
    s_mov_b32 s11, 0x20000
    s_mov_b32 s15, 0x20000
    s_mov_b32 s19, 0x20000
    s_mov_b32 s23, 0x20000
    s_mov_b32 s27, 0x20000
    s_mov_b32 s31, 0x20000
    s_mov_b32 s39, 0x20000
    s_mov_b32 s43, 0x20000
    s_and_b32 s9, s9, 0xffff
    s_and_b32 s13, s13, 0xffff
    s_and_b32 s17, s17, 0xffff
    s_and_b32 s21, s21, 0xffff
    s_and_b32 s25, s25, 0xffff
    s_and_b32 s29, s29, 0xffff
    s_and_b32 s37, s37, 0xffff
    s_and_b32 s41, s41, 0xffff
    s_or_b32 s9, s9, 0x40000
    s_or_b32 s13, s13, 0x40000
    s_or_b32 s17, s17, 0x40000
    s_or_b32 s21, s21, 0x40000
    s_or_b32 s25, s25, 0x40000
    s_or_b32 s29, s29, 0x40000
    s_or_b32 s37, s37, 0x40000
    s_or_b32 s41, s41, 0x40000
    v_accvgpr_write_b32 a159, 0
    v_mov_b32_e32 v231, 0
    s_mov_b32 s82, s8
    s_mov_b32 s84, s12
    s_mov_b32 s86, s16
    s_mov_b32 s88, s20
    s_mov_b32 s90, s32
    s_mov_b32 s83, s9
    s_mov_b32 s85, s13
    s_mov_b32 s87, s17
    s_mov_b32 s89, s21
    s_mov_b32 s91, s33
    s_mov_b32 s71, s3
    v_cvt_f32_u32_e32 v32, s44
    s_sub_i32 s60, 0, s44
    v_rcp_iflag_f32_e32 v32, v32
    s_nop 0
    v_mul_f32_e32 v32, 0x4f7ffffe, v32
    v_cvt_u32_f32_e32 v32, v32
    v_mul_lo_u32 v33, s60, v32
    v_mul_hi_u32 v33, v32, v33
    v_add_u32_e32 v32, v32, v33
    v_mul_hi_u32 v32, s71, v32
    v_mul_lo_u32 v33, v32, s44
    v_sub_u32_e32 v35, s71, v33
    v_add_u32_e32 v34, 1, v32
    v_cmp_le_u32_e32 vcc, s44, v35
    v_subrev_u32_e32 v33, s44, v35
    s_nop 0
    v_cndmask_b32_e32 v32, v32, v34, vcc
    v_cndmask_b32_e32 v35, v35, v33, vcc
    v_add_u32_e32 v33, 1, v32
    v_cmp_le_u32_e32 vcc, s44, v35
    s_nop 1
    v_cndmask_b32_e32 v35, v32, v33, vcc
    s_nop 3
    v_readfirstlane_b32 s45, v35
    s_nop 3
    s_add_u32 s71, 0x80, s50
    s_mov_b32 s74, 0xc0
    v_cvt_f32_u32_e32 v32, s74
    s_sub_i32 s60, 0, s74
    v_rcp_iflag_f32_e32 v32, v32
    s_nop 0
    v_mul_f32_e32 v32, 0x4f7ffffe, v32
    v_cvt_u32_f32_e32 v32, v32
    v_mul_lo_u32 v33, s60, v32
    v_mul_hi_u32 v33, v32, v33
    v_add_u32_e32 v32, v32, v33
    v_mul_hi_u32 v32, s71, v32
    v_mul_lo_u32 v33, v32, s74
    v_sub_u32_e32 v35, s71, v33
    v_add_u32_e32 v34, 1, v32
    v_cmp_le_u32_e32 vcc, s74, v35
    v_subrev_u32_e32 v33, s74, v35
    s_nop 0
    v_cndmask_b32_e32 v32, v32, v34, vcc
    v_cndmask_b32_e32 v35, v35, v33, vcc
    v_add_u32_e32 v33, 1, v32
    v_cmp_le_u32_e32 vcc, s74, v35
    s_nop 1
    v_cndmask_b32_e32 v35, v32, v33, vcc
    s_nop 3
    v_readfirstlane_b32 s77, v35
    s_nop 3
    v_mov_b32_e32 v32, s48
    v_mul_f32_e32 v32, s49, v32
    s_mov_b32 s66, 0
    s_mov_b32 s58, s50
    s_mov_b32 s59, 0
    s_mov_b32 s63, 0x5040100
    s_mov_b32 s64, 0x7060302
    v_readfirstlane_b32 s57, v32
    v_mov_b32_e32 v34, 0x3020706
    v_mov_b32_e32 v32, s63
    v_and_b32_e32 v33, 1, v0
    v_cmp_eq_u32_e32 vcc, 1, v33
    s_mul_i32 s67, 32, s70
    v_cndmask_b32_e32 v21, v32, v34, vcc
    v_mov_b32_e32 v229, 0xffff0000
    v_mov_b32_e32 v230, 0x7fff0000
    v_mov_b32_e32 v231, 0x7fff
    s_cmp_lt_u32 s47, 2
    s_cselect_b32 s24, s24, s28
    s_cselect_b32 s25, s25, s29
    s_cselect_b32 s26, s26, s30
    s_cselect_b32 s27, s27, s31
    s_lshr_b32 s60, s47, 1
    s_lshl_b32 s60, s60, 8
    s_add_u32 s80, 0x8b00, s60
    s_add_u32 s81, 0x200, s80
    s_mov_b32 s75, 0
    s_mov_b32 s76, 1
    s_lshl_b32 s60, s2, 1
    s_add_u32 s60, 1, s60
    s_mul_i32 s60, 0xc0, s60
    s_cmp_ge_i32 s60, s50
    s_cselect_b32 s76, s76, 2
label_00F7:
    s_mov_b32 m0, s80
    s_mov_b32 s66, 0
    v_mov_b32_e32 v178, 0xff800000
    s_mov_b32 s74, 0
    s_mul_i32 s68, 32, s70
    s_mov_b32 s69, 32
    s_mul_i32 s60, s2, s51
    s_mul_i32 s61, s45, s5
    s_mul_i32 s62, s4, s6
    s_add_u32 s54, s60, s61
    s_add_u32 s54, s54, s62
    s_mul_i32 s61, s3, s52
    s_mul_i32 s62, s4, s53
    s_add_u32 s55, s61, s62
    s_mul_i32 s60, 0xc0, s2
    s_mul_i32 s60, s70, s60
    s_add_u32 s55, s60, s55
    s_mov_b32 s56, s55
    s_mul_i32 s59, 0xc0, s2
    s_add_u32 s73, 32, s59
    s_mul_i32 s62, s4, s93
    s_mul_i32 s62, s62, s92
    s_mul_i32 s61, s3, s92
    s_add_u32 s65, s61, s62
    s_mul_i32 s60, 0x300, s2
    s_add_u32 s65, s60, s65
    s_mov_b32 s71, s7
    v_lshrrev_b32_e32 v32, 4, v0
    v_and_b32_e32 v33, 1, v32
    v_lshlrev_b32_e32 v33, 1, v33
    v_mul_i32_i24_e32 v33, s71, v33
    v_and_b32_e32 v34, 2, v32
    v_lshlrev_b32_e32 v34, 5, v34
    v_add_u32_e32 v33, v34, v33
    v_and_b32_e32 v32, 15, v0
    v_lshlrev_b32_e32 v32, 2, v32
    v_add_u32_e32 v1, v32, v33
    s_mul_i32 s60, s47, s71
    s_mul_i32 s60, s60, 4
    v_add_u32_e32 v1, s60, v1
    v_add_u32_e32 v2, s71, v1
    s_mul_i32 s60, 16, s71
    v_add_u32_e32 v3, s60, v1
    v_add_u32_e32 v4, s60, v2
    v_lshrrev_b32_e32 v1, 2, v1
    v_lshrrev_b32_e32 v2, 2, v2
    s_add_u32 s12, s54, s84
    s_addc_u32 s13, 0, s85
    s_add_u32 s16, s54, s86
    s_addc_u32 s17, 0, s87
    s_add_u32 s8, s55, s82
    s_addc_u32 s9, 0, s83
    s_add_u32 s20, s56, s88
    s_addc_u32 s21, 0, s89
    v_and_b32_e32 v15, 31, v0
    v_lshlrev_b32_e32 v15, 2, v15
    v_add_u32_e32 v15, s65, v15
    v_lshrrev_b32_e32 v15, 2, v15
    v_lshrrev_b32_e32 v32, 3, v0
    v_mul_i32_i24_e32 v5, s46, v32
    v_lshrrev_b32_e32 v5, 2, v5
    v_and_b32_e32 v32, 7, v0
    v_lshlrev_b32_e32 v33, 2, v32
    v_add_u32_e32 v5, v33, v5
    s_mul_i32 s60, 16, s46
    s_mul_i32 s60, s47, s60
    v_lshlrev_b32_e32 v5, 2, v5
    v_add_u32_e32 v5, s60, v5
    s_mul_i32 s60, 0xc0, s46
    s_mul_i32 s60, s2, s60
    s_mul_i32 s61, s3, s5
    s_mul_i32 s62, s4, s6
    s_mul_i32 s62, s62, s44
    s_add_u32 s60, s60, s61
    s_add_u32 s60, s60, s62
    v_add_u32_e32 v5, s60, v5
    v_lshrrev_b32_e32 v5, 2, v5
    v_mov_b32_e32 v14, v5
    v_lshrrev_b32_e32 v32, 5, v0
    v_mul_i32_i24_e32 v6, s70, v32
    v_lshrrev_b32_e32 v6, 2, v6
    v_and_b32_e32 v32, 31, v0
    v_add_u32_e32 v6, v32, v6
    s_mul_i32 s60, s70, 2
    s_mul_i32 s60, s47, s60
    v_add_u32_e32 v6, s60, v6
    v_lshlrev_b32_e32 v6, 2, v6
    s_mul_i32 s60, 2, s70
    v_add_u32_e32 v7, s60, v6
    v_add_u32_e32 v8, s60, v7
    v_add_u32_e32 v9, s60, v8
    s_mov_b32 s60, s55
    v_add_u32_e32 v12, s60, v9
    v_add_u32_e32 v10, s60, v8
    v_add_u32_e32 v8, s60, v7
    v_add_u32_e32 v6, s60, v6
    v_mov_b32_e32 v7, 0
    v_mov_b32_e32 v9, 0
    v_mov_b32_e32 v11, 0
    v_mov_b32_e32 v13, 0
    s_mul_i32 s60, 3, s2
    s_lshr_b32 s61, s50, 6
    s_sub_i32 s72, s61, s60
    s_cmp_lt_i32 s72, 3
    s_cselect_b32 s72, s72, 3
    v_and_b32_e32 v32, 31, v0
    v_lshrrev_b32_e32 v32, 1, v32
    v_and_b32_e32 v33, 1, v32
    v_lshlrev_b32_e32 v33, 4, v33
    v_and_b32_e32 v34, 2, v32
    v_lshlrev_b32_e32 v34, 2, v34
    v_add_u32_e32 v33, v34, v33
    v_and_b32_e32 v34, 12, v32
    v_lshrrev_b32_e32 v34, 1, v34
    v_add_u32_e32 v33, v34, v33
    v_lshrrev_b32_e32 v32, 5, v0
    v_mul_i32_i24_e32 v34, 0x80, v32
    v_add_u32_e32 v33, v34, v33
    v_and_b32_e32 v34, 1, v0
    v_add_u32_e32 v17, v34, v33
    s_mul_i32 s60, s47, 32
    v_add_u32_e32 v17, s60, v17
    v_lshlrev_b32_e32 v17, 2, v17
    v_lshrrev_b32_e32 v32, 4, v0
    v_and_b32_e32 v33, 1, v32
    v_lshlrev_b32_e32 v33, 4, v33
    v_and_b32_e32 v34, 2, v32
    v_mul_i32_i24_e32 v34, 4, v34
    v_add_u32_e32 v33, v34, v33
    v_and_b32_e32 v32, 15, v0
    v_lshrrev_b32_e32 v34, 2, v32
    v_lshlrev_b32_e32 v34, 5, v34
    v_add_u32_e32 v33, v34, v33
    v_and_b32_e32 v32, 3, v0
    v_and_b32_e32 v34, 1, v32
    v_mul_i32_i24_e32 v34, 0x108, v34
    v_add_u32_e32 v33, v34, v33
    v_and_b32_e32 v34, 2, v32
    v_lshlrev_b32_e32 v34, 1, v34
    v_add_u32_e32 v16, v34, v33
    v_lshlrev_b32_e32 v16, 2, v16
    s_mul_i32 s60, s47, 0x880
    v_add_u32_e32 v28, s60, v16
    v_lshrrev_b32_e32 v32, 5, v0
    v_mul_i32_i24_e32 v19, 0x80, v32
    v_and_b32_e32 v32, 31, v0
    v_and_b32_e32 v33, 7, v32
    v_and_b32_e32 v34, 1, v33
    v_lshlrev_b32_e32 v34, 2, v34
    v_add_u32_e32 v19, v34, v19
    v_and_b32_e32 v34, 2, v33
    v_lshlrev_b32_e32 v34, 3, v34
    v_add_u32_e32 v19, v34, v19
    v_and_b32_e32 v34, 4, v33
    v_lshlrev_b32_e32 v34, 1, v34
    v_add_u32_e32 v19, v34, v19
    v_lshrrev_b32_e32 v33, 3, v32
    v_and_b32_e32 v34, 1, v33
    v_lshlrev_b32_e32 v34, 1, v34
    v_add_u32_e32 v19, v34, v19
    v_and_b32_e32 v34, 2, v33
    v_lshrrev_b32_e32 v34, 1, v34
    v_add_u32_e32 v19, v34, v19
    s_mul_i32 s60, s47, 32
    v_add_u32_e32 v19, s60, v19
    v_lshlrev_b32_e32 v19, 2, v19
    v_and_b32_e32 v32, 15, v0
    v_and_b32_e32 v34, 1, v32
    v_mul_i32_i24_e32 v18, 0x108, v34
    v_and_b32_e32 v34, 2, v32
    v_lshlrev_b32_e32 v34, 1, v34
    v_add_u32_e32 v18, v34, v18
    v_and_b32_e32 v34, 4, v32
    v_lshlrev_b32_e32 v34, 2, v34
    v_add_u32_e32 v18, v34, v18
    v_and_b32_e32 v34, 8, v32
    v_add_u32_e32 v18, v34, v18
    v_lshrrev_b32_e32 v32, 4, v0
    v_and_b32_e32 v34, 1, v32
    v_lshlrev_b32_e32 v34, 5, v34
    v_add_u32_e32 v18, v34, v18
    v_and_b32_e32 v33, 2, v32
    v_mul_i32_i24_e32 v34, 32, v33
    v_mul_i32_i24_e32 v33, 0x110, v33
    v_add_u32_e32 v29, v33, v18
    v_add_u32_e32 v18, v34, v18
    v_lshlrev_b32_e32 v18, 2, v18
    v_lshlrev_b32_e32 v29, 2, v29
    s_and_b32 s60, 1, s47
    s_mul_i32 s60, s60, 0x200
    v_add_u32_e32 v29, s60, v29
    v_lshrrev_b32_e32 v32, 4, v0
    v_mul_i32_i24_e32 v27, 4, v32
    v_and_b32_e32 v33, 3, v0
    v_add_u32_e32 v27, v33, v27
    v_lshlrev_b32_e32 v27, 2, v27
    v_lshrrev_b32_e32 v32, 5, v0
    v_mul_i32_i24_e32 v25, 2, v32
    v_and_b32_e32 v32, 31, v0
    v_lshrrev_b32_e32 v32, 1, v32
    v_mul_i32_i24_e32 v33, 34, v32
    v_add_u32_e32 v25, v33, v25
    v_and_b32_e32 v33, 1, v0
    v_add_u32_e32 v25, v33, v25
    s_and_b32 s60, 1, s47
    s_mul_i32 s60, s60, 16
    s_lshr_b32 s61, s47, 1
    s_mul_i32 s61, s61, 0x220
    s_add_u32 s60, s60, s61
    v_add_u32_e32 v25, s60, v25
    v_lshlrev_b32_e32 v25, 2, v25
    v_lshrrev_b32_e32 v32, 4, v0
    v_mul_i32_i24_e32 v26, 34, v32
    v_and_b32_e32 v32, 15, v0
    v_mul_i32_i24_e32 v33, 2, v32
    v_add_u32_e32 v26, v33, v26
    s_mul_i32 s60, s47, 0x110
    v_add_u32_e32 v26, s60, v26
    v_lshlrev_b32_e32 v26, 2, v26
    v_lshrrev_b32_e32 v32, 5, v0
    v_mul_i32_i24_e32 v23, 64, v32
    v_and_b32_e32 v32, 31, v0
    v_and_b32_e32 v32, 3, v32
    v_and_b32_e32 v33, 1, v32
    v_mul_i32_i24_e32 v33, 4, v33
    v_add_u32_e32 v23, v33, v23
    v_and_b32_e32 v33, 2, v32
    v_mul_i32_i24_e32 v33, 0x44, v33
    v_add_u32_e32 v23, v33, v23
    v_and_b32_e32 v32, 31, v0
    v_lshrrev_b32_e32 v32, 2, v32
    v_lshrrev_b32_e32 v34, 2, v32
    v_mul_i32_i24_e32 v33, 16, v34
    v_add_u32_e32 v23, v33, v23
    v_and_b32_e32 v33, 2, v32
    v_lshlrev_b32_e32 v33, 4, v33
    v_add_u32_e32 v23, v33, v23
    v_and_b32_e32 v33, 1, v32
    v_xor_b32_e32 v33, v34, v33
    v_mul_i32_i24_e32 v33, 8, v33
    v_add_u32_e32 v23, v33, v23
    s_lshr_b32 s60, s47, 1
    s_mul_i32 s60, s60, 0x6c0
    v_add_u32_e32 v23, s60, v23
    v_lshlrev_b32_e32 v23, 2, v23
    v_lshrrev_b32_e32 v32, 5, v0
    v_mul_i32_i24_e32 v24, 32, v32
    v_and_b32_e32 v32, 31, v0
    v_and_b32_e32 v32, 3, v32
    v_and_b32_e32 v33, 1, v32
    v_mul_i32_i24_e32 v33, 4, v33
    v_add_u32_e32 v24, v33, v24
    v_and_b32_e32 v33, 2, v32
    v_lshrrev_b32_e32 v33, 1, v33
    v_add_u32_e32 v24, v33, v24
    v_and_b32_e32 v32, 31, v0
    v_lshrrev_b32_e32 v32, 2, v32
    v_and_b32_e32 v34, 1, v32
    v_mul_i32_i24_e32 v33, 16, v34
    v_add_u32_e32 v24, v33, v24
    v_and_b32_e32 v33, 2, v32
    v_add_u32_e32 v24, v33, v24
    v_lshrrev_b32_e32 v33, 2, v32
    v_xor_b32_e32 v33, v34, v33
    v_mul_i32_i24_e32 v33, 8, v33
    v_add_u32_e32 v24, v33, v24
    s_and_b32 s60, 1, s47
    s_mul_i32 s60, s60, 64
    s_lshr_b32 s61, s47, 1
    s_mul_i32 s61, s61, 0x120
    s_add_u32 s60, s60, s61
    v_add_u32_e32 v24, s60, v24
    v_lshlrev_b32_e32 v24, 2, v24
    buffer_load_dword v180, v1, s[12:15], 0 idxen
    buffer_load_dword v181, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 0, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v182, v1, s[12:15], 0 idxen
    buffer_load_dword v183, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 0, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v184, v1, s[12:15], 0 idxen
    buffer_load_dword v185, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 0, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v186, v1, s[12:15], 0 idxen
    buffer_load_dword v187, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v188, v1, s[12:15], 0 idxen
    buffer_load_dword v189, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v190, v1, s[12:15], 0 idxen
    buffer_load_dword v191, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v192, v1, s[12:15], 0 idxen
    buffer_load_dword v193, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v194, v1, s[12:15], 0 idxen
    buffer_load_dword v195, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v196, v1, s[12:15], 0 idxen
    buffer_load_dword v197, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v198, v1, s[12:15], 0 idxen
    buffer_load_dword v199, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v200, v1, s[12:15], 0 idxen
    buffer_load_dword v201, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    buffer_load_dword v202, v1, s[12:15], 0 idxen
    buffer_load_dword v203, v2, s[12:15], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 3, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s12, s60, s12
    s_addc_u32 s13, 0, s13
    s_waitcnt vmcnt(16) lgkmcnt(0)
    s_barrier
    s_cmp_lt_i32 0, s72
    s_cbranch_scc1 label_0291
    v_mov_b32_e32 v180, 0
    v_mov_b32_e32 v181, 0
    v_mov_b32_e32 v182, 0
    v_mov_b32_e32 v183, 0
    v_mov_b32_e32 v184, 0
    v_mov_b32_e32 v185, 0
    v_mov_b32_e32 v186, 0
    v_mov_b32_e32 v187, 0
label_0291:
    v_perm_b32 v204, v181, v180, s63
    v_perm_b32 v205, v181, v180, s64
    v_perm_b32 v206, v183, v182, s63
    v_perm_b32 v207, v183, v182, s64
    v_perm_b32 v208, v185, v184, s63
    v_perm_b32 v209, v185, v184, s64
    v_perm_b32 v210, v187, v186, s63
    v_perm_b32 v211, v187, v186, s64
    ds_write_b32 v19, v204 offset:8704
    ds_write_b32 v19, v205 offset:9760
    ds_write_b32 v19, v206 offset:10880
    ds_write_b32 v19, v207 offset:11936
    ds_write_b32 v19, v208 offset:13056
    ds_write_b32 v19, v209 offset:14112
    ds_write_b32 v19, v210 offset:15232
    ds_write_b32 v19, v211 offset:16288
    ds_write_b32 v17, v180
    ds_write_b32 v17, v181 offset:1056
    ds_write_b32 v17, v182 offset:2176
    ds_write_b32 v17, v183 offset:3232
    ds_write_b32 v17, v184 offset:4352
    ds_write_b32 v17, v185 offset:5408
    ds_write_b32 v17, v186 offset:6528
    ds_write_b32 v17, v187 offset:7584
    buffer_load_dword v180, v1, s[16:19], 0 idxen
    buffer_load_dword v181, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 0, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v182, v1, s[16:19], 0 idxen
    buffer_load_dword v183, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 0, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v184, v1, s[16:19], 0 idxen
    buffer_load_dword v185, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 0, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v186, v1, s[16:19], 0 idxen
    buffer_load_dword v187, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b128 a[24:27], v29 offset:8704
    ds_read_b128 a[28:31], v29 offset:8960
    ds_read_b128 a[32:35], v29 offset:13056
    ds_read_b128 a[36:39], v29 offset:13312
    ds_read_b128 a[0:3], v28
    ds_read_b128 a[4:7], v28 offset:512
    s_waitcnt vmcnt(16) lgkmcnt(0)
    s_barrier
    s_cmp_lt_i32 1, s72
    s_cbranch_scc1 label_02FF
    v_mov_b32_e32 v188, 0
    v_mov_b32_e32 v189, 0
    v_mov_b32_e32 v190, 0
    v_mov_b32_e32 v191, 0
    v_mov_b32_e32 v192, 0
    v_mov_b32_e32 v193, 0
    v_mov_b32_e32 v194, 0
    v_mov_b32_e32 v195, 0
label_02FF:
    v_perm_b32 v204, v189, v188, s63
    v_perm_b32 v205, v189, v188, s64
    v_perm_b32 v206, v191, v190, s63
    v_perm_b32 v207, v191, v190, s64
    v_perm_b32 v208, v193, v192, s63
    v_perm_b32 v209, v193, v192, s64
    v_perm_b32 v210, v195, v194, s63
    v_perm_b32 v211, v195, v194, s64
    ds_write_b32 v19, v204 offset:8704
    ds_write_b32 v19, v205 offset:9760
    ds_write_b32 v19, v206 offset:10880
    ds_write_b32 v19, v207 offset:11936
    ds_write_b32 v19, v208 offset:13056
    ds_write_b32 v19, v209 offset:14112
    ds_write_b32 v19, v210 offset:15232
    ds_write_b32 v19, v211 offset:16288
    ds_write_b32 v17, v188
    ds_write_b32 v17, v189 offset:1056
    ds_write_b32 v17, v190 offset:2176
    ds_write_b32 v17, v191 offset:3232
    ds_write_b32 v17, v192 offset:4352
    ds_write_b32 v17, v193 offset:5408
    ds_write_b32 v17, v194 offset:6528
    ds_write_b32 v17, v195 offset:7584
    buffer_load_dword v188, v1, s[16:19], 0 idxen
    buffer_load_dword v189, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v190, v1, s[16:19], 0 idxen
    buffer_load_dword v191, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v192, v1, s[16:19], 0 idxen
    buffer_load_dword v193, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 1, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v194, v1, s[16:19], 0 idxen
    buffer_load_dword v195, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b128 a[40:43], v29 offset:8704
    ds_read_b128 a[44:47], v29 offset:8960
    ds_read_b128 a[48:51], v29 offset:13056
    ds_read_b128 a[52:55], v29 offset:13312
    ds_read_b128 a[8:11], v28
    ds_read_b128 a[12:15], v28 offset:512
    s_waitcnt vmcnt(16) lgkmcnt(0)
    s_barrier
    s_cmp_lt_i32 2, s72
    s_cbranch_scc1 label_036D
    v_mov_b32_e32 v196, 0
    v_mov_b32_e32 v197, 0
    v_mov_b32_e32 v198, 0
    v_mov_b32_e32 v199, 0
    v_mov_b32_e32 v200, 0
    v_mov_b32_e32 v201, 0
    v_mov_b32_e32 v202, 0
    v_mov_b32_e32 v203, 0
label_036D:
    v_perm_b32 v204, v197, v196, s63
    v_perm_b32 v205, v197, v196, s64
    v_perm_b32 v206, v199, v198, s63
    v_perm_b32 v207, v199, v198, s64
    v_perm_b32 v208, v201, v200, s63
    v_perm_b32 v209, v201, v200, s64
    v_perm_b32 v210, v203, v202, s63
    v_perm_b32 v211, v203, v202, s64
    ds_write_b32 v19, v204 offset:8704
    ds_write_b32 v19, v205 offset:9760
    ds_write_b32 v19, v206 offset:10880
    ds_write_b32 v19, v207 offset:11936
    ds_write_b32 v19, v208 offset:13056
    ds_write_b32 v19, v209 offset:14112
    ds_write_b32 v19, v210 offset:15232
    ds_write_b32 v19, v211 offset:16288
    ds_write_b32 v17, v196
    ds_write_b32 v17, v197 offset:1056
    ds_write_b32 v17, v198 offset:2176
    ds_write_b32 v17, v199 offset:3232
    ds_write_b32 v17, v200 offset:4352
    ds_write_b32 v17, v201 offset:5408
    ds_write_b32 v17, v202 offset:6528
    ds_write_b32 v17, v203 offset:7584
    buffer_load_dword v196, v1, s[16:19], 0 idxen
    buffer_load_dword v197, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v198, v1, s[16:19], 0 idxen
    buffer_load_dword v199, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v200, v1, s[16:19], 0 idxen
    buffer_load_dword v201, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 2, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    buffer_load_dword v202, v1, s[16:19], 0 idxen
    buffer_load_dword v203, v2, s[16:19], 0 idxen
    s_mul_i32 s60, 16, s7
    s_cmp_lt_i32 3, s72
    s_cselect_b32 s60, s60, 0
    s_add_u32 s16, s60, s16
    s_addc_u32 s17, 0, s17
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b128 a[56:59], v29 offset:8704
    ds_read_b128 a[60:63], v29 offset:8960
    ds_read_b128 a[64:67], v29 offset:13056
    ds_read_b128 a[68:71], v29 offset:13312
    ds_read_b128 a[16:19], v28
    ds_read_b128 a[20:23], v28 offset:512
    s_waitcnt vmcnt(16) lgkmcnt(0)
    s_barrier
    s_cmp_lt_i32 0, s72
    s_cbranch_scc1 label_03DB
    v_mov_b32_e32 v180, 0
    v_mov_b32_e32 v181, 0
    v_mov_b32_e32 v182, 0
    v_mov_b32_e32 v183, 0
    v_mov_b32_e32 v184, 0
    v_mov_b32_e32 v185, 0
    v_mov_b32_e32 v186, 0
    v_mov_b32_e32 v187, 0
label_03DB:
    ds_write_b32 v17, v180
    ds_write_b32 v17, v181 offset:1056
    ds_write_b32 v17, v182 offset:2176
    ds_write_b32 v17, v183 offset:3232
    ds_write_b32 v17, v184 offset:4352
    ds_write_b32 v17, v185 offset:5408
    ds_write_b32 v17, v186 offset:6528
    ds_write_b32 v17, v187 offset:7584
    s_mov_b32 s71, s70
    v_lshrrev_b32_e32 v32, 4, v0
    v_and_b32_e32 v33, 1, v32
    v_lshlrev_b32_e32 v33, 1, v33
    v_mul_i32_i24_e32 v33, s71, v33
    v_and_b32_e32 v34, 2, v32
    v_lshlrev_b32_e32 v34, 5, v34
    v_add_u32_e32 v33, v34, v33
    v_and_b32_e32 v32, 15, v0
    v_lshlrev_b32_e32 v32, 2, v32
    v_add_u32_e32 v1, v32, v33
    s_mul_i32 s60, s47, s71
    s_mul_i32 s60, s60, 4
    v_add_u32_e32 v1, s60, v1
    v_add_u32_e32 v2, s71, v1
    s_mul_i32 s60, 16, s71
    v_add_u32_e32 v3, s60, v1
    v_add_u32_e32 v4, s60, v2
    v_lshrrev_b32_e32 v1, 2, v1
    v_lshrrev_b32_e32 v2, 2, v2
    v_lshrrev_b32_e32 v3, 2, v3
    v_lshrrev_b32_e32 v4, 2, v4
    buffer_load_dword v36, v1, s[8:11], 0 idxen
    buffer_load_dword v37, v2, s[8:11], 0 idxen
    buffer_load_dword v38, v3, s[8:11], 0 idxen
    buffer_load_dword v39, v4, s[8:11], 0 idxen
    buffer_load_dword v44, v1, s[20:23], 0 idxen
    buffer_load_dword v45, v2, s[20:23], 0 idxen
    buffer_load_dword v46, v3, s[20:23], 0 idxen
    buffer_load_dword v47, v4, s[20:23], 0 idxen
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b128 a[72:75], v28
    ds_read_b128 a[76:79], v28 offset:512
    s_add_u32 s8, s68, s8
    s_addc_u32 s9, 0, s9
    s_add_u32 s20, s68, s20
    s_addc_u32 s21, 0, s21
    s_waitcnt vmcnt(16) lgkmcnt(0)
    s_barrier
    s_cmp_lt_i32 1, s72
    s_cbranch_scc1 label_0427
    v_mov_b32_e32 v188, 0
    v_mov_b32_e32 v189, 0
    v_mov_b32_e32 v190, 0
    v_mov_b32_e32 v191, 0
    v_mov_b32_e32 v192, 0
    v_mov_b32_e32 v193, 0
    v_mov_b32_e32 v194, 0
    v_mov_b32_e32 v195, 0
label_0427:
    ds_write_b32 v17, v188
    ds_write_b32 v17, v189 offset:1056
    ds_write_b32 v17, v190 offset:2176
    ds_write_b32 v17, v191 offset:3232
    ds_write_b32 v17, v192 offset:4352
    ds_write_b32 v17, v193 offset:5408
    ds_write_b32 v17, v194 offset:6528
    ds_write_b32 v17, v195 offset:7584
    buffer_load_dword v40, v1, s[8:11], 0 idxen
    buffer_load_dword v41, v2, s[8:11], 0 idxen
    buffer_load_dword v42, v3, s[8:11], 0 idxen
    buffer_load_dword v43, v4, s[8:11], 0 idxen
    buffer_load_dword v48, v1, s[20:23], 0 idxen
    buffer_load_dword v49, v2, s[20:23], 0 idxen
    buffer_load_dword v50, v3, s[20:23], 0 idxen
    buffer_load_dword v51, v4, s[20:23], 0 idxen
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b128 a[80:83], v28
    ds_read_b128 a[84:87], v28 offset:512
    s_add_u32 s60, 64, s59
    s_cmp_lt_u32 s60, s58
    s_cselect_b32 s68, s68, 0
    s_add_u32 s8, s68, s8
    s_addc_u32 s9, 0, s9
    s_add_u32 s20, s68, s20
    s_addc_u32 s21, 0, s21
    s_waitcnt vmcnt(16) lgkmcnt(0)
    s_barrier
    s_cmp_lt_i32 2, s72
    s_cbranch_scc1 label_0460
    v_mov_b32_e32 v196, 0
    v_mov_b32_e32 v197, 0
    v_mov_b32_e32 v198, 0
    v_mov_b32_e32 v199, 0
    v_mov_b32_e32 v200, 0
    v_mov_b32_e32 v201, 0
    v_mov_b32_e32 v202, 0
    v_mov_b32_e32 v203, 0
label_0460:
    ds_write_b32 v17, v196
    ds_write_b32 v17, v197 offset:1056
    ds_write_b32 v17, v198 offset:2176
    ds_write_b32 v17, v199 offset:3232
    ds_write_b32 v17, v200 offset:4352
    ds_write_b32 v17, v201 offset:5408
    ds_write_b32 v17, v202 offset:6528
    ds_write_b32 v17, v203 offset:7584
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b128 a[88:91], v28
    ds_read_b128 a[92:95], v28 offset:512
    s_waitcnt vmcnt(8) lgkmcnt(0)
    s_barrier
    buffer_load_dword v15, s[24:27], 0 idxen lds
    s_mov_b32 m0, s81
    v_add_u32_e32 v15, s69, v15
    v_perm_b32 v100, v37, v36, s63
    v_perm_b32 v101, v37, v36, s64
    v_perm_b32 v102, v39, v38, s63
    v_perm_b32 v103, v39, v38, s64
    ds_write_b32 v19, v100 offset:4352
    ds_write_b32 v19, v101 offset:5408
    ds_write_b32 v19, v102 offset:6528
    ds_write_b32 v19, v103 offset:7584
    ds_write_b32 v17, v36
    ds_write_b32 v17, v37 offset:1056
    ds_write_b32 v17, v38 offset:2176
    ds_write_b32 v17, v39 offset:3232
    buffer_load_dword v15, s[24:27], 0 idxen lds
    s_add_u32 s60, 64, s59
    s_cmp_lt_u32 s60, s58
    s_cselect_b32 s69, s69, 0
    s_mov_b32 m0, s80
    v_add_u32_e32 v15, s69, v15
    v_perm_b32 v104, v45, v44, s63
    v_perm_b32 v105, v45, v44, s64
    v_perm_b32 v106, v47, v46, s63
    v_perm_b32 v107, v47, v46, s64
    ds_write_b32 v19, v104 offset:13056
    ds_write_b32 v19, v105 offset:14112
    ds_write_b32 v19, v106 offset:15232
    ds_write_b32 v19, v107 offset:16288
    ds_write_b32 v17, v44 offset:8704
    ds_write_b32 v17, v45 offset:9760
    ds_write_b32 v17, v46 offset:10880
    ds_write_b32 v17, v47 offset:11936
    s_waitcnt vmcnt(1) lgkmcnt(0)
    s_barrier
    ds_read_b128 a[96:99], v16
    ds_read_b128 a[100:103], v16 offset:512
    ds_read_b128 a[104:107], v16 offset:2176
    ds_read_b128 a[108:111], v16 offset:2688
    ds_read_b128 v[108:111], v16 offset:8704
    ds_read_b128 v[112:115], v16 offset:9216
    ds_read_b128 v[116:119], v16 offset:10880
    ds_read_b128 v[120:123], v16 offset:11392
    ds_read_b32 v140, v27 offset:35584
    ds_read_b32 v144, v27 offset:35648
    ds_read_b32 v176, v27 offset:35840
    ds_read_b32 v177, v27 offset:35904
    v_accvgpr_write_b32 a112, 0
    v_mov_b32_e32 v180, 0
    v_accvgpr_write_b32 a113, 0
    v_mov_b32_e32 v181, 0
    v_accvgpr_write_b32 a114, 0
    v_mov_b32_e32 v182, 0
    v_accvgpr_write_b32 a115, 0
    v_mov_b32_e32 v183, 0
    v_accvgpr_write_b32 a116, 0
    v_mov_b32_e32 v184, 0
    v_accvgpr_write_b32 a117, 0
    v_mov_b32_e32 v185, 0
    v_accvgpr_write_b32 a118, 0
    v_mov_b32_e32 v186, 0
    v_accvgpr_write_b32 a119, 0
    v_mov_b32_e32 v187, 0
    v_accvgpr_write_b32 a120, 0
    v_mov_b32_e32 v188, 0
    v_accvgpr_write_b32 a121, 0
    v_mov_b32_e32 v189, 0
    v_accvgpr_write_b32 a122, 0
    v_mov_b32_e32 v190, 0
    v_accvgpr_write_b32 a123, 0
    v_mov_b32_e32 v191, 0
    v_accvgpr_write_b32 a124, 0
    v_mov_b32_e32 v192, 0
    v_accvgpr_write_b32 a125, 0
    v_mov_b32_e32 v193, 0
    v_accvgpr_write_b32 a126, 0
    v_mov_b32_e32 v194, 0
    v_accvgpr_write_b32 a127, 0
    v_mov_b32_e32 v195, 0
    v_accvgpr_write_b32 a128, 0
    v_mov_b32_e32 v196, 0
    v_accvgpr_write_b32 a129, 0
    v_mov_b32_e32 v197, 0
    v_accvgpr_write_b32 a130, 0
    v_mov_b32_e32 v198, 0
    v_accvgpr_write_b32 a131, 0
    v_mov_b32_e32 v199, 0
    v_accvgpr_write_b32 a132, 0
    v_mov_b32_e32 v200, 0
    v_accvgpr_write_b32 a133, 0
    v_mov_b32_e32 v201, 0
    v_accvgpr_write_b32 a134, 0
    v_mov_b32_e32 v202, 0
    v_accvgpr_write_b32 a135, 0
    v_mov_b32_e32 v203, 0
    v_accvgpr_write_b32 a136, 0
    v_mov_b32_e32 v204, 0
    v_accvgpr_write_b32 a137, 0
    v_mov_b32_e32 v205, 0
    v_accvgpr_write_b32 a138, 0
    v_mov_b32_e32 v206, 0
    v_accvgpr_write_b32 a139, 0
    v_mov_b32_e32 v207, 0
    v_accvgpr_write_b32 a140, 0
    v_mov_b32_e32 v208, 0
    v_accvgpr_write_b32 a141, 0
    v_mov_b32_e32 v209, 0
    v_accvgpr_write_b32 a142, 0
    v_mov_b32_e32 v210, 0
    v_accvgpr_write_b32 a143, 0
    v_mov_b32_e32 v211, 0
    v_accvgpr_write_b32 a144, 0
    v_mov_b32_e32 v212, 0
    v_accvgpr_write_b32 a145, 0
    v_mov_b32_e32 v213, 0
    v_accvgpr_write_b32 a146, 0
    v_mov_b32_e32 v214, 0
    v_accvgpr_write_b32 a147, 0
    v_mov_b32_e32 v215, 0
    v_accvgpr_write_b32 a148, 0
    v_mov_b32_e32 v216, 0
    v_accvgpr_write_b32 a149, 0
    v_mov_b32_e32 v217, 0
    v_accvgpr_write_b32 a150, 0
    v_mov_b32_e32 v218, 0
    v_accvgpr_write_b32 a151, 0
    v_mov_b32_e32 v219, 0
    v_accvgpr_write_b32 a152, 0
    v_mov_b32_e32 v220, 0
    v_accvgpr_write_b32 a153, 0
    v_mov_b32_e32 v221, 0
    v_accvgpr_write_b32 a154, 0
    v_mov_b32_e32 v222, 0
    v_accvgpr_write_b32 a155, 0
    v_mov_b32_e32 v223, 0
    v_accvgpr_write_b32 a156, 0
    v_mov_b32_e32 v224, 0
    v_accvgpr_write_b32 a157, 0
    v_mov_b32_e32 v225, 0
    v_accvgpr_write_b32 a158, 0
    v_mov_b32_e32 v226, 0
    v_accvgpr_write_b32 a159, 0
    v_mov_b32_e32 v227, 0
    v_mov_b32_e32 v156, 0
    v_mov_b32_e32 v157, 0
    v_mov_b32_e32 v158, 0
    v_mov_b32_e32 v159, 0
    v_mov_b32_e32 v160, 0
    v_mov_b32_e32 v161, 0
    v_mov_b32_e32 v162, 0
    v_mov_b32_e32 v163, 0
    v_mov_b32_e32 v148, 0
    v_mov_b32_e32 v149, 0
    v_mov_b32_e32 v150, 0
    v_mov_b32_e32 v151, 0
    v_mov_b32_e32 v152, 0
    v_mov_b32_e32 v153, 0
    v_mov_b32_e32 v154, 0
    v_mov_b32_e32 v155, 0
    s_waitcnt lgkmcnt(0)
    s_barrier
    buffer_load_dword v36, v1, s[8:11], 0 idxen
    buffer_load_dword v37, v2, s[8:11], 0 idxen
    buffer_load_dword v38, v3, s[8:11], 0 idxen
    buffer_load_dword v39, v4, s[8:11], 0 idxen
    buffer_load_dword v44, v1, s[20:23], 0 idxen
    buffer_load_dword v45, v2, s[20:23], 0 idxen
    buffer_load_dword v46, v3, s[20:23], 0 idxen
    buffer_load_dword v47, v4, s[20:23], 0 idxen
    buffer_load_dword v15, s[24:27], 0 idxen lds
    s_add_u32 s60, 0x60, s59
    s_cmp_lt_u32 s60, s58
    s_cselect_b32 s68, s68, 0
    s_cselect_b32 s69, s69, 0
    s_mov_b32 m0, s81
    v_add_u32_e32 v15, s69, v15
    s_add_u32 s8, s68, s8
    s_addc_u32 s9, 0, s9
    s_add_u32 s20, s68, s20
    s_addc_u32 s21, 0, s21
    v_mul_f32_e32 v140, s49, v140
    v_mul_f32_e32 v144, s49, v144
    v_perm_b32 v100, v41, v40, s63
    v_perm_b32 v101, v41, v40, s64
    v_perm_b32 v102, v43, v42, s63
    v_perm_b32 v103, v43, v42, s64
    v_perm_b32 v104, v49, v48, s63
    v_perm_b32 v105, v49, v48, s64
    v_perm_b32 v106, v51, v50, s63
    v_perm_b32 v107, v51, v50, s64
    v_mov_b32_dpp v143, v140 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v142, v140 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v141, v140 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v140, v140 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v147, v144 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v146, v144 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v145, v144 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v144, v144 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    s_waitcnt vmcnt(9)
    s_barrier
    s_cmp_lt_i32 s47, 2
    s_cbranch_scc0 label_0D17
    s_nop 0
    s_nop 0
    s_nop 0
label_05B5:
    s_waitcnt lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[52:55], a[96:97], a[0:1], 0
    ds_write_b32 v17, v48 offset:8704
    ds_write_b32 v17, v49 offset:9760
    v_mfma_f32_16x16x16_bf16 v[52:55], a[98:99], a[2:3], v[52:55]
    v_mul_f32_e32 v148, s48, v148
    v_mul_f32_e32 v149, s48, v149
    v_mfma_f32_16x16x16_bf16 v[52:55], a[100:101], a[4:5], v[52:55]
    ds_write_b32 v17, v50 offset:10880
    ds_write_b32 v17, v51 offset:11936
    v_mfma_f32_16x16x16_bf16 v[52:55], a[102:103], a[6:7], v[52:55]
    v_mul_f32_e32 v150, s48, v150
    v_mul_f32_e32 v151, s48, v151
    v_mfma_f32_16x16x16_bf16 v[56:59], a[96:97], a[8:9], 0
    v_mul_f32_e32 v152, s48, v152
    v_mul_f32_e32 v153, s48, v153
    v_mfma_f32_16x16x16_bf16 v[56:59], a[98:99], a[10:11], v[56:59]
    v_mul_f32_e32 v154, s48, v154
    v_mul_f32_e32 v155, s48, v155
    v_mfma_f32_16x16x16_bf16 v[56:59], a[100:101], a[12:13], v[56:59]
    v_perm_b32 v148, v149, v148, s64
    v_perm_b32 v149, v151, v150, s64
    v_mfma_f32_16x16x16_bf16 v[56:59], a[102:103], a[14:15], v[56:59]
    v_perm_b32 v150, v153, v152, s64
    v_perm_b32 v151, v155, v154, s64
    v_mfma_f32_16x16x16_bf16 v[60:63], a[96:97], a[16:17], 0
    ds_write_b64 v26, v[148:149] offset:31232
    v_mfma_f32_16x16x16_bf16 v[60:63], a[98:99], a[18:19], v[60:63]
    v_mfma_f32_16x16x16_bf16 v[60:63], a[100:101], a[20:21], v[60:63]
    ds_write_b64 v26, v[150:151] offset:31776
    v_mfma_f32_16x16x16_bf16 v[60:63], a[102:103], a[22:23], v[60:63]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[104:105], a[0:1], 0
    ds_read_b128 v[124:127], v18 offset:13056
    ds_write_b32 v17, v40
    v_mfma_f32_16x16x16_bf16 v[64:67], a[106:107], a[2:3], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[108:109], a[4:5], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[110:111], a[6:7], v[64:67]
    ds_read_b128 v[128:131], v18 offset:13568
    ds_write_b32 v17, v41 offset:1056
    v_mfma_f32_16x16x16_bf16 v[68:71], a[104:105], a[8:9], 0
    v_mfma_f32_16x16x16_bf16 v[68:71], a[106:107], a[10:11], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[108:109], a[12:13], v[68:71]
    ds_read_b128 v[132:135], v18 offset:15232
    ds_write_b32 v17, v42 offset:2176
    v_mfma_f32_16x16x16_bf16 v[68:71], a[110:111], a[14:15], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[72:75], a[104:105], a[16:17], 0
    v_mfma_f32_16x16x16_bf16 v[72:75], a[106:107], a[18:19], v[72:75]
    ds_read_b128 v[136:139], v18 offset:15744
    ds_write_b32 v17, v43 offset:3232
    v_mfma_f32_16x16x16_bf16 v[72:75], a[108:109], a[20:21], v[72:75]
    v_mfma_f32_16x16x16_bf16 v[72:75], a[110:111], a[22:23], v[72:75]
    s_cmp_lt_i32 s74, 12
    s_cbranch_scc0 label_06FB
    s_mov_b32 s60, 0xffe0fffe
    s_mov_b32 s61, 0xe000fe00
    s_nop 0
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0645
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_062A
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0665
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_064A
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0685
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_066A
    s_branch label_068A
label_062A:
    v_cndmask_b32_e64 v52, v52, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v53, v53, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v54, v54, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v55, v55, v178, s[60:61]
    s_branch label_0665
label_0645:
    v_mov_b32_e32 v52, v178
    v_mov_b32_e32 v53, v178
    v_mov_b32_e32 v54, v178
    v_mov_b32_e32 v55, v178
    s_branch label_0665
label_064A:
    v_cndmask_b32_e64 v56, v56, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v57, v57, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v58, v58, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v59, v59, v178, s[60:61]
    s_branch label_0685
label_0665:
    v_mov_b32_e32 v56, v178
    v_mov_b32_e32 v57, v178
    v_mov_b32_e32 v58, v178
    v_mov_b32_e32 v59, v178
    s_branch label_0685
label_066A:
    v_cndmask_b32_e64 v60, v60, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v61, v61, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v62, v62, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v63, v63, v178, s[60:61]
    s_branch label_068A
label_0685:
    v_mov_b32_e32 v60, v178
    v_mov_b32_e32 v61, v178
    v_mov_b32_e32 v62, v178
    v_mov_b32_e32 v63, v178
    s_branch label_068A
label_068A:
    s_addk_i32 s74, 0x1
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_06B6
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_069B
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_06D6
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_06BB
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_06F6
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_06DB
    s_branch label_06FB
label_069B:
    v_cndmask_b32_e64 v64, v64, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v65, v65, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v66, v66, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v67, v67, v178, s[60:61]
    s_branch label_06D6
label_06B6:
    v_mov_b32_e32 v64, v178
    v_mov_b32_e32 v65, v178
    v_mov_b32_e32 v66, v178
    v_mov_b32_e32 v67, v178
    s_branch label_06D6
label_06BB:
    v_cndmask_b32_e64 v68, v68, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v69, v69, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v70, v70, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v71, v71, v178, s[60:61]
    s_branch label_06F6
label_06D6:
    v_mov_b32_e32 v68, v178
    v_mov_b32_e32 v69, v178
    v_mov_b32_e32 v70, v178
    v_mov_b32_e32 v71, v178
    s_branch label_06F6
label_06DB:
    v_cndmask_b32_e64 v72, v72, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v73, v73, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v74, v74, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v75, v75, v178, s[60:61]
    s_branch label_06FB
label_06F6:
    v_mov_b32_e32 v72, v178
    v_mov_b32_e32 v73, v178
    v_mov_b32_e32 v74, v178
    v_mov_b32_e32 v75, v178
    s_branch label_06FB
label_06FB:
    s_addk_i32 s74, 0x1
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[76:79], v[108:109], a[72:73], 0
    ds_read_b128 a[96:99], v18 offset:4352
    ds_read_b128 a[100:103], v18 offset:4864
    v_mfma_f32_16x16x16_bf16 v[76:79], v[110:111], a[74:75], v[76:79]
    v_fma_f32 v52, v52, s57, -v140
    v_fma_f32 v53, v53, s57, -v141
    v_fma_f32 v54, v54, s57, -v142
    v_fma_f32 v55, v55, s57, -v143
    v_fma_f32 v56, v56, s57, -v140
    v_fma_f32 v57, v57, s57, -v141
    v_mfma_f32_16x16x16_bf16 v[76:79], v[112:113], a[76:77], v[76:79]
    v_fma_f32 v58, v58, s57, -v142
    v_fma_f32 v59, v59, s57, -v143
    v_fma_f32 v60, v60, s57, -v140
    v_fma_f32 v61, v61, s57, -v141
    v_fma_f32 v62, v62, s57, -v142
    v_fma_f32 v63, v63, s57, -v143
    v_mfma_f32_16x16x16_bf16 v[76:79], v[114:115], a[78:79], v[76:79]
    v_fma_f32 v64, v64, s57, -v144
    v_fma_f32 v65, v65, s57, -v145
    v_fma_f32 v66, v66, s57, -v146
    v_fma_f32 v67, v67, s57, -v147
    v_fma_f32 v68, v68, s57, -v144
    v_fma_f32 v69, v69, s57, -v145
    v_mfma_f32_16x16x16_bf16 v[80:83], v[108:109], a[80:81], 0
    ds_read_b128 a[104:107], v18 offset:6528
    ds_read_b128 a[108:111], v18 offset:7040
    v_mfma_f32_16x16x16_bf16 v[80:83], v[110:111], a[82:83], v[80:83]
    v_fma_f32 v70, v70, s57, -v146
    v_fma_f32 v71, v71, s57, -v147
    v_fma_f32 v72, v72, s57, -v144
    v_fma_f32 v73, v73, s57, -v145
    v_fma_f32 v74, v74, s57, -v146
    v_fma_f32 v75, v75, s57, -v147
    v_mfma_f32_16x16x16_bf16 v[80:83], v[112:113], a[84:85], v[80:83]
    v_exp_f32_e32 v52, v52
    v_exp_f32_e32 v53, v53
    v_mfma_f32_16x16x16_bf16 v[80:83], v[114:115], a[86:87], v[80:83]
    v_exp_f32_e32 v54, v54
    v_exp_f32_e32 v55, v55
    v_mfma_f32_16x16x16_bf16 v[84:87], v[108:109], a[88:89], 0
    ds_read_b32 v156, v25 offset:31232
    ds_read_b32 v157, v25 offset:31248
    v_mfma_f32_16x16x16_bf16 v[84:87], v[110:111], a[90:91], v[84:87]
    v_exp_f32_e32 v56, v56
    v_exp_f32_e32 v57, v57
    v_mfma_f32_16x16x16_bf16 v[84:87], v[112:113], a[92:93], v[84:87]
    ds_read_b32 v158, v25 offset:31264
    ds_read_b32 v159, v25 offset:31280
    v_mfma_f32_16x16x16_bf16 v[84:87], v[114:115], a[94:95], v[84:87]
    v_exp_f32_e32 v58, v58
    v_exp_f32_e32 v59, v59
    v_mfma_f32_16x16x16_bf16 v[88:91], v[116:117], a[72:73], 0
    v_exp_f32_e32 v60, v60
    v_exp_f32_e32 v61, v61
    v_mfma_f32_16x16x16_bf16 v[88:91], v[118:119], a[74:75], v[88:91]
    v_exp_f32_e32 v62, v62
    v_exp_f32_e32 v63, v63
    v_mfma_f32_16x16x16_bf16 v[88:91], v[120:121], a[76:77], v[88:91]
    v_exp_f32_e32 v64, v64
    v_exp_f32_e32 v65, v65
    v_mfma_f32_16x16x16_bf16 v[88:91], v[122:123], a[78:79], v[88:91]
    v_exp_f32_e32 v66, v66
    v_exp_f32_e32 v67, v67
    v_mfma_f32_16x16x16_bf16 v[92:95], v[116:117], a[80:81], 0
    v_exp_f32_e32 v68, v68
    v_exp_f32_e32 v69, v69
    v_mfma_f32_16x16x16_bf16 v[92:95], v[118:119], a[82:83], v[92:95]
    v_exp_f32_e32 v70, v70
    v_exp_f32_e32 v71, v71
    v_mfma_f32_16x16x16_bf16 v[92:95], v[120:121], a[84:85], v[92:95]
    v_exp_f32_e32 v72, v72
    v_exp_f32_e32 v73, v73
    v_mfma_f32_16x16x16_bf16 v[92:95], v[122:123], a[86:87], v[92:95]
    v_exp_f32_e32 v74, v74
    v_exp_f32_e32 v75, v75
    v_mfma_f32_16x16x16_bf16 v[96:99], v[116:117], a[88:89], 0
    v_perm_b32 v164, v53, v52, s64
    v_perm_b32 v165, v55, v54, s64
    v_perm_b32 v166, v57, v56, s64
    v_perm_b32 v167, v59, v58, s64
    v_perm_b32 v168, v61, v60, s64
    v_perm_b32 v169, v63, v62, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[118:119], a[90:91], v[96:99]
    v_perm_b32 v170, v65, v64, s64
    v_perm_b32 v171, v67, v66, s64
    v_perm_b32 v172, v69, v68, s64
    v_perm_b32 v173, v71, v70, s64
    v_perm_b32 v174, v73, v72, s64
    v_perm_b32 v175, v75, v74, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[120:121], a[92:93], v[96:99]
    s_add_u32 s32, s66, s32
    s_addc_u32 s33, 0, s33
    v_mfma_f32_16x16x16_bf16 v[96:99], v[122:123], a[94:95], v[96:99]
    s_waitcnt lgkmcnt(0)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[180:183], v[124:125], v[164:165], v[180:183]
    v_subrev_f32_dpp v76, v176, v76 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v77, v176, v77 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v78, v176, v78 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v79, v176, v79 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v80, v176, v80 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v81, v176, v81 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[184:187], v[126:127], v[164:165], v[184:187]
    v_subrev_f32_dpp v82, v176, v82 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v83, v176, v83 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v84, v176, v84 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v85, v176, v85 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v86, v176, v86 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v87, v176, v87 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[188:191], v[128:129], v[164:165], v[188:191]
    v_mul_f32_e32 v76, v52, v76
    v_mul_f32_e32 v77, v53, v77
    v_mul_f32_e32 v78, v54, v78
    v_mul_f32_e32 v79, v55, v79
    v_mul_f32_e32 v80, v56, v80
    v_mul_f32_e32 v81, v57, v81
    v_mfma_f32_16x16x16_bf16 v[192:195], v[130:131], v[164:165], v[192:195]
    v_mul_f32_e32 v82, v58, v82
    v_mul_f32_e32 v83, v59, v83
    v_mul_f32_e32 v84, v60, v84
    v_mul_f32_e32 v85, v61, v85
    v_mul_f32_e32 v86, v62, v86
    v_mul_f32_e32 v87, v63, v87
    v_mfma_f32_16x16x16_bf16 v[196:199], v[124:125], v[166:167], v[196:199]
    v_perm_b32 v76, v77, v76, s64
    v_perm_b32 v77, v79, v78, s64
    v_perm_b32 v78, v81, v80, s64
    v_perm_b32 v79, v83, v82, s64
    v_perm_b32 v80, v85, v84, s64
    v_perm_b32 v81, v87, v86, s64
    v_mfma_f32_16x16x16_bf16 v[200:203], v[126:127], v[166:167], v[200:203]
    v_mov_b32_dpp v22, v76 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v52, v22, v76, v21
    v_mov_b32_dpp v22, v77 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v53, v22, v77, v21
    v_mov_b32_dpp v22, v78 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v54, v22, v78, v21
    v_mfma_f32_16x16x16_bf16 v[204:207], v[128:129], v[166:167], v[204:207]
    v_mov_b32_dpp v22, v79 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v55, v22, v79, v21
    v_mov_b32_dpp v22, v80 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v56, v22, v80, v21
    v_mov_b32_dpp v22, v81 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v57, v22, v81, v21
    v_mfma_f32_16x16x16_bf16 v[208:211], v[130:131], v[166:167], v[208:211]
    ds_write_b32 v24, v52 offset:17408
    ds_write_b32 v24, v53 offset:17952
    v_mfma_f32_16x16x16_bf16 v[212:215], v[124:125], v[168:169], v[212:215]
    v_subrev_f32_dpp v88, v177, v88 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v89, v177, v89 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v90, v177, v90 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v91, v177, v91 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v92, v177, v92 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v93, v177, v93 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[216:219], v[126:127], v[168:169], v[216:219]
    ds_write_b32 v24, v54 offset:19712
    ds_write_b32 v24, v55 offset:20256
    v_mfma_f32_16x16x16_bf16 v[220:223], v[128:129], v[168:169], v[220:223]
    v_subrev_f32_dpp v94, v177, v94 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v95, v177, v95 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v96, v177, v96 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v97, v177, v97 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v98, v177, v98 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v99, v177, v99 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[224:227], v[130:131], v[168:169], v[224:227]
    ds_write_b32 v24, v56 offset:22016
    ds_write_b32 v24, v57 offset:22560
    v_mfma_f32_16x16x16_bf16 v[180:183], v[132:133], v[170:171], v[180:183]
    v_mul_f32_e32 v88, v64, v88
    v_mul_f32_e32 v89, v65, v89
    v_mul_f32_e32 v90, v66, v90
    v_mul_f32_e32 v91, v67, v91
    v_mul_f32_e32 v92, v68, v92
    v_mul_f32_e32 v93, v69, v93
    v_mfma_f32_16x16x16_bf16 v[184:187], v[134:135], v[170:171], v[184:187]
    v_mul_f32_e32 v94, v70, v94
    v_mul_f32_e32 v95, v71, v95
    v_mul_f32_e32 v96, v72, v96
    v_mul_f32_e32 v97, v73, v97
    v_mul_f32_e32 v98, v74, v98
    v_mul_f32_e32 v99, v75, v99
    v_mfma_f32_16x16x16_bf16 v[188:191], v[136:137], v[170:171], v[188:191]
    v_perm_b32 v82, v89, v88, s64
    v_perm_b32 v83, v91, v90, s64
    v_perm_b32 v84, v93, v92, s64
    v_perm_b32 v85, v95, v94, s64
    v_perm_b32 v86, v97, v96, s64
    v_perm_b32 v87, v99, v98, s64
    v_mfma_f32_16x16x16_bf16 v[192:195], v[138:139], v[170:171], v[192:195]
    v_mov_b32_dpp v22, v82 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v58, v22, v82, v21
    v_mov_b32_dpp v22, v83 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v59, v22, v83, v21
    v_mov_b32_dpp v22, v84 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v60, v22, v84, v21
    v_mfma_f32_16x16x16_bf16 v[196:199], v[132:133], v[172:173], v[196:199]
    v_mov_b32_dpp v22, v85 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v61, v22, v85, v21
    v_mov_b32_dpp v22, v86 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v62, v22, v86, v21
    v_mov_b32_dpp v22, v87 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v63, v22, v87, v21
    v_mfma_f32_16x16x16_bf16 v[200:203], v[134:135], v[172:173], v[200:203]
    ds_write_b32 v24, v58 offset:24320
    ds_write_b32 v24, v59 offset:24864
    v_mfma_f32_16x16x16_bf16 v[204:207], v[136:137], v[172:173], v[204:207]
    v_mfma_f32_16x16x16_bf16 v[208:211], v[138:139], v[172:173], v[208:211]
    ds_write_b32 v24, v60 offset:26624
    ds_write_b32 v24, v61 offset:27168
    ds_write_b32 v24, v62 offset:28928
    ds_write_b32 v24, v63 offset:29472
    v_mfma_f32_16x16x16_bf16 v[212:215], v[132:133], v[174:175], v[212:215]
    v_mfma_f32_16x16x16_bf16 v[216:219], v[134:135], v[174:175], v[216:219]
    ds_write_b32 v19, v100 offset:4352
    ds_write_b32 v19, v101 offset:5408
    v_mfma_f32_16x16x16_bf16 v[220:223], v[136:137], v[174:175], v[220:223]
    s_nop 0
    s_nop 0
    s_nop 0
    v_mfma_f32_16x16x16_bf16 v[224:227], v[138:139], v[174:175], v[224:227]
    ds_write_b32 v19, v102 offset:6528
    ds_write_b32 v19, v103 offset:7584
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[112:115], a[96:97], v[76:77], a[112:115]
    global_atomic_pk_add_bf16 v6, v156, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[116:119], a[98:99], v[76:77], a[116:119]
    ds_read_b32 v140, v27 offset:36096
    ds_read_b32 v144, v27 offset:36160
    ds_read_b32 v176, v27 offset:36352
    ds_read_b32 v177, v27 offset:36416
    v_mfma_f32_16x16x16_bf16 a[120:123], a[100:101], v[76:77], a[120:123]
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[124:127], a[102:103], v[76:77], a[124:127]
    ds_read_b128 v[52:55], v23 offset:17408
    v_mfma_f32_16x16x16_bf16 a[128:131], a[96:97], v[78:79], a[128:131]
    v_mfma_f32_16x16x16_bf16 a[132:135], a[98:99], v[78:79], a[132:135]
    ds_read_b128 v[56:59], v23 offset:18560
    v_mfma_f32_16x16x16_bf16 a[136:139], a[100:101], v[78:79], a[136:139]
    global_atomic_pk_add_bf16 v8, v157, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[140:143], a[102:103], v[78:79], a[140:143]
    ds_read_b128 v[60:63], v23 offset:19712
    v_mfma_f32_16x16x16_bf16 a[144:147], a[96:97], v[80:81], a[144:147]
    v_mfma_f32_16x16x16_bf16 a[148:151], a[98:99], v[80:81], a[148:151]
    ds_read_b128 v[64:67], v23 offset:20864
    v_mfma_f32_16x16x16_bf16 a[152:155], a[100:101], v[80:81], a[152:155]
    v_mfma_f32_16x16x16_bf16 a[156:159], a[102:103], v[80:81], a[156:159]
    ds_read_b128 v[68:71], v23 offset:22016
    v_mfma_f32_16x16x16_bf16 a[112:115], a[104:105], v[82:83], a[112:115]
    global_atomic_pk_add_bf16 v10, v158, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[116:119], a[106:107], v[82:83], a[116:119]
    ds_read_b128 v[72:75], v23 offset:23168
    v_mfma_f32_16x16x16_bf16 a[120:123], a[108:109], v[82:83], a[120:123]
    v_mfma_f32_16x16x16_bf16 a[124:127], a[110:111], v[82:83], a[124:127]
    ds_write_b32 v19, v104 offset:13056
    v_mfma_f32_16x16x16_bf16 a[128:131], a[104:105], v[84:85], a[128:131]
    v_mfma_f32_16x16x16_bf16 a[132:135], a[106:107], v[84:85], a[132:135]
    ds_write_b32 v19, v105 offset:14112
    v_mfma_f32_16x16x16_bf16 a[136:139], a[108:109], v[84:85], a[136:139]
    global_atomic_pk_add_bf16 v12, v159, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[140:143], a[110:111], v[84:85], a[140:143]
    ds_write_b32 v19, v106 offset:15232
    v_mfma_f32_16x16x16_bf16 a[144:147], a[104:105], v[86:87], a[144:147]
    v_mfma_f32_16x16x16_bf16 a[148:151], a[106:107], v[86:87], a[148:151]
    ds_write_b32 v19, v107 offset:16288
    v_mfma_f32_16x16x16_bf16 a[152:155], a[108:109], v[86:87], a[152:155]
    v_mfma_f32_16x16x16_bf16 a[156:159], a[110:111], v[86:87], a[156:159]
    s_waitcnt vmcnt(4) lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[148:151], a[24:25], v[52:53], 0
    v_mul_f32_e32 v140, s49, v140
    v_mul_f32_e32 v144, s49, v144
    s_nop 0
    v_mfma_f32_16x16x16_bf16 v[148:151], a[28:29], v[54:55], v[148:151]
    ds_read_b128 a[96:99], v16
    buffer_load_dword v40, v1, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[32:33], v[56:57], v[148:151]
    v_mfma_f32_16x16x16_bf16 v[148:151], a[36:37], v[58:59], v[148:151]
    ds_read_b128 a[100:103], v16 offset:512
    buffer_load_dword v41, v2, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[40:41], v[60:61], v[148:151]
    v_perm_b32 v100, v37, v36, s63
    v_perm_b32 v101, v37, v36, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[44:45], v[62:63], v[148:151]
    ds_read_b128 a[104:107], v16 offset:2176
    buffer_load_dword v42, v3, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[48:49], v[64:65], v[148:151]
    v_perm_b32 v102, v39, v38, s63
    v_perm_b32 v103, v39, v38, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[52:53], v[66:67], v[148:151]
    ds_read_b128 a[108:111], v16 offset:2688
    buffer_load_dword v43, v4, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[56:57], v[68:69], v[148:151]
    v_perm_b32 v104, v45, v44, s63
    v_perm_b32 v105, v45, v44, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[60:61], v[70:71], v[148:151]
    ds_read_b128 v[108:111], v16 offset:8704
    buffer_load_dword v48, v1, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[64:65], v[72:73], v[148:151]
    v_perm_b32 v106, v47, v46, s63
    v_perm_b32 v107, v47, v46, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[68:69], v[74:75], v[148:151]
    ds_read_b128 v[112:115], v16 offset:9216
    buffer_load_dword v49, v2, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[26:27], v[52:53], 0
    v_mov_b32_dpp v143, v140 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v142, v140 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v141, v140 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v140, v140 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[152:155], a[30:31], v[54:55], v[152:155]
    ds_read_b128 v[116:119], v16 offset:10880
    buffer_load_dword v50, v3, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[34:35], v[56:57], v[152:155]
    v_mov_b32_dpp v147, v144 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v146, v144 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v145, v144 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v144, v144 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    s_add_u32 s60, 0x80, s59
    v_mfma_f32_16x16x16_bf16 v[152:155], a[38:39], v[58:59], v[152:155]
    ds_read_b128 v[120:123], v16 offset:11392
    buffer_load_dword v51, v4, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[42:43], v[60:61], v[152:155]
    s_cmp_lt_u32 s60, s58
    s_cselect_b32 s68, s68, 0
    s_cselect_b32 s69, s69, 0
    v_mfma_f32_16x16x16_bf16 v[152:155], a[46:47], v[62:63], v[152:155]
    buffer_load_dword v15, s[24:27], 0 idxen lds
    v_mfma_f32_16x16x16_bf16 v[152:155], a[50:51], v[64:65], v[152:155]
    s_add_u32 s8, s68, s8
    s_addc_u32 s9, 0, s9
    v_mfma_f32_16x16x16_bf16 v[152:155], a[54:55], v[66:67], v[152:155]
    s_add_u32 s20, s68, s20
    s_addc_u32 s21, 0, s21
    v_mfma_f32_16x16x16_bf16 v[152:155], a[58:59], v[68:69], v[152:155]
    s_mov_b32 m0, s80
    v_add_u32_e32 v15, s69, v15
    v_mfma_f32_16x16x16_bf16 v[152:155], a[62:63], v[70:71], v[152:155]
    s_cmp_ge_u32 s59, s73
    s_cselect_b32 s66, s67, s66
    v_mfma_f32_16x16x16_bf16 v[152:155], a[66:67], v[72:73], v[152:155]
    s_addk_i32 s59, 0x20
    s_nop 0
    s_cmp_lt_i32 s59, s58
    v_mfma_f32_16x16x16_bf16 v[152:155], a[70:71], v[74:75], v[152:155]
    s_cbranch_scc0 label_0D14
    s_waitcnt lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[52:55], a[96:97], a[0:1], 0
    ds_write_b32 v17, v44 offset:8704
    ds_write_b32 v17, v45 offset:9760
    v_mfma_f32_16x16x16_bf16 v[52:55], a[98:99], a[2:3], v[52:55]
    v_mul_f32_e32 v148, s48, v148
    v_mul_f32_e32 v149, s48, v149
    v_mfma_f32_16x16x16_bf16 v[52:55], a[100:101], a[4:5], v[52:55]
    ds_write_b32 v17, v46 offset:10880
    ds_write_b32 v17, v47 offset:11936
    v_mfma_f32_16x16x16_bf16 v[52:55], a[102:103], a[6:7], v[52:55]
    v_mul_f32_e32 v150, s48, v150
    v_mul_f32_e32 v151, s48, v151
    v_mfma_f32_16x16x16_bf16 v[56:59], a[96:97], a[8:9], 0
    v_mul_f32_e32 v152, s48, v152
    v_mul_f32_e32 v153, s48, v153
    v_mfma_f32_16x16x16_bf16 v[56:59], a[98:99], a[10:11], v[56:59]
    v_mul_f32_e32 v154, s48, v154
    v_mul_f32_e32 v155, s48, v155
    v_mfma_f32_16x16x16_bf16 v[56:59], a[100:101], a[12:13], v[56:59]
    v_perm_b32 v148, v149, v148, s64
    v_perm_b32 v149, v151, v150, s64
    v_mfma_f32_16x16x16_bf16 v[56:59], a[102:103], a[14:15], v[56:59]
    v_perm_b32 v150, v153, v152, s64
    v_perm_b32 v151, v155, v154, s64
    v_mfma_f32_16x16x16_bf16 v[60:63], a[96:97], a[16:17], 0
    ds_write_b64 v26, v[148:149] offset:31232
    v_mfma_f32_16x16x16_bf16 v[60:63], a[98:99], a[18:19], v[60:63]
    v_mfma_f32_16x16x16_bf16 v[60:63], a[100:101], a[20:21], v[60:63]
    ds_write_b64 v26, v[150:151] offset:31776
    v_mfma_f32_16x16x16_bf16 v[60:63], a[102:103], a[22:23], v[60:63]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[104:105], a[0:1], 0
    ds_read_b128 v[124:127], v18 offset:13056
    ds_write_b32 v17, v36
    v_mfma_f32_16x16x16_bf16 v[64:67], a[106:107], a[2:3], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[108:109], a[4:5], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[110:111], a[6:7], v[64:67]
    ds_read_b128 v[128:131], v18 offset:13568
    ds_write_b32 v17, v37 offset:1056
    v_mfma_f32_16x16x16_bf16 v[68:71], a[104:105], a[8:9], 0
    v_mfma_f32_16x16x16_bf16 v[68:71], a[106:107], a[10:11], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[108:109], a[12:13], v[68:71]
    ds_read_b128 v[132:135], v18 offset:15232
    ds_write_b32 v17, v38 offset:2176
    v_mfma_f32_16x16x16_bf16 v[68:71], a[110:111], a[14:15], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[72:75], a[104:105], a[16:17], 0
    v_mfma_f32_16x16x16_bf16 v[72:75], a[106:107], a[18:19], v[72:75]
    ds_read_b128 v[136:139], v18 offset:15744
    ds_write_b32 v17, v39 offset:3232
    v_mfma_f32_16x16x16_bf16 v[72:75], a[108:109], a[20:21], v[72:75]
    v_mfma_f32_16x16x16_bf16 v[72:75], a[110:111], a[22:23], v[72:75]
    s_cmp_lt_i32 s74, 12
    s_cbranch_scc0 label_0AAA
    s_mov_b32 s60, 0xffe0fffe
    s_mov_b32 s61, 0xe000fe00
    s_nop 0
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_09F4
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_09D9
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0A14
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_09F9
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0A34
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0A19
    s_branch label_0A39
label_09D9:
    v_cndmask_b32_e64 v52, v52, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v53, v53, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v54, v54, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v55, v55, v178, s[60:61]
    s_branch label_0A14
label_09F4:
    v_mov_b32_e32 v52, v178
    v_mov_b32_e32 v53, v178
    v_mov_b32_e32 v54, v178
    v_mov_b32_e32 v55, v178
    s_branch label_0A14
label_09F9:
    v_cndmask_b32_e64 v56, v56, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v57, v57, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v58, v58, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v59, v59, v178, s[60:61]
    s_branch label_0A34
label_0A14:
    v_mov_b32_e32 v56, v178
    v_mov_b32_e32 v57, v178
    v_mov_b32_e32 v58, v178
    v_mov_b32_e32 v59, v178
    s_branch label_0A34
label_0A19:
    v_cndmask_b32_e64 v60, v60, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v61, v61, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v62, v62, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v63, v63, v178, s[60:61]
    s_branch label_0A39
label_0A34:
    v_mov_b32_e32 v60, v178
    v_mov_b32_e32 v61, v178
    v_mov_b32_e32 v62, v178
    v_mov_b32_e32 v63, v178
    s_branch label_0A39
label_0A39:
    s_addk_i32 s74, 0x1
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0A65
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0A4A
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0A85
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0A6A
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0AA5
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0A8A
    s_branch label_0AAA
label_0A4A:
    v_cndmask_b32_e64 v64, v64, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v65, v65, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v66, v66, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v67, v67, v178, s[60:61]
    s_branch label_0A85
label_0A65:
    v_mov_b32_e32 v64, v178
    v_mov_b32_e32 v65, v178
    v_mov_b32_e32 v66, v178
    v_mov_b32_e32 v67, v178
    s_branch label_0A85
label_0A6A:
    v_cndmask_b32_e64 v68, v68, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v69, v69, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v70, v70, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v71, v71, v178, s[60:61]
    s_branch label_0AA5
label_0A85:
    v_mov_b32_e32 v68, v178
    v_mov_b32_e32 v69, v178
    v_mov_b32_e32 v70, v178
    v_mov_b32_e32 v71, v178
    s_branch label_0AA5
label_0A8A:
    v_cndmask_b32_e64 v72, v72, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v73, v73, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v74, v74, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v75, v75, v178, s[60:61]
    s_branch label_0AAA
label_0AA5:
    v_mov_b32_e32 v72, v178
    v_mov_b32_e32 v73, v178
    v_mov_b32_e32 v74, v178
    v_mov_b32_e32 v75, v178
    s_branch label_0AAA
label_0AAA:
    s_addk_i32 s74, 0x1
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[76:79], v[108:109], a[72:73], 0
    ds_read_b128 a[96:99], v18 offset:4352
    ds_read_b128 a[100:103], v18 offset:4864
    v_mfma_f32_16x16x16_bf16 v[76:79], v[110:111], a[74:75], v[76:79]
    v_fma_f32 v52, v52, s57, -v140
    v_fma_f32 v53, v53, s57, -v141
    v_fma_f32 v54, v54, s57, -v142
    v_fma_f32 v55, v55, s57, -v143
    v_fma_f32 v56, v56, s57, -v140
    v_fma_f32 v57, v57, s57, -v141
    v_mfma_f32_16x16x16_bf16 v[76:79], v[112:113], a[76:77], v[76:79]
    v_fma_f32 v58, v58, s57, -v142
    v_fma_f32 v59, v59, s57, -v143
    v_fma_f32 v60, v60, s57, -v140
    v_fma_f32 v61, v61, s57, -v141
    v_fma_f32 v62, v62, s57, -v142
    v_fma_f32 v63, v63, s57, -v143
    v_mfma_f32_16x16x16_bf16 v[76:79], v[114:115], a[78:79], v[76:79]
    v_fma_f32 v64, v64, s57, -v144
    v_fma_f32 v65, v65, s57, -v145
    v_fma_f32 v66, v66, s57, -v146
    v_fma_f32 v67, v67, s57, -v147
    v_fma_f32 v68, v68, s57, -v144
    v_fma_f32 v69, v69, s57, -v145
    v_mfma_f32_16x16x16_bf16 v[80:83], v[108:109], a[80:81], 0
    ds_read_b128 a[104:107], v18 offset:6528
    ds_read_b128 a[108:111], v18 offset:7040
    v_mfma_f32_16x16x16_bf16 v[80:83], v[110:111], a[82:83], v[80:83]
    v_fma_f32 v70, v70, s57, -v146
    v_fma_f32 v71, v71, s57, -v147
    v_fma_f32 v72, v72, s57, -v144
    v_fma_f32 v73, v73, s57, -v145
    v_fma_f32 v74, v74, s57, -v146
    v_fma_f32 v75, v75, s57, -v147
    v_mfma_f32_16x16x16_bf16 v[80:83], v[112:113], a[84:85], v[80:83]
    v_exp_f32_e32 v52, v52
    v_exp_f32_e32 v53, v53
    v_mfma_f32_16x16x16_bf16 v[80:83], v[114:115], a[86:87], v[80:83]
    v_exp_f32_e32 v54, v54
    v_exp_f32_e32 v55, v55
    v_mfma_f32_16x16x16_bf16 v[84:87], v[108:109], a[88:89], 0
    ds_read_b32 v156, v25 offset:31232
    ds_read_b32 v157, v25 offset:31248
    v_mfma_f32_16x16x16_bf16 v[84:87], v[110:111], a[90:91], v[84:87]
    v_exp_f32_e32 v56, v56
    v_exp_f32_e32 v57, v57
    v_mfma_f32_16x16x16_bf16 v[84:87], v[112:113], a[92:93], v[84:87]
    ds_read_b32 v158, v25 offset:31264
    ds_read_b32 v159, v25 offset:31280
    v_mfma_f32_16x16x16_bf16 v[84:87], v[114:115], a[94:95], v[84:87]
    v_exp_f32_e32 v58, v58
    v_exp_f32_e32 v59, v59
    v_mfma_f32_16x16x16_bf16 v[88:91], v[116:117], a[72:73], 0
    v_exp_f32_e32 v60, v60
    v_exp_f32_e32 v61, v61
    v_mfma_f32_16x16x16_bf16 v[88:91], v[118:119], a[74:75], v[88:91]
    v_exp_f32_e32 v62, v62
    v_exp_f32_e32 v63, v63
    v_mfma_f32_16x16x16_bf16 v[88:91], v[120:121], a[76:77], v[88:91]
    v_exp_f32_e32 v64, v64
    v_exp_f32_e32 v65, v65
    v_mfma_f32_16x16x16_bf16 v[88:91], v[122:123], a[78:79], v[88:91]
    v_exp_f32_e32 v66, v66
    v_exp_f32_e32 v67, v67
    v_mfma_f32_16x16x16_bf16 v[92:95], v[116:117], a[80:81], 0
    v_exp_f32_e32 v68, v68
    v_exp_f32_e32 v69, v69
    v_mfma_f32_16x16x16_bf16 v[92:95], v[118:119], a[82:83], v[92:95]
    v_exp_f32_e32 v70, v70
    v_exp_f32_e32 v71, v71
    v_mfma_f32_16x16x16_bf16 v[92:95], v[120:121], a[84:85], v[92:95]
    v_exp_f32_e32 v72, v72
    v_exp_f32_e32 v73, v73
    v_mfma_f32_16x16x16_bf16 v[92:95], v[122:123], a[86:87], v[92:95]
    v_exp_f32_e32 v74, v74
    v_exp_f32_e32 v75, v75
    v_mfma_f32_16x16x16_bf16 v[96:99], v[116:117], a[88:89], 0
    v_perm_b32 v164, v53, v52, s64
    v_perm_b32 v165, v55, v54, s64
    v_perm_b32 v166, v57, v56, s64
    v_perm_b32 v167, v59, v58, s64
    v_perm_b32 v168, v61, v60, s64
    v_perm_b32 v169, v63, v62, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[118:119], a[90:91], v[96:99]
    v_perm_b32 v170, v65, v64, s64
    v_perm_b32 v171, v67, v66, s64
    v_perm_b32 v172, v69, v68, s64
    v_perm_b32 v173, v71, v70, s64
    v_perm_b32 v174, v73, v72, s64
    v_perm_b32 v175, v75, v74, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[120:121], a[92:93], v[96:99]
    s_add_u32 s32, s66, s32
    s_addc_u32 s33, 0, s33
    v_mfma_f32_16x16x16_bf16 v[96:99], v[122:123], a[94:95], v[96:99]
    s_waitcnt lgkmcnt(0)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[180:183], v[124:125], v[164:165], v[180:183]
    v_subrev_f32_dpp v76, v176, v76 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v77, v176, v77 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v78, v176, v78 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v79, v176, v79 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v80, v176, v80 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v81, v176, v81 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[184:187], v[126:127], v[164:165], v[184:187]
    v_subrev_f32_dpp v82, v176, v82 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v83, v176, v83 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v84, v176, v84 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v85, v176, v85 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v86, v176, v86 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v87, v176, v87 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[188:191], v[128:129], v[164:165], v[188:191]
    v_mul_f32_e32 v76, v52, v76
    v_mul_f32_e32 v77, v53, v77
    v_mul_f32_e32 v78, v54, v78
    v_mul_f32_e32 v79, v55, v79
    v_mul_f32_e32 v80, v56, v80
    v_mul_f32_e32 v81, v57, v81
    v_mfma_f32_16x16x16_bf16 v[192:195], v[130:131], v[164:165], v[192:195]
    v_mul_f32_e32 v82, v58, v82
    v_mul_f32_e32 v83, v59, v83
    v_mul_f32_e32 v84, v60, v84
    v_mul_f32_e32 v85, v61, v85
    v_mul_f32_e32 v86, v62, v86
    v_mul_f32_e32 v87, v63, v87
    v_mfma_f32_16x16x16_bf16 v[196:199], v[124:125], v[166:167], v[196:199]
    v_perm_b32 v76, v77, v76, s64
    v_perm_b32 v77, v79, v78, s64
    v_perm_b32 v78, v81, v80, s64
    v_perm_b32 v79, v83, v82, s64
    v_perm_b32 v80, v85, v84, s64
    v_perm_b32 v81, v87, v86, s64
    v_mfma_f32_16x16x16_bf16 v[200:203], v[126:127], v[166:167], v[200:203]
    v_mov_b32_dpp v22, v76 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v52, v22, v76, v21
    v_mov_b32_dpp v22, v77 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v53, v22, v77, v21
    v_mov_b32_dpp v22, v78 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v54, v22, v78, v21
    v_mfma_f32_16x16x16_bf16 v[204:207], v[128:129], v[166:167], v[204:207]
    v_mov_b32_dpp v22, v79 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v55, v22, v79, v21
    v_mov_b32_dpp v22, v80 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v56, v22, v80, v21
    v_mov_b32_dpp v22, v81 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v57, v22, v81, v21
    v_mfma_f32_16x16x16_bf16 v[208:211], v[130:131], v[166:167], v[208:211]
    ds_write_b32 v24, v52 offset:17408
    ds_write_b32 v24, v53 offset:17952
    v_mfma_f32_16x16x16_bf16 v[212:215], v[124:125], v[168:169], v[212:215]
    v_subrev_f32_dpp v88, v177, v88 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v89, v177, v89 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v90, v177, v90 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v91, v177, v91 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v92, v177, v92 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v93, v177, v93 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[216:219], v[126:127], v[168:169], v[216:219]
    ds_write_b32 v24, v54 offset:19712
    ds_write_b32 v24, v55 offset:20256
    v_mfma_f32_16x16x16_bf16 v[220:223], v[128:129], v[168:169], v[220:223]
    v_subrev_f32_dpp v94, v177, v94 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v95, v177, v95 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v96, v177, v96 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v97, v177, v97 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v98, v177, v98 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v99, v177, v99 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[224:227], v[130:131], v[168:169], v[224:227]
    ds_write_b32 v24, v56 offset:22016
    ds_write_b32 v24, v57 offset:22560
    v_mfma_f32_16x16x16_bf16 v[180:183], v[132:133], v[170:171], v[180:183]
    v_mul_f32_e32 v88, v64, v88
    v_mul_f32_e32 v89, v65, v89
    v_mul_f32_e32 v90, v66, v90
    v_mul_f32_e32 v91, v67, v91
    v_mul_f32_e32 v92, v68, v92
    v_mul_f32_e32 v93, v69, v93
    v_mfma_f32_16x16x16_bf16 v[184:187], v[134:135], v[170:171], v[184:187]
    v_mul_f32_e32 v94, v70, v94
    v_mul_f32_e32 v95, v71, v95
    v_mul_f32_e32 v96, v72, v96
    v_mul_f32_e32 v97, v73, v97
    v_mul_f32_e32 v98, v74, v98
    v_mul_f32_e32 v99, v75, v99
    v_mfma_f32_16x16x16_bf16 v[188:191], v[136:137], v[170:171], v[188:191]
    v_perm_b32 v82, v89, v88, s64
    v_perm_b32 v83, v91, v90, s64
    v_perm_b32 v84, v93, v92, s64
    v_perm_b32 v85, v95, v94, s64
    v_perm_b32 v86, v97, v96, s64
    v_perm_b32 v87, v99, v98, s64
    v_mfma_f32_16x16x16_bf16 v[192:195], v[138:139], v[170:171], v[192:195]
    v_mov_b32_dpp v22, v82 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v58, v22, v82, v21
    v_mov_b32_dpp v22, v83 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v59, v22, v83, v21
    v_mov_b32_dpp v22, v84 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v60, v22, v84, v21
    v_mfma_f32_16x16x16_bf16 v[196:199], v[132:133], v[172:173], v[196:199]
    v_mov_b32_dpp v22, v85 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v61, v22, v85, v21
    v_mov_b32_dpp v22, v86 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v62, v22, v86, v21
    v_mov_b32_dpp v22, v87 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v63, v22, v87, v21
    v_mfma_f32_16x16x16_bf16 v[200:203], v[134:135], v[172:173], v[200:203]
    ds_write_b32 v24, v58 offset:24320
    ds_write_b32 v24, v59 offset:24864
    v_mfma_f32_16x16x16_bf16 v[204:207], v[136:137], v[172:173], v[204:207]
    v_mfma_f32_16x16x16_bf16 v[208:211], v[138:139], v[172:173], v[208:211]
    ds_write_b32 v24, v60 offset:26624
    ds_write_b32 v24, v61 offset:27168
    ds_write_b32 v24, v62 offset:28928
    ds_write_b32 v24, v63 offset:29472
    v_mfma_f32_16x16x16_bf16 v[212:215], v[132:133], v[174:175], v[212:215]
    v_mfma_f32_16x16x16_bf16 v[216:219], v[134:135], v[174:175], v[216:219]
    ds_write_b32 v19, v100 offset:4352
    ds_write_b32 v19, v101 offset:5408
    v_mfma_f32_16x16x16_bf16 v[220:223], v[136:137], v[174:175], v[220:223]
    s_nop 0
    s_nop 0
    s_nop 0
    v_mfma_f32_16x16x16_bf16 v[224:227], v[138:139], v[174:175], v[224:227]
    ds_write_b32 v19, v102 offset:6528
    ds_write_b32 v19, v103 offset:7584
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[112:115], a[96:97], v[76:77], a[112:115]
    global_atomic_pk_add_bf16 v6, v156, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[116:119], a[98:99], v[76:77], a[116:119]
    ds_read_b32 v140, v27 offset:35584
    ds_read_b32 v144, v27 offset:35648
    ds_read_b32 v176, v27 offset:35840
    ds_read_b32 v177, v27 offset:35904
    v_mfma_f32_16x16x16_bf16 a[120:123], a[100:101], v[76:77], a[120:123]
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[124:127], a[102:103], v[76:77], a[124:127]
    ds_read_b128 v[52:55], v23 offset:17408
    v_mfma_f32_16x16x16_bf16 a[128:131], a[96:97], v[78:79], a[128:131]
    v_mfma_f32_16x16x16_bf16 a[132:135], a[98:99], v[78:79], a[132:135]
    ds_read_b128 v[56:59], v23 offset:18560
    v_mfma_f32_16x16x16_bf16 a[136:139], a[100:101], v[78:79], a[136:139]
    global_atomic_pk_add_bf16 v8, v157, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[140:143], a[102:103], v[78:79], a[140:143]
    ds_read_b128 v[60:63], v23 offset:19712
    v_mfma_f32_16x16x16_bf16 a[144:147], a[96:97], v[80:81], a[144:147]
    v_mfma_f32_16x16x16_bf16 a[148:151], a[98:99], v[80:81], a[148:151]
    ds_read_b128 v[64:67], v23 offset:20864
    v_mfma_f32_16x16x16_bf16 a[152:155], a[100:101], v[80:81], a[152:155]
    v_mfma_f32_16x16x16_bf16 a[156:159], a[102:103], v[80:81], a[156:159]
    ds_read_b128 v[68:71], v23 offset:22016
    v_mfma_f32_16x16x16_bf16 a[112:115], a[104:105], v[82:83], a[112:115]
    global_atomic_pk_add_bf16 v10, v158, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[116:119], a[106:107], v[82:83], a[116:119]
    ds_read_b128 v[72:75], v23 offset:23168
    v_mfma_f32_16x16x16_bf16 a[120:123], a[108:109], v[82:83], a[120:123]
    v_mfma_f32_16x16x16_bf16 a[124:127], a[110:111], v[82:83], a[124:127]
    ds_write_b32 v19, v104 offset:13056
    v_mfma_f32_16x16x16_bf16 a[128:131], a[104:105], v[84:85], a[128:131]
    v_mfma_f32_16x16x16_bf16 a[132:135], a[106:107], v[84:85], a[132:135]
    ds_write_b32 v19, v105 offset:14112
    v_mfma_f32_16x16x16_bf16 a[136:139], a[108:109], v[84:85], a[136:139]
    global_atomic_pk_add_bf16 v12, v159, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[140:143], a[110:111], v[84:85], a[140:143]
    ds_write_b32 v19, v106 offset:15232
    v_mfma_f32_16x16x16_bf16 a[144:147], a[104:105], v[86:87], a[144:147]
    v_mfma_f32_16x16x16_bf16 a[148:151], a[106:107], v[86:87], a[148:151]
    ds_write_b32 v19, v107 offset:16288
    v_mfma_f32_16x16x16_bf16 a[152:155], a[108:109], v[86:87], a[152:155]
    v_mfma_f32_16x16x16_bf16 a[156:159], a[110:111], v[86:87], a[156:159]
    s_waitcnt vmcnt(4) lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[148:151], a[24:25], v[52:53], 0
    v_mul_f32_e32 v140, s49, v140
    v_mul_f32_e32 v144, s49, v144
    s_nop 0
    v_mfma_f32_16x16x16_bf16 v[148:151], a[28:29], v[54:55], v[148:151]
    ds_read_b128 a[96:99], v16
    buffer_load_dword v36, v1, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[32:33], v[56:57], v[148:151]
    v_mfma_f32_16x16x16_bf16 v[148:151], a[36:37], v[58:59], v[148:151]
    ds_read_b128 a[100:103], v16 offset:512
    buffer_load_dword v37, v2, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[40:41], v[60:61], v[148:151]
    v_perm_b32 v100, v41, v40, s63
    v_perm_b32 v101, v41, v40, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[44:45], v[62:63], v[148:151]
    ds_read_b128 a[104:107], v16 offset:2176
    buffer_load_dword v38, v3, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[48:49], v[64:65], v[148:151]
    v_perm_b32 v102, v43, v42, s63
    v_perm_b32 v103, v43, v42, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[52:53], v[66:67], v[148:151]
    ds_read_b128 a[108:111], v16 offset:2688
    buffer_load_dword v39, v4, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[56:57], v[68:69], v[148:151]
    v_perm_b32 v104, v49, v48, s63
    v_perm_b32 v105, v49, v48, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[60:61], v[70:71], v[148:151]
    ds_read_b128 v[108:111], v16 offset:8704
    buffer_load_dword v44, v1, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[64:65], v[72:73], v[148:151]
    v_perm_b32 v106, v51, v50, s63
    v_perm_b32 v107, v51, v50, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[68:69], v[74:75], v[148:151]
    ds_read_b128 v[112:115], v16 offset:9216
    buffer_load_dword v45, v2, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[26:27], v[52:53], 0
    v_mov_b32_dpp v143, v140 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v142, v140 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v141, v140 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v140, v140 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[152:155], a[30:31], v[54:55], v[152:155]
    ds_read_b128 v[116:119], v16 offset:10880
    buffer_load_dword v46, v3, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[34:35], v[56:57], v[152:155]
    v_mov_b32_dpp v147, v144 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v146, v144 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v145, v144 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v144, v144 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    s_add_u32 s60, 0x80, s59
    v_mfma_f32_16x16x16_bf16 v[152:155], a[38:39], v[58:59], v[152:155]
    ds_read_b128 v[120:123], v16 offset:11392
    buffer_load_dword v47, v4, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[42:43], v[60:61], v[152:155]
    s_cmp_lt_u32 s60, s58
    s_cselect_b32 s68, s68, 0
    s_cselect_b32 s69, s69, 0
    v_mfma_f32_16x16x16_bf16 v[152:155], a[46:47], v[62:63], v[152:155]
    buffer_load_dword v15, s[24:27], 0 idxen lds
    v_mfma_f32_16x16x16_bf16 v[152:155], a[50:51], v[64:65], v[152:155]
    s_add_u32 s8, s68, s8
    s_addc_u32 s9, 0, s9
    v_mfma_f32_16x16x16_bf16 v[152:155], a[54:55], v[66:67], v[152:155]
    s_add_u32 s20, s68, s20
    s_addc_u32 s21, 0, s21
    v_mfma_f32_16x16x16_bf16 v[152:155], a[58:59], v[68:69], v[152:155]
    s_mov_b32 m0, s81
    v_add_u32_e32 v15, s69, v15
    v_mfma_f32_16x16x16_bf16 v[152:155], a[62:63], v[70:71], v[152:155]
    s_cmp_ge_u32 s59, s73
    s_cselect_b32 s66, s67, s66
    v_mfma_f32_16x16x16_bf16 v[152:155], a[66:67], v[72:73], v[152:155]
    s_addk_i32 s59, 0x20
    s_nop 0
    s_cmp_lt_i32 s59, s58
    v_mfma_f32_16x16x16_bf16 v[152:155], a[70:71], v[74:75], v[152:155]
    s_cbranch_scc0 label_0D14
    s_branch label_05B5
label_0D14:
    s_nop 0
    s_nop 0
    s_branch label_1476
label_0D17:
    s_waitcnt lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[52:55], a[96:97], a[0:1], 0
    v_mul_f32_e32 v148, s48, v148
    v_mul_f32_e32 v149, s48, v149
    v_mfma_f32_16x16x16_bf16 v[52:55], a[98:99], a[2:3], v[52:55]
    ds_write_b32 v17, v48 offset:8704
    ds_write_b32 v17, v49 offset:9760
    v_mfma_f32_16x16x16_bf16 v[52:55], a[100:101], a[4:5], v[52:55]
    v_mul_f32_e32 v150, s48, v150
    v_mul_f32_e32 v151, s48, v151
    v_mfma_f32_16x16x16_bf16 v[52:55], a[102:103], a[6:7], v[52:55]
    ds_write_b32 v17, v50 offset:10880
    ds_write_b32 v17, v51 offset:11936
    v_mfma_f32_16x16x16_bf16 v[56:59], a[96:97], a[8:9], 0
    v_mul_f32_e32 v152, s48, v152
    v_mul_f32_e32 v153, s48, v153
    v_mfma_f32_16x16x16_bf16 v[56:59], a[98:99], a[10:11], v[56:59]
    v_mul_f32_e32 v154, s48, v154
    v_mul_f32_e32 v155, s48, v155
    v_mfma_f32_16x16x16_bf16 v[56:59], a[100:101], a[12:13], v[56:59]
    v_perm_b32 v148, v149, v148, s64
    v_perm_b32 v149, v151, v150, s64
    v_mfma_f32_16x16x16_bf16 v[56:59], a[102:103], a[14:15], v[56:59]
    v_perm_b32 v150, v153, v152, s64
    v_perm_b32 v151, v155, v154, s64
    v_mfma_f32_16x16x16_bf16 v[60:63], a[96:97], a[16:17], 0
    v_mfma_f32_16x16x16_bf16 v[60:63], a[98:99], a[18:19], v[60:63]
    ds_write_b64 v26, v[148:149] offset:31232
    v_mfma_f32_16x16x16_bf16 v[60:63], a[100:101], a[20:21], v[60:63]
    v_mfma_f32_16x16x16_bf16 v[60:63], a[102:103], a[22:23], v[60:63]
    ds_write_b64 v26, v[150:151] offset:31776
    v_mfma_f32_16x16x16_bf16 v[64:67], a[104:105], a[0:1], 0
    v_mfma_f32_16x16x16_bf16 v[64:67], a[106:107], a[2:3], v[64:67]
    ds_read_b128 v[124:127], v18 offset:13056
    ds_write_b32 v17, v40
    v_mfma_f32_16x16x16_bf16 v[64:67], a[108:109], a[4:5], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[110:111], a[6:7], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[104:105], a[8:9], 0
    ds_read_b128 v[128:131], v18 offset:13568
    ds_write_b32 v17, v41 offset:1056
    v_mfma_f32_16x16x16_bf16 v[68:71], a[106:107], a[10:11], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[108:109], a[12:13], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[110:111], a[14:15], v[68:71]
    ds_read_b128 v[132:135], v18 offset:15232
    ds_write_b32 v17, v42 offset:2176
    v_mfma_f32_16x16x16_bf16 v[72:75], a[104:105], a[16:17], 0
    v_mfma_f32_16x16x16_bf16 v[72:75], a[106:107], a[18:19], v[72:75]
    v_mfma_f32_16x16x16_bf16 v[72:75], a[108:109], a[20:21], v[72:75]
    ds_read_b128 v[136:139], v18 offset:15744
    ds_write_b32 v17, v43 offset:3232
    v_mfma_f32_16x16x16_bf16 v[72:75], a[110:111], a[22:23], v[72:75]
    s_cmp_lt_i32 s74, 12
    s_cbranch_scc0 label_0E5D
    s_mov_b32 s60, 0xffe0fffe
    s_mov_b32 s61, 0xe000fe00
    s_nop 0
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0DA7
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0D8C
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0DC7
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0DAC
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0DE7
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0DCC
    s_branch label_0DEC
label_0D8C:
    v_cndmask_b32_e64 v52, v52, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v53, v53, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v54, v54, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v55, v55, v178, s[60:61]
    s_branch label_0DC7
label_0DA7:
    v_mov_b32_e32 v52, v178
    v_mov_b32_e32 v53, v178
    v_mov_b32_e32 v54, v178
    v_mov_b32_e32 v55, v178
    s_branch label_0DC7
label_0DAC:
    v_cndmask_b32_e64 v56, v56, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v57, v57, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v58, v58, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v59, v59, v178, s[60:61]
    s_branch label_0DE7
label_0DC7:
    v_mov_b32_e32 v56, v178
    v_mov_b32_e32 v57, v178
    v_mov_b32_e32 v58, v178
    v_mov_b32_e32 v59, v178
    s_branch label_0DE7
label_0DCC:
    v_cndmask_b32_e64 v60, v60, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v61, v61, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v62, v62, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v63, v63, v178, s[60:61]
    s_branch label_0DEC
label_0DE7:
    v_mov_b32_e32 v60, v178
    v_mov_b32_e32 v61, v178
    v_mov_b32_e32 v62, v178
    v_mov_b32_e32 v63, v178
    s_branch label_0DEC
label_0DEC:
    s_addk_i32 s74, 0x1
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0E18
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0DFD
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0E38
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0E1D
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_0E58
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_0E3D
    s_branch label_0E5D
label_0DFD:
    v_cndmask_b32_e64 v64, v64, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v65, v65, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v66, v66, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v67, v67, v178, s[60:61]
    s_branch label_0E38
label_0E18:
    v_mov_b32_e32 v64, v178
    v_mov_b32_e32 v65, v178
    v_mov_b32_e32 v66, v178
    v_mov_b32_e32 v67, v178
    s_branch label_0E38
label_0E1D:
    v_cndmask_b32_e64 v68, v68, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v69, v69, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v70, v70, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v71, v71, v178, s[60:61]
    s_branch label_0E58
label_0E38:
    v_mov_b32_e32 v68, v178
    v_mov_b32_e32 v69, v178
    v_mov_b32_e32 v70, v178
    v_mov_b32_e32 v71, v178
    s_branch label_0E58
label_0E3D:
    v_cndmask_b32_e64 v72, v72, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v73, v73, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v74, v74, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v75, v75, v178, s[60:61]
    s_branch label_0E5D
label_0E58:
    v_mov_b32_e32 v72, v178
    v_mov_b32_e32 v73, v178
    v_mov_b32_e32 v74, v178
    v_mov_b32_e32 v75, v178
    s_branch label_0E5D
label_0E5D:
    s_addk_i32 s74, 0x1
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[76:79], v[108:109], a[72:73], 0
    v_fma_f32 v52, v52, s57, -v140
    v_fma_f32 v53, v53, s57, -v141
    v_fma_f32 v54, v54, s57, -v142
    v_fma_f32 v55, v55, s57, -v143
    v_fma_f32 v56, v56, s57, -v140
    v_fma_f32 v57, v57, s57, -v141
    v_mfma_f32_16x16x16_bf16 v[76:79], v[110:111], a[74:75], v[76:79]
    ds_read_b128 a[96:99], v18 offset:4352
    ds_read_b128 a[100:103], v18 offset:4864
    v_mfma_f32_16x16x16_bf16 v[76:79], v[112:113], a[76:77], v[76:79]
    v_fma_f32 v58, v58, s57, -v142
    v_fma_f32 v59, v59, s57, -v143
    v_fma_f32 v60, v60, s57, -v140
    v_fma_f32 v61, v61, s57, -v141
    v_fma_f32 v62, v62, s57, -v142
    v_fma_f32 v63, v63, s57, -v143
    v_mfma_f32_16x16x16_bf16 v[76:79], v[114:115], a[78:79], v[76:79]
    v_fma_f32 v64, v64, s57, -v144
    v_fma_f32 v65, v65, s57, -v145
    v_fma_f32 v66, v66, s57, -v146
    v_fma_f32 v67, v67, s57, -v147
    v_fma_f32 v68, v68, s57, -v144
    v_fma_f32 v69, v69, s57, -v145
    v_mfma_f32_16x16x16_bf16 v[80:83], v[108:109], a[80:81], 0
    v_fma_f32 v70, v70, s57, -v146
    v_fma_f32 v71, v71, s57, -v147
    v_fma_f32 v72, v72, s57, -v144
    v_fma_f32 v73, v73, s57, -v145
    v_fma_f32 v74, v74, s57, -v146
    v_fma_f32 v75, v75, s57, -v147
    v_mfma_f32_16x16x16_bf16 v[80:83], v[110:111], a[82:83], v[80:83]
    ds_read_b128 a[104:107], v18 offset:6528
    ds_read_b128 a[108:111], v18 offset:7040
    v_mfma_f32_16x16x16_bf16 v[80:83], v[112:113], a[84:85], v[80:83]
    v_exp_f32_e32 v52, v52
    v_exp_f32_e32 v53, v53
    v_mfma_f32_16x16x16_bf16 v[80:83], v[114:115], a[86:87], v[80:83]
    v_exp_f32_e32 v54, v54
    v_exp_f32_e32 v55, v55
    v_mfma_f32_16x16x16_bf16 v[84:87], v[108:109], a[88:89], 0
    v_exp_f32_e32 v56, v56
    v_exp_f32_e32 v57, v57
    v_mfma_f32_16x16x16_bf16 v[84:87], v[110:111], a[90:91], v[84:87]
    ds_read_b32 v156, v25 offset:31232
    ds_read_b32 v157, v25 offset:31248
    v_mfma_f32_16x16x16_bf16 v[84:87], v[112:113], a[92:93], v[84:87]
    v_exp_f32_e32 v58, v58
    v_exp_f32_e32 v59, v59
    v_mfma_f32_16x16x16_bf16 v[84:87], v[114:115], a[94:95], v[84:87]
    ds_read_b32 v158, v25 offset:31264
    ds_read_b32 v159, v25 offset:31280
    v_mfma_f32_16x16x16_bf16 v[88:91], v[116:117], a[72:73], 0
    v_exp_f32_e32 v60, v60
    v_exp_f32_e32 v61, v61
    v_mfma_f32_16x16x16_bf16 v[88:91], v[118:119], a[74:75], v[88:91]
    v_exp_f32_e32 v62, v62
    v_exp_f32_e32 v63, v63
    v_mfma_f32_16x16x16_bf16 v[88:91], v[120:121], a[76:77], v[88:91]
    v_exp_f32_e32 v64, v64
    v_exp_f32_e32 v65, v65
    v_mfma_f32_16x16x16_bf16 v[88:91], v[122:123], a[78:79], v[88:91]
    v_exp_f32_e32 v66, v66
    v_exp_f32_e32 v67, v67
    v_mfma_f32_16x16x16_bf16 v[92:95], v[116:117], a[80:81], 0
    v_exp_f32_e32 v68, v68
    v_exp_f32_e32 v69, v69
    v_mfma_f32_16x16x16_bf16 v[92:95], v[118:119], a[82:83], v[92:95]
    v_exp_f32_e32 v70, v70
    v_exp_f32_e32 v71, v71
    v_mfma_f32_16x16x16_bf16 v[92:95], v[120:121], a[84:85], v[92:95]
    v_exp_f32_e32 v72, v72
    v_exp_f32_e32 v73, v73
    v_mfma_f32_16x16x16_bf16 v[92:95], v[122:123], a[86:87], v[92:95]
    v_exp_f32_e32 v74, v74
    v_exp_f32_e32 v75, v75
    v_mfma_f32_16x16x16_bf16 v[96:99], v[116:117], a[88:89], 0
    v_perm_b32 v164, v53, v52, s64
    v_perm_b32 v165, v55, v54, s64
    v_perm_b32 v166, v57, v56, s64
    v_perm_b32 v167, v59, v58, s64
    v_perm_b32 v168, v61, v60, s64
    v_perm_b32 v169, v63, v62, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[118:119], a[90:91], v[96:99]
    v_perm_b32 v170, v65, v64, s64
    v_perm_b32 v171, v67, v66, s64
    v_perm_b32 v172, v69, v68, s64
    v_perm_b32 v173, v71, v70, s64
    v_perm_b32 v174, v73, v72, s64
    v_perm_b32 v175, v75, v74, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[120:121], a[92:93], v[96:99]
    s_add_u32 s32, s66, s32
    s_addc_u32 s33, 0, s33
    v_mfma_f32_16x16x16_bf16 v[96:99], v[122:123], a[94:95], v[96:99]
    s_waitcnt lgkmcnt(0)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[180:183], v[124:125], v[164:165], v[180:183]
    v_subrev_f32_dpp v76, v176, v76 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v77, v176, v77 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v78, v176, v78 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v79, v176, v79 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v80, v176, v80 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v81, v176, v81 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[184:187], v[126:127], v[164:165], v[184:187]
    v_subrev_f32_dpp v82, v176, v82 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v83, v176, v83 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v84, v176, v84 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v85, v176, v85 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v86, v176, v86 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v87, v176, v87 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[188:191], v[128:129], v[164:165], v[188:191]
    v_mul_f32_e32 v76, v52, v76
    v_mul_f32_e32 v77, v53, v77
    v_mul_f32_e32 v78, v54, v78
    v_mul_f32_e32 v79, v55, v79
    v_mul_f32_e32 v80, v56, v80
    v_mul_f32_e32 v81, v57, v81
    v_mfma_f32_16x16x16_bf16 v[192:195], v[130:131], v[164:165], v[192:195]
    v_mul_f32_e32 v82, v58, v82
    v_mul_f32_e32 v83, v59, v83
    v_mul_f32_e32 v84, v60, v84
    v_mul_f32_e32 v85, v61, v85
    v_mul_f32_e32 v86, v62, v86
    v_mul_f32_e32 v87, v63, v87
    v_mfma_f32_16x16x16_bf16 v[196:199], v[124:125], v[166:167], v[196:199]
    v_perm_b32 v76, v77, v76, s64
    v_perm_b32 v77, v79, v78, s64
    v_perm_b32 v78, v81, v80, s64
    v_perm_b32 v79, v83, v82, s64
    v_perm_b32 v80, v85, v84, s64
    v_perm_b32 v81, v87, v86, s64
    v_mfma_f32_16x16x16_bf16 v[200:203], v[126:127], v[166:167], v[200:203]
    v_mov_b32_dpp v22, v76 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v52, v22, v76, v21
    v_mov_b32_dpp v22, v77 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v53, v22, v77, v21
    v_mov_b32_dpp v22, v78 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v54, v22, v78, v21
    v_mfma_f32_16x16x16_bf16 v[204:207], v[128:129], v[166:167], v[204:207]
    ds_write_b32 v24, v52 offset:17408
    ds_write_b32 v24, v53 offset:17952
    v_mfma_f32_16x16x16_bf16 v[208:211], v[130:131], v[166:167], v[208:211]
    v_mov_b32_dpp v22, v79 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v55, v22, v79, v21
    v_mov_b32_dpp v22, v80 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v56, v22, v80, v21
    v_mov_b32_dpp v22, v81 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v57, v22, v81, v21
    v_mfma_f32_16x16x16_bf16 v[212:215], v[124:125], v[168:169], v[212:215]
    ds_write_b32 v24, v54 offset:19712
    ds_write_b32 v24, v55 offset:20256
    v_mfma_f32_16x16x16_bf16 v[216:219], v[126:127], v[168:169], v[216:219]
    v_subrev_f32_dpp v88, v177, v88 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v89, v177, v89 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v90, v177, v90 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v91, v177, v91 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v92, v177, v92 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v93, v177, v93 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[220:223], v[128:129], v[168:169], v[220:223]
    ds_write_b32 v24, v56 offset:22016
    ds_write_b32 v24, v57 offset:22560
    v_mfma_f32_16x16x16_bf16 v[224:227], v[130:131], v[168:169], v[224:227]
    v_subrev_f32_dpp v94, v177, v94 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v95, v177, v95 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v96, v177, v96 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v97, v177, v97 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v98, v177, v98 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v99, v177, v99 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[180:183], v[132:133], v[170:171], v[180:183]
    v_mul_f32_e32 v88, v64, v88
    v_mul_f32_e32 v89, v65, v89
    v_mul_f32_e32 v90, v66, v90
    v_mul_f32_e32 v91, v67, v91
    v_mul_f32_e32 v92, v68, v92
    v_mul_f32_e32 v93, v69, v93
    v_mfma_f32_16x16x16_bf16 v[184:187], v[134:135], v[170:171], v[184:187]
    v_mul_f32_e32 v94, v70, v94
    v_mul_f32_e32 v95, v71, v95
    v_mul_f32_e32 v96, v72, v96
    v_mul_f32_e32 v97, v73, v97
    v_mul_f32_e32 v98, v74, v98
    v_mul_f32_e32 v99, v75, v99
    v_mfma_f32_16x16x16_bf16 v[188:191], v[136:137], v[170:171], v[188:191]
    v_perm_b32 v82, v89, v88, s64
    v_perm_b32 v83, v91, v90, s64
    v_perm_b32 v84, v93, v92, s64
    v_perm_b32 v85, v95, v94, s64
    v_perm_b32 v86, v97, v96, s64
    v_perm_b32 v87, v99, v98, s64
    v_mfma_f32_16x16x16_bf16 v[192:195], v[138:139], v[170:171], v[192:195]
    v_mov_b32_dpp v22, v82 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v58, v22, v82, v21
    v_mov_b32_dpp v22, v83 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v59, v22, v83, v21
    v_mov_b32_dpp v22, v84 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v60, v22, v84, v21
    v_mfma_f32_16x16x16_bf16 v[196:199], v[132:133], v[172:173], v[196:199]
    ds_write_b32 v24, v58 offset:24320
    ds_write_b32 v24, v59 offset:24864
    v_mfma_f32_16x16x16_bf16 v[200:203], v[134:135], v[172:173], v[200:203]
    v_mov_b32_dpp v22, v85 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v61, v22, v85, v21
    v_mov_b32_dpp v22, v86 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v62, v22, v86, v21
    v_mov_b32_dpp v22, v87 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v63, v22, v87, v21
    v_mfma_f32_16x16x16_bf16 v[204:207], v[136:137], v[172:173], v[204:207]
    ds_write_b32 v24, v60 offset:26624
    ds_write_b32 v24, v61 offset:27168
    ds_write_b32 v24, v62 offset:28928
    ds_write_b32 v24, v63 offset:29472
    v_mfma_f32_16x16x16_bf16 v[208:211], v[138:139], v[172:173], v[208:211]
    v_mfma_f32_16x16x16_bf16 v[212:215], v[132:133], v[174:175], v[212:215]
    ds_write_b32 v19, v100 offset:4352
    ds_write_b32 v19, v101 offset:5408
    v_mfma_f32_16x16x16_bf16 v[216:219], v[134:135], v[174:175], v[216:219]
    v_mfma_f32_16x16x16_bf16 v[220:223], v[136:137], v[174:175], v[220:223]
    ds_write_b32 v19, v102 offset:6528
    ds_write_b32 v19, v103 offset:7584
    v_mfma_f32_16x16x16_bf16 v[224:227], v[138:139], v[174:175], v[224:227]
    s_nop 0
    s_nop 0
    s_nop 0
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[112:115], a[96:97], v[76:77], a[112:115]
    ds_read_b32 v140, v27 offset:36096
    ds_read_b32 v144, v27 offset:36160
    ds_read_b32 v176, v27 offset:36352
    ds_read_b32 v177, v27 offset:36416
    v_mfma_f32_16x16x16_bf16 a[116:119], a[98:99], v[76:77], a[116:119]
    global_atomic_pk_add_bf16 v6, v156, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[120:123], a[100:101], v[76:77], a[120:123]
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[124:127], a[102:103], v[76:77], a[124:127]
    v_mfma_f32_16x16x16_bf16 a[128:131], a[96:97], v[78:79], a[128:131]
    ds_read_b128 v[52:55], v23 offset:17408
    v_mfma_f32_16x16x16_bf16 a[132:135], a[98:99], v[78:79], a[132:135]
    v_mfma_f32_16x16x16_bf16 a[136:139], a[100:101], v[78:79], a[136:139]
    ds_read_b128 v[56:59], v23 offset:18560
    v_mfma_f32_16x16x16_bf16 a[140:143], a[102:103], v[78:79], a[140:143]
    global_atomic_pk_add_bf16 v8, v157, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[144:147], a[96:97], v[80:81], a[144:147]
    ds_read_b128 v[60:63], v23 offset:19712
    v_mfma_f32_16x16x16_bf16 a[148:151], a[98:99], v[80:81], a[148:151]
    v_mfma_f32_16x16x16_bf16 a[152:155], a[100:101], v[80:81], a[152:155]
    ds_read_b128 v[64:67], v23 offset:20864
    v_mfma_f32_16x16x16_bf16 a[156:159], a[102:103], v[80:81], a[156:159]
    v_mfma_f32_16x16x16_bf16 a[112:115], a[104:105], v[82:83], a[112:115]
    ds_read_b128 v[68:71], v23 offset:22016
    v_mfma_f32_16x16x16_bf16 a[116:119], a[106:107], v[82:83], a[116:119]
    global_atomic_pk_add_bf16 v10, v158, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[120:123], a[108:109], v[82:83], a[120:123]
    ds_read_b128 v[72:75], v23 offset:23168
    v_mfma_f32_16x16x16_bf16 a[124:127], a[110:111], v[82:83], a[124:127]
    v_mfma_f32_16x16x16_bf16 a[128:131], a[104:105], v[84:85], a[128:131]
    ds_write_b32 v19, v104 offset:13056
    v_mfma_f32_16x16x16_bf16 a[132:135], a[106:107], v[84:85], a[132:135]
    v_mfma_f32_16x16x16_bf16 a[136:139], a[108:109], v[84:85], a[136:139]
    ds_write_b32 v19, v105 offset:14112
    v_mfma_f32_16x16x16_bf16 a[140:143], a[110:111], v[84:85], a[140:143]
    global_atomic_pk_add_bf16 v12, v159, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[144:147], a[104:105], v[86:87], a[144:147]
    ds_write_b32 v19, v106 offset:15232
    v_mfma_f32_16x16x16_bf16 a[148:151], a[106:107], v[86:87], a[148:151]
    v_mfma_f32_16x16x16_bf16 a[152:155], a[108:109], v[86:87], a[152:155]
    ds_write_b32 v19, v107 offset:16288
    v_mfma_f32_16x16x16_bf16 a[156:159], a[110:111], v[86:87], a[156:159]
    s_waitcnt vmcnt(4) lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[148:151], a[24:25], v[52:53], 0
    ds_read_b128 a[96:99], v16
    buffer_load_dword v40, v1, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[28:29], v[54:55], v[148:151]
    v_mul_f32_e32 v140, s49, v140
    v_mul_f32_e32 v144, s49, v144
    s_nop 0
    v_mfma_f32_16x16x16_bf16 v[148:151], a[32:33], v[56:57], v[148:151]
    ds_read_b128 a[100:103], v16 offset:512
    buffer_load_dword v41, v2, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[36:37], v[58:59], v[148:151]
    v_mfma_f32_16x16x16_bf16 v[148:151], a[40:41], v[60:61], v[148:151]
    ds_read_b128 a[104:107], v16 offset:2176
    buffer_load_dword v42, v3, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[44:45], v[62:63], v[148:151]
    v_perm_b32 v100, v37, v36, s63
    v_perm_b32 v101, v37, v36, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[48:49], v[64:65], v[148:151]
    ds_read_b128 a[108:111], v16 offset:2688
    buffer_load_dword v43, v4, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[52:53], v[66:67], v[148:151]
    v_perm_b32 v102, v39, v38, s63
    v_perm_b32 v103, v39, v38, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[56:57], v[68:69], v[148:151]
    ds_read_b128 v[108:111], v16 offset:8704
    buffer_load_dword v48, v1, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[60:61], v[70:71], v[148:151]
    v_perm_b32 v104, v45, v44, s63
    v_perm_b32 v105, v45, v44, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[64:65], v[72:73], v[148:151]
    ds_read_b128 v[112:115], v16 offset:9216
    buffer_load_dword v49, v2, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[68:69], v[74:75], v[148:151]
    v_perm_b32 v106, v47, v46, s63
    v_perm_b32 v107, v47, v46, s64
    v_mfma_f32_16x16x16_bf16 v[152:155], a[26:27], v[52:53], 0
    ds_read_b128 v[116:119], v16 offset:10880
    buffer_load_dword v50, v3, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[30:31], v[54:55], v[152:155]
    v_mov_b32_dpp v143, v140 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v142, v140 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v141, v140 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v140, v140 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[152:155], a[34:35], v[56:57], v[152:155]
    ds_read_b128 v[120:123], v16 offset:11392
    buffer_load_dword v51, v4, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[38:39], v[58:59], v[152:155]
    v_mov_b32_dpp v147, v144 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v146, v144 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v145, v144 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v144, v144 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    s_add_u32 s60, 0x80, s59
    v_mfma_f32_16x16x16_bf16 v[152:155], a[42:43], v[60:61], v[152:155]
    buffer_load_dword v15, s[24:27], 0 idxen lds
    v_mfma_f32_16x16x16_bf16 v[152:155], a[46:47], v[62:63], v[152:155]
    s_cmp_lt_u32 s60, s58
    s_cselect_b32 s68, s68, 0
    s_cselect_b32 s69, s69, 0
    v_mfma_f32_16x16x16_bf16 v[152:155], a[50:51], v[64:65], v[152:155]
    s_add_u32 s8, s68, s8
    s_addc_u32 s9, 0, s9
    v_mfma_f32_16x16x16_bf16 v[152:155], a[54:55], v[66:67], v[152:155]
    s_add_u32 s20, s68, s20
    s_addc_u32 s21, 0, s21
    v_mfma_f32_16x16x16_bf16 v[152:155], a[58:59], v[68:69], v[152:155]
    s_mov_b32 m0, s80
    v_add_u32_e32 v15, s69, v15
    v_mfma_f32_16x16x16_bf16 v[152:155], a[62:63], v[70:71], v[152:155]
    s_cmp_ge_u32 s59, s73
    s_cselect_b32 s66, s67, s66
    v_mfma_f32_16x16x16_bf16 v[152:155], a[66:67], v[72:73], v[152:155]
    s_addk_i32 s59, 0x20
    s_nop 0
    s_cmp_lt_i32 s59, s58
    v_mfma_f32_16x16x16_bf16 v[152:155], a[70:71], v[74:75], v[152:155]
    s_cbranch_scc0 label_0D14
    s_waitcnt lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[52:55], a[96:97], a[0:1], 0
    v_mul_f32_e32 v148, s48, v148
    v_mul_f32_e32 v149, s48, v149
    v_mfma_f32_16x16x16_bf16 v[52:55], a[98:99], a[2:3], v[52:55]
    ds_write_b32 v17, v44 offset:8704
    ds_write_b32 v17, v45 offset:9760
    v_mfma_f32_16x16x16_bf16 v[52:55], a[100:101], a[4:5], v[52:55]
    v_mul_f32_e32 v150, s48, v150
    v_mul_f32_e32 v151, s48, v151
    v_mfma_f32_16x16x16_bf16 v[52:55], a[102:103], a[6:7], v[52:55]
    ds_write_b32 v17, v46 offset:10880
    ds_write_b32 v17, v47 offset:11936
    v_mfma_f32_16x16x16_bf16 v[56:59], a[96:97], a[8:9], 0
    v_mul_f32_e32 v152, s48, v152
    v_mul_f32_e32 v153, s48, v153
    v_mfma_f32_16x16x16_bf16 v[56:59], a[98:99], a[10:11], v[56:59]
    v_mul_f32_e32 v154, s48, v154
    v_mul_f32_e32 v155, s48, v155
    v_mfma_f32_16x16x16_bf16 v[56:59], a[100:101], a[12:13], v[56:59]
    v_perm_b32 v148, v149, v148, s64
    v_perm_b32 v149, v151, v150, s64
    v_mfma_f32_16x16x16_bf16 v[56:59], a[102:103], a[14:15], v[56:59]
    v_perm_b32 v150, v153, v152, s64
    v_perm_b32 v151, v155, v154, s64
    v_mfma_f32_16x16x16_bf16 v[60:63], a[96:97], a[16:17], 0
    v_mfma_f32_16x16x16_bf16 v[60:63], a[98:99], a[18:19], v[60:63]
    ds_write_b64 v26, v[148:149] offset:31232
    v_mfma_f32_16x16x16_bf16 v[60:63], a[100:101], a[20:21], v[60:63]
    v_mfma_f32_16x16x16_bf16 v[60:63], a[102:103], a[22:23], v[60:63]
    ds_write_b64 v26, v[150:151] offset:31776
    v_mfma_f32_16x16x16_bf16 v[64:67], a[104:105], a[0:1], 0
    v_mfma_f32_16x16x16_bf16 v[64:67], a[106:107], a[2:3], v[64:67]
    ds_read_b128 v[124:127], v18 offset:13056
    ds_write_b32 v17, v36
    v_mfma_f32_16x16x16_bf16 v[64:67], a[108:109], a[4:5], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[64:67], a[110:111], a[6:7], v[64:67]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[104:105], a[8:9], 0
    ds_read_b128 v[128:131], v18 offset:13568
    ds_write_b32 v17, v37 offset:1056
    v_mfma_f32_16x16x16_bf16 v[68:71], a[106:107], a[10:11], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[108:109], a[12:13], v[68:71]
    v_mfma_f32_16x16x16_bf16 v[68:71], a[110:111], a[14:15], v[68:71]
    ds_read_b128 v[132:135], v18 offset:15232
    ds_write_b32 v17, v38 offset:2176
    v_mfma_f32_16x16x16_bf16 v[72:75], a[104:105], a[16:17], 0
    v_mfma_f32_16x16x16_bf16 v[72:75], a[106:107], a[18:19], v[72:75]
    v_mfma_f32_16x16x16_bf16 v[72:75], a[108:109], a[20:21], v[72:75]
    ds_read_b128 v[136:139], v18 offset:15744
    ds_write_b32 v17, v39 offset:3232
    v_mfma_f32_16x16x16_bf16 v[72:75], a[110:111], a[22:23], v[72:75]
    s_cmp_lt_i32 s74, 12
    s_cbranch_scc0 label_120C
    s_mov_b32 s60, 0xffe0fffe
    s_mov_b32 s61, 0xe000fe00
    s_nop 0
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_1156
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_113B
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_1176
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_115B
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_1196
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_117B
    s_branch label_119B
label_113B:
    v_cndmask_b32_e64 v52, v52, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v53, v53, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v54, v54, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v55, v55, v178, s[60:61]
    s_branch label_1176
label_1156:
    v_mov_b32_e32 v52, v178
    v_mov_b32_e32 v53, v178
    v_mov_b32_e32 v54, v178
    v_mov_b32_e32 v55, v178
    s_branch label_1176
label_115B:
    v_cndmask_b32_e64 v56, v56, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v57, v57, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v58, v58, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v59, v59, v178, s[60:61]
    s_branch label_1196
label_1176:
    v_mov_b32_e32 v56, v178
    v_mov_b32_e32 v57, v178
    v_mov_b32_e32 v58, v178
    v_mov_b32_e32 v59, v178
    s_branch label_1196
label_117B:
    v_cndmask_b32_e64 v60, v60, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v61, v61, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v62, v62, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v63, v63, v178, s[60:61]
    s_branch label_119B
label_1196:
    v_mov_b32_e32 v60, v178
    v_mov_b32_e32 v61, v178
    v_mov_b32_e32 v62, v178
    v_mov_b32_e32 v63, v178
    s_branch label_119B
label_119B:
    s_addk_i32 s74, 0x1
    s_add_u32 s62, 0, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_11C7
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_11AC
    s_add_u32 s62, 4, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_11E7
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_11CC
    s_add_u32 s62, 8, s47
    s_cmp_lt_i32 s74, s62
    s_cbranch_scc1 label_1207
    s_cmp_eq_i32 s74, s62
    s_cbranch_scc1 label_11EC
    s_branch label_120C
label_11AC:
    v_cndmask_b32_e64 v64, v64, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v65, v65, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v66, v66, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v67, v67, v178, s[60:61]
    s_branch label_11E7
label_11C7:
    v_mov_b32_e32 v64, v178
    v_mov_b32_e32 v65, v178
    v_mov_b32_e32 v66, v178
    v_mov_b32_e32 v67, v178
    s_branch label_11E7
label_11CC:
    v_cndmask_b32_e64 v68, v68, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v69, v69, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v70, v70, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v71, v71, v178, s[60:61]
    s_branch label_1207
label_11E7:
    v_mov_b32_e32 v68, v178
    v_mov_b32_e32 v69, v178
    v_mov_b32_e32 v70, v178
    v_mov_b32_e32 v71, v178
    s_branch label_1207
label_11EC:
    v_cndmask_b32_e64 v72, v72, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v73, v73, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v74, v74, v178, s[60:61]
    s_lshl_b32 s60, s60, 1
    s_lshl_b32 s61, s61, 1
    s_and_b32 s60, 0xfffeffff, s60
    s_and_b32 s61, 0xfffeffff, s61
    v_cndmask_b32_e64 v75, v75, v178, s[60:61]
    s_branch label_120C
label_1207:
    v_mov_b32_e32 v72, v178
    v_mov_b32_e32 v73, v178
    v_mov_b32_e32 v74, v178
    v_mov_b32_e32 v75, v178
    s_branch label_120C
label_120C:
    s_addk_i32 s74, 0x1
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[76:79], v[108:109], a[72:73], 0
    v_fma_f32 v52, v52, s57, -v140
    v_fma_f32 v53, v53, s57, -v141
    v_fma_f32 v54, v54, s57, -v142
    v_fma_f32 v55, v55, s57, -v143
    v_fma_f32 v56, v56, s57, -v140
    v_fma_f32 v57, v57, s57, -v141
    v_mfma_f32_16x16x16_bf16 v[76:79], v[110:111], a[74:75], v[76:79]
    ds_read_b128 a[96:99], v18 offset:4352
    ds_read_b128 a[100:103], v18 offset:4864
    v_mfma_f32_16x16x16_bf16 v[76:79], v[112:113], a[76:77], v[76:79]
    v_fma_f32 v58, v58, s57, -v142
    v_fma_f32 v59, v59, s57, -v143
    v_fma_f32 v60, v60, s57, -v140
    v_fma_f32 v61, v61, s57, -v141
    v_fma_f32 v62, v62, s57, -v142
    v_fma_f32 v63, v63, s57, -v143
    v_mfma_f32_16x16x16_bf16 v[76:79], v[114:115], a[78:79], v[76:79]
    v_fma_f32 v64, v64, s57, -v144
    v_fma_f32 v65, v65, s57, -v145
    v_fma_f32 v66, v66, s57, -v146
    v_fma_f32 v67, v67, s57, -v147
    v_fma_f32 v68, v68, s57, -v144
    v_fma_f32 v69, v69, s57, -v145
    v_mfma_f32_16x16x16_bf16 v[80:83], v[108:109], a[80:81], 0
    v_fma_f32 v70, v70, s57, -v146
    v_fma_f32 v71, v71, s57, -v147
    v_fma_f32 v72, v72, s57, -v144
    v_fma_f32 v73, v73, s57, -v145
    v_fma_f32 v74, v74, s57, -v146
    v_fma_f32 v75, v75, s57, -v147
    v_mfma_f32_16x16x16_bf16 v[80:83], v[110:111], a[82:83], v[80:83]
    ds_read_b128 a[104:107], v18 offset:6528
    ds_read_b128 a[108:111], v18 offset:7040
    v_mfma_f32_16x16x16_bf16 v[80:83], v[112:113], a[84:85], v[80:83]
    v_exp_f32_e32 v52, v52
    v_exp_f32_e32 v53, v53
    v_mfma_f32_16x16x16_bf16 v[80:83], v[114:115], a[86:87], v[80:83]
    v_exp_f32_e32 v54, v54
    v_exp_f32_e32 v55, v55
    v_mfma_f32_16x16x16_bf16 v[84:87], v[108:109], a[88:89], 0
    v_exp_f32_e32 v56, v56
    v_exp_f32_e32 v57, v57
    v_mfma_f32_16x16x16_bf16 v[84:87], v[110:111], a[90:91], v[84:87]
    ds_read_b32 v156, v25 offset:31232
    ds_read_b32 v157, v25 offset:31248
    v_mfma_f32_16x16x16_bf16 v[84:87], v[112:113], a[92:93], v[84:87]
    v_exp_f32_e32 v58, v58
    v_exp_f32_e32 v59, v59
    v_mfma_f32_16x16x16_bf16 v[84:87], v[114:115], a[94:95], v[84:87]
    ds_read_b32 v158, v25 offset:31264
    ds_read_b32 v159, v25 offset:31280
    v_mfma_f32_16x16x16_bf16 v[88:91], v[116:117], a[72:73], 0
    v_exp_f32_e32 v60, v60
    v_exp_f32_e32 v61, v61
    v_mfma_f32_16x16x16_bf16 v[88:91], v[118:119], a[74:75], v[88:91]
    v_exp_f32_e32 v62, v62
    v_exp_f32_e32 v63, v63
    v_mfma_f32_16x16x16_bf16 v[88:91], v[120:121], a[76:77], v[88:91]
    v_exp_f32_e32 v64, v64
    v_exp_f32_e32 v65, v65
    v_mfma_f32_16x16x16_bf16 v[88:91], v[122:123], a[78:79], v[88:91]
    v_exp_f32_e32 v66, v66
    v_exp_f32_e32 v67, v67
    v_mfma_f32_16x16x16_bf16 v[92:95], v[116:117], a[80:81], 0
    v_exp_f32_e32 v68, v68
    v_exp_f32_e32 v69, v69
    v_mfma_f32_16x16x16_bf16 v[92:95], v[118:119], a[82:83], v[92:95]
    v_exp_f32_e32 v70, v70
    v_exp_f32_e32 v71, v71
    v_mfma_f32_16x16x16_bf16 v[92:95], v[120:121], a[84:85], v[92:95]
    v_exp_f32_e32 v72, v72
    v_exp_f32_e32 v73, v73
    v_mfma_f32_16x16x16_bf16 v[92:95], v[122:123], a[86:87], v[92:95]
    v_exp_f32_e32 v74, v74
    v_exp_f32_e32 v75, v75
    v_mfma_f32_16x16x16_bf16 v[96:99], v[116:117], a[88:89], 0
    v_perm_b32 v164, v53, v52, s64
    v_perm_b32 v165, v55, v54, s64
    v_perm_b32 v166, v57, v56, s64
    v_perm_b32 v167, v59, v58, s64
    v_perm_b32 v168, v61, v60, s64
    v_perm_b32 v169, v63, v62, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[118:119], a[90:91], v[96:99]
    v_perm_b32 v170, v65, v64, s64
    v_perm_b32 v171, v67, v66, s64
    v_perm_b32 v172, v69, v68, s64
    v_perm_b32 v173, v71, v70, s64
    v_perm_b32 v174, v73, v72, s64
    v_perm_b32 v175, v75, v74, s64
    v_mfma_f32_16x16x16_bf16 v[96:99], v[120:121], a[92:93], v[96:99]
    s_add_u32 s32, s66, s32
    s_addc_u32 s33, 0, s33
    v_mfma_f32_16x16x16_bf16 v[96:99], v[122:123], a[94:95], v[96:99]
    s_waitcnt lgkmcnt(0)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[180:183], v[124:125], v[164:165], v[180:183]
    v_subrev_f32_dpp v76, v176, v76 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v77, v176, v77 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v78, v176, v78 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v79, v176, v79 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v80, v176, v80 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v81, v176, v81 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[184:187], v[126:127], v[164:165], v[184:187]
    v_subrev_f32_dpp v82, v176, v82 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v83, v176, v83 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v84, v176, v84 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v85, v176, v85 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v86, v176, v86 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v87, v176, v87 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[188:191], v[128:129], v[164:165], v[188:191]
    v_mul_f32_e32 v76, v52, v76
    v_mul_f32_e32 v77, v53, v77
    v_mul_f32_e32 v78, v54, v78
    v_mul_f32_e32 v79, v55, v79
    v_mul_f32_e32 v80, v56, v80
    v_mul_f32_e32 v81, v57, v81
    v_mfma_f32_16x16x16_bf16 v[192:195], v[130:131], v[164:165], v[192:195]
    v_mul_f32_e32 v82, v58, v82
    v_mul_f32_e32 v83, v59, v83
    v_mul_f32_e32 v84, v60, v84
    v_mul_f32_e32 v85, v61, v85
    v_mul_f32_e32 v86, v62, v86
    v_mul_f32_e32 v87, v63, v87
    v_mfma_f32_16x16x16_bf16 v[196:199], v[124:125], v[166:167], v[196:199]
    v_perm_b32 v76, v77, v76, s64
    v_perm_b32 v77, v79, v78, s64
    v_perm_b32 v78, v81, v80, s64
    v_perm_b32 v79, v83, v82, s64
    v_perm_b32 v80, v85, v84, s64
    v_perm_b32 v81, v87, v86, s64
    v_mfma_f32_16x16x16_bf16 v[200:203], v[126:127], v[166:167], v[200:203]
    v_mov_b32_dpp v22, v76 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v52, v22, v76, v21
    v_mov_b32_dpp v22, v77 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v53, v22, v77, v21
    v_mov_b32_dpp v22, v78 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v54, v22, v78, v21
    v_mfma_f32_16x16x16_bf16 v[204:207], v[128:129], v[166:167], v[204:207]
    ds_write_b32 v24, v52 offset:17408
    ds_write_b32 v24, v53 offset:17952
    v_mfma_f32_16x16x16_bf16 v[208:211], v[130:131], v[166:167], v[208:211]
    v_mov_b32_dpp v22, v79 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v55, v22, v79, v21
    v_mov_b32_dpp v22, v80 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v56, v22, v80, v21
    v_mov_b32_dpp v22, v81 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v57, v22, v81, v21
    v_mfma_f32_16x16x16_bf16 v[212:215], v[124:125], v[168:169], v[212:215]
    ds_write_b32 v24, v54 offset:19712
    ds_write_b32 v24, v55 offset:20256
    v_mfma_f32_16x16x16_bf16 v[216:219], v[126:127], v[168:169], v[216:219]
    v_subrev_f32_dpp v88, v177, v88 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v89, v177, v89 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v90, v177, v90 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v91, v177, v91 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v92, v177, v92 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v93, v177, v93 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[220:223], v[128:129], v[168:169], v[220:223]
    ds_write_b32 v24, v56 offset:22016
    ds_write_b32 v24, v57 offset:22560
    v_mfma_f32_16x16x16_bf16 v[224:227], v[130:131], v[168:169], v[224:227]
    v_subrev_f32_dpp v94, v177, v94 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v95, v177, v95 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v96, v177, v96 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v97, v177, v97 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v98, v177, v98 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_subrev_f32_dpp v99, v177, v99 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[180:183], v[132:133], v[170:171], v[180:183]
    v_mul_f32_e32 v88, v64, v88
    v_mul_f32_e32 v89, v65, v89
    v_mul_f32_e32 v90, v66, v90
    v_mul_f32_e32 v91, v67, v91
    v_mul_f32_e32 v92, v68, v92
    v_mul_f32_e32 v93, v69, v93
    v_mfma_f32_16x16x16_bf16 v[184:187], v[134:135], v[170:171], v[184:187]
    v_mul_f32_e32 v94, v70, v94
    v_mul_f32_e32 v95, v71, v95
    v_mul_f32_e32 v96, v72, v96
    v_mul_f32_e32 v97, v73, v97
    v_mul_f32_e32 v98, v74, v98
    v_mul_f32_e32 v99, v75, v99
    v_mfma_f32_16x16x16_bf16 v[188:191], v[136:137], v[170:171], v[188:191]
    v_perm_b32 v82, v89, v88, s64
    v_perm_b32 v83, v91, v90, s64
    v_perm_b32 v84, v93, v92, s64
    v_perm_b32 v85, v95, v94, s64
    v_perm_b32 v86, v97, v96, s64
    v_perm_b32 v87, v99, v98, s64
    v_mfma_f32_16x16x16_bf16 v[192:195], v[138:139], v[170:171], v[192:195]
    v_mov_b32_dpp v22, v82 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v58, v22, v82, v21
    v_mov_b32_dpp v22, v83 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v59, v22, v83, v21
    v_mov_b32_dpp v22, v84 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v60, v22, v84, v21
    v_mfma_f32_16x16x16_bf16 v[196:199], v[132:133], v[172:173], v[196:199]
    ds_write_b32 v24, v58 offset:24320
    ds_write_b32 v24, v59 offset:24864
    v_mfma_f32_16x16x16_bf16 v[200:203], v[134:135], v[172:173], v[200:203]
    v_mov_b32_dpp v22, v85 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v61, v22, v85, v21
    v_mov_b32_dpp v22, v86 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v62, v22, v86, v21
    v_mov_b32_dpp v22, v87 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf
    v_perm_b32 v63, v22, v87, v21
    v_mfma_f32_16x16x16_bf16 v[204:207], v[136:137], v[172:173], v[204:207]
    ds_write_b32 v24, v60 offset:26624
    ds_write_b32 v24, v61 offset:27168
    ds_write_b32 v24, v62 offset:28928
    ds_write_b32 v24, v63 offset:29472
    v_mfma_f32_16x16x16_bf16 v[208:211], v[138:139], v[172:173], v[208:211]
    v_mfma_f32_16x16x16_bf16 v[212:215], v[132:133], v[174:175], v[212:215]
    ds_write_b32 v19, v100 offset:4352
    ds_write_b32 v19, v101 offset:5408
    v_mfma_f32_16x16x16_bf16 v[216:219], v[134:135], v[174:175], v[216:219]
    v_mfma_f32_16x16x16_bf16 v[220:223], v[136:137], v[174:175], v[220:223]
    ds_write_b32 v19, v102 offset:6528
    ds_write_b32 v19, v103 offset:7584
    v_mfma_f32_16x16x16_bf16 v[224:227], v[138:139], v[174:175], v[224:227]
    s_nop 0
    s_nop 0
    s_nop 0
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[112:115], a[96:97], v[76:77], a[112:115]
    ds_read_b32 v140, v27 offset:35584
    ds_read_b32 v144, v27 offset:35648
    ds_read_b32 v176, v27 offset:35840
    ds_read_b32 v177, v27 offset:35904
    v_mfma_f32_16x16x16_bf16 a[116:119], a[98:99], v[76:77], a[116:119]
    global_atomic_pk_add_bf16 v6, v156, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[120:123], a[100:101], v[76:77], a[120:123]
    s_waitcnt lgkmcnt(8)
    s_barrier
    v_mfma_f32_16x16x16_bf16 a[124:127], a[102:103], v[76:77], a[124:127]
    v_mfma_f32_16x16x16_bf16 a[128:131], a[96:97], v[78:79], a[128:131]
    ds_read_b128 v[52:55], v23 offset:17408
    v_mfma_f32_16x16x16_bf16 a[132:135], a[98:99], v[78:79], a[132:135]
    v_mfma_f32_16x16x16_bf16 a[136:139], a[100:101], v[78:79], a[136:139]
    ds_read_b128 v[56:59], v23 offset:18560
    v_mfma_f32_16x16x16_bf16 a[140:143], a[102:103], v[78:79], a[140:143]
    global_atomic_pk_add_bf16 v8, v157, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[144:147], a[96:97], v[80:81], a[144:147]
    ds_read_b128 v[60:63], v23 offset:19712
    v_mfma_f32_16x16x16_bf16 a[148:151], a[98:99], v[80:81], a[148:151]
    v_mfma_f32_16x16x16_bf16 a[152:155], a[100:101], v[80:81], a[152:155]
    ds_read_b128 v[64:67], v23 offset:20864
    v_mfma_f32_16x16x16_bf16 a[156:159], a[102:103], v[80:81], a[156:159]
    v_mfma_f32_16x16x16_bf16 a[112:115], a[104:105], v[82:83], a[112:115]
    ds_read_b128 v[68:71], v23 offset:22016
    v_mfma_f32_16x16x16_bf16 a[116:119], a[106:107], v[82:83], a[116:119]
    global_atomic_pk_add_bf16 v10, v158, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[120:123], a[108:109], v[82:83], a[120:123]
    ds_read_b128 v[72:75], v23 offset:23168
    v_mfma_f32_16x16x16_bf16 a[124:127], a[110:111], v[82:83], a[124:127]
    v_mfma_f32_16x16x16_bf16 a[128:131], a[104:105], v[84:85], a[128:131]
    ds_write_b32 v19, v104 offset:13056
    v_mfma_f32_16x16x16_bf16 a[132:135], a[106:107], v[84:85], a[132:135]
    v_mfma_f32_16x16x16_bf16 a[136:139], a[108:109], v[84:85], a[136:139]
    ds_write_b32 v19, v105 offset:14112
    v_mfma_f32_16x16x16_bf16 a[140:143], a[110:111], v[84:85], a[140:143]
    global_atomic_pk_add_bf16 v12, v159, s[32:33]
    v_mfma_f32_16x16x16_bf16 a[144:147], a[104:105], v[86:87], a[144:147]
    ds_write_b32 v19, v106 offset:15232
    v_mfma_f32_16x16x16_bf16 a[148:151], a[106:107], v[86:87], a[148:151]
    v_mfma_f32_16x16x16_bf16 a[152:155], a[108:109], v[86:87], a[152:155]
    ds_write_b32 v19, v107 offset:16288
    v_mfma_f32_16x16x16_bf16 a[156:159], a[110:111], v[86:87], a[156:159]
    s_waitcnt vmcnt(4) lgkmcnt(4)
    s_barrier
    v_mfma_f32_16x16x16_bf16 v[148:151], a[24:25], v[52:53], 0
    ds_read_b128 a[96:99], v16
    buffer_load_dword v36, v1, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[28:29], v[54:55], v[148:151]
    v_mul_f32_e32 v140, s49, v140
    v_mul_f32_e32 v144, s49, v144
    s_nop 0
    v_mfma_f32_16x16x16_bf16 v[148:151], a[32:33], v[56:57], v[148:151]
    ds_read_b128 a[100:103], v16 offset:512
    buffer_load_dword v37, v2, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[36:37], v[58:59], v[148:151]
    v_mfma_f32_16x16x16_bf16 v[148:151], a[40:41], v[60:61], v[148:151]
    ds_read_b128 a[104:107], v16 offset:2176
    buffer_load_dword v38, v3, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[44:45], v[62:63], v[148:151]
    v_perm_b32 v100, v41, v40, s63
    v_perm_b32 v101, v41, v40, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[48:49], v[64:65], v[148:151]
    ds_read_b128 a[108:111], v16 offset:2688
    buffer_load_dword v39, v4, s[8:11], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[52:53], v[66:67], v[148:151]
    v_perm_b32 v102, v43, v42, s63
    v_perm_b32 v103, v43, v42, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[56:57], v[68:69], v[148:151]
    ds_read_b128 v[108:111], v16 offset:8704
    buffer_load_dword v44, v1, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[60:61], v[70:71], v[148:151]
    v_perm_b32 v104, v49, v48, s63
    v_perm_b32 v105, v49, v48, s64
    v_mfma_f32_16x16x16_bf16 v[148:151], a[64:65], v[72:73], v[148:151]
    ds_read_b128 v[112:115], v16 offset:9216
    buffer_load_dword v45, v2, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[148:151], a[68:69], v[74:75], v[148:151]
    v_perm_b32 v106, v51, v50, s63
    v_perm_b32 v107, v51, v50, s64
    v_mfma_f32_16x16x16_bf16 v[152:155], a[26:27], v[52:53], 0
    ds_read_b128 v[116:119], v16 offset:10880
    buffer_load_dword v46, v3, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[30:31], v[54:55], v[152:155]
    v_mov_b32_dpp v143, v140 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v142, v140 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v141, v140 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v140, v140 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    v_mfma_f32_16x16x16_bf16 v[152:155], a[34:35], v[56:57], v[152:155]
    ds_read_b128 v[120:123], v16 offset:11392
    buffer_load_dword v47, v4, s[20:23], 0 idxen
    v_mfma_f32_16x16x16_bf16 v[152:155], a[38:39], v[58:59], v[152:155]
    v_mov_b32_dpp v147, v144 quad_perm:[3,3,3,3] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v146, v144 quad_perm:[2,2,2,2] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v145, v144 quad_perm:[1,1,1,1] row_mask:0xf bank_mask:0xf
    v_mov_b32_dpp v144, v144 quad_perm:[0,0,0,0] row_mask:0xf bank_mask:0xf
    s_add_u32 s60, 0x80, s59
    v_mfma_f32_16x16x16_bf16 v[152:155], a[42:43], v[60:61], v[152:155]
    buffer_load_dword v15, s[24:27], 0 idxen lds
    v_mfma_f32_16x16x16_bf16 v[152:155], a[46:47], v[62:63], v[152:155]
    s_cmp_lt_u32 s60, s58
    s_cselect_b32 s68, s68, 0
    s_cselect_b32 s69, s69, 0
    v_mfma_f32_16x16x16_bf16 v[152:155], a[50:51], v[64:65], v[152:155]
    s_add_u32 s8, s68, s8
    s_addc_u32 s9, 0, s9
    v_mfma_f32_16x16x16_bf16 v[152:155], a[54:55], v[66:67], v[152:155]
    s_add_u32 s20, s68, s20
    s_addc_u32 s21, 0, s21
    v_mfma_f32_16x16x16_bf16 v[152:155], a[58:59], v[68:69], v[152:155]
    s_mov_b32 m0, s81
    v_add_u32_e32 v15, s69, v15
    v_mfma_f32_16x16x16_bf16 v[152:155], a[62:63], v[70:71], v[152:155]
    s_cmp_ge_u32 s59, s73
    s_cselect_b32 s66, s67, s66
    v_mfma_f32_16x16x16_bf16 v[152:155], a[66:67], v[72:73], v[152:155]
    s_addk_i32 s59, 0x20
    s_nop 0
    s_cmp_lt_i32 s59, s58
    v_mfma_f32_16x16x16_bf16 v[152:155], a[70:71], v[74:75], v[152:155]
    s_cbranch_scc0 label_0D14
    s_branch label_0D17
label_1476:
    s_add_u32 s32, s66, s32
    s_addc_u32 s33, 0, s33
    v_lshrrev_b32_e32 v32, 5, v0
    v_mul_i32_i24_e32 v31, 0x44, v32
    v_and_b32_e32 v32, 31, v0
    v_mul_i32_i24_e32 v33, 2, v32
    v_add_u32_e32 v31, v33, v31
    s_mul_i32 s60, s47, 0x220
    v_add_u32_e32 v31, s60, v31
    v_lshlrev_b32_e32 v31, 2, v31
    v_mul_f32_e32 v148, s48, v148
    v_mul_f32_e32 v149, s48, v149
    v_mul_f32_e32 v150, s48, v150
    v_mul_f32_e32 v151, s48, v151
    v_mul_f32_e32 v152, s48, v152
    v_mul_f32_e32 v153, s48, v153
    v_mul_f32_e32 v154, s48, v154
    v_mul_f32_e32 v155, s48, v155
    v_perm_b32 v148, v149, v148, s64
    v_perm_b32 v149, v151, v150, s64
    v_perm_b32 v150, v153, v152, s64
    v_perm_b32 v151, v155, v154, s64
    ds_write_b64 v26, v[148:149] offset:31232
    ds_write_b64 v26, v[150:151] offset:31776
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b32 v156, v25 offset:31232
    ds_read_b32 v157, v25 offset:31248
    ds_read_b32 v158, v25 offset:31264
    ds_read_b32 v159, v25 offset:31280
    s_waitcnt lgkmcnt(0)
    s_barrier
    global_atomic_pk_add_bf16 v6, v156, s[32:33]
    global_atomic_pk_add_bf16 v8, v157, s[32:33]
    global_atomic_pk_add_bf16 v10, v158, s[32:33]
    global_atomic_pk_add_bf16 v12, v159, s[32:33]
    v_lshrrev_b32_e32 v32, 3, v0
    v_mul_i32_i24_e32 v30, 2, v32
    v_and_b32_e32 v32, 7, v0
    v_mul_i32_i24_e32 v33, 0x44, v32
    v_add_u32_e32 v30, v33, v30
    s_mul_i32 s60, s47, 0x220
    v_add_u32_e32 v30, s60, v30
    v_lshlrev_b32_e32 v30, 2, v30
    v_accvgpr_read_b32 v34, a112
    v_accvgpr_read_b32 v35, a113
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v52, v33, v229, v32
    v_accvgpr_read_b32 v34, a114
    v_accvgpr_read_b32 v35, a115
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v53, v33, v229, v32
    v_accvgpr_read_b32 v34, a116
    v_accvgpr_read_b32 v35, a117
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v54, v33, v229, v32
    v_accvgpr_read_b32 v34, a118
    v_accvgpr_read_b32 v35, a119
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v55, v33, v229, v32
    v_accvgpr_read_b32 v34, a120
    v_accvgpr_read_b32 v35, a121
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v56, v33, v229, v32
    v_accvgpr_read_b32 v34, a122
    v_accvgpr_read_b32 v35, a123
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v57, v33, v229, v32
    v_accvgpr_read_b32 v34, a124
    v_accvgpr_read_b32 v35, a125
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v58, v33, v229, v32
    v_accvgpr_read_b32 v34, a126
    v_accvgpr_read_b32 v35, a127
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v59, v33, v229, v32
    ds_write_b64 v31, v[52:53]
    ds_write_b64 v31, v[54:55] offset:544
    ds_write_b64 v31, v[56:57] offset:1088
    ds_write_b64 v31, v[58:59] offset:1632
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b64 v[52:53], v30
    ds_read_b64 v[54:55], v30 offset:128
    ds_read_b64 v[56:57], v30 offset:64
    ds_read_b64 v[58:59], v30 offset:192
    s_waitcnt lgkmcnt(0)
    buffer_store_dwordx4 v[52:55], v5, s[36:39], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v5, s60, v5
    buffer_store_dwordx4 v[56:59], v5, s[36:39], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v5, s60, v5
    s_mul_i32 s60, 12, s46
    v_add_u32_e32 v5, s60, v5
    s_barrier
    s_cmp_ge_i32 1, s72
    s_cbranch_scc1 label_176C
    v_accvgpr_read_b32 v34, a128
    v_accvgpr_read_b32 v35, a129
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v60, v33, v229, v32
    v_accvgpr_read_b32 v34, a130
    v_accvgpr_read_b32 v35, a131
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v61, v33, v229, v32
    v_accvgpr_read_b32 v34, a132
    v_accvgpr_read_b32 v35, a133
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v62, v33, v229, v32
    v_accvgpr_read_b32 v34, a134
    v_accvgpr_read_b32 v35, a135
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v63, v33, v229, v32
    v_accvgpr_read_b32 v34, a136
    v_accvgpr_read_b32 v35, a137
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v64, v33, v229, v32
    v_accvgpr_read_b32 v34, a138
    v_accvgpr_read_b32 v35, a139
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v65, v33, v229, v32
    v_accvgpr_read_b32 v34, a140
    v_accvgpr_read_b32 v35, a141
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v66, v33, v229, v32
    v_accvgpr_read_b32 v34, a142
    v_accvgpr_read_b32 v35, a143
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v67, v33, v229, v32
    ds_write_b64 v31, v[60:61] offset:8704
    ds_write_b64 v31, v[62:63] offset:9248
    ds_write_b64 v31, v[64:65] offset:9792
    ds_write_b64 v31, v[66:67] offset:10336
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b64 v[60:61], v30 offset:8704
    ds_read_b64 v[62:63], v30 offset:8832
    ds_read_b64 v[64:65], v30 offset:8768
    ds_read_b64 v[66:67], v30 offset:8896
    s_waitcnt lgkmcnt(0)
    buffer_store_dwordx4 v[60:63], v5, s[36:39], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v5, s60, v5
    buffer_store_dwordx4 v[64:67], v5, s[36:39], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v5, s60, v5
    s_mul_i32 s60, 12, s46
    v_add_u32_e32 v5, s60, v5
    s_barrier
    s_cmp_ge_i32 2, s72
    s_cbranch_scc1 label_176C
    v_accvgpr_read_b32 v34, a144
    v_accvgpr_read_b32 v35, a145
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v68, v33, v229, v32
    v_accvgpr_read_b32 v34, a146
    v_accvgpr_read_b32 v35, a147
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v69, v33, v229, v32
    v_accvgpr_read_b32 v34, a148
    v_accvgpr_read_b32 v35, a149
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v70, v33, v229, v32
    v_accvgpr_read_b32 v34, a150
    v_accvgpr_read_b32 v35, a151
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v71, v33, v229, v32
    v_accvgpr_read_b32 v34, a152
    v_accvgpr_read_b32 v35, a153
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v72, v33, v229, v32
    v_accvgpr_read_b32 v34, a154
    v_accvgpr_read_b32 v35, a155
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v73, v33, v229, v32
    v_accvgpr_read_b32 v34, a156
    v_accvgpr_read_b32 v35, a157
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v74, v33, v229, v32
    v_accvgpr_read_b32 v34, a158
    v_accvgpr_read_b32 v35, a159
    v_mul_f32_e32 v34, s48, v34
    v_mul_f32_e32 v35, s48, v35
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v75, v33, v229, v32
    ds_write_b64 v31, v[68:69] offset:17408
    ds_write_b64 v31, v[70:71] offset:17952
    ds_write_b64 v31, v[72:73] offset:18496
    ds_write_b64 v31, v[74:75] offset:19040
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b64 v[68:69], v30 offset:17408
    ds_read_b64 v[70:71], v30 offset:17536
    ds_read_b64 v[72:73], v30 offset:17472
    ds_read_b64 v[74:75], v30 offset:17600
    s_waitcnt lgkmcnt(0)
    buffer_store_dwordx4 v[68:71], v5, s[36:39], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v5, s60, v5
    buffer_store_dwordx4 v[72:75], v5, s[36:39], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v5, s60, v5
    s_mul_i32 s60, 12, s46
    v_add_u32_e32 v5, s60, v5
    s_barrier
    s_cmp_ge_i32 3, s72
    s_cbranch_scc1 label_176C
label_176C:
    v_mov_b32_e32 v34, v180
    v_mov_b32_e32 v35, v181
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v180, v33, v229, v32
    v_mov_b32_e32 v34, v182
    v_mov_b32_e32 v35, v183
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v181, v33, v229, v32
    v_mov_b32_e32 v34, v184
    v_mov_b32_e32 v35, v185
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v182, v33, v229, v32
    v_mov_b32_e32 v34, v186
    v_mov_b32_e32 v35, v187
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v183, v33, v229, v32
    v_mov_b32_e32 v34, v188
    v_mov_b32_e32 v35, v189
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v184, v33, v229, v32
    v_mov_b32_e32 v34, v190
    v_mov_b32_e32 v35, v191
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v185, v33, v229, v32
    v_mov_b32_e32 v34, v192
    v_mov_b32_e32 v35, v193
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v186, v33, v229, v32
    v_mov_b32_e32 v34, v194
    v_mov_b32_e32 v35, v195
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v187, v33, v229, v32
    ds_write_b64 v31, v[180:181]
    ds_write_b64 v31, v[182:183] offset:544
    ds_write_b64 v31, v[184:185] offset:1088
    ds_write_b64 v31, v[186:187] offset:1632
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b64 v[180:181], v30
    ds_read_b64 v[182:183], v30 offset:128
    ds_read_b64 v[184:185], v30 offset:64
    ds_read_b64 v[186:187], v30 offset:192
    s_waitcnt lgkmcnt(0)
    buffer_store_dwordx4 v[180:183], v14, s[40:43], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v14, s60, v14
    buffer_store_dwordx4 v[184:187], v14, s[40:43], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v14, s60, v14
    s_mul_i32 s60, 12, s46
    v_add_u32_e32 v14, s60, v14
    s_cmp_ge_i32 1, s72
    s_cbranch_scc1 label_19C1
    v_mov_b32_e32 v34, v196
    v_mov_b32_e32 v35, v197
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v188, v33, v229, v32
    v_mov_b32_e32 v34, v198
    v_mov_b32_e32 v35, v199
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v189, v33, v229, v32
    v_mov_b32_e32 v34, v200
    v_mov_b32_e32 v35, v201
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v190, v33, v229, v32
    v_mov_b32_e32 v34, v202
    v_mov_b32_e32 v35, v203
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v191, v33, v229, v32
    v_mov_b32_e32 v34, v204
    v_mov_b32_e32 v35, v205
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v192, v33, v229, v32
    v_mov_b32_e32 v34, v206
    v_mov_b32_e32 v35, v207
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v193, v33, v229, v32
    v_mov_b32_e32 v34, v208
    v_mov_b32_e32 v35, v209
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v194, v33, v229, v32
    v_mov_b32_e32 v34, v210
    v_mov_b32_e32 v35, v211
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v195, v33, v229, v32
    ds_write_b64 v31, v[188:189] offset:8704
    ds_write_b64 v31, v[190:191] offset:9248
    ds_write_b64 v31, v[192:193] offset:9792
    ds_write_b64 v31, v[194:195] offset:10336
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b64 v[188:189], v30 offset:8704
    ds_read_b64 v[190:191], v30 offset:8832
    ds_read_b64 v[192:193], v30 offset:8768
    ds_read_b64 v[194:195], v30 offset:8896
    s_waitcnt lgkmcnt(0)
    buffer_store_dwordx4 v[188:191], v14, s[40:43], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v14, s60, v14
    buffer_store_dwordx4 v[192:195], v14, s[40:43], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v14, s60, v14
    s_mul_i32 s60, 12, s46
    v_add_u32_e32 v14, s60, v14
    s_cmp_ge_i32 2, s72
    s_cbranch_scc1 label_19C1
    v_mov_b32_e32 v34, v212
    v_mov_b32_e32 v35, v213
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v196, v33, v229, v32
    v_mov_b32_e32 v34, v214
    v_mov_b32_e32 v35, v215
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v197, v33, v229, v32
    v_mov_b32_e32 v34, v216
    v_mov_b32_e32 v35, v217
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v198, v33, v229, v32
    v_mov_b32_e32 v34, v218
    v_mov_b32_e32 v35, v219
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v199, v33, v229, v32
    v_mov_b32_e32 v34, v220
    v_mov_b32_e32 v35, v221
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v200, v33, v229, v32
    v_mov_b32_e32 v34, v222
    v_mov_b32_e32 v35, v223
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v201, v33, v229, v32
    v_mov_b32_e32 v34, v224
    v_mov_b32_e32 v35, v225
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v202, v33, v229, v32
    v_mov_b32_e32 v34, v226
    v_mov_b32_e32 v35, v227
    v_cmp_u_f32_e64 s[78:79], v34, v34
    v_bfe_u32 v228, v34, 16, 1
    v_add3_u32 v228, v34, v228, v231
    v_cndmask_b32_e64 v32, v228, v230, s[78:79]
    v_lshrrev_b32_e32 v32, 16, v32
    v_cmp_u_f32_e64 s[78:79], v35, v35
    v_bfe_u32 v228, v35, 16, 1
    v_add3_u32 v228, v35, v228, v231
    v_cndmask_b32_e64 v33, v228, v230, s[78:79]
    v_and_or_b32 v203, v33, v229, v32
    ds_write_b64 v31, v[196:197] offset:17408
    ds_write_b64 v31, v[198:199] offset:17952
    ds_write_b64 v31, v[200:201] offset:18496
    ds_write_b64 v31, v[202:203] offset:19040
    s_waitcnt lgkmcnt(0)
    s_barrier
    ds_read_b64 v[196:197], v30 offset:17408
    ds_read_b64 v[198:199], v30 offset:17536
    ds_read_b64 v[200:201], v30 offset:17472
    ds_read_b64 v[202:203], v30 offset:17600
    s_waitcnt lgkmcnt(0)
    buffer_store_dwordx4 v[196:199], v14, s[40:43], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v14, s60, v14
    buffer_store_dwordx4 v[200:203], v14, s[40:43], 0 idxen
    s_mul_i32 s60, 2, s46
    v_add_u32_e32 v14, s60, v14
    s_mul_i32 s60, 12, s46
    v_add_u32_e32 v14, s60, v14
    s_cmp_ge_i32 3, s72
    s_cbranch_scc1 label_19C1
label_19C1:
    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
    s_mov_b32 s32, s90
    s_mov_b32 s33, s91
    s_sub_i32 s60, s77, 1
    s_sub_i32 s2, s60, s2
    s_addk_i32 s75, 0x1
    s_cmp_lt_i32 s75, s76
    s_cbranch_scc1 label_00F7
    s_endpgm
.Lfunc_end:
.size _ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE, .Lfunc_end - _ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE

.rodata
.p2align 6
.amdhsa_kernel _ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE
    .amdhsa_group_segment_fixed_size 163840
    .amdhsa_kernarg_size 704
    .amdhsa_user_sgpr_kernarg_segment_ptr 1
    .amdhsa_system_sgpr_workgroup_id_x 1
    .amdhsa_system_sgpr_workgroup_id_y 1
    .amdhsa_system_sgpr_workgroup_id_z 1
    .amdhsa_system_vgpr_workitem_id 0
    .amdhsa_next_free_vgpr 512
    .amdhsa_next_free_sgpr 102
    .amdhsa_accum_offset 256
    .amdhsa_ieee_mode 0
    .amdhsa_dx10_clamp 0
.end_amdhsa_kernel

.amdgpu_metadata
---
amdhsa.version: [1, 2]
amdhsa.kernels:
  - .name: _ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE
    .symbol: _ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE.kd
    .kernarg_segment_size: 704
    .group_segment_fixed_size: 163840
    .private_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .wavefront_size: 64
    .sgpr_count: 102
    .vgpr_count: 512
    .max_flat_workgroup_size: 256
    .args:
      - .name: args
        .size: 704
        .offset: 0
        .value_kind: by_value
...
.end_amdgpu_metadata
