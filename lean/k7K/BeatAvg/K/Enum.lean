import BeatAvg.Core.Direct

/-! The enumerations `tupList 6`, `tupList 7`, `tupList 8` are checked by the kernel (core Lean only). -/

namespace BeatAvg.Check

theorem enumOK_six : enumOK 6 = true := by decide +kernel

theorem enumOK_seven : enumOK 7 = true := by decide +kernel

theorem enumOK_eight : enumOK 8 = true := by decide +kernel

end BeatAvg.Check

namespace BeatAvg.Check

theorem enumOK_nine : enumOK 9 = true := by decide +kernel

end BeatAvg.Check
