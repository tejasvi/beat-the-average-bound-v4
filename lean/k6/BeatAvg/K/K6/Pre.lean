import BeatAvg.Data.K6

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K6

theorem chain_ok : BeatAvg.Check.chainOK 3 [0] BeatAvg.Data.K6.levels = true := by decide +kernel

theorem pre_ok : BeatAvg.Check.directPre 6 BeatAvg.Data.K6.blocks BeatAvg.Data.K6.lamD BeatAvg.Data.K6.den BeatAvg.Data.K6.qscale = true := by decide +kernel

theorem len_ok : (BeatAvg.Check.chainList [0] BeatAvg.Data.K6.levels).length ≤ 65 * 20 := by decide +kernel

end BeatAvg.K.K6
