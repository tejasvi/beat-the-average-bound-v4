import BeatAvg.Core.KPack
import BeatAvg.Check.K7K

/-!
# Soundness of `qrowP`: matrix rows from packed term vectors

`pk` is linear (`pk_zipWith`) and its fields are the entries when they are below `2 ^ w` (`fld_pk`). Along the terms,
the two packed sums of `rowAcc` are `pk` of lists whose entries are bounded by the sums of the coefficients times
`2 ^ W1 - 1` (`rowAcc_inv`); the check bounds these by `2 ^ W`, so the fields are the entries, and their difference
minus `B Σ a_p` is `Σ_p w_p v_p[i] v_p[j] = Qint[i][j]`.
-/

namespace BeatAvg.Check

theorem fld_pk (w : Nat) : ∀ (l : List Nat) (j : Nat), (∀ x ∈ l, x < 2 ^ w) → fld (pk w l) w j = l.getD j 0
  | [], j, _ => by simp [pk, fld]
  | x :: l, 0, h => by
    have hx : x < 2 ^ w := h x (by simp)
    simp only [fld, pk, Nat.mul_zero, Nat.shiftRight_zero, Nat.and_two_pow_sub_one_eq_mod, List.getD_cons_zero]
    rw [Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hx]
  | x :: l, j + 1, h => by
    have hx : x < 2 ^ w := h x (by simp)
    have ih := fld_pk w l j (fun y hy => h y (List.mem_cons_of_mem _ hy))
    rw [List.getD_cons_succ, ← ih]
    unfold fld
    congr 1
    rw [pk, Nat.shiftRight_eq_div_pow, Nat.shiftRight_eq_div_pow, Nat.mul_add, Nat.mul_one, Nat.pow_add,
      Nat.mul_comm (2 ^ (w * j)), ← Nat.div_div_eq_div_mul, Nat.add_mul_div_left _ _ (Nat.two_pow_pos w),
      Nat.div_eq_of_lt hx, Nat.zero_add]

theorem pk_zipWith (w c : Nat) : ∀ (L f : List Nat), L.length = f.length →
    pk w (List.zipWith (fun x y => x + c * y) L f) = pk w L + c * pk w f
  | [], [], _ => by simp [pk]
  | x :: L, y :: f, h => by
    simp only [List.zipWith_cons_cons, pk]
    rw [pk_zipWith w c L f (by simpa using h)]
    ring
  | [], _ :: _, h => by simp at h
  | _ :: _, [], h => by simp at h

theorem getD_zipWith_lin (c : Nat) : ∀ (L f : List Nat) (j : Nat), L.length = f.length →
    (List.zipWith (fun x y => x + c * y) L f).getD j 0 = L.getD j 0 + c * f.getD j 0
  | [], [], j, _ => by simp
  | x :: L, y :: f, 0, _ => by simp
  | x :: L, y :: f, j + 1, h => by
    simp only [List.zipWith_cons_cons, List.getD_cons_succ]
    exact getD_zipWith_lin c L f j (by simpa using h)
  | [], _ :: _, _, h => by simp at h
  | _ :: _, [], _, h => by simp at h

theorem pk_replicate (w : Nat) : ∀ N, pk w (List.replicate N 0) = 0
  | 0 => rfl
  | N + 1 => by simp [List.replicate_succ, pk, pk_replicate w N]

/-- An offset entry: `0 ≤ x + B < 2 ^ W1`. -/
theorem off_bounds {W1 : Nat} (hW1 : 1 ≤ W1) {x : Int} (hx : x.natAbs < 2 ^ (W1 - 1)) :
    0 ≤ x + ((2 ^ (W1 - 1) : Nat) : Int) ∧ (x + ((2 ^ (W1 - 1) : Nat) : Int)).toNat < 2 ^ W1 := by
  have h2 : (2 : Nat) ^ W1 = 2 * 2 ^ (W1 - 1) := by
    rw [← Nat.pow_succ']
    congr 1
    omega
  constructor <;> omega

/-- The entries of the offset vector, as integers and bounded. -/
theorem off_getD {W1 : Nat} (hW1 : 1 ≤ W1) {v : List Int} (hv : ∀ x ∈ v, x.natAbs < 2 ^ (W1 - 1)) (j : Nat) :
    (v.map fun x => (x + ((2 ^ (W1 - 1) : Nat) : Int)).toNat).getD j 0 ≤ 2 ^ W1 - 1 ∧
      (j < v.length → ((v.map fun x => (x + ((2 ^ (W1 - 1) : Nat) : Int)).toNat).getD j 0 : Int) =
        v.getD j 0 + ((2 ^ (W1 - 1) : Nat) : Int)) := by
  rw [List.getD_eq_getElem?_getD, List.getElem?_map]
  by_cases hj : j < v.length
  · rw [List.getElem?_eq_getElem hj, Option.map_some, Option.getD_some]
    have hb := off_bounds hW1 (hv _ (List.getElem_mem hj))
    refine ⟨by omega, fun _ => ?_⟩
    rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hj, Option.getD_some]
    exact Int.toNat_of_nonneg hb.1
  · rw [List.getElem?_eq_none (by omega)]
    exact ⟨Nat.zero_le _, fun h => absurd h hj⟩

theorem pkV_fld {W W1 : Nat} (hW1 : 1 ≤ W1) (hW : W1 ≤ W) {v : List Int}
    (hv : ∀ x ∈ v, x.natAbs < 2 ^ (W1 - 1)) {i : Nat} (hi : i < v.length) :
    (fld (pkV W ((2 ^ (W1 - 1) : Nat) : Int) v) W i : Int) = v.getD i 0 + ((2 ^ (W1 - 1) : Nat) : Int) := by
  have hpow : 2 ^ W1 ≤ 2 ^ W := Nat.pow_le_pow_right (by norm_num) hW
  unfold pkV
  rw [fld_pk]
  · exact (off_getD hW1 hv i).2 hi
  · intro y hy
    obtain ⟨x, hx, rfl⟩ := List.mem_map.1 hy
    have := (off_bounds hW1 (hv x hx)).2
    omega

/-- The invariant of `rowAcc` along the terms. -/
theorem rowAcc_inv {W W1 i N : Nat} {B : Int} (hB : B = ((2 ^ (W1 - 1) : Nat) : Int)) (hW1 : 1 ≤ W1)
    (hW : W1 ≤ W) (hi : i < N) :
    ∀ ts : List (Nat × List Int), (∀ p ∈ ts, p.2.length = N ∧ ∀ x ∈ p.2, x.natAbs < 2 ^ (W1 - 1)) →
    ∃ Lp Ln : List Nat, Lp.length = N ∧ Ln.length = N ∧
      (rowAcc W B i (ts.map fun p => (p.1, pkV W B p.2))).1 = pk W Lp ∧
      (rowAcc W B i (ts.map fun p => (p.1, pkV W B p.2))).2.1 = pk W Ln ∧
      (∀ j, Lp.getD j 0 ≤ (rowAcc W B i (ts.map fun p => (p.1, pkV W B p.2))).2.2.1 * (2 ^ W1 - 1)) ∧
      (∀ j, Ln.getD j 0 ≤ (rowAcc W B i (ts.map fun p => (p.1, pkV W B p.2))).2.2.2 * (2 ^ W1 - 1)) ∧
      ∀ j < N, (Lp.getD j 0 : Int) - Ln.getD j 0 -
          B * (((rowAcc W B i (ts.map fun p => (p.1, pkV W B p.2))).2.2.1 : Int) -
            (rowAcc W B i (ts.map fun p => (p.1, pkV W B p.2))).2.2.2) =
        (ts.map fun p => (p.1 : Int) * p.2.getD i 0 * p.2.getD j 0).sum
  | [], _ => by
    refine ⟨List.replicate N 0, List.replicate N 0, by simp, by simp, ?_, ?_, ?_, ?_, ?_⟩
    · simp [rowAcc, pk_replicate]
    · simp [rowAcc, pk_replicate]
    · intro j; simp
    · intro j; simp
    · intro j _; simp [rowAcc]
  | (c, v) :: ts, hts => by
    obtain ⟨hvN, hvb⟩ := hts (c, v) (by simp)
    obtain ⟨Lp, Ln, hLp, hLn, h1, h2, hbp, hbn, hd⟩ :=
      rowAcc_inv hB hW1 hW hi ts (fun p hp => hts p (List.mem_cons_of_mem _ hp))
    subst hB
    set B : Int := ((2 ^ (W1 - 1) : Nat) : Int) with hB
    set R := rowAcc W B i (ts.map fun p => (p.1, pkV W B p.2)) with hR
    have hfi : (fld (pkV W B v) W i : Int) = v.getD i 0 + B := pkV_fld hW1 hW hvb (by omega)
    set a : Int := (c : Int) * ((fld (pkV W B v) W i : Int) - B) with ha
    have ha' : a = c * v.getD i 0 := by rw [ha, hfi]; ring
    set f := v.map fun x => (x + B).toNat with hf
    have hfl : f.length = N := by simp [hf, hvN]
    have hfb : ∀ j, f.getD j 0 ≤ 2 ^ W1 - 1 := fun j => (off_getD hW1 hvb j).1
    have hfv : ∀ j < N, (f.getD j 0 : Int) = v.getD j 0 + B := fun j hj => (off_getD hW1 hvb j).2 (by omega)
    have hstep : rowAcc W B i (((c, v) :: ts).map fun p => (p.1, pkV W B p.2)) =
        (R.1 + a.toNat * pk W f, R.2.1 + (-a).toNat * pk W f, R.2.2.1 + a.toNat, R.2.2.2 + (-a).toNat) := by
      rfl
    rw [hstep]
    refine ⟨List.zipWith (fun x y => x + a.toNat * y) Lp f, List.zipWith (fun x y => x + (-a).toNat * y) Ln f,
      by simp [hLp, hfl], by simp [hLn, hfl], ?_, ?_, ?_, ?_, ?_⟩
    · show R.1 + a.toNat * pk W f = _
      rw [pk_zipWith W _ Lp f (by rw [hLp, hfl]), h1]
    · show R.2.1 + (-a).toNat * pk W f = _
      rw [pk_zipWith W _ Ln f (by rw [hLn, hfl]), h2]
    · intro j
      show _ ≤ (R.2.2.1 + a.toNat) * (2 ^ W1 - 1)
      rw [getD_zipWith_lin _ Lp f j (by rw [hLp, hfl]), Nat.add_mul]
      exact Nat.add_le_add (hbp j) (Nat.mul_le_mul_left _ (hfb j))
    · intro j
      show _ ≤ (R.2.2.2 + (-a).toNat) * (2 ^ W1 - 1)
      rw [getD_zipWith_lin _ Ln f j (by rw [hLn, hfl]), Nat.add_mul]
      exact Nat.add_le_add (hbn j) (Nat.mul_le_mul_left _ (hfb j))
    · intro j hj
      show _ - _ - B * (((R.2.2.1 + a.toNat : Nat) : Int) - ((R.2.2.2 + (-a).toNat : Nat) : Int)) = _
      rw [getD_zipWith_lin _ Lp f j (by rw [hLp, hfl]), getD_zipWith_lin _ Ln f j (by rw [hLn, hfl]),
        List.map_cons, List.sum_cons, ← hd j hj]
      have hs := Int.toNat_sub_toNat_neg a
      have hfj := hfv j hj
      push_cast
      rw [← ha']
      linear_combination (↑(f.getD j 0) - B) * hs + a * hfj

/-- `qrowP` implies `qrowOK`. -/
theorem qrowP_sound {T : K7Tab} {top : List DBlock} {blk lo n W W1 : Nat}
    (h : qrowP T top blk lo n W W1 = true) : qrowOK T top blk lo n = true := by
  unfold qrowP at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨hW1, hW⟩, hterms⟩, hrows⟩ := h
  have ht : ∀ p ∈ (top.getD blk dfltB).terms, p.2.length = (top.getD blk dfltB).flags.length ∧
      ∀ x ∈ p.2, x.natAbs < 2 ^ (W1 - 1) := by
    intro p hp
    have := List.all_eq_true.1 hterms p hp
    simp only [Bool.and_eq_true, beq_iff_eq, List.all_eq_true, decide_eq_true_eq] at this
    exact this
  unfold qrowOK
  rw [List.all_eq_true] at hrows ⊢
  intro i hi
  have hiN : i < (top.getD blk dfltB).flags.length :=
    List.mem_range.1 (List.mem_of_mem_drop (List.mem_of_mem_take hi))
  have hr := hrows i hi
  unfold qrowPRow at hr
  simp only [Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, beq_iff_eq, List.mem_range] at hr
  obtain ⟨⟨hsp, hsn⟩, hj⟩ := hr
  obtain ⟨Lp, Ln, hLp, hLn, h1, h2, hbp, hbn, hd⟩ := rowAcc_inv rfl hW1 hW hiN _ ht
  have hLp' : ∀ x ∈ Lp, x < 2 ^ W := by
    intro x hx
    obtain ⟨k, hk, rfl⟩ := List.mem_iff_getElem.1 hx
    have := hbp k
    rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hk, Option.getD_some] at this
    omega
  have hLn' : ∀ x ∈ Ln, x < 2 ^ W := by
    intro x hx
    obtain ⟨k, hk, rfl⟩ := List.mem_iff_getElem.1 hx
    have := hbn k
    rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hk, Option.getD_some] at this
    omega
  rw [List.all_eq_true]
  intro j hjm
  have hjN := List.mem_range.1 hjm
  rw [qrowList_getD _ hjN, beq_iff_eq, hj j hjN, h1, h2, fld_pk W Lp j hLp', fld_pk W Ln j hLn', hd j hjN]
  rfl

end BeatAvg.Check
