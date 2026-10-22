import BeatAvg.Data.K6

/-! Native evaluation of the k = 6 check. -/

theorem BeatAvg.N.K6.check_ok : BeatAvg.Data.K6.check = true := by native_decide
