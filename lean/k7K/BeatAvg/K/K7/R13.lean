import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_39 : treeK7OK l7 39 = true := by decide +kernel

theorem n_39 : (recAt l7 39).2.2.2.length ≤ 32 := by decide +kernel

theorem v_39_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 39 0 16 = true := by decide +kernel

theorem v_39_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 39 16 16 = true := by decide +kernel

theorem r_39 : recsK7OK T qscale den6 d14 lamN lamD l7 39 1 = true := recK7_of (n := 32) t_39 n_39 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_39_0 (v_39_1))

theorem t_40 : treeK7OK l7 40 = true := by decide +kernel

theorem n_40 : (recAt l7 40).2.2.2.length ≤ 80 := by decide +kernel

theorem v_40_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 40 0 16 = true := by decide +kernel

theorem v_40_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 40 16 16 = true := by decide +kernel

theorem v_40_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 40 32 16 = true := by decide +kernel

theorem v_40_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 40 48 16 = true := by decide +kernel

theorem v_40_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 40 64 16 = true := by decide +kernel

theorem r_40 : recsK7OK T qscale den6 d14 lamN lamD l7 40 1 = true := recK7_of (n := 80) t_40 n_40 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_40_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_40_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_40_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_40_3 (v_40_4)))))

theorem t_41 : treeK7OK l7 41 = true := by decide +kernel

theorem n_41 : (recAt l7 41).2.2.2.length ≤ 208 := by decide +kernel

theorem v_41_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 0 16 = true := by decide +kernel

theorem v_41_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 16 16 = true := by decide +kernel

theorem v_41_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 32 16 = true := by decide +kernel

theorem v_41_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 48 16 = true := by decide +kernel

theorem v_41_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 64 16 = true := by decide +kernel

theorem v_41_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 80 16 = true := by decide +kernel

theorem v_41_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 96 16 = true := by decide +kernel

theorem v_41_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 112 16 = true := by decide +kernel

theorem v_41_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 128 16 = true := by decide +kernel

theorem v_41_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 144 16 = true := by decide +kernel

theorem v_41_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 160 16 = true := by decide +kernel

theorem v_41_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 176 16 = true := by decide +kernel

theorem v_41_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 41 192 16 = true := by decide +kernel

theorem r_41 : recsK7OK T qscale den6 d14 lamN lamD l7 41 1 = true := recK7_of (n := 208) t_41 n_41 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_41_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_41_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_41_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_41_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_41_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_41_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_41_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_41_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_41_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_41_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_41_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_41_11 (v_41_12)))))))))))))

theorem rs_39 : recsK7OK T qscale den6 d14 lamN lamD l7 39 3 = true := recsK7OK_succ (lo := 39) (n := 2) r_39 (recsK7OK_succ (lo := 40) (n := 1) r_40 (r_41))

end BeatAvg.K.K7
