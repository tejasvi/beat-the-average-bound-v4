# A certified upper bound for the beat the average game

Certificates, checkers, Lean proofs and search programs for the paper
*A certified upper bound for the beat the average game* by Tejasvi Singh Tomar
(Zenodo, [doi:10.5281/zenodo.23548813](https://doi.org/10.5281/zenodo.23548813)). The programs, all certificates and
this repository are archived in the supplement record
[doi:10.5281/zenodo.23548814](https://doi.org/10.5281/zenodo.23548814); the certificates for 8 and 9 points and four large
Lean data files (`lean_data.tar.xz`) are available only there.

## Theorem

For every probability measure μ on [0, ∞) and independent random variables X₁, X₂, X₃, X₄ with law μ,

    P[X₁ + X₂ + X₃ < 2X₄]  ≤  20034817/50000000 = 0.40069634.

Problem 6.39 of Georgiev, Gómez-Serrano, Tao and Wagner (arXiv:2511.02864) asks for the supremum C of the left side
over μ. Bellec and Fritz (Amer. Math. Monthly 2026, arXiv:2412.15179) proved 0.4006953 ≤ C ≤ 673/1615 < 0.41672 and
conjectured that their lower bound, 0.4006953723..., is the exact value; the bound above exceeds it by less than
9.7·10⁻⁷. Smaller certificates give C ≤ 4006983/10000000 = 0.4006983 from 8 points, C ≤ 10019/25000 = 0.40076 from 7
points and C ≤ 201273/500000 = 0.402546 from 6 points. The proof for 7 points includes the complete list of
realizable 7-patterns. All four bounds are also proved in Lean 4 (see [Lean proofs](#lean-proofs)).

## Proof outline

1. **Sorted sign patterns.** Sample k points from μ and sort them. The pattern of the sample records which of the
   4·C(k,4) inequalities `2 y_d > y_a + y_b + y_c` (d not in {a < b < c}) hold. The probability above equals the
   expected fraction of these inequalities that hold.
2. **Positivity from independence.** Fix t sample points and two disjoint groups of m - t further points
   (2m - t ≤ k). Given the fixed points, the two groups are independent and identically distributed. Hence, for every
   positive semidefinite matrix Q indexed by flags, that is, by m-patterns with t marked points,
   `sum_M p(M) sum_{F,G} Q[F,G] c(F,G;M) >= 0`, where p is the distribution of the pattern and c(F,G;M) counts the
   ways in which a k-pattern M contains F and G with common marked points. So
   `C <= max over M of d(M) + sum_b <Q_b, c_b(M)>` over any set of k-patterns that contains the realizable ones.
3. **Completeness up to 7 points.** The realizable k-patterns extend realizable (k-1)-patterns. For each
   (k-1)-pattern an extension tree decides the new signs one at a time, and each sign that it drops carries a Gordan
   certificate: a positive integer combination of the strict inequalities `x_0 > 0`, `x_i > x_{i-1}` and the signs
   so far that sums to zero. This gives the 136,800 realizable 7-patterns.
4. **Eight points.** Every realizable 8-pattern has realizable restrictions to all 7-point subsets. Joining the
   7-patterns along their common 6-point restrictions gives 45,319,744 candidate 8-patterns. For the blocks with
   2m - t ≤ 7 the value of a candidate is computed from its 7-point restrictions, and for the blocks with
   (t, m) = (6, 7) from pairs of them.
5. **Nine points.** In the 9-point certificate, the blocks with 2m - t ≤ 8 give each 9-pattern the average of
   the values f8 of its nine 8-point restrictions, and the blocks with (t, m) = (7, 8) add a term that vanishes
   unless at least two of these restrictions lie in a set Z of 458 8-patterns. If f8 ≤ cap on all realizable
   8-patterns, then a realizable 9-pattern can exceed the claimed bound λ only if all its restrictions have
   f8 > 9λ - 8·cap or at least two of them lie in Z (Lemma 5.2 of the paper). The certificate has
   λ = 20034817/50000000 and cap = λ + 10⁻⁴. The checker evaluates f8 on all 45,319,744 candidate 8-patterns and the
   bound on the 174 and 330,265 candidate 9-patterns of the two kinds (the 174 are among the 330,265).
6. **Exclusions.** The 29 candidate 8-patterns with f8 > cap and the 19 candidate 9-patterns above λ carry Gordan
   certificates showing that they are not realizable. The largest value of the bound on the other candidate
   9-patterns is 0.4006963371... ≤ 20034817/50000000.
7. **Certificate.** 1,418 positive semidefinite blocks, given as exact sums of squares, on the flags with
   (t, m) = (1,4), (2,4), (4,5), (5,6), (6,7), (7,8).

## Checking the certificates

    # cert_k9_040069634.json.xz and cert_k8_04006983.json.xz from the supplement record, saved in cert/
    xz -dk cert/cert_k9_040069634.json.xz cert/cert_k8_04006983.json.xz cert/trees/trees_7.json.xz
    python3 -I checker/check639_k9.py cert/cert_k9_040069634.json cert/trees 32
    python3 -I checker/check639_k8.py cert/cert_k8_04006983.json cert/trees 24
    python3 -I checker/check639.py cert/cert_k7_040076.json cert/trees 24
    python3 -I checker/check639.py cert/cert_k6_0402546.json cert/trees 4

The last argument is the number of worker processes. The checkers need Python 3.8 or later with only its standard
library, and a platform where Python can fork processes, such as Linux or macOS. `check639_k9.py` imports
`check639_k8.py` and `check639.py` from its own directory, and `check639_k8.py` imports `check639.py`. The checkers
rely on assert statements and refuse to run under `python -O`. The last lines of the expected output are:

    stage 1: 45319744 consistent 8-tuples; above cap 29 (unexcluded 0); |S| = 251; core 458; 218s
    stages 2-3: 330439 9-tuples checked; max among those not above the claim 0.4006963371345768; above the claim 19 (unexcluded 0); 251s
    RESULT: PASS C_6.39 <= 20034817/50000000 = 0.4006963400

    consistent tuples: 45319744; max value among tuples not above the claim 2748827344150582759515148560018116288661293/6860092517126119423421632085824447142952960 = 0.400698290481; above the claim: 2 (max 0.476472202801)
    all 2 tuples above the claim are excluded by verified Gordan certificates
    RESULT: PASS C_6.39 <= 4006983/10000000 = 0.400698300

    max over 136800 patterns: 9818726293070812608221592204264795151735/24500330418307569369362971735087311224832 = 0.400758933673 (pattern #69861)
    RESULT: PASS C_6.39 <= 10019/25000 = 0.400760000

    max over 1290 patterns: 7838001769327109693986883165568029/19471113219505603606989361234575360 = 0.402545128312 (pattern #0)
    RESULT: PASS C_6.39 <= 201273/500000 = 0.402546000

In the k = 9 output, "9-tuples checked" counts the candidates of the two kinds together (174 + 330,265). The exit status
is 0 on PASS, and the outputs are in `checker/logs/`.

The k = 9 check took 4.2 min with 32 processes on a dedicated server with 96 virtual CPUs. On a shared server with 24
processes, the k = 8 check took 4.6 min and the k = 7 check took 51 s. The k = 6 check took 1 s with 4 processes. The k = 8
check used about 0.7 GB of memory per process.

`checker/check639.py` (286 lines)

1. rebuilds the lists of k-patterns for k = 4, ..., K ≤ 7 from the trees, checking every Gordan certificate against
   rows that it builds from their definitions, with integer multipliers and row indices in range;
2. forms each block `Q = sum w (v/D)(v/D)^T` exactly and checks that all entries are integers, that `2m - t <= K` and
   that `w >= 0`, which makes Q positive semidefinite;
3. computes for every pattern M the density d(M) and the counts c(F,G;M) by enumerating all triples (J, A, B) of
   disjoint subsets of sizes t, m - t, m - t;
4. checks `max_M d(M) + sum_b <Q_b, c_b(M)> <= claimed` in exact rational arithmetic.

`checker/check639_k8.py` (278 lines), for the 8-point certificate:

- it rebuilds the 7-patterns using `check639.py` (step 1 above);
- it forms all blocks exactly as in step 2 and allows 2m - t = 8 only for (t, m) = (6, 7);
- it evaluates the blocks with 2m - t ≤ 7 on the 7-patterns using `check639.py`, as in step 3 above, and forms the
  8-point candidates by joining the 7-patterns; each candidate is listed once, by its eight 7-point restrictions,
  which must agree on their common 6-point restrictions. It computes the value of each candidate exactly: the
  average of the 7-point values of its eight restrictions, plus 1/28 times the sum over pairs a < b of the
  (6,7)-block entries for the two flags obtained by deleting a or b;
- it checks that every candidate above the claimed bound is listed under `excluded` with a valid Gordan
  certificate, and that all other candidates are at most the claimed bound.

`checker/check639_k9.py` (365 lines) performs the steps (i)-(v) of Section 5.4 of the paper for the 9-point
certificate:

- (i) it rebuilds the 7-patterns using `check639.py`;
- (ii) it forms all blocks exactly, applying the checks of `check639_k8.py`, and allows only the pairs with
  2m - t ≤ 7 and (t, m) = (6, 7), (7, 8);
- (iii) it computes f8 for every 8-point candidate using the code of `check639_k8.py` (blocks with 2m - t ≤ 8) and
  checks that every candidate with f8 > cap is listed under `excluded8` with a valid Gordan certificate;
- (iv) it maps the (7,8) flags to 8-point candidates, which gives Z ∩ J_8 (here all 458 patterns of Z), and forms
  the candidate 9-patterns as 9-tuples of 8-point candidates that agree on their common 7-point restrictions:
  (a) those whose nine restrictions all have f8 > 9λ - 8·cap, and (b) those with at least two restrictions in Z,
  each found once, at its first restriction in Z. Candidates with a restriction among the verified candidates above
  the cap are skipped. It computes the value of each candidate exactly: the average of f8 over its nine
  restrictions, plus 1/36 times the sum over pairs a < b of the (7,8)-block entries for the two flags obtained by
  deleting a or b;
- (v) it checks that every candidate 9-pattern above λ is listed under `excluded9` with a valid Gordan
  certificate, and that all other candidates are at most λ.

The checkers share only the conventions of `cert/README.md` with the search programs.

## Second implementation

`checker/independent/` holds a second implementation, written independently of `check639.py`, `check639_k8.py`
and `check639_k9.py`. It covers all four certificates.

- `indep_models.py K` (K ≤ 6) and `indep_models7.py NPROC` enumerate the realizable patterns by a walk through the
  cells of the arrangement of the hyperplanes `2 x_d = x_a + x_b + x_c` inside the cone `0 < x_0 < ... < x_{k-1}`,
  changing one sign at a time. Every step is decided exactly, by an integer point or a Gordan certificate; at k = 7
  flips whose restriction to 6 points is not a realizable 6-pattern are rejected first. The output `models_K.json`
  lists an integer point for every realizable pattern.
- `indep_value7.py CERT MODELS_K.json NPROC [--dump VALUES.json]` evaluates a certificate on these integer points. It
  computes densities and flags from the points, enumerates pairs of m-sets (U1, U2) with |U1 ∩ U2| = t, and forms
  Q in integer matrix arithmetic.
- `compare.py` compares the pattern sets and the per-pattern values with `check639.py`. In values mode it also
  checks that the witnesses cover exactly the patterns rebuilt from the trees, one witness per pattern.
- `k8/make_view7.py CERT8 VIEW7.json` writes the blocks with 2m - t ≤ 7 of the k = 8 certificate as a certificate for
  7 points (both arguments are required); `indep_value7.py` evaluates them on the integer points of `models_7.json`
  and writes the values to `f7.json`.
- `k8/indep_k8.py CERT8 NPROC` forms the join of the 7-patterns from their bits, computes the exact value of every
  candidate from `f7.json` and the (6,7) blocks, and writes `indep_k8_out.json`. It reads `models_7.json` and
  `f7.json` from the current directory. `k8/verdict_k8.py CERT8 indep_k8_out.json [--lp]` checks the Gordan
  certificates of the candidates above the bound against rows that it builds itself and prints the verdict. With
  `--lp` it also derives its own certificates.
- `indep_k8_out.json` records the 200 largest values below the bound, a sample, and the candidates above the bound.
  `k8/direct8.py CERT8 indep_k8_out.json NPROC` evaluates these candidates directly from the definition of c(F,G;M),
  without the averaging lemma, and compares the values. `indep_k8.py` samples every n-th candidate, where n is
  `SAMPLE_EVERY` (default 25,000), counted separately in each of its 16·NPROC chunks. The sample size therefore
  depends on NPROC: it is 30,021 candidates for `SAMPLE_EVERY=1500` and 24 processes.
- `k9/audit639.py k9 CERT9 TREEDIR NPROC` checks the 9-point certificate using its own code (`k9/a639lib.py`
  for the trees, the definitions and the Gordan certificates, `k9/a639fan.py` for worker processes). It verifies the
  trees, computes the 7-point values from the definition of c(F,G;M), forms the 8-point candidates choosing their
  7-point restrictions in a different order than `check639_k8.py`, and finds the candidate 9-patterns with at least
  two restrictions in Z by their first two such restrictions. It prints the counts of both kinds of candidate
  9-patterns separately and checks the exclusions against rows that it builds itself. Run it in a new empty directory
  for each certificate: it keeps intermediate files and a cache of the 7-point values in `./tmp`.
  `k9/lemma6_check.py CERT9 TREEDIR 200`, run afterwards in the same directory, compares the values of the
  hierarchical evaluation with values computed directly from the definition of c(F,G;M) for 200 candidate
  8-patterns, the 19 excluded 9-patterns and 8 candidate 9-patterns of the first kind. (Its name comes from an
  internal numbering; it checks Lemma 5.1 and identity (5.2) of the paper.)

The programs for k ≤ 8 need Python 3.9 or later with `numpy`, `scipy` and `python-flint`; the programs in `k9/`
need only the standard library. The programs that rely on assert statements refuse to run under `python -O`, as
the checkers do. Run them in an empty directory:

    I=$(realpath path/to/checker/independent) C=$(realpath path/to/cert)
    python3 -I $I/indep_models.py 4; python3 -I $I/indep_models.py 5; python3 -I $I/indep_models.py 6
    python3 -I $I/indep_models7.py 24
    python3 -I $I/indep_value7.py $C/cert_k7_040076.json models_7.json 24 --dump values7.json
    python3 -I $I/indep_value7.py $C/cert_k6_0402546.json models_6.json 4 --dump values6.json
    for k in 4 5 6 7; do python3 -I $I/compare.py models $k $C/trees models_$k.json; done   # after xz -dk
    python3 -I $I/compare.py values $C/cert_k7_040076.json $C/trees models_7.json values7.json 24
    python3 -I $I/compare.py values $C/cert_k6_0402546.json $C/trees models_6.json values6.json 4
    python3 -I $I/k8/make_view7.py $C/cert_k8_04006983.json view7_lower.json
    python3 -I $I/indep_value7.py view7_lower.json models_7.json 24 --dump f7.json   # reports FAIL: k = 7 view
    python3 -I $I/k8/indep_k8.py $C/cert_k8_04006983.json 24
    python3 -I $I/k8/verdict_k8.py $C/cert_k8_04006983.json indep_k8_out.json --lp
    SAMPLE_EVERY=1500 python3 -I $I/k8/indep_k8.py $C/cert_k8_04006983.json 24
    python3 -I $I/k8/direct8.py $C/cert_k8_04006983.json indep_k8_out.json 24
    mkdir work9 && cd work9
    python3 -I $I/k9/audit639.py k9 $C/cert_k9_040069634.json $C/trees 32
    python3 -I $I/k9/lemma6_check.py $C/cert_k9_040069634.json $C/trees 200

They find the same 3, 30, 1,290 and 136,800 patterns, so every pattern in the lists is realizable. They also find the
same value for every pattern of the certificates for k = 6 and k = 7 (`checker/independent/logs/rerun.log`). For k = 8 they
find 45,319,744 candidates, the same maximum 0.400698290481 and the same two candidates above the bound, and the verdict
is PASS (`checker/independent/logs/k8.log`). The direct evaluation agrees on all 30,223 recorded candidates: the 200
largest values, the 30,021 sampled candidates and the two candidates above the bound
(`checker/independent/logs/k8_direct.log`). The value check of the k = 7 view reports FAIL because the view carries the
claimed bound of the k = 8 certificate, which the 7-point values exceed; only its dump is used. For k = 9 they find
45,319,744 candidate 8-patterns, the largest f8 below the cap, 0.4007963307454, the same 29 candidates above the cap,
|S| = 251 and |Z| = 458. They then find 174 and 330,265 candidate 9-patterns, the same maximum 0.4006963371345768 and the same 19
candidates above λ. The result is PASS, and the direct evaluation agrees exactly (`checker/independent/logs/k9.log`).

## Lean proofs

`lean/` holds proofs in Lean 4, with Mathlib, of the bounds of all four certificates: `lean/k789/` for 7, 8 and 9
points, `lean/k6/` for 6 points, and `lean/k7K/` for 7 points with every check evaluated by the kernel. All three use
the same definitions (`BeatAvg/Defs.lean`, identical in the three directories):

    def beatSet : Set (Fin 4 → ℝ) := {x | x 0 + x 1 + x 2 < 2 * x 3}
    noncomputable def beatProb (μ : Measure ℝ) : ℝ≥0∞ := Measure.pi (fun _ : Fin 4 => μ) beatSet
    def UpperBound (lam : ℝ) : Prop :=
      ∀ μ : Measure ℝ, IsProbabilityMeasure μ → μ (Iio 0) = 0 → beatProb μ ≤ ENNReal.ofReal lam

`UpperBoundRV lam` states the same bound for independent, identically distributed random variables that are
nonnegative almost surely, and `C639` is the supremum of `beatProb μ` over the probability measures μ with
μ (Iio 0) = 0. The final theorems are

    BeatAvg.N.upperBound_k9 : UpperBound (20034817 / 50000000)   -- lean/k789/BeatAvg/N/K9.lean
    BeatAvg.N.upperBound_k8 : UpperBound (4006983 / 10000000)    -- lean/k789/BeatAvg/N/K8.lean
    BeatAvg.N.upperBound_k7 : UpperBound (10019 / 25000)         -- lean/k789/BeatAvg/N/K7.lean
    BeatAvg.N.upperBound_k6 : UpperBound (201273 / 500000)       -- lean/k6/BeatAvg/N/K6.lean
    BeatAvg.K.upperBound_k6 : UpperBound (201273 / 500000)       -- lean/k6/BeatAvg/K/K6.lean
    BeatAvg.K.upperBound_k7 : UpperBound (10019 / 25000)         -- lean/k7K/BeatAvg/K/K7.lean

each together with the forms `upperBoundRV_k*` and `C639_le_k*` in the same file. `BeatAvg/Prob/NonVacuity.lean`
computes `beatProb` = 1/4 for μ = (δ₀ + δ₁)/2, so `UpperBound lam` implies `1/4 ≤ lam`. The lower bound
0.4006953 ≤ C is not formalized.

The proofs follow the paper:

- `BeatAvg/Prob/`: Lemmas 2.1-2.3 and 3.1 for every k ≥ 4, with Lemma 2.1 for measures without atoms, and
  Theorem 3.3 with P = R_k (`flagMethodSound`);
- `BeatAvg/Comb/` (in `lean/k789/` and `lean/k7K/`): Lemma 4.3 (a) and the uniqueness part of (b), Lemma 5.1, the identity (5.2) and
  Lemma 5.2 (`hier_bound`);
- `BeatAvg/Core/`: the checking programs, written in core Lean without Mathlib;
- `BeatAvg/Check/`: their correctness proofs, including the extension trees (Proposition 4.1), the Gordan
  certificates, the exclusions (Lemma 4.2) and the joins. `directOK_sound` (6 and 7 points, used by
  `upperBound_of_direct` and `upperBound_of_directA`), `checkK8_sound` and `checkK9_sound` state that whenever a
  program accepts its input, the blocks built from the input are positive semidefinite and every realizable pattern
  has value at most the claimed bound. `checkK9P_eq` shows that the k = 9 program with parallel tasks returns the
  same result as the sequential one;
- `BeatAvg/Data/`: the certificates as Lean data, written by `tools/export_direct.py` and `tools/export_hier.py`.
  `Data/K9/Extra.lean` (the list S and the patterns of the (7,8) flags) was written by `tools/k9toolP.lean`; its
  docstring names the location of the tool in the development tree. Nothing in the data is trusted, since the
  correctness proofs hold for every input that the programs accept. The few hypotheses of these proofs that do not
  concern the data, such as `levels.length = 4` and the correctness of the enumerations of the tuples (`enumOK`,
  proved by `decide +kernel` in `BeatAvg/K/Enum.lean` of `lean/k789/`), are proved by the kernel;
- `BeatAvg/N/`: the evaluation of each check by `native_decide` (`K6Check`, ..., `K9Check`) and the final theorems;
- `BeatAvg/K/K6.lean` and `BeatAvg/K/K6/` in `lean/k6/`: the proof for 6 points in which the kernel evaluates the
  check. The check is split into 68 theorems in 66 modules (three in `BeatAvg.K.K6.Pre` and one in each of `C0`, ...,
  `C64`), each proved by `decide +kernel`;
- `BeatAvg/K/K7.lean` and `BeatAvg/K/K7/` in `lean/k7K/`: the proof for 7 points in which the kernel evaluates the
  check. The check is split into 13,126 theorems, each proved by `decide +kernel`, in 511 modules (`Pre`, `Top`, `F0`,
  ..., `F64`, `P0`, ..., `P29` and `R0`, ..., `R413`), which also hold 1,769 theorems that combine them. These modules
  do not depend on Mathlib: apart from Lean's own libraries they import only the checker (`BeatAvg/Core/`), the data
  modules with `BeatAvg/Load.lean`, which reads their literals, `BeatAvg/K/Split.lean` and `BeatAvg/K/K7/Defs.lean`.
  They check tables computed from the certificate (`BeatAvg/Data/K7K.lean`, written by `tools/k7ktool.lean`), and
  `BeatAvg.Check.k7K_sound` shows that the checks imply the hypotheses of `flagMethodSound` for the certificate
  `BeatAvg/Data/K7.lean` of `lean/k789/`.

**Axioms and trusted code.** Each `BeatAvg.N` theorem depends on `propext`, `Classical.choice`, `Quot.sound` and one
auxiliary axiom that `native_decide` creates for its check, for example
`BeatAvg.N.K9.check_ok._native.native_decide.ax_1_1`. The axiom states that the check returns true, and `native_decide`
adds it after evaluating the check with code produced by Lean's compiler instead of the kernel. For 7, 8 and 9 points
this code is native code from the precompiled checker libraries; for 6 points `lake build` runs it in Lean's
interpreter. The trusted base of these theorems therefore includes the Lean compiler and the Lean runtime, which carries
out the integer arithmetic, the arrays and hash maps and, for k = 9, the parallel tasks of the checks. For 7, 8 and 9
points it also includes the C compiler. The sources contain no `implemented_by` or `extern` attributes, so the code
evaluates the definitions that the proofs are about. The correctness theorems and `flagMethodSound` depend only on the
three standard axioms, and so do the `BeatAvg.K` theorems for 6 and 7 points.

**Data files.** The four largest data modules of `lean/k789/` are in `lean_data.tar.xz` in the supplement record:
`BeatAvg/Data/K7.lean`, `BeatAvg/Data/K8/Trees.lean`, `BeatAvg/Data/K8/Blocks.lean` and `BeatAvg/Data/K9/Blocks.lean`,
119,527,708 bytes together. Unpack it in `lean/k789/`; then `sha256sum -c SHA256SUMS` checks every file of the
directory. `lean/k7K/` needs two of these files, `BeatAvg/Data/K7.lean` and `BeatAvg/Data/K8/Trees.lean`, the same as in
`lean/k789/`: extract them in `lean/k7K/` with `tar -xJf lean_data.tar.xz BeatAvg/Data/K7.lean
BeatAvg/Data/K8/Trees.lean`; then `sha256sum -c SHA256SUMS` checks every file there. `lean/k789/BUILD.txt` also gives
the commands that regenerate these files from the certificates.

**Building.** All three directories use the toolchain `leanprover/lean4:v4.35.0-rc3` (`lean-toolchain`) and Mathlib at
the tag `v4.35.0-rc3` (commit `c55e6e786f49`, `lake-manifest.json`); `BUILD.txt` in each directory gives the commands.

In `lean/k789/` the checks are compiled with the precompiled checker libraries loaded (`--load-dynlib`), as `BUILD.txt`
does it; `lake build` of the `N/*Check` modules would run `native_decide` in the interpreter. On a server with 96
virtual CPUs, the k = 7 check took 7:46 on one thread. The k = 8 check took 1:15:07 on one thread and 2.0 GB, and the k = 9
check took 9:37 on 96 threads (27,112 CPU-seconds, 3.0 GB). Elaborating `Data/K9/Blocks.lean` took 4:55 and 4.3 GB.

In `lean/k6/` each of the 66 modules of the check took at most 111 s and 12.3 GB. `tools/run_shards.py` limits the
address space of each process to `SHARD_MEM_GB` gigabytes (default 32); in a rebuild on another machine a limit of 16
was too small and 64 was enough. We ran 36 modules in parallel; with many more parallel jobs on a machine with many
cores, Lean may fail to create threads, and fewer jobs, or `-j1` added to the `lean` command in
`lean/k6/tools/run_shards.py`, avoid this.

In `lean/k7K/` use the commands of `BUILD.txt`; the default `lake build` target does not apply there. There, the 511
modules of the check are compiled one process each with `lean -j1` (`tools/run_shards.py`, as `BUILD.txt` gives it). On
a server with 96 virtual CPUs and 614 GB they took 45.2 CPU-hours of user time in all, and each took at most 823 s of
CPU time (917 s of wall-clock time, with 96 modules in parallel) and 16.8 GiB. `BeatAvg/K/K7.lean`, which assembles
them, took 10 s. Of these modules, 476 needed at most 8 GiB, 31 between 8 and 12 GiB, and four between 12 and 17 GiB.
Where `BUILD.txt` refers to earlier snapshots of the development, the files are those of `lean/k789/`, and the header of
`Data/K7K.lean` names the location of `tools/k7ktool.lean` in the development tree.

**Separate check.** The proofs in `lean/k789/` and `lean/k6/` were rebuilt from clean copies of these directories on
another machine, where the checks were evaluated again. For the proofs in `lean/k789/` (7, 8 and 9 points) the exported
proofs were accepted by `leanchecker` and by the kernels nanoda and lean4lean. When the claimed bound in the data is
replaced by 0, the compiled checks return false. For 6 points the exported `BeatAvg.K` theorems, with all 68 theorems of
the check, were accepted by all three kernels, and Lean's kernel replayed every module of both proofs. For the
kernel-only proof for 7 points, the 511 modules of the check were rebuilt from regenerated sources on other machines,
and Lean's kernel replayed the other 61 modules of the proof. nanoda accepted the export of the final theorems with the
13,126 theorems of the check as axioms. All three kernels accepted the export of the correctness proofs and of the
lemmas that connect them to the final theorems. Of the modules of the check, nanoda accepted the 189 that were exported
for it, and lean4lean accepted 31 of a sample of 32 (the 32nd was not run). With one value in `BeatAvg/Data/K7K.lean`
changed by one, a module of the check fails.

## Search programs

`search/` holds the programs that produced the certificates. They need Python 3 with `numpy`, `scipy` and `highspy`, and
the CSDP 6.2 binary. `sdp_csdp.py` calls it as `/usr/bin/csdp`, and `k8/sdp8.py` and `k8/k9run.py` call it as
`$CSDP_BIN`.

- `enum_models.py K NPROC` builds the extension trees, with exact Gordan certificates, using HiGHS in floating
  point. It writes the patterns with integer points to `models_K.npz` and the trees to `tree_K.pkl`.
- `sdp_csdp.py K 't:m,...' OUT [INIT] [ADD]` uses CSDP to solve the semidefinite program by cutting planes over the
  patterns, under the trace bound `TRACE_R` (environment variable) and with pruning of unused flags.
- `round_cert.py K 't:m,...' Q.npz OUT.json DEN_BITS` rounds the numerical blocks to exact sums of squares and
  writes the certificate, and `trees_k.json` from `tree_k.pkl`.
- `lift6.py` averages the value of the k = 6 solution over the 6-point restrictions of each 7-pattern. The k = 7
  run started from the 3,194 patterns whose average is within 0.03 of the k = 6 optimum and added up to 6,000
  patterns per round (`TRACE_R=200`). `init_active7.py` builds larger initial sets that include the patterns of
  sampled measures.
- `mc_check.py`: Monte Carlo sanity checks of the pattern lists and of the values.
- `dual7.py` reads the dual solution of the last k = 7 program from the `.sol` file written by CSDP and the saved
  blocks, and compares it with the patterns of samples from the Bellec–Fritz construction.
- `k8/prep7.py` computes the deletion maps and children lists of the 6- and 7-patterns, `k8/join8.py NPROC` forms
  the 45,319,744 candidates, `k8/bits8.py` computes the 280 sign bits of each candidate, and `k8/lift7.py` averages
  the k = 7 value over the restrictions of each candidate; this average gives the initial set.
  `k8/sdp8.py OUT INIT.npy [ADD] [ROUNDS]` runs the cutting planes over the candidates with `TRACE_R=200`, and a
  candidate is added only after a linear program finds a point that realizes it.
  `k8/round_cert8.py OUT CERT.json [DEN_BITS]` rounds the solution and writes the Gordan certificates of the excluded
  candidates.
- `k8/near8.py OUT` evaluates all 45,319,744 candidates under the k = 8 solution (`OUT_val8.npy`).
  `k8/k9.py` holds the joins of 8-point candidates into 9-patterns, the 9-pattern bits, the (7,8) blocks and the
  writer of the semidefinite program with two trace bounds. `k8/k9run.py OUT ACT8.npy VAL8.npy 1e-3` runs the
  cutting planes for the 9-point certificate (environment: `DELTA8=1e-4`, `TRACE_R=1000`, `TRACE_TOP=100`,
  `CSDP_BIN`, and `RESUME` to continue from a saved state); the (7,8) flags use the realizable candidates whose
  value under the k = 8 solution is at least the value of the k = 8 program minus 10⁻³. `k8/round_cert9.py OUT CERT.json 40` rounds the final state and writes the Gordan
  certificates of the excluded candidates. `k8/traces.py` prints the traces of saved solutions. The copies of
  `k8/k9.py` and `k8/k9run.py` here are the versions used from the second run on: they always write two trace bounds
  and keep only candidates with at least two restrictions in the set. The first run (`k9_run_h9a.log`) used an
  earlier version that wrote a single trace bound and kept candidates with at least one restriction in the set.

Both the k = 8 certificate and the k = 9 certificate were computed using CSDP 6.2 built with OpenMP on a separate
32-thread server.

Other environment variables of the search programs: `LOWER` (pairs of the blocks with 2m - t ≤ 7, read by `k8/sdp8.py`; default
`1:4,2:4,4:5,5:6`), `RESUME_ADD` (candidates to add on resume), `RESUME_EVAL` (re-evaluate the saved solution on resume)
and `TAG` (file name suffix).

Some docstrings and comments of the search programs use an internal numbering: "Lemma 4" in `flags.py` is Lemma 3.1 of
the paper, "Lemma 5" in `k8/join8.py` is Lemma 4.3, and "Lemma 7" or "Lemma 7'" in `k8/k9run.py` is Lemma 5.2, whose
sets (2) and (3) are called "(b)" and "(c)" there.

`search/logs/` holds the log of the k = 7 enumeration (`enum7.log`), of the four cutting-plane rounds of the k = 7 program
(`sdp_k7.log`) and of `dual7.py` (`dual7.log`). For k = 9 it holds the logs of the cutting-plane runs: `k9_run_h9a.log`
(two rounds with one trace bound) and `k9_run_h9b.log` and `k9_run_h9b2.log` (the continuation with the two trace
bounds, ending with no violated realizable candidate). It also holds the CSDP output of the last solve
(`k9_csdp_last.log`) and the output of the rounding (`k9_round.log`). The k = 8 cutting-plane run is not logged here.

## License and citation

Apache-2.0 (`LICENSE`). Please cite the paper; see `CITATION.cff`.
