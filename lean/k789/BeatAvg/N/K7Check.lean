import BeatAvg.Data.K7

/-! Native evaluation of the k = 7 check. -/

theorem BeatAvg.N.K7.check_ok : BeatAvg.Data.K7.check = true := by native_decide
