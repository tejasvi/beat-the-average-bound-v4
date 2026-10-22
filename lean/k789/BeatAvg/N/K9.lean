import BeatAvg.Check.Par
import BeatAvg.K.Enum
import BeatAvg.Prob.NonVacuity
import BeatAvg.N.K9Check

/-! `C ≤ 20034817/50000000` from the certificate with nine points (Lemma 5.2: caps at 8 points, the list `S` and the
core patterns of the top flags). -/

open BeatAvg.Check

namespace BeatAvg.N

theorem upperBound_k9 : UpperBound (20034817 / 50000000) := by
  have hc : checkK9 BeatAvg.Data.K8.levels BeatAvg.Data.K9.lower BeatAvg.Data.K9.mid BeatAvg.Data.K9.top
      BeatAvg.Data.K9.excl8 BeatAvg.Data.K9.excl9 BeatAvg.Data.K9.S BeatAvg.Data.K9.core BeatAvg.Data.K9.lamN
      BeatAvg.Data.K9.lamD BeatAvg.Data.K9.capN BeatAvg.Data.K9.capD BeatAvg.Data.K9.den7 BeatAvg.Data.K9.qscale =
        true := by
    rw [← checkK9P_eq]
    exact BeatAvg.N.K9.check_ok
  obtain ⟨bl, hpsd, hval⟩ := checkK9_sound BeatAvg.Data.K8.levels BeatAvg.Data.K9.lower BeatAvg.Data.K9.mid
    BeatAvg.Data.K9.top BeatAvg.Data.K9.excl8 BeatAvg.Data.K9.excl9 BeatAvg.Data.K9.S BeatAvg.Data.K9.core
    BeatAvg.Data.K9.lamN BeatAvg.Data.K9.lamD BeatAvg.Data.K9.capN BeatAvg.Data.K9.capD BeatAvg.Data.K9.den7
    BeatAvg.Data.K9.qscale rfl enumOK_six enumOK_seven enumOK_eight enumOK_nine hc
  have hb := flagMethodSound (k := 9) (by norm_num) bl hpsd _ hval
  simpa [BeatAvg.Data.K9.lamN, BeatAvg.Data.K9.lamD] using hb

theorem upperBoundRV_k9 : UpperBoundRV (20034817 / 50000000) := upperBoundRV_of_upperBound upperBound_k9

theorem C639_le_k9 : C639 ≤ 20034817 / 50000000 := C639_le_of_upperBound upperBound_k9

end BeatAvg.N
