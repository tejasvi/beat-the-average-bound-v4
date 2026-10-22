import BeatAvg.Check.K9c

/-!
# Soundness of the check with 9 points, part 5: exclusions
-/

open Finset

namespace BeatAvg.Check

open Std

/-- The tuple of a realizable 8-pattern is not among the tuples of the excluded patterns. -/
theorem not_mem_exT8 {P : Array ℕ} {id : HashMap ℕ ℕ} {excl8 : List (ℕ × List (ℕ × ℕ))} (T7 : TupEnum 7)
    (hT7 : T7.l = tupList 7) (T8 : TupEnum 8) (hT8 : T8.l = tupList 8)
    (hexl : (excl8.filterMap fun e => exclTuple P id e.1).length = excl8.length)
    (hexok : ∀ e ∈ excl8, exclOK 8 (tupList 8) e.1 e.2 = true)
    (hexT : ∀ ez ∈ excl8.zip (excl8.filterMap fun e => exclTuple P id e.1), exclTupleOK P ez.1.1 ez.2 = true)
    {N : Pat 8} (hN : Realizable N) {R : Array ℕ} (hR : IsTuple8 P T7 N R) :
    R ∉ excl8.filterMap fun e => exclTuple P id e.1 := by
  intro hmem
  obtain ⟨i, hi, hRi⟩ := List.mem_iff_getElem.1 hmem
  have hi' : i < excl8.length := hexl ▸ hi
  have hz : (excl8[i], (excl8.filterMap fun e => exclTuple P id e.1)[i]) ∈
      excl8.zip (excl8.filterMap fun e => exclTuple P id e.1) := by
    have hl : i < (excl8.zip (excl8.filterMap fun e => exclTuple P id e.1)).length := by
      simp only [List.length_zip]; omega
    have := List.getElem_mem hl
    rwa [List.getElem_zip] at this
  have hok := hexT _ hz
  simp only [exclTupleOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range,
    beq_iff_eq] at hok
  obtain ⟨-, hok⟩ := hok
  rw [hRi] at hok
  have hexc := hexok _ (List.getElem_mem hi')
  rw [← hT8] at hexc
  apply exclOK_sound T8 hexc
  have hNeq : N = T8.decode (excl8[i]).1 := by
    apply eq_of_restrict_eq (n := 7) (by norm_num)
    intro u
    rw [← hR.dec u]
    have hd := decode_del T8 T7 u (excl8[i]).1
    rw [hT8, hT7] at hd
    rw [← hd, hok u u.2, getD_delIdx8 u.2]
  rw [← hNeq]
  exact hN

/-- The tuples of the restrictions of a realizable 9-pattern are not the tuples of an excluded pattern. -/
theorem not_mem_exT9 {P : Array ℕ} {id : HashMap ℕ ℕ} {excl9 : List (ℕ × List (ℕ × ℕ))} (T7 : TupEnum 7)
    (hT7 : T7.l = tupList 7) (T8 : TupEnum 8) (hT8 : T8.l = tupList 8) (T9 : TupEnum 9) (hT9 : T9.l = tupList 9)
    (hexl : (excl9.filterMap fun e => tuple9 P id e.1).length = excl9.length)
    (hexok : ∀ e ∈ excl9, exclOK 9 (tupList 9) e.1 e.2 = true)
    (hexT : ∀ ez ∈ excl9.zip (excl9.filterMap fun e => tuple9 P id e.1), tuple9OK P ez.1.1 ez.2 = true)
    {M : Pat 9} (hM : Realizable M) {T : Array (Array ℕ)}
    (hT : ∀ u : Fin 9, IsTuple8 P T7 (restrict (Fin.succAboveOrderEmb u) M) (T.getD u #[])) :
    T ∉ excl9.filterMap fun e => tuple9 P id e.1 := by
  intro hmem
  obtain ⟨i, hi, hTi⟩ := List.mem_iff_getElem.1 hmem
  have hi' : i < excl9.length := hexl ▸ hi
  have hz : (excl9[i], (excl9.filterMap fun e => tuple9 P id e.1)[i]) ∈
      excl9.zip (excl9.filterMap fun e => tuple9 P id e.1) := by
    have hl : i < (excl9.zip (excl9.filterMap fun e => tuple9 P id e.1)).length := by
      simp only [List.length_zip]; omega
    have := List.getElem_mem hl
    rwa [List.getElem_zip] at this
  have hok := hexT _ hz
  simp only [tuple9OK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range] at hok
  obtain ⟨-, hok⟩ := hok
  rw [hTi] at hok
  have hexc := hexok _ (List.getElem_mem hi')
  rw [← hT9] at hexc
  apply exclOK_sound T9 hexc
  set bits := (excl9[i]).1
  have hMeq : M = T9.decode bits := by
    apply eq_of_restrict_eq (n := 8) (by norm_num)
    intro u
    have hu := hok u u.2
    simp only [exclTupleOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range,
      beq_iff_eq] at hu
    obtain ⟨-, hu⟩ := hu
    apply eq_of_restrict_eq (n := 7) (by norm_num)
    intro j
    rw [← (hT u).dec j]
    have hd9 := decode_del T9 T8 u bits
    rw [hT9, hT8] at hd9
    have hd8 := decode_del T8 T7 j (gather bits ((delIdx 9).getD u []))
    rw [hT8, hT7] at hd8
    rw [hu j j.2, getD_delIdx8 j.2, hd8, getD_delIdx9 u.2, hd9]
  rw [← hMeq]
  exact hM

end BeatAvg.Check
