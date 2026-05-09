# BWD D=64 Attention Kernel Optimization — MI355X gfx950

Hand-optimized gfx950 assembly BWD attention kernel that beats CK a16_rtz baseline by 23%.

## Results

**Shape:** B=4, S=8192, HQ=64, HKV=8, D=64, BF16, causal

| B | S | Optimized (ms) | Baseline (ms) | Speedup |
|---|---|----------------|---------------|---------|
| 4 | 1024 | 0.173 | — | — |
| 4 | 2048 | 0.559 | — | — |
| 4 | 4096 | 1.911 | — | — |
| 4 | 8192 | 7.545 | 9.26 | 1.23x |
| 2 | 16384 | 14.888 | — | — |

**Best: 7.545 ms (729 TFLOPS) — 23% faster than CK a16_rtz baseline (9.26 ms)**

Correctness: `cos_sim >= 0.9999` for dQ, dK, dV vs torch SDPA (FP32 reference).

## Source Kernel

CK backward attention kernel: `fmha_bwd_hd64_bf16_causal_a16_rtz`

| Parameter | Value |
|-----------|-------|
| Head dim | 64 |
| Causal | Yes |
| dQ atomics | BF16 (a16) |
| GQA | 8:1 (HQ=64, HKV=8) |
| Tile KV | 192 |
| Workgroup | 256 threads |
| Target | gfx950 (MI355X) |

## Pipeline

1. **odo** — `D[b,h,s] = rowsum(dO * O)` (128 elements/WG)
2. **main** — dQ (bf16 BSHD direct), dK/dV (GQA-expanded, summed to HKV after)

No dq_convert post-processing needed for a16 + hd64 + gfx950.

## Method

The baseline CK a16_rtz kernel runs at 9.26ms on MI355X. We disassembled the code object, converted to assemblable source, verified bit-perfect reassembly, then applied register and scheduling optimizations.

The optimized kernel achieves 7.545ms — a 23% improvement. Optimization details are tracked per-branch.

## Hardware

- AMD Instinct MI355X (gfx950, CDNA4)
- 256 CUs, ~2.1 GHz
- ROCm 7.2.1

## Reproducing

```bash
# Reassemble the kernel
llvm-mc -triple=amdgcn-amd-amdhsa -mcpu=gfx950 -filetype=obj \
  kernels/bwd_d64_v3_causal.s -o /tmp/bwd.o
ld.lld -shared /tmp/bwd.o -o kernels/bwd_d64_v3_causal.co

# Run benchmark (requires aiter: pip install git+https://github.com/ROCm/aiter.git)
python3 bench/validate.py all
```

## Files

```
kernels/
  bwd_d64_v3_causal.s      — baseline CK a16_rtz kernel (disassembled, 9.26ms)
  bwd_d64_v3_causal_opt.s  — optimized kernel (7.545ms, 23% faster)
  odo_d64.co               — odo preprocess kernel (D = rowsum(dO*O))
bench/
  validate.py              — correctness validation + benchmark harness
results/
  bench_results.json       — benchmark data
```
