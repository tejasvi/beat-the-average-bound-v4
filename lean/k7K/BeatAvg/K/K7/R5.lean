import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_14 : treeK7OK l7 14 = true := by decide +kernel

theorem n_14 : (recAt l7 14).2.2.2.length ≤ 176 := by decide +kernel

theorem v_14_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 0 16 = true := by decide +kernel

theorem v_14_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 16 16 = true := by decide +kernel

theorem v_14_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 32 16 = true := by decide +kernel

theorem v_14_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 48 16 = true := by decide +kernel

theorem v_14_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 64 16 = true := by decide +kernel

theorem v_14_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 80 16 = true := by decide +kernel

theorem v_14_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 96 16 = true := by decide +kernel

theorem v_14_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 112 16 = true := by decide +kernel

theorem v_14_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 128 16 = true := by decide +kernel

theorem v_14_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 144 16 = true := by decide +kernel

theorem v_14_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 14 160 16 = true := by decide +kernel

theorem r_14 : recsK7OK T qscale den6 d14 lamN lamD l7 14 1 = true := recK7_of (n := 176) t_14 n_14 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_14_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_14_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_14_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_14_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_14_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_14_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_14_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_14_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_14_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_14_9 (v_14_10)))))))))))

theorem t_15 : treeK7OK l7 15 = true := by decide +kernel

theorem n_15 : (recAt l7 15).2.2.2.length ≤ 128 := by decide +kernel

theorem v_15_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 0 16 = true := by decide +kernel

theorem v_15_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 16 16 = true := by decide +kernel

theorem v_15_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 32 16 = true := by decide +kernel

theorem v_15_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 48 16 = true := by decide +kernel

theorem v_15_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 64 16 = true := by decide +kernel

theorem v_15_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 80 16 = true := by decide +kernel

theorem v_15_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 96 16 = true := by decide +kernel

theorem v_15_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 15 112 16 = true := by decide +kernel

theorem r_15 : recsK7OK T qscale den6 d14 lamN lamD l7 15 1 = true := recK7_of (n := 128) t_15 n_15 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_15_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_15_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_15_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_15_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_15_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_15_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_15_6 (v_15_7))))))))

theorem t_16 : treeK7OK l7 16 = true := by decide +kernel

theorem n_16 : (recAt l7 16).2.2.2.length ≤ 112 := by decide +kernel

theorem v_16_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 16 0 16 = true := by decide +kernel

theorem v_16_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 16 16 16 = true := by decide +kernel

theorem v_16_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 16 32 16 = true := by decide +kernel

theorem v_16_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 16 48 16 = true := by decide +kernel

theorem v_16_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 16 64 16 = true := by decide +kernel

theorem v_16_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 16 80 16 = true := by decide +kernel

theorem v_16_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 16 96 16 = true := by decide +kernel

theorem r_16 : recsK7OK T qscale den6 d14 lamN lamD l7 16 1 = true := recK7_of (n := 112) t_16 n_16 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_16_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_16_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_16_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_16_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_16_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_16_5 (v_16_6)))))))

theorem rs_14 : recsK7OK T qscale den6 d14 lamN lamD l7 14 3 = true := recsK7OK_succ (lo := 14) (n := 2) r_14 (recsK7OK_succ (lo := 15) (n := 1) r_15 (r_16))

end BeatAvg.K.K7
