import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_2 : treeK7OK l7 2 = true := by decide +kernel

theorem n_2 : (recAt l7 2).2.2.2.length ≤ 144 := by decide +kernel

theorem v_2_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 0 16 = true := by decide +kernel

theorem v_2_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 16 16 = true := by decide +kernel

theorem v_2_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 32 16 = true := by decide +kernel

theorem v_2_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 48 16 = true := by decide +kernel

theorem v_2_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 64 16 = true := by decide +kernel

theorem v_2_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 80 16 = true := by decide +kernel

theorem v_2_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 96 16 = true := by decide +kernel

theorem v_2_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 112 16 = true := by decide +kernel

theorem v_2_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 2 128 16 = true := by decide +kernel

theorem r_2 : recsK7OK T qscale den6 d14 lamN lamD l7 2 1 = true := recK7_of (n := 144) t_2 n_2 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_2_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_2_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_2_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_2_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_2_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_2_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_2_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_2_7 (v_2_8)))))))))

theorem t_3 : treeK7OK l7 3 = true := by decide +kernel

theorem n_3 : (recAt l7 3).2.2.2.length ≤ 144 := by decide +kernel

theorem v_3_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 0 16 = true := by decide +kernel

theorem v_3_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 16 16 = true := by decide +kernel

theorem v_3_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 32 16 = true := by decide +kernel

theorem v_3_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 48 16 = true := by decide +kernel

theorem v_3_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 64 16 = true := by decide +kernel

theorem v_3_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 80 16 = true := by decide +kernel

theorem v_3_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 96 16 = true := by decide +kernel

theorem v_3_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 112 16 = true := by decide +kernel

theorem v_3_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 3 128 16 = true := by decide +kernel

theorem r_3 : recsK7OK T qscale den6 d14 lamN lamD l7 3 1 = true := recK7_of (n := 144) t_3 n_3 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_3_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_3_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_3_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_3_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_3_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_3_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_3_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_3_7 (v_3_8)))))))))

theorem t_4 : treeK7OK l7 4 = true := by decide +kernel

theorem n_4 : (recAt l7 4).2.2.2.length ≤ 96 := by decide +kernel

theorem v_4_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 4 0 16 = true := by decide +kernel

theorem v_4_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 4 16 16 = true := by decide +kernel

theorem v_4_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 4 32 16 = true := by decide +kernel

theorem v_4_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 4 48 16 = true := by decide +kernel

theorem v_4_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 4 64 16 = true := by decide +kernel

theorem v_4_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 4 80 16 = true := by decide +kernel

theorem r_4 : recsK7OK T qscale den6 d14 lamN lamD l7 4 1 = true := recK7_of (n := 96) t_4 n_4 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_4_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_4_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_4_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_4_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_4_4 (v_4_5))))))

theorem t_5 : treeK7OK l7 5 = true := by decide +kernel

theorem n_5 : (recAt l7 5).2.2.2.length ≤ 32 := by decide +kernel

theorem v_5_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 5 0 16 = true := by decide +kernel

theorem v_5_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 5 16 16 = true := by decide +kernel

theorem r_5 : recsK7OK T qscale den6 d14 lamN lamD l7 5 1 = true := recK7_of (n := 32) t_5 n_5 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_5_0 (v_5_1))

theorem rs_2 : recsK7OK T qscale den6 d14 lamN lamD l7 2 4 = true := recsK7OK_succ (lo := 2) (n := 3) r_2 (recsK7OK_succ (lo := 3) (n := 2) r_3 (recsK7OK_succ (lo := 4) (n := 1) r_4 (r_5)))

end BeatAvg.K.K7
