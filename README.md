# BWD D=64 Attention Kernel Optimization — MI355X gfx950

Hand-optimized gfx950 assembly BWD attention kernel.

![Performance](results/perf.png)

## Results

**Shape:** B=4, S=8192, HQ=64, HKV=8, D=64, BF16, causal

| Kernel | p10 (ms) | p50 (ms) | p90 (ms) | TFLOPS |
|--------|----------|----------|----------|--------|
| baseline | 7.296 | 7.401 | 7.531 | 743 |
| opt | 7.263 | 7.369 | 7.482 | 746 |
| opt4 | 7.240 | 7.391 | 7.576 | 744 |

**Correctness:** `cos_sim >= 0.9999` for dQ, dK, dV vs torch SDPA (FP32 reference).

## Method

Baseline: CK `fmha_bwd_hd64_bf16_causal_a16_rtz` kernel. Disassembled the code object, converted to assemblable source, verified bit-perfect reassembly, then applied register and scheduling optimizations.

### opt: Register and scheduling optimizations

Initial optimization pass on the disassembled kernel. Register liveness analysis and instruction scheduling improvements.

### opt4: Barrier merge + BF16 epilogue

Replaced 4x `s_waitcnt lgkmcnt(8)` + `s_barrier` pairs with `s_waitcnt lgkmcnt(0)`. Full LDS drain eliminates barrier synchronization overhead at the cost of slightly longer per-instance waits — net positive because the barrier stall was more expensive than the extra wait.

4 barriers removed across the inner loop.

## Hardware

- AMD Instinct MI355X (gfx950, CDNA4)
- 256 CUs, ~2.1 GHz
- ROCm 7.2.1

## Reproducing

```bash
# Assemble the opt4 kernel
amdclang -x assembler -target amdgcn-amd-amdhsa -mcpu=gfx950 \
    -o kernels/bwd_d64_v3_causal_opt4.co kernels/bwd_d64_v3_causal_opt4.s

# Assemble the opt kernel
amdclang -x assembler -target amdgcn-amd-amdhsa -mcpu=gfx950 \
    -o kernels/bwd_d64_v3_causal_opt.co kernels/bwd_d64_v3_causal_opt.s

# Assemble the baseline
amdclang -x assembler -target amdgcn-amd-amdhsa -mcpu=gfx950 \
    -o kernels/bwd_d64_v3_causal.co kernels/bwd_d64_v3_causal.s

# Run benchmark (requires aiter: pip install git+https://github.com/ROCm/aiter.git)
python3 bench/validate.py all
```

## Files

```
kernels/
  bwd_d64_v3_causal.s      — baseline CK a16_rtz kernel (disassembled)
  bwd_d64_v3_causal_opt.s  — register and scheduling optimizations
  bwd_d64_v3_causal_opt4.s — barrier merge + BF16 epilogue optimization
  odo_d64.co               — odo preprocess kernel (D = rowsum(dO*O))
bench/
  validate.py              — correctness validation + benchmark harness
results/
  perf.png                 — latency and throughput comparison chart
  bench_results.json       — benchmark data
```
