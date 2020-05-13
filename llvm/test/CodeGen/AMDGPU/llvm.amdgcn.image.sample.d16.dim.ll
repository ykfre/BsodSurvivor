; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -march=amdgcn -mcpu=tonga -verify-machineinstrs | FileCheck -check-prefixes=TONGA %s
; RUN: llc < %s -march=amdgcn -mcpu=gfx810 -verify-machineinstrs | FileCheck -check-prefixes=GFX81 %s
; RUN: llc < %s -march=amdgcn -mcpu=gfx900 -verify-machineinstrs | FileCheck -check-prefixes=GFX9 %s
; RUN: llc < %s -march=amdgcn -mcpu=gfx1010 -verify-machineinstrs | FileCheck -check-prefixes=GFX10 %s

define amdgpu_ps half @image_sample_2d_f16(<8 x i32> inreg %rsrc, <4 x i32> inreg %samp, float %s, float %t) {
; TONGA-LABEL: image_sample_2d_f16:
; TONGA:       ; %bb.0: ; %main_body
; TONGA-NEXT:    s_mov_b64 s[12:13], exec
; TONGA-NEXT:    s_wqm_b64 exec, exec
; TONGA-NEXT:    s_and_b64 exec, exec, s[12:13]
; TONGA-NEXT:    image_sample v0, v[0:1], s[0:7], s[8:11] dmask:0x1 d16
; TONGA-NEXT:    s_waitcnt vmcnt(0)
; TONGA-NEXT:    ; return to shader part epilog
;
; GFX81-LABEL: image_sample_2d_f16:
; GFX81:       ; %bb.0: ; %main_body
; GFX81-NEXT:    s_mov_b64 s[12:13], exec
; GFX81-NEXT:    s_wqm_b64 exec, exec
; GFX81-NEXT:    s_and_b64 exec, exec, s[12:13]
; GFX81-NEXT:    image_sample v0, v[0:1], s[0:7], s[8:11] dmask:0x1 d16
; GFX81-NEXT:    s_waitcnt vmcnt(0)
; GFX81-NEXT:    ; return to shader part epilog
;
; GFX9-LABEL: image_sample_2d_f16:
; GFX9:       ; %bb.0: ; %main_body
; GFX9-NEXT:    s_mov_b64 s[12:13], exec
; GFX9-NEXT:    s_wqm_b64 exec, exec
; GFX9-NEXT:    s_and_b64 exec, exec, s[12:13]
; GFX9-NEXT:    image_sample v0, v[0:1], s[0:7], s[8:11] dmask:0x1 d16
; GFX9-NEXT:    s_waitcnt vmcnt(0)
; GFX9-NEXT:    ; return to shader part epilog
;
; GFX10-LABEL: image_sample_2d_f16:
; GFX10:       ; %bb.0: ; %main_body
; GFX10-NEXT:    s_mov_b32 s12, exec_lo
; GFX10-NEXT:    ; implicit-def: $vcc_hi
; GFX10-NEXT:    s_wqm_b32 exec_lo, exec_lo
; GFX10-NEXT:    s_and_b32 exec_lo, exec_lo, s12
; GFX10-NEXT:    image_sample v0, v[0:1], s[0:7], s[8:11] dmask:0x1 dim:SQ_RSRC_IMG_2D d16
; GFX10-NEXT:    s_waitcnt vmcnt(0)
; GFX10-NEXT:    ; return to shader part epilog
main_body:
  %tex = call half @llvm.amdgcn.image.sample.2d.f16.f32(i32 1, float %s, float %t, <8 x i32> %rsrc, <4 x i32> %samp, i1 false, i32 0, i32 0)
  ret half %tex
}

define amdgpu_ps half @image_sample_2d_f16_tfe(<8 x i32> inreg %rsrc, <4 x i32> inreg %samp, float %s, float %t, i32 addrspace(1)* inreg %out) {
; TONGA-LABEL: image_sample_2d_f16_tfe:
; TONGA:       ; %bb.0: ; %main_body
; TONGA-NEXT:    s_mov_b64 s[14:15], exec
; TONGA-NEXT:    s_wqm_b64 exec, exec
; TONGA-NEXT:    v_mov_b32_e32 v2, 0
; TONGA-NEXT:    v_mov_b32_e32 v4, s12
; TONGA-NEXT:    v_mov_b32_e32 v5, s13
; TONGA-NEXT:    v_mov_b32_e32 v3, v2
; TONGA-NEXT:    s_and_b64 exec, exec, s[14:15]
; TONGA-NEXT:    image_sample v[2:3], v[0:1], s[0:7], s[8:11] dmask:0x1 tfe d16
; TONGA-NEXT:    s_waitcnt vmcnt(0)
; TONGA-NEXT:    v_mov_b32_e32 v0, v2
; TONGA-NEXT:    flat_store_dword v[4:5], v3
; TONGA-NEXT:    s_waitcnt vmcnt(0) lgkmcnt(0)
; TONGA-NEXT:    ; return to shader part epilog
;
; GFX81-LABEL: image_sample_2d_f16_tfe:
; GFX81:       ; %bb.0: ; %main_body
; GFX81-NEXT:    s_mov_b64 s[14:15], exec
; GFX81-NEXT:    s_wqm_b64 exec, exec
; GFX81-NEXT:    v_mov_b32_e32 v2, 0
; GFX81-NEXT:    v_mov_b32_e32 v4, s12
; GFX81-NEXT:    v_mov_b32_e32 v5, s13
; GFX81-NEXT:    v_mov_b32_e32 v3, v2
; GFX81-NEXT:    s_and_b64 exec, exec, s[14:15]
; GFX81-NEXT:    image_sample v[2:3], v[0:1], s[0:7], s[8:11] dmask:0x1 tfe d16
; GFX81-NEXT:    s_waitcnt vmcnt(0)
; GFX81-NEXT:    v_mov_b32_e32 v0, v2
; GFX81-NEXT:    flat_store_dword v[4:5], v3
; GFX81-NEXT:    s_waitcnt vmcnt(0) lgkmcnt(0)
; GFX81-NEXT:    ; return to shader part epilog
;
; GFX9-LABEL: image_sample_2d_f16_tfe:
; GFX9:       ; %bb.0: ; %main_body
; GFX9-NEXT:    s_mov_b64 s[14:15], exec
; GFX9-NEXT:    s_wqm_b64 exec, exec
; GFX9-NEXT:    v_mov_b32_e32 v2, 0
; GFX9-NEXT:    v_mov_b32_e32 v4, s12
; GFX9-NEXT:    v_mov_b32_e32 v5, s13
; GFX9-NEXT:    v_mov_b32_e32 v3, v2
; GFX9-NEXT:    s_and_b64 exec, exec, s[14:15]
; GFX9-NEXT:    image_sample v[2:3], v[0:1], s[0:7], s[8:11] dmask:0x1 tfe d16
; GFX9-NEXT:    s_waitcnt vmcnt(0)
; GFX9-NEXT:    v_mov_b32_e32 v0, v2
; GFX9-NEXT:    global_store_dword v[4:5], v3, off
; GFX9-NEXT:    s_waitcnt vmcnt(0)
; GFX9-NEXT:    ; return to shader part epilog
;
; GFX10-LABEL: image_sample_2d_f16_tfe:
; GFX10:       ; %bb.0: ; %main_body
; GFX10-NEXT:    s_mov_b32 s14, exec_lo
; GFX10-NEXT:    ; implicit-def: $vcc_hi
; GFX10-NEXT:    s_wqm_b32 exec_lo, exec_lo
; GFX10-NEXT:    v_mov_b32_e32 v2, 0
; GFX10-NEXT:    v_mov_b32_e32 v4, s12
; GFX10-NEXT:    v_mov_b32_e32 v5, s13
; GFX10-NEXT:    v_mov_b32_e32 v3, v2
; GFX10-NEXT:    s_and_b32 exec_lo, exec_lo, s14
; GFX10-NEXT:    image_sample v[2:3], v[0:1], s[0:7], s[8:11] dmask:0x1 dim:SQ_RSRC_IMG_2D tfe d16
; GFX10-NEXT:    s_waitcnt vmcnt(0)
; GFX10-NEXT:    v_mov_b32_e32 v0, v2
; GFX10-NEXT:    global_store_dword v[4:5], v3, off
; GFX10-NEXT:    s_waitcnt_vscnt null, 0x0
; GFX10-NEXT:    ; return to shader part epilog
main_body:
  %tex = call {half,i32} @llvm.amdgcn.image.sample.2d.f16i32.f32(i32 1, float %s, float %t, <8 x i32> %rsrc, <4 x i32> %samp, i1 false, i32 1, i32 0)
  %tex.vec = extractvalue {half, i32} %tex, 0
  %tex.err = extractvalue {half, i32} %tex, 1
  store i32 %tex.err, i32 addrspace(1)* %out, align 4
  ret half %tex.vec
}

define amdgpu_ps float @image_sample_c_d_1d_v2f16(<8 x i32> inreg %rsrc, <4 x i32> inreg %samp, float %zcompare, float %dsdh, float %dsdv, float %s) {
; TONGA-LABEL: image_sample_c_d_1d_v2f16:
; TONGA:       ; %bb.0: ; %main_body
; TONGA-NEXT:    image_sample_c_d v[0:1], v[0:3], s[0:7], s[8:11] dmask:0x3 d16
; TONGA-NEXT:    s_waitcnt vmcnt(0)
; TONGA-NEXT:    v_lshlrev_b32_e32 v1, 16, v1
; TONGA-NEXT:    v_or_b32_sdwa v0, v0, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
; TONGA-NEXT:    ; return to shader part epilog
;
; GFX81-LABEL: image_sample_c_d_1d_v2f16:
; GFX81:       ; %bb.0: ; %main_body
; GFX81-NEXT:    image_sample_c_d v0, v[0:3], s[0:7], s[8:11] dmask:0x3 d16
; GFX81-NEXT:    s_waitcnt vmcnt(0)
; GFX81-NEXT:    ; return to shader part epilog
;
; GFX9-LABEL: image_sample_c_d_1d_v2f16:
; GFX9:       ; %bb.0: ; %main_body
; GFX9-NEXT:    image_sample_c_d v0, v[0:3], s[0:7], s[8:11] dmask:0x3 d16
; GFX9-NEXT:    s_waitcnt vmcnt(0)
; GFX9-NEXT:    ; return to shader part epilog
;
; GFX10-LABEL: image_sample_c_d_1d_v2f16:
; GFX10:       ; %bb.0: ; %main_body
; GFX10-NEXT:    image_sample_c_d v0, v[0:3], s[0:7], s[8:11] dmask:0x3 dim:SQ_RSRC_IMG_1D d16
; GFX10-NEXT:    ; implicit-def: $vcc_hi
; GFX10-NEXT:    s_waitcnt vmcnt(0)
; GFX10-NEXT:    ; return to shader part epilog
main_body:
  %tex = call <2 x half> @llvm.amdgcn.image.sample.c.d.1d.v2f16.f32.f32(i32 3, float %zcompare, float %dsdh, float %dsdv, float %s, <8 x i32> %rsrc, <4 x i32> %samp, i1 false, i32 0, i32 0)
  %r = bitcast <2 x half> %tex to float
  ret float %r
}

define amdgpu_ps <2 x float> @image_sample_c_d_1d_v2f16_tfe(<8 x i32> inreg %rsrc, <4 x i32> inreg %samp, float %zcompare, float %dsdh, float %dsdv, float %s) {
; TONGA-LABEL: image_sample_c_d_1d_v2f16_tfe:
; TONGA:       ; %bb.0: ; %main_body
; TONGA-NEXT:    v_mov_b32_e32 v4, 0
; TONGA-NEXT:    v_mov_b32_e32 v5, v4
; TONGA-NEXT:    v_mov_b32_e32 v6, v4
; TONGA-NEXT:    image_sample_c_d v[4:6], v[0:3], s[0:7], s[8:11] dmask:0x3 tfe d16
; TONGA-NEXT:    s_waitcnt vmcnt(0)
; TONGA-NEXT:    v_lshlrev_b32_e32 v0, 16, v5
; TONGA-NEXT:    v_or_b32_sdwa v0, v4, v0 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
; TONGA-NEXT:    v_mov_b32_e32 v1, v6
; TONGA-NEXT:    ; return to shader part epilog
;
; GFX81-LABEL: image_sample_c_d_1d_v2f16_tfe:
; GFX81:       ; %bb.0: ; %main_body
; GFX81-NEXT:    v_mov_b32_e32 v4, 0
; GFX81-NEXT:    v_mov_b32_e32 v5, v4
; GFX81-NEXT:    image_sample_c_d v[4:5], v[0:3], s[0:7], s[8:11] dmask:0x3 tfe d16
; GFX81-NEXT:    s_waitcnt vmcnt(0)
; GFX81-NEXT:    v_mov_b32_e32 v0, v4
; GFX81-NEXT:    v_mov_b32_e32 v1, v5
; GFX81-NEXT:    ; return to shader part epilog
;
; GFX9-LABEL: image_sample_c_d_1d_v2f16_tfe:
; GFX9:       ; %bb.0: ; %main_body
; GFX9-NEXT:    v_mov_b32_e32 v4, 0
; GFX9-NEXT:    v_mov_b32_e32 v5, v4
; GFX9-NEXT:    image_sample_c_d v[4:5], v[0:3], s[0:7], s[8:11] dmask:0x3 tfe d16
; GFX9-NEXT:    s_waitcnt vmcnt(0)
; GFX9-NEXT:    v_mov_b32_e32 v0, v4
; GFX9-NEXT:    v_mov_b32_e32 v1, v5
; GFX9-NEXT:    ; return to shader part epilog
;
; GFX10-LABEL: image_sample_c_d_1d_v2f16_tfe:
; GFX10:       ; %bb.0: ; %main_body
; GFX10-NEXT:    v_mov_b32_e32 v5, v0
; GFX10-NEXT:    v_mov_b32_e32 v0, 0
; GFX10-NEXT:    v_mov_b32_e32 v4, v1
; GFX10-NEXT:    ; implicit-def: $vcc_hi
; GFX10-NEXT:    v_mov_b32_e32 v1, v0
; GFX10-NEXT:    image_sample_c_d v[0:1], [v5, v4, v2, v3], s[0:7], s[8:11] dmask:0x3 dim:SQ_RSRC_IMG_1D tfe d16
; GFX10-NEXT:    s_waitcnt vmcnt(0)
; GFX10-NEXT:    ; return to shader part epilog
main_body:
  %tex = call {<2 x half>,i32} @llvm.amdgcn.image.sample.c.d.1d.v2f16i32.f32.f32(i32 3, float %zcompare, float %dsdh, float %dsdv, float %s, <8 x i32> %rsrc, <4 x i32> %samp, i1 false, i32 1, i32 0)
  %tex.vec = extractvalue {<2 x half>, i32} %tex, 0
  %tex.err = extractvalue {<2 x half>, i32} %tex, 1
  %tex.vecf = bitcast <2 x half> %tex.vec to float
  %r.0 = insertelement <2 x float> undef, float %tex.vecf, i32 0
  %tex.errf = bitcast i32 %tex.err to float
  %r = insertelement <2 x float> %r.0, float %tex.errf, i32 1
  ret <2 x float> %r
}

define amdgpu_ps <2 x float> @image_sample_b_2d_v4f16(<8 x i32> inreg %rsrc, <4 x i32> inreg %samp, float %bias, float %s, float %t) {
; TONGA-LABEL: image_sample_b_2d_v4f16:
; TONGA:       ; %bb.0: ; %main_body
; TONGA-NEXT:    s_mov_b64 s[12:13], exec
; TONGA-NEXT:    s_wqm_b64 exec, exec
; TONGA-NEXT:    s_and_b64 exec, exec, s[12:13]
; TONGA-NEXT:    image_sample_b v[0:3], v[0:2], s[0:7], s[8:11] dmask:0xf d16
; TONGA-NEXT:    s_waitcnt vmcnt(0)
; TONGA-NEXT:    v_lshlrev_b32_e32 v1, 16, v1
; TONGA-NEXT:    v_lshlrev_b32_e32 v3, 16, v3
; TONGA-NEXT:    v_or_b32_sdwa v0, v0, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
; TONGA-NEXT:    v_or_b32_sdwa v1, v2, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
; TONGA-NEXT:    ; return to shader part epilog
;
; GFX81-LABEL: image_sample_b_2d_v4f16:
; GFX81:       ; %bb.0: ; %main_body
; GFX81-NEXT:    s_mov_b64 s[12:13], exec
; GFX81-NEXT:    s_wqm_b64 exec, exec
; GFX81-NEXT:    s_and_b64 exec, exec, s[12:13]
; GFX81-NEXT:    image_sample_b v[0:1], v[0:2], s[0:7], s[8:11] dmask:0xf d16
; GFX81-NEXT:    s_waitcnt vmcnt(0)
; GFX81-NEXT:    ; return to shader part epilog
;
; GFX9-LABEL: image_sample_b_2d_v4f16:
; GFX9:       ; %bb.0: ; %main_body
; GFX9-NEXT:    s_mov_b64 s[12:13], exec
; GFX9-NEXT:    s_wqm_b64 exec, exec
; GFX9-NEXT:    s_and_b64 exec, exec, s[12:13]
; GFX9-NEXT:    image_sample_b v[0:1], v[0:2], s[0:7], s[8:11] dmask:0xf d16
; GFX9-NEXT:    s_waitcnt vmcnt(0)
; GFX9-NEXT:    ; return to shader part epilog
;
; GFX10-LABEL: image_sample_b_2d_v4f16:
; GFX10:       ; %bb.0: ; %main_body
; GFX10-NEXT:    s_mov_b32 s12, exec_lo
; GFX10-NEXT:    ; implicit-def: $vcc_hi
; GFX10-NEXT:    s_wqm_b32 exec_lo, exec_lo
; GFX10-NEXT:    s_and_b32 exec_lo, exec_lo, s12
; GFX10-NEXT:    image_sample_b v[0:1], v[0:2], s[0:7], s[8:11] dmask:0xf dim:SQ_RSRC_IMG_2D d16
; GFX10-NEXT:    s_waitcnt vmcnt(0)
; GFX10-NEXT:    ; return to shader part epilog
main_body:
  %tex = call <4 x half> @llvm.amdgcn.image.sample.b.2d.v4f16.f32.f32(i32 15, float %bias, float %s, float %t, <8 x i32> %rsrc, <4 x i32> %samp, i1 false, i32 0, i32 0)
  %r = bitcast <4 x half> %tex to <2 x float>
  ret <2 x float> %r
}

define amdgpu_ps <4 x float> @image_sample_b_2d_v4f16_tfe(<8 x i32> inreg %rsrc, <4 x i32> inreg %samp, float %bias, float %s, float %t) {
; TONGA-LABEL: image_sample_b_2d_v4f16_tfe:
; TONGA:       ; %bb.0: ; %main_body
; TONGA-NEXT:    s_mov_b64 s[12:13], exec
; TONGA-NEXT:    s_wqm_b64 exec, exec
; TONGA-NEXT:    v_mov_b32_e32 v3, 0
; TONGA-NEXT:    v_mov_b32_e32 v4, v3
; TONGA-NEXT:    v_mov_b32_e32 v5, v3
; TONGA-NEXT:    v_mov_b32_e32 v6, v3
; TONGA-NEXT:    v_mov_b32_e32 v7, v3
; TONGA-NEXT:    s_and_b64 exec, exec, s[12:13]
; TONGA-NEXT:    image_sample_b v[3:7], v[0:2], s[0:7], s[8:11] dmask:0xf tfe d16
; TONGA-NEXT:    s_waitcnt vmcnt(0)
; TONGA-NEXT:    v_lshlrev_b32_e32 v0, 16, v4
; TONGA-NEXT:    v_lshlrev_b32_e32 v1, 16, v6
; TONGA-NEXT:    v_or_b32_sdwa v0, v3, v0 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
; TONGA-NEXT:    v_or_b32_sdwa v1, v5, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
; TONGA-NEXT:    v_mov_b32_e32 v2, v7
; TONGA-NEXT:    ; return to shader part epilog
;
; GFX81-LABEL: image_sample_b_2d_v4f16_tfe:
; GFX81:       ; %bb.0: ; %main_body
; GFX81-NEXT:    s_mov_b64 s[12:13], exec
; GFX81-NEXT:    s_wqm_b64 exec, exec
; GFX81-NEXT:    v_mov_b32_e32 v3, 0
; GFX81-NEXT:    v_mov_b32_e32 v4, v3
; GFX81-NEXT:    v_mov_b32_e32 v5, v3
; GFX81-NEXT:    s_and_b64 exec, exec, s[12:13]
; GFX81-NEXT:    image_sample_b v[3:5], v[0:2], s[0:7], s[8:11] dmask:0xf tfe d16
; GFX81-NEXT:    s_waitcnt vmcnt(0)
; GFX81-NEXT:    v_mov_b32_e32 v0, v3
; GFX81-NEXT:    v_mov_b32_e32 v1, v4
; GFX81-NEXT:    v_mov_b32_e32 v2, v5
; GFX81-NEXT:    ; return to shader part epilog
;
; GFX9-LABEL: image_sample_b_2d_v4f16_tfe:
; GFX9:       ; %bb.0: ; %main_body
; GFX9-NEXT:    s_mov_b64 s[12:13], exec
; GFX9-NEXT:    s_wqm_b64 exec, exec
; GFX9-NEXT:    v_mov_b32_e32 v3, 0
; GFX9-NEXT:    v_mov_b32_e32 v4, v3
; GFX9-NEXT:    v_mov_b32_e32 v5, v3
; GFX9-NEXT:    s_and_b64 exec, exec, s[12:13]
; GFX9-NEXT:    image_sample_b v[3:5], v[0:2], s[0:7], s[8:11] dmask:0xf tfe d16
; GFX9-NEXT:    s_waitcnt vmcnt(0)
; GFX9-NEXT:    v_mov_b32_e32 v0, v3
; GFX9-NEXT:    v_mov_b32_e32 v1, v4
; GFX9-NEXT:    v_mov_b32_e32 v2, v5
; GFX9-NEXT:    ; return to shader part epilog
;
; GFX10-LABEL: image_sample_b_2d_v4f16_tfe:
; GFX10:       ; %bb.0: ; %main_body
; GFX10-NEXT:    s_mov_b32 s12, exec_lo
; GFX10-NEXT:    ; implicit-def: $vcc_hi
; GFX10-NEXT:    s_wqm_b32 exec_lo, exec_lo
; GFX10-NEXT:    v_mov_b32_e32 v3, v0
; GFX10-NEXT:    v_mov_b32_e32 v0, 0
; GFX10-NEXT:    v_mov_b32_e32 v5, v2
; GFX10-NEXT:    v_mov_b32_e32 v4, v1
; GFX10-NEXT:    v_mov_b32_e32 v1, v0
; GFX10-NEXT:    v_mov_b32_e32 v2, v0
; GFX10-NEXT:    s_and_b32 exec_lo, exec_lo, s12
; GFX10-NEXT:    image_sample_b v[0:2], v[3:5], s[0:7], s[8:11] dmask:0xf dim:SQ_RSRC_IMG_2D tfe d16
; GFX10-NEXT:    s_waitcnt vmcnt(0)
; GFX10-NEXT:    ; return to shader part epilog
main_body:
  %tex = call {<4 x half>,i32} @llvm.amdgcn.image.sample.b.2d.v4f16i32.f32.f32(i32 15, float %bias, float %s, float %t, <8 x i32> %rsrc, <4 x i32> %samp, i1 false, i32 1, i32 0)
  %tex.vec = extractvalue {<4 x half>, i32} %tex, 0
  %tex.err = extractvalue {<4 x half>, i32} %tex, 1
  %tex.vecf = bitcast <4 x half> %tex.vec to <2 x float>
  %tex.vecf.0 = extractelement <2 x float> %tex.vecf, i32 0
  %tex.vecf.1 = extractelement <2 x float> %tex.vecf, i32 1
  %r.0 = insertelement <4 x float> undef, float %tex.vecf.0, i32 0
  %r.1 = insertelement <4 x float> %r.0, float %tex.vecf.1, i32 1
  %tex.errf = bitcast i32 %tex.err to float
  %r = insertelement <4 x float> %r.1, float %tex.errf, i32 2
  ret <4 x float> %r
}

declare half @llvm.amdgcn.image.sample.2d.f16.f32(i32, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1
declare {half,i32} @llvm.amdgcn.image.sample.2d.f16i32.f32(i32, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1
declare <4 x half> @llvm.amdgcn.image.sample.2d.v4f16.f32(i32, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1
declare {<2 x half>,i32} @llvm.amdgcn.image.sample.2d.v2f16i32.f32(i32, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1
declare <2 x half> @llvm.amdgcn.image.sample.c.d.1d.v2f16.f32.f32(i32, float, float, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1
declare {<2 x half>,i32} @llvm.amdgcn.image.sample.c.d.1d.v2f16i32.f32.f32(i32, float, float, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1
declare <4 x half> @llvm.amdgcn.image.sample.b.2d.v4f16.f32.f32(i32, float, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1
declare {<4 x half>,i32} @llvm.amdgcn.image.sample.b.2d.v4f16i32.f32.f32(i32, float, float, float, <8 x i32>, <4 x i32>, i1, i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind readnone }
