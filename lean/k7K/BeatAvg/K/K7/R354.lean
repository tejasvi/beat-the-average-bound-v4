import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1062 : treeK7OK l7 1062 = true := by decide +kernel

theorem n_1062 : (recAt l7 1062).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1062_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 0 16 = true := by decide +kernel

theorem v_1062_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 16 16 = true := by decide +kernel

theorem v_1062_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 32 16 = true := by decide +kernel

theorem v_1062_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 48 16 = true := by decide +kernel

theorem v_1062_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 64 16 = true := by decide +kernel

theorem v_1062_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 80 16 = true := by decide +kernel

theorem v_1062_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 96 16 = true := by decide +kernel

theorem v_1062_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 112 16 = true := by decide +kernel

theorem v_1062_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 128 16 = true := by decide +kernel

theorem v_1062_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1062 144 16 = true := by decide +kernel

theorem r_1062 : recsK7OK T qscale den6 d14 lamN lamD l7 1062 1 = true := recK7_of (n := 160) t_1062 n_1062 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1062_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1062_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1062_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1062_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1062_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1062_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1062_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1062_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1062_8 (v_1062_9))))))))))

theorem t_1063 : treeK7OK l7 1063 = true := by decide +kernel

theorem n_1063 : (recAt l7 1063).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1063_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 0 16 = true := by decide +kernel

theorem v_1063_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 16 16 = true := by decide +kernel

theorem v_1063_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 32 16 = true := by decide +kernel

theorem v_1063_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 48 16 = true := by decide +kernel

theorem v_1063_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 64 16 = true := by decide +kernel

theorem v_1063_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 80 16 = true := by decide +kernel

theorem v_1063_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 96 16 = true := by decide +kernel

theorem v_1063_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 112 16 = true := by decide +kernel

theorem v_1063_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 128 16 = true := by decide +kernel

theorem v_1063_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1063 144 16 = true := by decide +kernel

theorem r_1063 : recsK7OK T qscale den6 d14 lamN lamD l7 1063 1 = true := recK7_of (n := 160) t_1063 n_1063 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1063_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1063_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1063_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1063_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1063_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1063_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1063_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1063_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1063_8 (v_1063_9))))))))))

theorem t_1064 : treeK7OK l7 1064 = true := by decide +kernel

theorem n_1064 : (recAt l7 1064).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1064_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1064 0 16 = true := by decide +kernel

theorem v_1064_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1064 16 16 = true := by decide +kernel

theorem v_1064_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1064 32 16 = true := by decide +kernel

theorem r_1064 : recsK7OK T qscale den6 d14 lamN lamD l7 1064 1 = true := recK7_of (n := 48) t_1064 n_1064 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1064_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1064_1 (v_1064_2)))

theorem rs_1062 : recsK7OK T qscale den6 d14 lamN lamD l7 1062 3 = true := recsK7OK_succ (lo := 1062) (n := 2) r_1062 (recsK7OK_succ (lo := 1063) (n := 1) r_1063 (r_1064))

end BeatAvg.K.K7
