# BWD D=64 Attention Kernel Optimization — MI355X gfx950

Hand-optimized gfx950 assembly BWD attention kernel that beats CK a16_rtz baseline by 23%.

![Performance](results/perf.png)

## Results

**Shape:** B=4, S=8192, HQ=64, HKV=8, D=64, BF16, causal

| B | S | Optimized (ms) | Optimized (TF) | Baseline (ms) | Speedup |
|---|---|----------------|----------------|---------------|---------|
| 4 | 1024 | 0.173 | 497 | — | — |
| 4 | 2048 | 0.559 | 615 | — | — |
| 4 | 4096 | 1.911 | 719 | — | — |
| 4 | 8192 | 7.545 | 729 | 9.26 | 1.23x |
| 2 | 16384 | 14.888 | 739 | — | — |

**Best: 7.545 ms (729 TFLOPS) — 23% faster than CK a16_rtz baseline (9.26 ms)**

Correctness: `cos_sim >= 0.9999` for dQ, dK, dV vs torch SDPA (FP32 reference).

## Method

Baseline: CK `fmha_bwd_hd64_bf16_causal_a16_rtz` kernel (9.26ms). Disassembled the code object, converted to assemblable source, verified bit-perfect reassembly, then applied register and scheduling optimizations.

The optimized kernel achieves 7.545ms — a 23% improvement. Optimization details are tracked per-branch.

## Hardware

- AMD Instinct MI355X (gfx950, CDNA4)
- 256 CUs, ~2.1 GHz
- ROCm 7.2.1

## Reproducing

```bash
# Assemble the optimized kernel
amdclang -x assembler -target amdgcn-amd-amdhsa -mcpu=gfx950 \
    -o bwd_d64_v3_causal_opt.co kernels/bwd_d64_v3_causal_opt.s

# Assemble the baseline
amdclang -x assembler -target amdgcn-amd-amdhsa -mcpu=gfx950 \
    -o bwd_d64_v3_causal.co kernels/bwd_d64_v3_causal.s

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
  perf.png                 — latency and throughput comparison chart
  bench_results.json       — benchmark data
```
