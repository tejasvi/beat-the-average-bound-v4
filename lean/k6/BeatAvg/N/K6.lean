import BeatAvg.Check.Assembly
import BeatAvg.Prob.NonVacuity
import BeatAvg.N.K6Check

/-! `C ≤ 201273/500000` from the certificate with six points. -/

open BeatAvg.Check

namespace BeatAvg.N

theorem upperBound_k6_of_flagMethod (h : FlagMethodSound 6) : UpperBound (201273 / 500000) := by
  have hb := upperBound_of_direct 6 BeatAvg.Data.K6.levels rfl BeatAvg.Data.K6.blocks BeatAvg.Data.K6.lamN
    BeatAvg.Data.K6.lamD BeatAvg.Data.K6.den BeatAvg.Data.K6.qscale BeatAvg.N.K6.check_ok h
  simpa [BeatAvg.Data.K6.lamN, BeatAvg.Data.K6.lamD] using hb

theorem upperBound_k6 : UpperBound (201273 / 500000) :=
  upperBound_k6_of_flagMethod (flagMethodSound (by norm_num))

theorem upperBoundRV_k6 : UpperBoundRV (201273 / 500000) := upperBoundRV_of_upperBound upperBound_k6

theorem C639_le_k6 : C639 ≤ 201273 / 500000 := C639_le_of_upperBound upperBound_k6

end BeatAvg.N
