import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_471 : treeK7OK l7 471 = true := by decide +kernel

theorem n_471 : (recAt l7 471).2.2.2.length ≤ 208 := by decide +kernel

theorem v_471_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 0 16 = true := by decide +kernel

theorem v_471_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 16 16 = true := by decide +kernel

theorem v_471_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 32 16 = true := by decide +kernel

theorem v_471_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 48 16 = true := by decide +kernel

theorem v_471_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 64 16 = true := by decide +kernel

theorem v_471_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 80 16 = true := by decide +kernel

theorem v_471_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 96 16 = true := by decide +kernel

theorem v_471_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 112 16 = true := by decide +kernel

theorem v_471_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 128 16 = true := by decide +kernel

theorem v_471_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 144 16 = true := by decide +kernel

theorem v_471_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 160 16 = true := by decide +kernel

theorem v_471_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 176 16 = true := by decide +kernel

theorem v_471_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 471 192 16 = true := by decide +kernel

theorem r_471 : recsK7OK T qscale den6 d14 lamN lamD l7 471 1 = true := recK7_of (n := 208) t_471 n_471 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_471_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_471_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_471_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_471_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_471_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_471_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_471_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_471_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_471_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_471_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_471_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_471_11 (v_471_12)))))))))))))

theorem rs_471 : recsK7OK T qscale den6 d14 lamN lamD l7 471 1 = true := r_471

end BeatAvg.K.K7
