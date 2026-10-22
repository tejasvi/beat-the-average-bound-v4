import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem topS : topSoundK T top 0 T.n6 = true := by decide +kernel

theorem topC : topCompleteK T top = true := by decide +kernel

end BeatAvg.K.K7
