import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_30 : treeK7OK l7 30 = true := by decide +kernel

theorem n_30 : (recAt l7 30).2.2.2.length ≤ 176 := by decide +kernel

theorem v_30_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 0 16 = true := by decide +kernel

theorem v_30_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 16 16 = true := by decide +kernel

theorem v_30_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 32 16 = true := by decide +kernel

theorem v_30_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 48 16 = true := by decide +kernel

theorem v_30_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 64 16 = true := by decide +kernel

theorem v_30_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 80 16 = true := by decide +kernel

theorem v_30_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 96 16 = true := by decide +kernel

theorem v_30_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 112 16 = true := by decide +kernel

theorem v_30_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 128 16 = true := by decide +kernel

theorem v_30_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 144 16 = true := by decide +kernel

theorem v_30_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 30 160 16 = true := by decide +kernel

theorem r_30 : recsK7OK T qscale den6 d14 lamN lamD l7 30 1 = true := recK7_of (n := 176) t_30 n_30 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_30_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_30_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_30_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_30_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_30_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_30_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_30_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_30_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_30_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_30_9 (v_30_10)))))))))))

theorem t_31 : treeK7OK l7 31 = true := by decide +kernel

theorem n_31 : (recAt l7 31).2.2.2.length ≤ 32 := by decide +kernel

theorem v_31_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 31 0 16 = true := by decide +kernel

theorem v_31_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 31 16 16 = true := by decide +kernel

theorem r_31 : recsK7OK T qscale den6 d14 lamN lamD l7 31 1 = true := recK7_of (n := 32) t_31 n_31 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_31_0 (v_31_1))

theorem t_32 : treeK7OK l7 32 = true := by decide +kernel

theorem n_32 : (recAt l7 32).2.2.2.length ≤ 96 := by decide +kernel

theorem v_32_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 32 0 16 = true := by decide +kernel

theorem v_32_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 32 16 16 = true := by decide +kernel

theorem v_32_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 32 32 16 = true := by decide +kernel

theorem v_32_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 32 48 16 = true := by decide +kernel

theorem v_32_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 32 64 16 = true := by decide +kernel

theorem v_32_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 32 80 16 = true := by decide +kernel

theorem r_32 : recsK7OK T qscale den6 d14 lamN lamD l7 32 1 = true := recK7_of (n := 96) t_32 n_32 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_32_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_32_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_32_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_32_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_32_4 (v_32_5))))))

theorem t_33 : treeK7OK l7 33 = true := by decide +kernel

theorem n_33 : (recAt l7 33).2.2.2.length ≤ 64 := by decide +kernel

theorem v_33_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 33 0 16 = true := by decide +kernel

theorem v_33_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 33 16 16 = true := by decide +kernel

theorem v_33_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 33 32 16 = true := by decide +kernel

theorem v_33_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 33 48 16 = true := by decide +kernel

theorem r_33 : recsK7OK T qscale den6 d14 lamN lamD l7 33 1 = true := recK7_of (n := 64) t_33 n_33 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_33_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_33_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_33_2 (v_33_3))))

theorem rs_30 : recsK7OK T qscale den6 d14 lamN lamD l7 30 4 = true := recsK7OK_succ (lo := 30) (n := 3) r_30 (recsK7OK_succ (lo := 31) (n := 2) r_31 (recsK7OK_succ (lo := 32) (n := 1) r_32 (r_33)))

end BeatAvg.K.K7
