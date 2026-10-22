import BeatAvg.Check.K8
import BeatAvg.K.Enum
import BeatAvg.Prob.NonVacuity
import BeatAvg.N.K8Check

/-! `C ≤ 4006983/10000000` from the certificate with eight points (hierarchical: levels 4-7 and blocks evaluated
at 7 points, blocks `(6, 7)` through the restrictions of the 8-tuples). -/

open BeatAvg.Check

namespace BeatAvg.N

theorem upperBound_k8 : UpperBound (4006983 / 10000000) := by
  obtain ⟨bl, hpsd, hval⟩ := checkK8_sound BeatAvg.Data.K8.levels BeatAvg.Data.K8.lower BeatAvg.Data.K8.mid
    BeatAvg.Data.K8.excl8 BeatAvg.Data.K8.lamN BeatAvg.Data.K8.lamD BeatAvg.Data.K8.den7 BeatAvg.Data.K8.qscale
    rfl enumOK_six enumOK_seven enumOK_eight BeatAvg.N.K8.check_ok
  have hb := flagMethodSound (k := 8) (by norm_num) bl hpsd _ hval
  simpa [BeatAvg.Data.K8.lamN, BeatAvg.Data.K8.lamD] using hb

theorem upperBoundRV_k8 : UpperBoundRV (4006983 / 10000000) := upperBoundRV_of_upperBound upperBound_k8

theorem C639_le_k8 : C639 ≤ 4006983 / 10000000 := C639_le_of_upperBound upperBound_k8

end BeatAvg.N
