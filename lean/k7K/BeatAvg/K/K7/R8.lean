import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_21 : treeK7OK l7 21 = true := by decide +kernel

theorem n_21 : (recAt l7 21).2.2.2.length ≤ 32 := by decide +kernel

theorem v_21_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 21 0 16 = true := by decide +kernel

theorem v_21_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 21 16 16 = true := by decide +kernel

theorem r_21 : recsK7OK T qscale den6 d14 lamN lamD l7 21 1 = true := recK7_of (n := 32) t_21 n_21 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_21_0 (v_21_1))

theorem t_22 : treeK7OK l7 22 = true := by decide +kernel

theorem n_22 : (recAt l7 22).2.2.2.length ≤ 208 := by decide +kernel

theorem v_22_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 0 16 = true := by decide +kernel

theorem v_22_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 16 16 = true := by decide +kernel

theorem v_22_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 32 16 = true := by decide +kernel

theorem v_22_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 48 16 = true := by decide +kernel

theorem v_22_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 64 16 = true := by decide +kernel

theorem v_22_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 80 16 = true := by decide +kernel

theorem v_22_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 96 16 = true := by decide +kernel

theorem v_22_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 112 16 = true := by decide +kernel

theorem v_22_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 128 16 = true := by decide +kernel

theorem v_22_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 144 16 = true := by decide +kernel

theorem v_22_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 160 16 = true := by decide +kernel

theorem v_22_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 176 16 = true := by decide +kernel

theorem v_22_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 22 192 16 = true := by decide +kernel

theorem r_22 : recsK7OK T qscale den6 d14 lamN lamD l7 22 1 = true := recK7_of (n := 208) t_22 n_22 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_22_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_22_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_22_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_22_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_22_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_22_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_22_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_22_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_22_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_22_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_22_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_22_11 (v_22_12)))))))))))))

theorem t_23 : treeK7OK l7 23 = true := by decide +kernel

theorem n_23 : (recAt l7 23).2.2.2.length ≤ 32 := by decide +kernel

theorem v_23_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 23 0 16 = true := by decide +kernel

theorem v_23_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 23 16 16 = true := by decide +kernel

theorem r_23 : recsK7OK T qscale den6 d14 lamN lamD l7 23 1 = true := recK7_of (n := 32) t_23 n_23 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_23_0 (v_23_1))

theorem t_24 : treeK7OK l7 24 = true := by decide +kernel

theorem n_24 : (recAt l7 24).2.2.2.length ≤ 160 := by decide +kernel

theorem v_24_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 0 16 = true := by decide +kernel

theorem v_24_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 16 16 = true := by decide +kernel

theorem v_24_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 32 16 = true := by decide +kernel

theorem v_24_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 48 16 = true := by decide +kernel

theorem v_24_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 64 16 = true := by decide +kernel

theorem v_24_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 80 16 = true := by decide +kernel

theorem v_24_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 96 16 = true := by decide +kernel

theorem v_24_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 112 16 = true := by decide +kernel

theorem v_24_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 128 16 = true := by decide +kernel

theorem v_24_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 24 144 16 = true := by decide +kernel

theorem r_24 : recsK7OK T qscale den6 d14 lamN lamD l7 24 1 = true := recK7_of (n := 160) t_24 n_24 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_24_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_24_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_24_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_24_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_24_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_24_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_24_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_24_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_24_8 (v_24_9))))))))))

theorem rs_21 : recsK7OK T qscale den6 d14 lamN lamD l7 21 4 = true := recsK7OK_succ (lo := 21) (n := 3) r_21 (recsK7OK_succ (lo := 22) (n := 2) r_22 (recsK7OK_succ (lo := 23) (n := 1) r_23 (r_24)))

end BeatAvg.K.K7
