import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1116 : treeK7OK l7 1116 = true := by decide +kernel

theorem n_1116 : (recAt l7 1116).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1116_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1116 0 16 = true := by decide +kernel

theorem v_1116_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1116 16 16 = true := by decide +kernel

theorem v_1116_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1116 32 16 = true := by decide +kernel

theorem v_1116_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1116 48 16 = true := by decide +kernel

theorem v_1116_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1116 64 16 = true := by decide +kernel

theorem v_1116_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1116 80 16 = true := by decide +kernel

theorem r_1116 : recsK7OK T qscale den6 d14 lamN lamD l7 1116 1 = true := recK7_of (n := 96) t_1116 n_1116 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1116_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1116_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1116_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1116_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1116_4 (v_1116_5))))))

theorem t_1117 : treeK7OK l7 1117 = true := by decide +kernel

theorem n_1117 : (recAt l7 1117).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1117_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1117 0 16 = true := by decide +kernel

theorem v_1117_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1117 16 16 = true := by decide +kernel

theorem v_1117_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1117 32 16 = true := by decide +kernel

theorem v_1117_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1117 48 16 = true := by decide +kernel

theorem v_1117_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1117 64 16 = true := by decide +kernel

theorem v_1117_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1117 80 16 = true := by decide +kernel

theorem r_1117 : recsK7OK T qscale den6 d14 lamN lamD l7 1117 1 = true := recK7_of (n := 96) t_1117 n_1117 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1117_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1117_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1117_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1117_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1117_4 (v_1117_5))))))

theorem t_1118 : treeK7OK l7 1118 = true := by decide +kernel

theorem n_1118 : (recAt l7 1118).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1118_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 0 16 = true := by decide +kernel

theorem v_1118_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 16 16 = true := by decide +kernel

theorem v_1118_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 32 16 = true := by decide +kernel

theorem v_1118_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 48 16 = true := by decide +kernel

theorem v_1118_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 64 16 = true := by decide +kernel

theorem v_1118_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 80 16 = true := by decide +kernel

theorem v_1118_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 96 16 = true := by decide +kernel

theorem v_1118_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1118 112 16 = true := by decide +kernel

theorem r_1118 : recsK7OK T qscale den6 d14 lamN lamD l7 1118 1 = true := recK7_of (n := 128) t_1118 n_1118 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1118_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1118_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1118_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1118_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1118_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1118_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1118_6 (v_1118_7))))))))

theorem t_1119 : treeK7OK l7 1119 = true := by decide +kernel

theorem n_1119 : (recAt l7 1119).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1119_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1119 0 16 = true := by decide +kernel

theorem v_1119_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1119 16 16 = true := by decide +kernel

theorem v_1119_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1119 32 16 = true := by decide +kernel

theorem v_1119_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1119 48 16 = true := by decide +kernel

theorem v_1119_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1119 64 16 = true := by decide +kernel

theorem r_1119 : recsK7OK T qscale den6 d14 lamN lamD l7 1119 1 = true := recK7_of (n := 80) t_1119 n_1119 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1119_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1119_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1119_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1119_3 (v_1119_4)))))

theorem rs_1116 : recsK7OK T qscale den6 d14 lamN lamD l7 1116 4 = true := recsK7OK_succ (lo := 1116) (n := 3) r_1116 (recsK7OK_succ (lo := 1117) (n := 2) r_1117 (recsK7OK_succ (lo := 1118) (n := 1) r_1118 (r_1119)))

end BeatAvg.K.K7
