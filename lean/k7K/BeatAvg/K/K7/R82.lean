import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_315 : treeK7OK l7 315 = true := by decide +kernel

theorem n_315 : (recAt l7 315).2.2.2.length ≤ 128 := by decide +kernel

theorem v_315_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 0 16 = true := by decide +kernel

theorem v_315_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 16 16 = true := by decide +kernel

theorem v_315_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 32 16 = true := by decide +kernel

theorem v_315_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 48 16 = true := by decide +kernel

theorem v_315_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 64 16 = true := by decide +kernel

theorem v_315_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 80 16 = true := by decide +kernel

theorem v_315_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 96 16 = true := by decide +kernel

theorem v_315_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 315 112 16 = true := by decide +kernel

theorem r_315 : recsK7OK T qscale den6 d14 lamN lamD l7 315 1 = true := recK7_of (n := 128) t_315 n_315 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_315_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_315_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_315_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_315_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_315_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_315_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_315_6 (v_315_7))))))))

theorem t_316 : treeK7OK l7 316 = true := by decide +kernel

theorem n_316 : (recAt l7 316).2.2.2.length ≤ 144 := by decide +kernel

theorem v_316_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 0 16 = true := by decide +kernel

theorem v_316_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 16 16 = true := by decide +kernel

theorem v_316_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 32 16 = true := by decide +kernel

theorem v_316_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 48 16 = true := by decide +kernel

theorem v_316_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 64 16 = true := by decide +kernel

theorem v_316_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 80 16 = true := by decide +kernel

theorem v_316_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 96 16 = true := by decide +kernel

theorem v_316_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 112 16 = true := by decide +kernel

theorem v_316_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 316 128 16 = true := by decide +kernel

theorem r_316 : recsK7OK T qscale den6 d14 lamN lamD l7 316 1 = true := recK7_of (n := 144) t_316 n_316 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_316_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_316_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_316_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_316_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_316_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_316_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_316_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_316_7 (v_316_8)))))))))

theorem t_317 : treeK7OK l7 317 = true := by decide +kernel

theorem n_317 : (recAt l7 317).2.2.2.length ≤ 144 := by decide +kernel

theorem v_317_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 0 16 = true := by decide +kernel

theorem v_317_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 16 16 = true := by decide +kernel

theorem v_317_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 32 16 = true := by decide +kernel

theorem v_317_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 48 16 = true := by decide +kernel

theorem v_317_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 64 16 = true := by decide +kernel

theorem v_317_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 80 16 = true := by decide +kernel

theorem v_317_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 96 16 = true := by decide +kernel

theorem v_317_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 112 16 = true := by decide +kernel

theorem v_317_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 317 128 16 = true := by decide +kernel

theorem r_317 : recsK7OK T qscale den6 d14 lamN lamD l7 317 1 = true := recK7_of (n := 144) t_317 n_317 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_317_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_317_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_317_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_317_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_317_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_317_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_317_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_317_7 (v_317_8)))))))))

theorem rs_315 : recsK7OK T qscale den6 d14 lamN lamD l7 315 3 = true := recsK7OK_succ (lo := 315) (n := 2) r_315 (recsK7OK_succ (lo := 316) (n := 1) r_316 (r_317))

end BeatAvg.K.K7
