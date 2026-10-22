import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem f6_3_0 : f6OK T low den6 qscale 60 1 = true := by decide +kernel

theorem f6_3_1 : f6OK T low den6 qscale 61 1 = true := by decide +kernel

theorem f6_3_2 : f6OK T low den6 qscale 62 1 = true := by decide +kernel

theorem f6_3_3 : f6OK T low den6 qscale 63 1 = true := by decide +kernel

theorem f6_3_4 : f6OK T low den6 qscale 64 1 = true := by decide +kernel

theorem f6_3_5 : f6OK T low den6 qscale 65 1 = true := by decide +kernel

theorem f6_3_6 : f6OK T low den6 qscale 66 1 = true := by decide +kernel

theorem f6_3_7 : f6OK T low den6 qscale 67 1 = true := by decide +kernel

theorem f6_3_8 : f6OK T low den6 qscale 68 1 = true := by decide +kernel

theorem f6_3_9 : f6OK T low den6 qscale 69 1 = true := by decide +kernel

theorem f6_3_10 : f6OK T low den6 qscale 70 1 = true := by decide +kernel

theorem f6_3_11 : f6OK T low den6 qscale 71 1 = true := by decide +kernel

theorem f6_3_12 : f6OK T low den6 qscale 72 1 = true := by decide +kernel

theorem f6_3_13 : f6OK T low den6 qscale 73 1 = true := by decide +kernel

theorem f6_3_14 : f6OK T low den6 qscale 74 1 = true := by decide +kernel

theorem f6_3_15 : f6OK T low den6 qscale 75 1 = true := by decide +kernel

theorem f6_3_16 : f6OK T low den6 qscale 76 1 = true := by decide +kernel

theorem f6_3_17 : f6OK T low den6 qscale 77 1 = true := by decide +kernel

theorem f6_3_18 : f6OK T low den6 qscale 78 1 = true := by decide +kernel

theorem f6_3_19 : f6OK T low den6 qscale 79 1 = true := by decide +kernel

theorem f6_3 : f6OK T low den6 qscale (3 * 20) 20 = true := f6OK_succ f6_3_0 (f6OK_succ f6_3_1 (f6OK_succ f6_3_2 (f6OK_succ f6_3_3 (f6OK_succ f6_3_4 (f6OK_succ f6_3_5 (f6OK_succ f6_3_6 (f6OK_succ f6_3_7 (f6OK_succ f6_3_8 (f6OK_succ f6_3_9 (f6OK_succ f6_3_10 (f6OK_succ f6_3_11 (f6OK_succ f6_3_12 (f6OK_succ f6_3_13 (f6OK_succ f6_3_14 (f6OK_succ f6_3_15 (f6OK_succ f6_3_16 (f6OK_succ f6_3_17 (f6OK_succ f6_3_18 (f6_3_19)))))))))))))))))))

end BeatAvg.K.K7
