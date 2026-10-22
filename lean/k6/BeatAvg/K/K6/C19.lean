import BeatAvg.Data.K6

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K6

theorem chunk_19 : BeatAvg.Check.directChunk 6 BeatAvg.Data.K6.blocks BeatAvg.Data.K6.lamN BeatAvg.Data.K6.lamD BeatAvg.Data.K6.den BeatAvg.Data.K6.qscale (BeatAvg.Check.chainList [0] BeatAvg.Data.K6.levels) (19 * 20) 20 = true := by decide +kernel

end BeatAvg.K.K6
