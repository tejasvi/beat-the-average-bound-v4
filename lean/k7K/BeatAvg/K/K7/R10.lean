import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_28 : treeK7OK l7 28 = true := by decide +kernel

theorem n_28 : (recAt l7 28).2.2.2.length ≤ 224 := by decide +kernel

theorem v_28_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 0 16 = true := by decide +kernel

theorem v_28_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 16 16 = true := by decide +kernel

theorem v_28_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 32 16 = true := by decide +kernel

theorem v_28_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 48 16 = true := by decide +kernel

theorem v_28_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 64 16 = true := by decide +kernel

theorem v_28_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 80 16 = true := by decide +kernel

theorem v_28_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 96 16 = true := by decide +kernel

theorem v_28_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 112 16 = true := by decide +kernel

theorem v_28_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 128 16 = true := by decide +kernel

theorem v_28_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 144 16 = true := by decide +kernel

theorem v_28_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 160 16 = true := by decide +kernel

theorem v_28_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 176 16 = true := by decide +kernel

theorem v_28_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 192 16 = true := by decide +kernel

theorem v_28_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 28 208 16 = true := by decide +kernel

theorem r_28 : recsK7OK T qscale den6 d14 lamN lamD l7 28 1 = true := recK7_of (n := 224) t_28 n_28 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_28_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_28_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_28_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_28_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_28_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_28_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_28_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_28_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_28_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_28_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_28_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_28_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_28_12 (v_28_13))))))))))))))

theorem t_29 : treeK7OK l7 29 = true := by decide +kernel

theorem n_29 : (recAt l7 29).2.2.2.length ≤ 48 := by decide +kernel

theorem v_29_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 29 0 16 = true := by decide +kernel

theorem v_29_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 29 16 16 = true := by decide +kernel

theorem v_29_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 29 32 16 = true := by decide +kernel

theorem r_29 : recsK7OK T qscale den6 d14 lamN lamD l7 29 1 = true := recK7_of (n := 48) t_29 n_29 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_29_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_29_1 (v_29_2)))

theorem rs_28 : recsK7OK T qscale den6 d14 lamN lamD l7 28 2 = true := recsK7OK_succ (lo := 28) (n := 1) r_28 (r_29)

end BeatAvg.K.K7
