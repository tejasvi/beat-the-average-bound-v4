#!/usr/bin/env python3
"""Generate kernel shard modules for a direct certificate (data module BeatAvg.Data.<MOD>).

usage: gen_direct_shards.py MOD K NPAT CHUNK LAMNUM LAMDEN SUFFIX
Writes BeatAvg/K/<MOD>/Pre.lean, BeatAvg/K/<MOD>/C<i>.lean and BeatAvg/K/<MOD>.lean (assembly).
Shard modules import only the data module (core Lean); the assembly imports the shards and the Mathlib side.
"""
import sys, os, math
mod, K, npat, chunk, lamn, lamd, suf = sys.argv[1], int(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4]), sys.argv[5], sys.argv[6], sys.argv[7]
nchunk = math.ceil(npat / chunk)
D = f'BeatAvg.Data.{mod}'
args = f'{K} {D}.blocks {D}.lamN {D}.lamD {D}.den {D}.qscale (BeatAvg.Check.chainList [0] {D}.levels)'
os.makedirs(f'BeatAvg/K/{mod}', exist_ok=True)
hdr = f'import {D}\n\nset_option maxHeartbeats 0\nset_option maxRecDepth 100000\n\nnamespace BeatAvg.K.{mod}\n\n'
open(f'BeatAvg/K/{mod}/Pre.lean', 'w').write(hdr +
    f'theorem chain_ok : BeatAvg.Check.chainOK 3 [0] {D}.levels = true := by decide +kernel\n\n'
    f'theorem pre_ok : BeatAvg.Check.directPre {K} {D}.blocks {D}.lamD {D}.den {D}.qscale = true := by decide +kernel\n\n'
    f'theorem len_ok : (BeatAvg.Check.chainList [0] {D}.levels).length ≤ {nchunk} * {chunk} := by decide +kernel\n\n'
    f'end BeatAvg.K.{mod}\n')
for i in range(nchunk):
    open(f'BeatAvg/K/{mod}/C{i}.lean', 'w').write(hdr +
        f'theorem chunk_{i} : BeatAvg.Check.directChunk {args} ({i} * {chunk}) {chunk} = true := by decide +kernel\n\n'
        f'end BeatAvg.K.{mod}\n')
imports = '\n'.join([f'import BeatAvg.K.{mod}.Pre'] + [f'import BeatAvg.K.{mod}.C{i}' for i in range(nchunk)])
cases = ', '.join(f'chunk_{i}' for i in range(nchunk))
open(f'BeatAvg/K/{mod}.lean', 'w').write(f'''import BeatAvg.Check.Assembly
import BeatAvg.Prob.NonVacuity
{imports}

/-! Kernel-checked bound from the certificate `{mod}` (shards in BeatAvg/K/{mod}/). -/

open BeatAvg.Check

namespace BeatAvg.K.{mod}

theorem all_chunks : ∀ i < {nchunk}, directChunk {args} (i * {chunk}) {chunk} = true := by
  intro i hi
  interval_cases i
  exacts [{cases}]

theorem check_ok : (chainOK 3 [0] {D}.levels &&
    directOKT {args}) = true := by
  rw [Bool.and_eq_true]
  exact ⟨chain_ok, directOKT_of_chunks pre_ok {chunk} {nchunk} len_ok all_chunks⟩

end BeatAvg.K.{mod}

namespace BeatAvg.K

theorem upperBound_{suf} : UpperBound ({lamn} / {lamd}) := by
  have hb := upperBound_of_direct {K} {D}.levels rfl {D}.blocks {D}.lamN {D}.lamD {D}.den {D}.qscale
    BeatAvg.K.{mod}.check_ok (flagMethodSound (by norm_num))
  simpa [{D}.lamN, {D}.lamD] using hb

theorem upperBoundRV_{suf} : UpperBoundRV ({lamn} / {lamd}) := upperBoundRV_of_upperBound upperBound_{suf}

theorem C639_le_{suf} : C639 ≤ {lamn} / {lamd} := C639_le_of_upperBound upperBound_{suf}

end BeatAvg.K
''')
print(f'{nchunk} chunks of {chunk}')
