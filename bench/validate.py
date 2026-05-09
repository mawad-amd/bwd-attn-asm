#!/usr/bin/env python3
"""Validate v3 BWD attention kernel against torch SDPA reference.

2-kernel pipeline: odo (D=rowsum(dO*O)) + main dqdkdv (a16 bf16 atomics).
Batch mode, causal, BF16, D=64, GQA=8. Kargs from aiter fmha_bwd_{odo,dqdkdv}_args.
"""
import torch, ctypes, struct, math, sys, os, json

torch.manual_seed(42)

WORKSPACE = os.environ.get("WORKSPACE", "/workspace")
MAIN_SYM = b"_ZN5aiter43fmha_bwd_hd64_bf16_causal_a16_rtz_recompileE"
ODO_SYM = b"_ZN5aiter22fmha_bwd_hd64_odo_bf16E"

hip = ctypes.CDLL("libamdhip64.so")
hip.hipModuleLaunchKernel.restype = ctypes.c_int
hip.hipEventElapsedTime.restype = ctypes.c_int


def load_kernel(co_path, symbol):
    mod = ctypes.c_void_p()
    func = ctypes.c_void_p()
    rc = hip.hipModuleLoad(ctypes.byref(mod), co_path.encode())
    if rc != 0:
        print(f"  hipModuleLoad({co_path}): error {rc}")
        return None
    rc = hip.hipModuleGetFunction(ctypes.byref(func), mod, symbol)
    if rc != 0:
        print(f"  hipModuleGetFunction: error {rc}")
        return None
    return func


def launch(func, grid, block, kargs_bytes):
    buf = (ctypes.c_char * len(kargs_bytes))(*kargs_bytes)
    ptr = ctypes.cast(buf, ctypes.c_void_p)
    size = ctypes.c_size_t(len(kargs_bytes))
    extra = (ctypes.c_void_p * 5)(
        ctypes.c_void_p(0x01), ptr,
        ctypes.c_void_p(0x02), ctypes.cast(ctypes.pointer(size), ctypes.c_void_p),
        ctypes.c_void_p(0x03),
    )
    rc = hip.hipModuleLaunchKernel(
        func, grid[0], grid[1], grid[2], block[0], block[1], block[2],
        0, None, None, ctypes.cast(extra, ctypes.POINTER(ctypes.c_void_p)),
    )
    assert rc == 0, f"launch failed: {rc}"


def pp(buf, off, t):
    struct.pack_into('<Q', buf, off, t.data_ptr())

def pu(buf, off, v):
    struct.pack_into('<I', buf, off, v)

def pf(buf, off, v):
    struct.pack_into('<f', buf, off, v)


def build_odo_kargs(B, S, HQ, D, O, dO, D_buf):
    kargs = bytearray(256)
    stride_o = HQ * D
    nhead_stride_o = D
    batch_stride_o = S * HQ * D
    nhead_stride_lsed = S
    batch_stride_lsed = HQ * S

    pp(kargs, 0x00, O)
    pp(kargs, 0x10, dO)
    pp(kargs, 0x20, D_buf)
    pu(kargs, 0x30, nhead_stride_o * 2)
    pu(kargs, 0x40, batch_stride_o * 2)
    pu(kargs, 0x50, stride_o * 2)
    pu(kargs, 0x60, nhead_stride_o * 2)
    pu(kargs, 0x70, batch_stride_o * 2)
    pu(kargs, 0x80, stride_o * 2)
    pu(kargs, 0x90, nhead_stride_lsed * 4)
    pu(kargs, 0xA0, batch_stride_lsed * 4)
    pu(kargs, 0xB0, 1 * 4)
    pu(kargs, 0xC0, S)
    pu(kargs, 0xD0, D)
    return bytes(kargs)


def build_main_kargs(B, S, HQ, HKV, D, Q, K, V, dO, Lse, D_buf, dQ_acc, dK_exp, dV_exp):
    TS_KV = 192
    GQA = HQ // HKV
    kargs = bytearray(704)

    stride_q = HQ * D
    nhead_stride_q = D
    batch_stride_q = S * HQ * D
    stride_k = HKV * D
    nhead_stride_k = D
    batch_stride_k = S * HKV * D
    stride_v = HKV * D
    nhead_stride_v = D
    batch_stride_v = S * HKV * D
    stride_do = HQ * D
    nhead_stride_do = D
    batch_stride_do = S * HQ * D
    stride_dk = HQ * D
    nhead_stride_dk = D
    batch_stride_dk = S * HQ * D
    stride_dv = HQ * D
    nhead_stride_dv = D
    batch_stride_dv = S * HQ * D
    nhead_stride_lsed = S
    scale = 1.0 / math.sqrt(D)
    log2e = math.log2(math.e)

    pp(kargs, 0x00, dQ_acc)
    pp(kargs, 0x10, dK_exp)
    pp(kargs, 0x20, dV_exp)
    pp(kargs, 0x30, Q)
    pp(kargs, 0x40, K)
    pp(kargs, 0x50, V)
    pp(kargs, 0x60, dO)
    pp(kargs, 0x70, Lse)
    pp(kargs, 0x80, D_buf)
    pf(kargs, 0x90, scale)
    pf(kargs, 0xA0, log2e)
    pu(kargs, 0xB0, S)
    pu(kargs, 0xC0, TS_KV * stride_k * 2)
    pu(kargs, 0xD0, nhead_stride_q * 2)
    pu(kargs, 0xE0, batch_stride_q * 2)
    pu(kargs, 0xF0, stride_q * 2)
    pu(kargs, 0x100, GQA)
    pu(kargs, 0x110, nhead_stride_k * 2)
    pu(kargs, 0x120, batch_stride_k * 2)
    pu(kargs, 0x130, stride_k * 2)
    pu(kargs, 0x140, stride_dk * 2)
    pu(kargs, 0x150, S)
    pu(kargs, 0x160, D)
    pu(kargs, 0x170, D)
    pu(kargs, 0x180, HQ)
    pu(kargs, 0x190, nhead_stride_v * 2)
    pu(kargs, 0x1A0, batch_stride_v * 2)
    pu(kargs, 0x1B0, stride_v * 2)
    pu(kargs, 0x1C0, nhead_stride_do * 2)
    pu(kargs, 0x1D0, batch_stride_do * 2)
    pu(kargs, 0x1E0, stride_do * 2)
    pu(kargs, 0x1F0, nhead_stride_dk * 2)
    pu(kargs, 0x200, batch_stride_dk * 2)
    pu(kargs, 0x210, nhead_stride_dv * 2)
    pu(kargs, 0x220, batch_stride_dv * 2)
    pu(kargs, 0x230, stride_dv * 2)
    pu(kargs, 0x240, nhead_stride_lsed * 4)
    max_seqlen_dq = (S + 15) // 16 * 16
    pu(kargs, 0x290, max_seqlen_dq)
    pu(kargs, 0x2A0, 0)
    pu(kargs, 0x2B0, 0)
    return bytes(kargs)



def run_pipeline(odo_func, main_func, B, S, HQ, HKV, D,
                 Q, K, V, O, dO, Lse):
    TS_KV = 192
    GQA = HQ // HKV

    D_buf = torch.zeros(B, HQ, S, dtype=torch.float32, device='cuda')
    dK_exp = torch.zeros(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
    dV_exp = torch.zeros(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
    dQ = torch.zeros(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')

    gdx_odo = (S + 127) // 128
    gdx_main = ((S + TS_KV - 1) // TS_KV + 1) // 2

    odo_kargs = build_odo_kargs(B, S, HQ, D, O, dO, D_buf)
    main_kargs = build_main_kargs(B, S, HQ, HKV, D, Q, K, V, dO, Lse, D_buf,
                                  dQ, dK_exp, dV_exp)

    launch(odo_func, (gdx_odo, HQ, B), (256, 1, 1), odo_kargs)
    hip.hipDeviceSynchronize()
    launch(main_func, (gdx_main, HQ, B), (256, 1, 1), main_kargs)
    hip.hipDeviceSynchronize()

    # Sum GQA-expanded dk/dv back to HKV heads
    dK = dK_exp.reshape(B, S, HKV, GQA, D).sum(dim=3)
    dV = dV_exp.reshape(B, S, HKV, GQA, D).sum(dim=3)

    return dQ, dK, dV


def sdpa_reference(B, S, HQ, HKV, D, Q, K, V, dO):
    """Reference BWD via torch SDPA. Returns dQ, dK, dV in BSHD layout."""
    scale = 1.0 / math.sqrt(D)
    GQA = HQ // HKV

    q_4d = Q.permute(0, 2, 1, 3).contiguous().float().requires_grad_(True)
    k_4d = K.permute(0, 2, 1, 3).contiguous().float()
    v_4d = V.permute(0, 2, 1, 3).contiguous().float()
    do_4d = dO.permute(0, 2, 1, 3).contiguous().float()

    k_exp = k_4d.unsqueeze(2).expand(B, HKV, GQA, S, D).reshape(B, HQ, S, D).requires_grad_(True)
    v_exp = v_4d.unsqueeze(2).expand(B, HKV, GQA, S, D).reshape(B, HQ, S, D).requires_grad_(True)

    out = torch.nn.functional.scaled_dot_product_attention(
        q_4d, k_exp, v_exp, scale=scale, is_causal=True)
    out.backward(do_4d)

    dK_ref = k_exp.grad.reshape(B, HKV, GQA, S, D).sum(dim=2).permute(0, 2, 1, 3)
    dV_ref = v_exp.grad.reshape(B, HKV, GQA, S, D).sum(dim=2).permute(0, 2, 1, 3)
    dQ_ref = q_4d.grad.permute(0, 2, 1, 3)

    return dQ_ref, dK_ref, dV_ref


def aiter_fwd(Q, K, V):
    """Get matched O, Lse pair from aiter's forward pass."""
    from aiter.ops.mha import mha_fwd
    scale = 1.0 / math.sqrt(Q.shape[-1])
    O, Lse, _, _ = mha_fwd(Q, K, V, 0.0, scale, True, -1, 0, 0, True, False)
    return O, Lse


def cos_sim(a, b):
    af = a.float().flatten()
    bf = b.float().flatten()
    return torch.nn.functional.cosine_similarity(af.unsqueeze(0), bf.unsqueeze(0)).item()


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else "all"

    odo_func = load_kernel(f"{WORKSPACE}/kernels/odo_d64.co", ODO_SYM)
    main_orig = load_kernel(f"{WORKSPACE}/kernels/bwd_d64_v3_causal.co", MAIN_SYM)

    print(f"ODO kernel:  {'OK' if odo_func else 'FAIL'}")
    print(f"Main kernel: {'OK' if main_orig else 'FAIL'}")

    if not all([odo_func, main_orig]):
        print("Missing kernels, aborting")
        return

    if mode in ("all", "correctness"):
        print("\n" + "=" * 70)
        print("CORRECTNESS VALIDATION vs torch SDPA (causal)")
        print("=" * 70)

        B, S, HQ, HKV, D = 2, 2048, 64, 8, 64
        print(f"Shape: B={B} S={S} HQ={HQ} HKV={HKV} D={D} causal GQA={HQ//HKV}")

        Q = torch.randn(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
        K = torch.randn(B, S, HKV, D, dtype=torch.bfloat16, device='cuda')
        V = torch.randn(B, S, HKV, D, dtype=torch.bfloat16, device='cuda')
        dO = torch.randn(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')

        print("Running aiter FWD for matched O/Lse...")
        O_fwd, Lse_fwd = aiter_fwd(Q, K, V)

        print("Running torch SDPA reference (FP32)...")
        dQ_ref, dK_ref, dV_ref = sdpa_reference(B, S, HQ, HKV, D, Q, K, V, dO)

        print("Running v3 pipeline...")
        dQ_ours, dK_ours, dV_ours = run_pipeline(
            odo_func, main_orig, B, S, HQ, HKV, D, Q, K, V, O_fwd, dO, Lse_fwd)

        checks = [
            ("Kernel vs SDPA (dQ)", dQ_ours.float(), dQ_ref),
            ("Kernel vs SDPA (dK)", dK_ours.float(), dK_ref),
            ("Kernel vs SDPA (dV)", dV_ours.float(), dV_ref),
        ]

        print(f"\n{'Comparison':<40} {'cos_sim':>10} {'max_diff':>12} {'Status':>8}")
        print("-" * 74)

        all_pass = True
        for name, a, b in checks:
            cs = cos_sim(a, b)
            md = (a.flatten() - b.flatten()).abs().max().item()
            ok = cs >= 0.95
            all_pass = all_pass and ok
            print(f"{name:<40} {cs:>10.6f} {md:>12.4f} {'PASS' if ok else 'FAIL':>8}")

        print(f"\nOverall: {'ALL PASS' if all_pass else 'SOME FAILED'}")

    if mode in ("all", "perf"):
        print("\n" + "=" * 70)
        print("PERFORMANCE BENCHMARK — v3 causal BWD attention")
        print("=" * 70)

        shapes = [
            (4, 1024, 64, 8, 64),
            (4, 2048, 64, 8, 64),
            (4, 4096, 64, 8, 64),
            (4, 8192, 64, 8, 64),
            (2, 16384, 64, 8, 64),
        ]
        TS_KV = 192
        WARMUP, ITERS = 50, 200

        results = []
        print(f"\n{'B':>3} {'S':>6} | {'ms':>10} {'TFLOPS':>8}")
        print("-" * 35)

        for B, S, HQ, HKV, D in shapes:
            GQA = HQ // HKV
            Q = torch.randn(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
            K = torch.randn(B, S, HKV, D, dtype=torch.bfloat16, device='cuda')
            V = torch.randn(B, S, HKV, D, dtype=torch.bfloat16, device='cuda')
            O = torch.randn(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
            dO = torch.randn(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
            Lse = torch.randn(B, HQ, S, dtype=torch.float32, device='cuda')
            D_buf = torch.zeros(B, HQ, S, dtype=torch.float32, device='cuda')
            dK_exp = torch.zeros(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
            dV_exp = torch.zeros(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')
            dQ = torch.zeros(B, S, HQ, D, dtype=torch.bfloat16, device='cuda')

            gdx_odo = (S + 127) // 128
            gdx_main = ((S + TS_KV - 1) // TS_KV + 1) // 2

            odo_k = build_odo_kargs(B, S, HQ, D, O, dO, D_buf)
            main_k = build_main_kargs(B, S, HQ, HKV, D, Q, K, V, dO, Lse, D_buf,
                                      dQ, dK_exp, dV_exp)

            def run_pipeline_raw(mf):
                launch(odo_func, (gdx_odo, HQ, B), (256, 1, 1), odo_k)
                launch(mf, (gdx_main, HQ, B), (256, 1, 1), main_k)

            def bench_kernel(mf):
                for _ in range(WARMUP):
                    run_pipeline_raw(mf)
                hip.hipDeviceSynchronize()
                starts = [torch.cuda.Event(enable_timing=True) for _ in range(ITERS)]
                ends = [torch.cuda.Event(enable_timing=True) for _ in range(ITERS)]
                for i in range(ITERS):
                    starts[i].record()
                    run_pipeline_raw(mf)
                    ends[i].record()
                torch.cuda.synchronize()
                times = sorted(s.elapsed_time(e) for s, e in zip(starts, ends))
                return times[len(times) // 2]

            ms = bench_kernel(main_orig)
            flops = 5 * 2 * B * HQ * S * S * D // 2
            tflops = flops / (ms / 1000) / 1e12

            print(f"{B:>3} {S:>6} | {ms:>10.3f} {tflops:>8.1f}")
            results.append({
                "B": B, "S": S, "HQ": HQ, "HKV": HKV, "D": D,
                "ms": round(ms, 3),
                "tflops": round(tflops, 1),
            })
            del Q, K, V, O, dO, Lse, D_buf, dK_exp, dV_exp, dQ
            torch.cuda.empty_cache()

        with open(f"{WORKSPACE}/results/bench_results.json", "w") as f:
            json.dump(results, f, indent=2)
        print(f"\nResults saved to {WORKSPACE}/results/bench_results.json")


if __name__ == "__main__":
    main()
