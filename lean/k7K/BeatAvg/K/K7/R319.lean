import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_972 : treeK7OK l7 972 = true := by decide +kernel

theorem n_972 : (recAt l7 972).2.2.2.length ≤ 64 := by decide +kernel

theorem v_972_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 972 0 16 = true := by decide +kernel

theorem v_972_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 972 16 16 = true := by decide +kernel

theorem v_972_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 972 32 16 = true := by decide +kernel

theorem v_972_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 972 48 16 = true := by decide +kernel

theorem r_972 : recsK7OK T qscale den6 d14 lamN lamD l7 972 1 = true := recK7_of (n := 64) t_972 n_972 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_972_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_972_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_972_2 (v_972_3))))

theorem t_973 : treeK7OK l7 973 = true := by decide +kernel

theorem n_973 : (recAt l7 973).2.2.2.length ≤ 48 := by decide +kernel

theorem v_973_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 973 0 16 = true := by decide +kernel

theorem v_973_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 973 16 16 = true := by decide +kernel

theorem v_973_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 973 32 16 = true := by decide +kernel

theorem r_973 : recsK7OK T qscale den6 d14 lamN lamD l7 973 1 = true := recK7_of (n := 48) t_973 n_973 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_973_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_973_1 (v_973_2)))

theorem t_974 : treeK7OK l7 974 = true := by decide +kernel

theorem n_974 : (recAt l7 974).2.2.2.length ≤ 176 := by decide +kernel

theorem v_974_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 0 16 = true := by decide +kernel

theorem v_974_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 16 16 = true := by decide +kernel

theorem v_974_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 32 16 = true := by decide +kernel

theorem v_974_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 48 16 = true := by decide +kernel

theorem v_974_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 64 16 = true := by decide +kernel

theorem v_974_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 80 16 = true := by decide +kernel

theorem v_974_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 96 16 = true := by decide +kernel

theorem v_974_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 112 16 = true := by decide +kernel

theorem v_974_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 128 16 = true := by decide +kernel

theorem v_974_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 144 16 = true := by decide +kernel

theorem v_974_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 974 160 16 = true := by decide +kernel

theorem r_974 : recsK7OK T qscale den6 d14 lamN lamD l7 974 1 = true := recK7_of (n := 176) t_974 n_974 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_974_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_974_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_974_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_974_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_974_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_974_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_974_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_974_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_974_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_974_9 (v_974_10)))))))))))

theorem rs_972 : recsK7OK T qscale den6 d14 lamN lamD l7 972 3 = true := recsK7OK_succ (lo := 972) (n := 2) r_972 (recsK7OK_succ (lo := 973) (n := 1) r_973 (r_974))

end BeatAvg.K.K7
