# Certificates

## Statements

| Certificate | Statement | Checker | Mathematics (numbering of the paper) |
|---|---|---|---|
| `cert_k9_040069634.json` (supplement record) | `C <= 20034817/50000000 = 0.40069634` | `checker/check639_k9.py` (imports `checker/check639_k8.py` and `checker/check639.py`) | Lemma 5.2 (hierarchical bound) with Theorem 3.3: Proposition 4.1 (trees of levels 4 to 7), Lemmas 4.2 and 4.3 and the joins of Sections 4 and 5.4 (Gordan exclusions), Lemma 5.1 and identity (5.2) (values through 8- and 7-point restrictions) |
| `cert_k8_04006983.json` (supplement record) | `C <= 4006983/10000000 = 0.4006983` | `checker/check639_k8.py` (imports `checker/check639.py`) | Theorem 3.3 over P_8 = J_8 minus the excluded patterns: Proposition 4.1 (trees of levels 4 to 7), Lemma 4.2 and the join of Section 4 (Gordan exclusions), Lemma 5.1 (values through 7-point restrictions) |
| `cert_k7_040076.json` | `C <= 10019/25000 = 0.40076` | `checker/check639.py` | Theorem 3.3 and Proposition 4.1 |
| `cert_k6_0402546.json` | `C <= 201273/500000 = 0.402546` | `checker/check639.py` | Theorem 3.3 and Proposition 4.1 |

The commands are in `../README.md`:

    python3 -I checker/check639_k9.py cert/cert_k9_040069634.json cert/trees 32
    python3 -I checker/check639_k8.py cert/cert_k8_04006983.json cert/trees 24
    python3 -I checker/check639.py cert/cert_k7_040076.json cert/trees 24
    python3 -I checker/check639.py cert/cert_k6_0402546.json cert/trees 4

## Files

| File | Bytes | Content |
|---|---|---|
| `cert_k7_040076.json` | 8,949,389 | certificate of `C <= 10019/25000` on 7 sample points |
| `cert_k6_0402546.json` | 93,872 | certificate of `C <= 201273/500000` on 6 sample points |
| `trees/trees_4.json` | 114 | extension trees, level 4 (3 Gordan certificates) |
| `trees/trees_5.json` | 2,286 | extension trees, level 5 (66 Gordan certificates) |
| `trees/trees_6.json` | 195,492 | extension trees, level 6 (4,528 Gordan certificates) |
| `trees/trees_7.json.xz` | 3,760,424 | extension trees, level 7 (962,580 Gordan certificates), xz-compressed |

The certificates of `C <= 20034817/50000000` on 9 sample points and of `C <= 4006983/10000000` on 8 sample points
are too large for this repository. They are on the Zenodo supplement record
([doi:10.5281/zenodo.23548814](https://doi.org/10.5281/zenodo.23548814)) as `cert_k9_040069634.json.xz` (41,183,432 bytes,
SHA-256 `3bf79d2b65f76e8632893e4935c882bf57c72c98d5394b2962424f85234faae3`) and `cert_k8_04006983.json.xz`
(14,525,276 bytes, SHA-256 `2767ed0a489d927f8990b5d64bb7be62f9caca901bfff683000ade348571b05f`). Put them into this
directory and decompress the `.xz` files before checking
(`xz -dk cert_k9_040069634.json.xz cert_k8_04006983.json.xz trees/trees_7.json.xz`):

- `cert_k9_040069634.json`: 113,258,415 bytes, SHA-256 `7e81ddf16d8227501425bcdaba6c576dab7c45ffb9e260747fcd1000abb1f9c5`;
- `cert_k8_04006983.json`: 40,068,357 bytes, SHA-256 `39210ff192300520693f823e1a9363b9c9036201d2a458931051c6c932254f0f`;
- `trees/trees_7.json`: 54,649,584 bytes, SHA-256 `31a5573ed66e7d40c346c34595ff688919c3476272565530a139c7c5f9c0eb90`.

The trees of levels 4 to 7 take 54,847,476 bytes as JSON and 3,958,316 bytes with level 7 compressed. All four
certificates use the same trees; the certificates for 8 and 9 points need no trees of levels 8 or 9.
`SHA256SUMS` lists the files of this directory (`sha256sum -c SHA256SUMS`).

## Format of a certificate

A JSON object with keys

- `K`: the number of sample points k;
- `claimed`: `[numerator, denominator]` of the claimed bound;
- `blocks`: a list of blocks, each with
  - `t`, `m`: the number of marked points and the size of the flags (the checkers require `2m - t <= K`);
  - `flags`: a list of `[bits, J]`, where `bits` is an m-pattern written as a 0/1 string over T_m in the documented
    order (below) and `J` is the list of the t marked positions (0-based, increasing);
  - `sos`: `{"den": D, "terms": [[w_num, w_den, v], ...]}`, meaning
    `Q = sum (w_num / w_den) (v / D) (v / D)^T` with integer vectors `v` and `w_num >= 0`, `w_den > 0`;
- `excluded` (K = 8 only): a list of `[bits, cert]`, where `bits` is an 8-pattern as a 0/1 string over T_8 and `cert`
  is a list of `[row, multiplier]` pairs with positive integer multipliers. Row ids `0, ..., 7` are `x_0 > 0` and
  `x_i - x_{i-1} > 0`; row id `8 + tau` is `(+-) L_tau > 0` with the sign of `tau` in the pattern. The checker verifies
  that `sum multiplier * row = 0`, so the pattern is not realizable;
- `cap`, `excluded8`, `excluded9` (K = 9 only): `cap` is `[numerator, denominator]` of the bound on the values f8 of
  8-patterns (at least the claimed bound); `excluded8` and `excluded9` are lists of `[bits, cert]` as for `excluded`,
  with 8-patterns over T_8 and 9-patterns over T_9 (row ids `0, ..., 8` and `9 + tau` for K = 9).

In the k = 8 certificate the blocks with `(t, m) = (6, 7)` have flags on 7-patterns with 6 marked positions; the
other blocks have `2m - t <= 7`. In the k = 9 certificate the blocks with `(t, m) = (7, 8)` have flags on 8-patterns
with 7 marked positions, the blocks with `(t, m) = (6, 7)` are as for k = 8, and the other blocks have `2m - t <= 7`.

Points are 0-based and sorted, `0 < x_0 < ... < x_{k-1}`. T_k lists the tuples `(d, a, b, c)` with `a < b < c` and
`d` not in `{a, b, c}` by level `j = max(d, a, b, c)` for `j = 3, ..., k-1`, inside a level by `d`, then by
`(a, b, c)` lexicographically. Bit 1 means `2 x_d - x_a - x_b - x_c > 0`.

## Format of the trees

`trees_k.json` holds one entry `[perm, tokens]` for each pattern of level k - 1, in the order in which the checker
rebuilds that level (starting from the single empty 3-pattern). `perm` is the order in which the tuples of level
k - 1 (those containing the point k - 1) are decided. `tokens` is the tree in preorder:

- `2`: both signs occur; the subtree for bit 1 follows, then the subtree for bit 0;
- `1, cert` or `0, cert`: only the given bit occurs, and `cert` refutes the other one;
- `cert = n, row_1, mult_1, ..., row_n, mult_n` with positive integer multipliers. Row ids `0, ..., k-1` are
  `x_0 > 0` and `x_i - x_{i-1} > 0`; row id `k + tau` is `(+-) L_tau > 0` for the tuple `tau` of T_k, with the sign
  that `tau` has at this node (from the parent pattern, from the path, or the refuted sign). The checker verifies
  that `sum mult * row = 0` (Gordan certificate).
