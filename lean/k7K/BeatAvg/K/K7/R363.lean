import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1090 : treeK7OK l7 1090 = true := by decide +kernel

theorem n_1090 : (recAt l7 1090).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1090_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1090 0 16 = true := by decide +kernel

theorem v_1090_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1090 16 16 = true := by decide +kernel

theorem v_1090_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1090 32 16 = true := by decide +kernel

theorem v_1090_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1090 48 16 = true := by decide +kernel

theorem v_1090_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1090 64 16 = true := by decide +kernel

theorem v_1090_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1090 80 16 = true := by decide +kernel

theorem r_1090 : recsK7OK T qscale den6 d14 lamN lamD l7 1090 1 = true := recK7_of (n := 96) t_1090 n_1090 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1090_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1090_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1090_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1090_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1090_4 (v_1090_5))))))

theorem t_1091 : treeK7OK l7 1091 = true := by decide +kernel

theorem n_1091 : (recAt l7 1091).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1091_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1091 0 16 = true := by decide +kernel

theorem v_1091_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1091 16 16 = true := by decide +kernel

theorem v_1091_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1091 32 16 = true := by decide +kernel

theorem v_1091_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1091 48 16 = true := by decide +kernel

theorem r_1091 : recsK7OK T qscale den6 d14 lamN lamD l7 1091 1 = true := recK7_of (n := 64) t_1091 n_1091 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1091_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1091_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1091_2 (v_1091_3))))

theorem t_1092 : treeK7OK l7 1092 = true := by decide +kernel

theorem n_1092 : (recAt l7 1092).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1092_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1092 0 16 = true := by decide +kernel

theorem v_1092_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1092 16 16 = true := by decide +kernel

theorem r_1092 : recsK7OK T qscale den6 d14 lamN lamD l7 1092 1 = true := recK7_of (n := 32) t_1092 n_1092 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1092_0 (v_1092_1))

theorem t_1093 : treeK7OK l7 1093 = true := by decide +kernel

theorem n_1093 : (recAt l7 1093).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1093_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1093 0 16 = true := by decide +kernel

theorem v_1093_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1093 16 16 = true := by decide +kernel

theorem v_1093_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1093 32 16 = true := by decide +kernel

theorem r_1093 : recsK7OK T qscale den6 d14 lamN lamD l7 1093 1 = true := recK7_of (n := 48) t_1093 n_1093 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1093_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1093_1 (v_1093_2)))

theorem t_1094 : treeK7OK l7 1094 = true := by decide +kernel

theorem n_1094 : (recAt l7 1094).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1094_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1094 0 16 = true := by decide +kernel

theorem v_1094_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1094 16 16 = true := by decide +kernel

theorem r_1094 : recsK7OK T qscale den6 d14 lamN lamD l7 1094 1 = true := recK7_of (n := 32) t_1094 n_1094 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1094_0 (v_1094_1))

theorem rs_1090 : recsK7OK T qscale den6 d14 lamN lamD l7 1090 5 = true := recsK7OK_succ (lo := 1090) (n := 4) r_1090 (recsK7OK_succ (lo := 1091) (n := 3) r_1091 (recsK7OK_succ (lo := 1092) (n := 2) r_1092 (recsK7OK_succ (lo := 1093) (n := 1) r_1093 (r_1094))))

end BeatAvg.K.K7
