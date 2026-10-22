import BeatAvg.Check.HierGen

/-!
# Soundness of the check with 9 points, part 2: tuples of realizable 8-patterns, and values at 8 points
-/

open Finset

namespace BeatAvg.Check

open Std

/-- Bit vectors for every pattern. -/
theorem exists_encode {k : ℕ} (T : TupEnum k) (M : Pat k) : ∃ x < 2 ^ T.l.length, T.decode x = M := by
  obtain ⟨n, hn, hS⟩ := ofMask_surj T.l.length
    (Finset.univ.filter fun i : Fin T.l.length => M (T.tupAt i i.2) = true)
  refine ⟨n, hn, ?_⟩
  funext τ
  have h := congrArg (fun S => (⟨T.rank τ, T.rank_lt τ⟩ : Fin T.l.length) ∈ S) hS
  simp only [mem_ofMask, Finset.mem_filter, Finset.mem_univ, true_and, T.tupAt_rank] at h
  simp only [TupEnum.decode]
  cases hM : M τ <;> simp_all

/-- `idOK` makes the numbering injective. -/
theorem idOK_inj {P : Array ℕ} {id : HashMap ℕ ℕ} (hid : idOK P id = true) {n n' : ℕ} (hn : n < P.size)
    (hn' : n' < P.size) (h : P.getD n 0 = P.getD n' 0) : n = n' := by
  have h1 := List.all_eq_true.1 hid n (List.mem_range.2 hn)
  have h2 := List.all_eq_true.1 hid n' (List.mem_range.2 hn')
  simp only [beq_iff_eq] at h1 h2
  rw [h] at h1
  rw [h1] at h2
  exact Option.some.inj h2

theorem idOK_get {P : Array ℕ} {id : HashMap ℕ ℕ} (hid : idOK P id = true) {n : ℕ} (hn : n < P.size) :
    id.get? (P.getD n 0) = some n := by
  have h1 := List.all_eq_true.1 hid n (List.mem_range.2 hn)
  simpa using h1

/-- Numbers of the same pattern are equal (bounded entries, injective numbering). -/
theorem num_unique {P : Array ℕ} {id : HashMap ℕ ℕ} (hid : idOK P id = true) {k : ℕ} (T : TupEnum k)
    (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ T.l.length) {n n' : ℕ} (hn : n < P.size) (hn' : n' < P.size)
    (h : T.decode (P.getD n 0) = T.decode (P.getD n' 0)) : n = n' :=
  idOK_inj hid hn hn' (decode_inj T (hPlt n hn) (hPlt n' hn') h)

theorem getD_delIdx {k u : ℕ} (hu : u < k) :
    (delIdx k).getD u [] = restrIdx (tupList k) (tupList (k - 1)) (ptsOf k (maskExcept k u)) := by
  rw [delIdx, getD_range_map k _ [] hu]

theorem getD_delIdx8 {u : ℕ} (hu : u < 8) :
    (delIdx 8).getD u [] = restrIdx (tupList 8) (tupList 7) (ptsOf 8 (maskExcept 8 u)) := getD_delIdx hu

theorem getD_delIdx9 {u : ℕ} (hu : u < 9) :
    (delIdx 9).getD u [] = restrIdx (tupList 9) (tupList 8) (ptsOf 9 (maskExcept 9 u)) := getD_delIdx hu

/-- The tuple of a realizable 8-pattern is computed from its bits by `exclTuple`. -/
theorem exclTuple_of_tuple {P : Array ℕ} {id : HashMap ℕ ℕ} (hid : idOK P id = true) (T8 : TupEnum 8)
    (hT8 : T8.l = tupList 8) (T7 : TupEnum 7) (hT7 : T7.l = tupList 7)
    (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ T7.l.length) {N : Pat 8} {x : ℕ} (hx : T8.decode x = N)
    {R : Array ℕ} (hRs : R.size = 8) (hRlt : ∀ u < 8, R.getD u 0 < P.size)
    (hR : ∀ u : Fin 8, T7.decode (P.getD (R.getD u 0) 0) = restrict (Fin.succAboveOrderEmb u) N) :
    exclTuple P id x = some R := by
  have hg : ∀ u < 8, id.get? (gather x ((delIdx 8).getD u [])) = some (R.getD u 0) := by
    intro u hu
    have e1 : gather x ((delIdx 8).getD u []) = P.getD (R.getD u 0) 0 := by
      rw [getD_delIdx8 hu]
      apply decode_inj T7
      · have := gather_lt x (restrIdx (tupList 8) (tupList 7) (ptsOf 8 (maskExcept 8 u)))
        rw [restrIdx_length] at this
        rw [hT7]
        exact this
      · exact hPlt _ (hRlt u hu)
      · have hd := decode_del T8 T7 ⟨u, hu⟩ x
        rw [hT8, hT7] at hd
        rw [hR ⟨u, hu⟩, ← hx]
        exact hd
    rw [e1]
    exact idOK_get hid (hRlt u hu)
  unfold exclTuple
  have hall : ((List.range 8).map fun u => id.get? (gather x ((delIdx 8).getD u []))) =
      (List.range 8).map fun u => some (R.getD u 0) := by
    apply List.map_congr_left
    intro u hu
    exact hg u (List.mem_range.1 hu)
  simp only [hall]
  rw [if_pos (by simp)]
  congr 1
  apply Array.ext
  · simp [hRs]
  · intro i hi _
    simp only [List.map_map, Function.comp_def, Option.getD_some, List.getElem_toArray, List.getElem_map,
      List.getElem_range]
    simp only [List.size_toArray, List.length_map, List.length_range] at hi
    simp [Array.getD, hRs, hi]

end BeatAvg.Check
