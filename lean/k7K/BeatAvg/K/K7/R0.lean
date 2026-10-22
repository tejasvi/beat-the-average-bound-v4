import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_0 : treeK7OK l7 0 = true := by decide +kernel

theorem n_0 : (recAt l7 0).2.2.2.length ≤ 240 := by decide +kernel

theorem v_0_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 0 16 = true := by decide +kernel

theorem v_0_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 16 16 = true := by decide +kernel

theorem v_0_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 32 16 = true := by decide +kernel

theorem v_0_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 48 16 = true := by decide +kernel

theorem v_0_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 64 16 = true := by decide +kernel

theorem v_0_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 80 16 = true := by decide +kernel

theorem v_0_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 96 16 = true := by decide +kernel

theorem v_0_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 112 16 = true := by decide +kernel

theorem v_0_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 128 16 = true := by decide +kernel

theorem v_0_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 144 16 = true := by decide +kernel

theorem v_0_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 160 16 = true := by decide +kernel

theorem v_0_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 176 16 = true := by decide +kernel

theorem v_0_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 192 16 = true := by decide +kernel

theorem v_0_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 208 16 = true := by decide +kernel

theorem v_0_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 0 224 16 = true := by decide +kernel

theorem r_0 : recsK7OK T qscale den6 d14 lamN lamD l7 0 1 = true := recK7_of (n := 240) t_0 n_0 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_0_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_0_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_0_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_0_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_0_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_0_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_0_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_0_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_0_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_0_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_0_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_0_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_0_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_0_13 (v_0_14)))))))))))))))

theorem t_1 : treeK7OK l7 1 = true := by decide +kernel

theorem n_1 : (recAt l7 1).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 0 16 = true := by decide +kernel

theorem v_1_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 16 16 = true := by decide +kernel

theorem v_1_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 32 16 = true := by decide +kernel

theorem v_1_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 48 16 = true := by decide +kernel

theorem v_1_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 64 16 = true := by decide +kernel

theorem v_1_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 80 16 = true := by decide +kernel

theorem v_1_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 96 16 = true := by decide +kernel

theorem v_1_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 112 16 = true := by decide +kernel

theorem v_1_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 128 16 = true := by decide +kernel

theorem v_1_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1 144 16 = true := by decide +kernel

theorem r_1 : recsK7OK T qscale den6 d14 lamN lamD l7 1 1 = true := recK7_of (n := 160) t_1 n_1 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1_8 (v_1_9))))))))))

theorem rs_0 : recsK7OK T qscale den6 d14 lamN lamD l7 0 2 = true := recsK7OK_succ (lo := 0) (n := 1) r_0 (r_1)

end BeatAvg.K.K7
