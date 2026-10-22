import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_276 : treeK7OK l7 276 = true := by decide +kernel

theorem n_276 : (recAt l7 276).2.2.2.length ≤ 64 := by decide +kernel

theorem v_276_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 276 0 16 = true := by decide +kernel

theorem v_276_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 276 16 16 = true := by decide +kernel

theorem v_276_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 276 32 16 = true := by decide +kernel

theorem v_276_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 276 48 16 = true := by decide +kernel

theorem r_276 : recsK7OK T qscale den6 d14 lamN lamD l7 276 1 = true := recK7_of (n := 64) t_276 n_276 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_276_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_276_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_276_2 (v_276_3))))

theorem t_277 : treeK7OK l7 277 = true := by decide +kernel

theorem n_277 : (recAt l7 277).2.2.2.length ≤ 64 := by decide +kernel

theorem v_277_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 277 0 16 = true := by decide +kernel

theorem v_277_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 277 16 16 = true := by decide +kernel

theorem v_277_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 277 32 16 = true := by decide +kernel

theorem v_277_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 277 48 16 = true := by decide +kernel

theorem r_277 : recsK7OK T qscale den6 d14 lamN lamD l7 277 1 = true := recK7_of (n := 64) t_277 n_277 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_277_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_277_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_277_2 (v_277_3))))

theorem t_278 : treeK7OK l7 278 = true := by decide +kernel

theorem n_278 : (recAt l7 278).2.2.2.length ≤ 48 := by decide +kernel

theorem v_278_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 278 0 16 = true := by decide +kernel

theorem v_278_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 278 16 16 = true := by decide +kernel

theorem v_278_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 278 32 16 = true := by decide +kernel

theorem r_278 : recsK7OK T qscale den6 d14 lamN lamD l7 278 1 = true := recK7_of (n := 48) t_278 n_278 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_278_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_278_1 (v_278_2)))

theorem t_279 : treeK7OK l7 279 = true := by decide +kernel

theorem n_279 : (recAt l7 279).2.2.2.length ≤ 48 := by decide +kernel

theorem v_279_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 279 0 16 = true := by decide +kernel

theorem v_279_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 279 16 16 = true := by decide +kernel

theorem v_279_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 279 32 16 = true := by decide +kernel

theorem r_279 : recsK7OK T qscale den6 d14 lamN lamD l7 279 1 = true := recK7_of (n := 48) t_279 n_279 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_279_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_279_1 (v_279_2)))

theorem t_280 : treeK7OK l7 280 = true := by decide +kernel

theorem n_280 : (recAt l7 280).2.2.2.length ≤ 48 := by decide +kernel

theorem v_280_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 280 0 16 = true := by decide +kernel

theorem v_280_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 280 16 16 = true := by decide +kernel

theorem v_280_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 280 32 16 = true := by decide +kernel

theorem r_280 : recsK7OK T qscale den6 d14 lamN lamD l7 280 1 = true := recK7_of (n := 48) t_280 n_280 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_280_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_280_1 (v_280_2)))

theorem t_281 : treeK7OK l7 281 = true := by decide +kernel

theorem n_281 : (recAt l7 281).2.2.2.length ≤ 32 := by decide +kernel

theorem v_281_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 281 0 16 = true := by decide +kernel

theorem v_281_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 281 16 16 = true := by decide +kernel

theorem r_281 : recsK7OK T qscale den6 d14 lamN lamD l7 281 1 = true := recK7_of (n := 32) t_281 n_281 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_281_0 (v_281_1))

theorem rs_276 : recsK7OK T qscale den6 d14 lamN lamD l7 276 6 = true := recsK7OK_succ (lo := 276) (n := 5) r_276 (recsK7OK_succ (lo := 277) (n := 4) r_277 (recsK7OK_succ (lo := 278) (n := 3) r_278 (recsK7OK_succ (lo := 279) (n := 2) r_279 (recsK7OK_succ (lo := 280) (n := 1) r_280 (r_281)))))

end BeatAvg.K.K7
