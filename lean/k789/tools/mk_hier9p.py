#!/usr/bin/env python3
"""Generate BeatAvg/Core/Hier9P.lean (checkK9P = checkK9 with parallel pieces, and the parallel generator) from the
text of checkK9 in BeatAvg/Core/Hier9.lean."""
import sys
root = sys.argv[1]
src = open(f'{root}/BeatAvg/Core/Hier9.lean').read()
start = src.index('/-- The check of a certificate with 9 points. -/')
end_ = src.index('end BeatAvg.Check', start)
chk = src[start:end_]
reps = [
 ('/-- The check of a certificate with 9 points. -/\ndef checkK9 ', '/-- `checkK9` evaluated with parallel tasks (equal to it: `checkK9P_eq`). -/\ndef checkK9P '),
 ('  chainOK 3 [0] levels && directPre', '  chainOKP 3 3 [0] levels && directPre'),
 ('  let f7 := P.map fun M => valNumA lk lower (lower.map (preA lk 7)) den7 qscale 7 M',
  '  let pre := parMapL 0 (preA lk 7) lower\n  let f7 := parMapA 1023 (fun M => valNumA lk lower pre den7 qscale 7 M) P'),
 ('  let qt8 := (mid.map DBlock.qarr).toArray', '  let qt8 := (parMapL 0 DBlock.qarr mid).toArray'),
 ('  let qt9 := (top.map DBlock.qarr).toArray', '  let qt9 := (parMapL 0 DBlock.qarr top).toArray'),
 ('    join8 D (bd.getD 6 {}) (fun R =>', '    parAllL 255 (join8At D (bd.getD 6 {}) (fun R =>'),
 ("        (match Sid.get? R with | some s => S.getD s #[] == R | none => false) || exT8.contains R)) &&",
  "        (match Sid.get? R with | some s => S.getD s #[] == R | none => false) || exT8.contains R))) (List.range D.size) &&"),
 ('    (List.range S.size).all (fun s =>\n      bjoin', '    parAllL 3 (fun s =>\n      bjoin'),
 ('        (List.range 8) [(8, S.getD s #[])]) &&', '        (List.range 8) [(8, S.getD s #[])]) (List.range S.size) &&'),
 ('    (List.range core.size).all (fun c => (List.range 9).all fun x =>\n      let cs', '    parAllL 0 (fun c => (List.range 9).all fun x =>\n      let cs'),
 ('        [(x, (core.getD c (0, #[])).2)])\n', '        [(x, (core.getD c (0, #[])).2)]) (List.range core.size)\n'),
]
for a, b in reps:
    assert chk.count(a) == 1, (a, chk.count(a))
    chk = chk.replace(a, b)
gen = open(f'{root}/scratch/gen/hier9p_gen.lean.part').read()
hdr = open(f'{root}/scratch/gen/hier9p_hdr.lean.part').read()
open(f'{root}/BeatAvg/Core/Hier9P.lean', 'w').write(hdr + chk + gen + 'end BeatAvg.Check\n')
print('wrote Hier9P.lean')
