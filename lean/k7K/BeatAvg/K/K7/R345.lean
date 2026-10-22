import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1030 : treeK7OK l7 1030 = true := by decide +kernel

theorem n_1030 : (recAt l7 1030).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1030_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 0 16 = true := by decide +kernel

theorem v_1030_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 16 16 = true := by decide +kernel

theorem v_1030_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 32 16 = true := by decide +kernel

theorem v_1030_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 48 16 = true := by decide +kernel

theorem v_1030_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 64 16 = true := by decide +kernel

theorem v_1030_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 80 16 = true := by decide +kernel

theorem v_1030_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 96 16 = true := by decide +kernel

theorem v_1030_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 112 16 = true := by decide +kernel

theorem v_1030_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1030 128 16 = true := by decide +kernel

theorem r_1030 : recsK7OK T qscale den6 d14 lamN lamD l7 1030 1 = true := recK7_of (n := 144) t_1030 n_1030 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1030_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1030_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1030_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1030_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1030_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1030_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1030_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1030_7 (v_1030_8)))))))))

theorem t_1031 : treeK7OK l7 1031 = true := by decide +kernel

theorem n_1031 : (recAt l7 1031).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1031_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1031 0 16 = true := by decide +kernel

theorem v_1031_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1031 16 16 = true := by decide +kernel

theorem v_1031_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1031 32 16 = true := by decide +kernel

theorem r_1031 : recsK7OK T qscale den6 d14 lamN lamD l7 1031 1 = true := recK7_of (n := 48) t_1031 n_1031 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1031_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1031_1 (v_1031_2)))

theorem t_1032 : treeK7OK l7 1032 = true := by decide +kernel

theorem n_1032 : (recAt l7 1032).2.2.2.length ≤ 192 := by decide +kernel

theorem v_1032_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 0 16 = true := by decide +kernel

theorem v_1032_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 16 16 = true := by decide +kernel

theorem v_1032_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 32 16 = true := by decide +kernel

theorem v_1032_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 48 16 = true := by decide +kernel

theorem v_1032_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 64 16 = true := by decide +kernel

theorem v_1032_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 80 16 = true := by decide +kernel

theorem v_1032_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 96 16 = true := by decide +kernel

theorem v_1032_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 112 16 = true := by decide +kernel

theorem v_1032_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 128 16 = true := by decide +kernel

theorem v_1032_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 144 16 = true := by decide +kernel

theorem v_1032_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 160 16 = true := by decide +kernel

theorem v_1032_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1032 176 16 = true := by decide +kernel

theorem r_1032 : recsK7OK T qscale den6 d14 lamN lamD l7 1032 1 = true := recK7_of (n := 192) t_1032 n_1032 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_1032_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_1032_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_1032_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_1032_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_1032_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_1032_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_1032_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_1032_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_1032_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_1032_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_1032_10 (v_1032_11))))))))))))

theorem rs_1030 : recsK7OK T qscale den6 d14 lamN lamD l7 1030 3 = true := recsK7OK_succ (lo := 1030) (n := 2) r_1030 (recsK7OK_succ (lo := 1031) (n := 1) r_1031 (r_1032))

end BeatAvg.K.K7
