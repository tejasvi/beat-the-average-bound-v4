import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_342 : treeK7OK l7 342 = true := by decide +kernel

theorem n_342 : (recAt l7 342).2.2.2.length ≤ 320 := by decide +kernel

theorem v_342_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 0 16 = true := by decide +kernel

theorem v_342_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 16 16 = true := by decide +kernel

theorem v_342_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 32 16 = true := by decide +kernel

theorem v_342_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 48 16 = true := by decide +kernel

theorem v_342_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 64 16 = true := by decide +kernel

theorem v_342_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 80 16 = true := by decide +kernel

theorem v_342_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 96 16 = true := by decide +kernel

theorem v_342_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 112 16 = true := by decide +kernel

theorem v_342_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 128 16 = true := by decide +kernel

theorem v_342_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 144 16 = true := by decide +kernel

theorem v_342_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 160 16 = true := by decide +kernel

theorem v_342_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 176 16 = true := by decide +kernel

theorem v_342_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 192 16 = true := by decide +kernel

theorem v_342_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 208 16 = true := by decide +kernel

theorem v_342_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 224 16 = true := by decide +kernel

theorem v_342_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 240 16 = true := by decide +kernel

theorem v_342_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 256 16 = true := by decide +kernel

theorem v_342_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 272 16 = true := by decide +kernel

theorem v_342_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 288 16 = true := by decide +kernel

theorem v_342_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 342 304 16 = true := by decide +kernel

theorem r_342 : recsK7OK T qscale den6 d14 lamN lamD l7 342 1 = true := recK7_of (n := 320) t_342 n_342 (leavesK7OK_add (lo := 0) (n := 16) (m := 304) v_342_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 288) v_342_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 272) v_342_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 256) v_342_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 240) v_342_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 224) v_342_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 208) v_342_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 192) v_342_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 176) v_342_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 160) v_342_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 144) v_342_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 128) v_342_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 112) v_342_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 96) v_342_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 80) v_342_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 64) v_342_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 48) v_342_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 32) v_342_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 16) v_342_18 (v_342_19))))))))))))))))))))

theorem rs_342 : recsK7OK T qscale den6 d14 lamN lamD l7 342 1 = true := r_342

end BeatAvg.K.K7
