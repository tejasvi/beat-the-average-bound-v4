import BeatAvg.Core.KTab
import BeatAvg.Core.Chain

/-!
# The check with 7 points for the kernel (core Lean only)

`f7(M) = (1/7) Σ_u f6(M|u) + (blocks (5,6), pairs of points) + (blocks (1,4), triples)`, where the faces `M|u` are
numbered by their position in the sorted list `s6` of 6-patterns. Tables (`K7Tab`): the sorted 6-patterns, the
values `f6` (blocks with `2m - t ≤ 6`, evaluated at 6 points), the top flags of each 6-pattern and the matrix rows
of the blocks (5,6). Every table entry used is checked against its definition (`f6OK`, `topSoundK`,
`topCompleteK`, `qrowOK`); the patterns are checked in pieces of tree records (`recsK7OK`).
-/

namespace BeatAvg.Check

/-- Tables of the kernel check with 7 points. -/
structure K7Tab where
  /-- number of sorted 6-patterns -/
  n6 : Nat
  /-- sorted 6-patterns, fields of 60 bits -/
  s6 : Nat
  /-- width of the signed fields of `f6` -/
  w6 : Nat
  /-- `f6 · den6` (`valNum` at 6 points) -/
  f6 : Nat
  /-- top flags per 6-pattern number (`decTop`), tree of depth 11 -/
  top : KT
  /-- width of the signed matrix entries -/
  wq : Nat
  /-- matrix rows of the blocks (5,6), one tree of depth 9 per block -/
  qrows : List KT
  /-- flag index + 1 (0 if absent) of the block (1,4), by `bits + 16 · mask`, fields of 4 bits -/
  ft14 : Nat
  /-- number of flags of the block (1,4) -/
  n14 : Nat
  /-- width of the signed entries of its matrix -/
  wq14 : Nat
  /-- its matrix, entry `(i, j)` at field `n14 · i + j` -/
  q14 : Nat

/-- `delIdx 7` as a literal (`del7_eq`). -/
def del7 : List (List Nat) := [[9, 12, 15, 19, 29, 30, 31, 35, 36, 37, 41, 42, 43, 47, 48, 49, 56, 57, 58, 59, 74, 75, 76, 77, 78, 79, 84, 85, 86, 87, 88, 89, 94, 95, 96, 97, 98, 99, 104, 105, 106, 107, 108, 109, 114, 115, 116, 117, 118, 119, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139], [6, 11, 14, 18, 23, 24, 25, 33, 34, 37, 39, 40, 43, 45, 46, 49, 53, 54, 55, 59, 64, 65, 66, 67, 68, 69, 81, 82, 83, 87, 88, 89, 91, 92, 93, 97, 98, 99, 101, 102, 103, 107, 108, 109, 111, 112, 113, 117, 118, 119, 124, 125, 126, 127, 128, 129, 136, 137, 138, 139], [5, 8, 13, 17, 21, 22, 25, 27, 28, 31, 38, 40, 42, 44, 46, 48, 51, 52, 55, 58, 61, 62, 63, 67, 68, 69, 71, 72, 73, 77, 78, 79, 90, 92, 93, 95, 96, 99, 100, 102, 103, 105, 106, 109, 110, 112, 113, 115, 116, 119, 121, 122, 123, 127, 128, 129, 133, 134, 135, 139], [4, 7, 10, 16, 20, 22, 24, 26, 28, 30, 32, 34, 36, 44, 45, 47, 50, 52, 54, 57, 60, 62, 63, 65, 66, 69, 70, 72, 73, 75, 76, 79, 80, 82, 83, 85, 86, 89, 100, 101, 103, 104, 106, 108, 110, 111, 113, 114, 116, 118, 120, 122, 123, 125, 126, 129, 131, 132, 135, 138], [0, 1, 2, 3, 20, 21, 23, 26, 27, 29, 32, 33, 35, 38, 39, 41, 50, 51, 53, 56, 60, 61, 63, 64, 66, 68, 70, 71, 73, 74, 76, 78, 80, 81, 83, 84, 86, 88, 90, 91, 93, 94, 96, 98, 110, 111, 112, 114, 115, 117, 120, 121, 123, 124, 126, 128, 130, 132, 134, 137], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 60, 61, 62, 64, 65, 67, 70, 71, 72, 74, 75, 77, 80, 81, 82, 84, 85, 87, 90, 91, 92, 94, 95, 97, 100, 101, 102, 104, 105, 107, 120, 121, 122, 124, 125, 127, 130, 131, 133, 136], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59]]

/-- `tripleTable (tupList 7) (tupList 4) 7 1 4` as a literal (`tab14_eq`). -/
def tab14 : List TripRow := [([0, 1, 2, 3], 1, [69, 103, 113, 129], 1), ([4, 7, 10, 16], 1, [68, 93, 112, 128], 1), ([5, 8, 13, 17], 1, [66, 83, 111, 126], 1), ([6, 11, 14, 18], 1, [63, 73, 110, 123], 1), ([20, 26, 32, 50], 1, [67, 92, 102, 127], 1), ([21, 27, 38, 51], 1, [65, 82, 101, 125], 1), ([23, 33, 39, 53], 1, [62, 72, 100, 122], 1), ([22, 28, 44, 52], 1, [64, 81, 91, 124], 1), ([24, 34, 45, 54], 1, [61, 71, 90, 121], 1), ([25, 40, 46, 55], 1, [60, 70, 80, 120], 1), ([60, 70, 80, 120], 1, [25, 40, 46, 55], 1), ([61, 71, 90, 121], 1, [24, 34, 45, 54], 1), ([64, 81, 91, 124], 1, [22, 28, 44, 52], 1), ([62, 72, 100, 122], 1, [23, 33, 39, 53], 1), ([65, 82, 101, 125], 1, [21, 27, 38, 51], 1), ([67, 92, 102, 127], 1, [20, 26, 32, 50], 1), ([63, 73, 110, 123], 1, [6, 11, 14, 18], 1), ([66, 83, 111, 126], 1, [5, 8, 13, 17], 1), ([68, 93, 112, 128], 1, [4, 7, 10, 16], 1), ([69, 103, 113, 129], 1, [0, 1, 2, 3], 1), ([0, 1, 2, 3], 2, [79, 106, 116, 135], 1), ([4, 7, 10, 16], 2, [78, 96, 115, 134], 1), ([5, 8, 13, 17], 2, [76, 86, 114, 132], 1), ([9, 12, 15, 19], 1, [63, 73, 110, 123], 2), ([20, 26, 32, 50], 2, [77, 95, 105, 133], 1), ([21, 27, 38, 51], 2, [75, 85, 104, 131], 1), ([29, 35, 41, 56], 1, [62, 72, 100, 122], 2), ([22, 28, 44, 52], 2, [74, 84, 94, 130], 1), ([30, 36, 47, 57], 1, [61, 71, 90, 121], 2), ([31, 42, 48, 58], 1, [60, 70, 80, 120], 2), ([60, 70, 80, 120], 2, [31, 42, 48, 58], 1), ([61, 71, 90, 121], 2, [30, 36, 47, 57], 1), ([74, 84, 94, 130], 1, [22, 28, 44, 52], 2), ([62, 72, 100, 122], 2, [29, 35, 41, 56], 1), ([75, 85, 104, 131], 1, [21, 27, 38, 51], 2), ([77, 95, 105, 133], 1, [20, 26, 32, 50], 2), ([63, 73, 110, 123], 2, [9, 12, 15, 19], 1), ([76, 86, 114, 132], 1, [5, 8, 13, 17], 2), ([78, 96, 115, 134], 1, [4, 7, 10, 16], 2), ([79, 106, 116, 135], 1, [0, 1, 2, 3], 2), ([0, 1, 2, 3], 4, [89, 108, 118, 138], 1), ([4, 7, 10, 16], 4, [88, 98, 117, 137], 1), ([6, 11, 14, 18], 2, [76, 86, 114, 132], 2), ([9, 12, 15, 19], 2, [66, 83, 111, 126], 2), ([20, 26, 32, 50], 4, [87, 97, 107, 136], 1), ([23, 33, 39, 53], 2, [75, 85, 104, 131], 2), ([29, 35, 41, 56], 2, [65, 82, 101, 125], 2), ([24, 34, 45, 54], 2, [74, 84, 94, 130], 2), ([30, 36, 47, 57], 2, [64, 81, 91, 124], 2), ([37, 43, 49, 59], 1, [60, 70, 80, 120], 4), ([60, 70, 80, 120], 4, [37, 43, 49, 59], 1), ([64, 81, 91, 124], 2, [30, 36, 47, 57], 2), ([74, 84, 94, 130], 2, [24, 34, 45, 54], 2), ([65, 82, 101, 125], 2, [29, 35, 41, 56], 2), ([75, 85, 104, 131], 2, [23, 33, 39, 53], 2), ([87, 97, 107, 136], 1, [20, 26, 32, 50], 4), ([66, 83, 111, 126], 2, [9, 12, 15, 19], 2), ([76, 86, 114, 132], 2, [6, 11, 14, 18], 2), ([88, 98, 117, 137], 1, [4, 7, 10, 16], 4), ([89, 108, 118, 138], 1, [0, 1, 2, 3], 4), ([0, 1, 2, 3], 8, [99, 109, 119, 139], 1), ([5, 8, 13, 17], 4, [88, 98, 117, 137], 2), ([6, 11, 14, 18], 4, [78, 96, 115, 134], 2), ([9, 12, 15, 19], 4, [68, 93, 112, 128], 2), ([21, 27, 38, 51], 4, [87, 97, 107, 136], 2), ([23, 33, 39, 53], 4, [77, 95, 105, 133], 2), ([29, 35, 41, 56], 4, [67, 92, 102, 127], 2), ([25, 40, 46, 55], 2, [74, 84, 94, 130], 4), ([31, 42, 48, 58], 2, [64, 81, 91, 124], 4), ([37, 43, 49, 59], 2, [61, 71, 90, 121], 4), ([61, 71, 90, 121], 4, [37, 43, 49, 59], 2), ([64, 81, 91, 124], 4, [31, 42, 48, 58], 2), ([74, 84, 94, 130], 4, [25, 40, 46, 55], 2), ([67, 92, 102, 127], 2, [29, 35, 41, 56], 4), ([77, 95, 105, 133], 2, [23, 33, 39, 53], 4), ([87, 97, 107, 136], 2, [21, 27, 38, 51], 4), ([68, 93, 112, 128], 2, [9, 12, 15, 19], 4), ([78, 96, 115, 134], 2, [6, 11, 14, 18], 4), ([88, 98, 117, 137], 2, [5, 8, 13, 17], 4), ([99, 109, 119, 139], 1, [0, 1, 2, 3], 8), ([4, 7, 10, 16], 8, [99, 109, 119, 139], 2), ([5, 8, 13, 17], 8, [89, 108, 118, 138], 2), ([6, 11, 14, 18], 8, [79, 106, 116, 135], 2), ([9, 12, 15, 19], 8, [69, 103, 113, 129], 2), ([22, 28, 44, 52], 4, [87, 97, 107, 136], 4), ([24, 34, 45, 54], 4, [77, 95, 105, 133], 4), ([30, 36, 47, 57], 4, [67, 92, 102, 127], 4), ([25, 40, 46, 55], 4, [75, 85, 104, 131], 4), ([31, 42, 48, 58], 4, [65, 82, 101, 125], 4), ([37, 43, 49, 59], 4, [62, 72, 100, 122], 4), ([62, 72, 100, 122], 4, [37, 43, 49, 59], 4), ([65, 82, 101, 125], 4, [31, 42, 48, 58], 4), ([75, 85, 104, 131], 4, [25, 40, 46, 55], 4), ([67, 92, 102, 127], 4, [30, 36, 47, 57], 4), ([77, 95, 105, 133], 4, [24, 34, 45, 54], 4), ([87, 97, 107, 136], 4, [22, 28, 44, 52], 4), ([69, 103, 113, 129], 2, [9, 12, 15, 19], 8), ([79, 106, 116, 135], 2, [6, 11, 14, 18], 8), ([89, 108, 118, 138], 2, [5, 8, 13, 17], 8), ([99, 109, 119, 139], 2, [4, 7, 10, 16], 8), ([20, 26, 32, 50], 8, [99, 109, 119, 139], 4), ([21, 27, 38, 51], 8, [89, 108, 118, 138], 4), ([23, 33, 39, 53], 8, [79, 106, 116, 135], 4), ([29, 35, 41, 56], 8, [69, 103, 113, 129], 4), ([22, 28, 44, 52], 8, [88, 98, 117, 137], 4), ([24, 34, 45, 54], 8, [78, 96, 115, 134], 4), ([30, 36, 47, 57], 8, [68, 93, 112, 128], 4), ([25, 40, 46, 55], 8, [76, 86, 114, 132], 4), ([31, 42, 48, 58], 8, [66, 83, 111, 126], 4), ([37, 43, 49, 59], 8, [63, 73, 110, 123], 4), ([63, 73, 110, 123], 4, [37, 43, 49, 59], 8), ([66, 83, 111, 126], 4, [31, 42, 48, 58], 8), ([76, 86, 114, 132], 4, [25, 40, 46, 55], 8), ([68, 93, 112, 128], 4, [30, 36, 47, 57], 8), ([78, 96, 115, 134], 4, [24, 34, 45, 54], 8), ([88, 98, 117, 137], 4, [22, 28, 44, 52], 8), ([69, 103, 113, 129], 4, [29, 35, 41, 56], 8), ([79, 106, 116, 135], 4, [23, 33, 39, 53], 8), ([89, 108, 118, 138], 4, [21, 27, 38, 51], 8), ([99, 109, 119, 139], 4, [20, 26, 32, 50], 8), ([60, 70, 80, 120], 8, [99, 109, 119, 139], 8), ([61, 71, 90, 121], 8, [89, 108, 118, 138], 8), ([64, 81, 91, 124], 8, [79, 106, 116, 135], 8), ([74, 84, 94, 130], 8, [69, 103, 113, 129], 8), ([62, 72, 100, 122], 8, [88, 98, 117, 137], 8), ([65, 82, 101, 125], 8, [78, 96, 115, 134], 8), ([75, 85, 104, 131], 8, [68, 93, 112, 128], 8), ([67, 92, 102, 127], 8, [76, 86, 114, 132], 8), ([77, 95, 105, 133], 8, [66, 83, 111, 126], 8), ([87, 97, 107, 136], 8, [63, 73, 110, 123], 8), ([63, 73, 110, 123], 8, [87, 97, 107, 136], 8), ([66, 83, 111, 126], 8, [77, 95, 105, 133], 8), ([76, 86, 114, 132], 8, [67, 92, 102, 127], 8), ([68, 93, 112, 128], 8, [75, 85, 104, 131], 8), ([78, 96, 115, 134], 8, [65, 82, 101, 125], 8), ([88, 98, 117, 137], 8, [62, 72, 100, 122], 8), ([69, 103, 113, 129], 8, [74, 84, 94, 130], 8), ([79, 106, 116, 135], 8, [64, 81, 91, 124], 8), ([89, 108, 118, 138], 8, [61, 71, 90, 121], 8), ([99, 109, 119, 139], 8, [60, 70, 80, 120], 8)]

/-- Bits of the face of `x` (a 7-pattern) deleting `u`. -/
def faceBits (x u : Nat) : Nat := gather x (del7.getD u [])

/-- The number of the face (verified by the caller). -/
def faceNum (T : K7Tab) (x u : Nat) : Nat := bsearch T.s6 60 (faceBits x u) 20 0 T.n6

/-- Top flags of the face at position `b`. -/
def topL (T : K7Tab) (qs : List Nat) (b : Nat) : List (Nat × Nat × Nat) := decTop (KT.get 11 T.top (qs.getD b 0))

/-- Matrix entry of a block (5,6). -/
def qfK (T : K7Tab) (blk i j : Nat) : Int := sfld (KT.get 9 (T.qrows.getD blk (.leaf 0)) i) T.wq j

/-- The block (1,4) at 7 points (`blockSumT` with the tables `ft14`, `q14`). -/
def blockSum14K (T : K7Tab) (x : Nat) : Int :=
  (tab14.map fun e =>
    let a := fld T.ft14 4 (gather x e.1 + 16 * e.2.1)
    let b := fld T.ft14 4 (gather x e.2.2.1 + 16 * e.2.2.2)
    if 0 < a ∧ 0 < b then sfld T.q14 T.wq14 (T.n14 * (a - 1) + (b - 1)) else 0).sum

/-- `val · S7`, `S7 = 42 · den6 · qscale · d14`, for a 7-pattern `x` with face numbers `qs`. -/
def valK7 (T : K7Tab) (qscale den6 d14 : Nat) (x : Nat) (qs : List Nat) : Int :=
  let Ls := (List.range 7).map (topL T qs)
  6 * (qscale : Int) * d14 * ((List.range 7).map fun u => sfld T.f6 T.w6 (qs.getD u 0)).sum +
    ((den6 * d14 : Nat) : Int) * topTermF 7 (fun b => Ls.getD b []) (qfK T) +
    42 * (den6 : Int) * blockSum14K T x

/-- One 7-pattern: its faces are numbered and its value is at most `lamN / lamD`. -/
def leafK7OK (T : K7Tab) (qscale den6 d14 lamN lamD : Nat) (x : Nat) : Bool :=
  let qs := (List.range 7).map (faceNum T x)
  (List.range 7).all (fun u => decide (qs.getD u 0 < T.n6) && fld T.s6 60 (qs.getD u 0) == faceBits x u) &&
    decide (valK7 T qscale den6 d14 x qs * lamD ≤ (lamN * (42 * den6 * qscale * d14) : Nat))

/-- The tree records `lo, …, lo + n - 1` of level 7: the walk is accepted and every leaf passes. -/
def recsK7OK (T : K7Tab) (qscale den6 d14 lamN lamD : Nat) (recs : List TreeRec) (lo n : Nat) : Bool :=
  ((recs.drop lo).take n).all fun r =>
    treeOK nextTok 7 (tupList 6).length (tupList 7) r && r.2.2.2.all (leafK7OK T qscale den6 d14 lamN lamD)

/-- The tables of the block (1,4) and the shape of `tab14`. -/
def tab14OK (T : K7Tab) (one : DBlock) : Bool :=
  decide (T.n14 = one.flags.length) && decide (T.n14 < 15) &&
    tab14.all (fun e => e.1.length == 4 && decide (e.2.1 < 16) && e.2.2.1.length == 4 && decide (e.2.2.2 < 16)) &&
    (List.range 256).all (fun key => fld T.ft14 4 key ==
      match lookupIdx one.flags (key % 16, key / 16) with | some i => i + 1 | none => 0) &&
    (List.range T.n14).all fun i => (List.range T.n14).all fun j => sfld T.q14 T.wq14 (T.n14 * i + j) == one.qint i j

/-- The sorted 6-patterns are strictly increasing. -/
def s6Sorted (T : K7Tab) : Bool := (List.range (T.n6 - 1)).all fun q => decide (fld T.s6 60 q < fld T.s6 60 (q + 1))

/-- The values `f6` for the numbers `lo, …, lo + n - 1`. -/
def f6OK (T : K7Tab) (low : List DBlock) (den6 qscale lo n : Nat) : Bool :=
  (((List.range T.n6).drop lo).take n).all fun q =>
    sfld T.f6 T.w6 q == valNum 6 (tupList 6) low den6 qscale (fld T.s6 60 q)

/-- The top lists of the numbers `lo, …, lo + n - 1` list flags of the blocks (5,6), each once. -/
def topSoundK (T : K7Tab) (top : List DBlock) (lo n : Nat) : Bool :=
  (((List.range T.n6).drop lo).take n).all fun q =>
    let l := decTop (KT.get 11 T.top q)
    decide l.Nodup && l.all fun e =>
      decide (e.1 < 6) && (flagAt top e.2.1 e.2.2 == (fld T.s6 60 q, maskExcept 6 e.1))

/-- `key` is not among the first `n` fields (increasing): it lies strictly between the fields at `q` and `q + 1`, or
below the first, or above the last. -/
def absentAt (S w n key q : Nat) : Bool :=
  decide (n = 0) || (decide (key < fld S w 0)) ||
    (decide (q < n) && decide (fld S w q < key) && (decide (n ≤ q + 1) || decide (key < fld S w (q + 1))))

/-- Every flag of a block (5,6) whose pattern is a numbered 6-pattern is in the top list of that number. -/
def topCompleteK (T : K7Tab) (top : List DBlock) : Bool :=
  (List.range top.length).all fun blk =>
    let fl := (top.getD blk dfltB).flags
    (List.range fl.length).all fun i =>
      let f := fl.getD i (0, 0)
      let q := bsearch T.s6 60 f.1 20 0 T.n6
      if decide (q < T.n6) && fld T.s6 60 q == f.1 then
        (List.range 6).all fun p => f.2 != maskExcept 6 p || (decTop (KT.get 11 T.top q)).contains (p, blk, i)
      else absentAt T.s6 60 T.n6 f.1 q

/-- `acc + c · v` (missing entries of `v` count as 0). -/
def addScaled : List Int → Int → List Int → List Int
  | a :: as, c, x :: xs => (a + c * x) :: addScaled as c xs
  | as, _, [] => as
  | [], _, _ :: _ => []

/-- Row `i` of `Qint`. -/
def qrowList (b : DBlock) (i : Nat) : List Int :=
  b.terms.foldl (fun acc p => addScaled acc ((p.1 : Int) * p.2.getD i 0) p.2) (List.replicate b.flags.length 0)

/-- The rows `lo, …, lo + n - 1` of the matrix of block `blk` (5,6). -/
def qrowOK (T : K7Tab) (top : List DBlock) (blk lo n : Nat) : Bool :=
  let b := top.getD blk dfltB
  (((List.range b.flags.length).drop lo).take n).all fun i =>
    let row := qrowList b i
    (List.range b.flags.length).all fun j => qfK T blk i j == row.getD j 0

end BeatAvg.Check
