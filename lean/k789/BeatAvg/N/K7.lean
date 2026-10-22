import BeatAvg.Check.DirectA
import BeatAvg.Prob.NonVacuity
import BeatAvg.N.K7Check

/-! `C ≤ 10019/25000` from the certificate with seven points (the trees are those of the certificates with 8 and 9
points). -/

open BeatAvg.Check

namespace BeatAvg.N

theorem upperBound_k7 : UpperBound (10019 / 25000) := by
  have hb := upperBound_of_directA 7 BeatAvg.Data.K7.levels rfl
    (by unfold BeatAvg.Data.K7.levels BeatAvg.Data.K8.levels; exact List.cons_ne_nil _ _)
    BeatAvg.Data.K7.blocks BeatAvg.Data.K7.lamN BeatAvg.Data.K7.lamD BeatAvg.Data.K7.den BeatAvg.Data.K7.qscale
    BeatAvg.N.K7.check_ok (flagMethodSound (by norm_num))
  simpa [BeatAvg.Data.K7.lamN, BeatAvg.Data.K7.lamD] using hb

theorem upperBoundRV_k7 : UpperBoundRV (10019 / 25000) := upperBoundRV_of_upperBound upperBound_k7

theorem C639_le_k7 : C639 ≤ 10019 / 25000 := C639_le_of_upperBound upperBound_k7

end BeatAvg.N
