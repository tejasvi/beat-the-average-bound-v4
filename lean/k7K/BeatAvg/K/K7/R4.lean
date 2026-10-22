import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_10 : treeK7OK l7 10 = true := by decide +kernel

theorem n_10 : (recAt l7 10).2.2.2.length ≤ 128 := by decide +kernel

theorem v_10_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 0 16 = true := by decide +kernel

theorem v_10_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 16 16 = true := by decide +kernel

theorem v_10_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 32 16 = true := by decide +kernel

theorem v_10_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 48 16 = true := by decide +kernel

theorem v_10_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 64 16 = true := by decide +kernel

theorem v_10_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 80 16 = true := by decide +kernel

theorem v_10_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 96 16 = true := by decide +kernel

theorem v_10_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 10 112 16 = true := by decide +kernel

theorem r_10 : recsK7OK T qscale den6 d14 lamN lamD l7 10 1 = true := recK7_of (n := 128) t_10 n_10 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_10_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_10_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_10_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_10_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_10_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_10_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_10_6 (v_10_7))))))))

theorem t_11 : treeK7OK l7 11 = true := by decide +kernel

theorem n_11 : (recAt l7 11).2.2.2.length ≤ 96 := by decide +kernel

theorem v_11_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 11 0 16 = true := by decide +kernel

theorem v_11_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 11 16 16 = true := by decide +kernel

theorem v_11_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 11 32 16 = true := by decide +kernel

theorem v_11_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 11 48 16 = true := by decide +kernel

theorem v_11_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 11 64 16 = true := by decide +kernel

theorem v_11_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 11 80 16 = true := by decide +kernel

theorem r_11 : recsK7OK T qscale den6 d14 lamN lamD l7 11 1 = true := recK7_of (n := 96) t_11 n_11 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_11_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_11_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_11_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_11_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_11_4 (v_11_5))))))

theorem t_12 : treeK7OK l7 12 = true := by decide +kernel

theorem n_12 : (recAt l7 12).2.2.2.length ≤ 32 := by decide +kernel

theorem v_12_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 12 0 16 = true := by decide +kernel

theorem v_12_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 12 16 16 = true := by decide +kernel

theorem r_12 : recsK7OK T qscale den6 d14 lamN lamD l7 12 1 = true := recK7_of (n := 32) t_12 n_12 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_12_0 (v_12_1))

theorem t_13 : treeK7OK l7 13 = true := by decide +kernel

theorem n_13 : (recAt l7 13).2.2.2.length ≤ 64 := by decide +kernel

theorem v_13_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 13 0 16 = true := by decide +kernel

theorem v_13_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 13 16 16 = true := by decide +kernel

theorem v_13_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 13 32 16 = true := by decide +kernel

theorem v_13_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 13 48 16 = true := by decide +kernel

theorem r_13 : recsK7OK T qscale den6 d14 lamN lamD l7 13 1 = true := recK7_of (n := 64) t_13 n_13 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_13_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_13_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_13_2 (v_13_3))))

theorem rs_10 : recsK7OK T qscale den6 d14 lamN lamD l7 10 4 = true := recsK7OK_succ (lo := 10) (n := 3) r_10 (recsK7OK_succ (lo := 11) (n := 2) r_11 (recsK7OK_succ (lo := 12) (n := 1) r_12 (r_13)))

end BeatAvg.K.K7
