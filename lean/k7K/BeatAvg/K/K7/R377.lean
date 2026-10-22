import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1146 : treeK7OK l7 1146 = true := by decide +kernel

theorem n_1146 : (recAt l7 1146).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1146_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1146 0 16 = true := by decide +kernel

theorem v_1146_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1146 16 16 = true := by decide +kernel

theorem v_1146_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1146 32 16 = true := by decide +kernel

theorem v_1146_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1146 48 16 = true := by decide +kernel

theorem v_1146_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1146 64 16 = true := by decide +kernel

theorem v_1146_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1146 80 16 = true := by decide +kernel

theorem v_1146_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1146 96 16 = true := by decide +kernel

theorem r_1146 : recsK7OK T qscale den6 d14 lamN lamD l7 1146 1 = true := recK7_of (n := 112) t_1146 n_1146 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1146_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1146_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1146_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1146_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1146_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1146_5 (v_1146_6)))))))

theorem t_1147 : treeK7OK l7 1147 = true := by decide +kernel

theorem n_1147 : (recAt l7 1147).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1147_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1147 0 16 = true := by decide +kernel

theorem v_1147_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1147 16 16 = true := by decide +kernel

theorem v_1147_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1147 32 16 = true := by decide +kernel

theorem v_1147_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1147 48 16 = true := by decide +kernel

theorem v_1147_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1147 64 16 = true := by decide +kernel

theorem r_1147 : recsK7OK T qscale den6 d14 lamN lamD l7 1147 1 = true := recK7_of (n := 80) t_1147 n_1147 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1147_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1147_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1147_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1147_3 (v_1147_4)))))

theorem t_1148 : treeK7OK l7 1148 = true := by decide +kernel

theorem n_1148 : (recAt l7 1148).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1148_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1148 0 16 = true := by decide +kernel

theorem v_1148_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1148 16 16 = true := by decide +kernel

theorem r_1148 : recsK7OK T qscale den6 d14 lamN lamD l7 1148 1 = true := recK7_of (n := 32) t_1148 n_1148 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1148_0 (v_1148_1))

theorem t_1149 : treeK7OK l7 1149 = true := by decide +kernel

theorem n_1149 : (recAt l7 1149).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1149_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1149 0 16 = true := by decide +kernel

theorem v_1149_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1149 16 16 = true := by decide +kernel

theorem v_1149_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1149 32 16 = true := by decide +kernel

theorem r_1149 : recsK7OK T qscale den6 d14 lamN lamD l7 1149 1 = true := recK7_of (n := 48) t_1149 n_1149 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1149_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1149_1 (v_1149_2)))

theorem t_1150 : treeK7OK l7 1150 = true := by decide +kernel

theorem n_1150 : (recAt l7 1150).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1150_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1150 0 16 = true := by decide +kernel

theorem v_1150_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1150 16 16 = true := by decide +kernel

theorem v_1150_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1150 32 16 = true := by decide +kernel

theorem r_1150 : recsK7OK T qscale den6 d14 lamN lamD l7 1150 1 = true := recK7_of (n := 48) t_1150 n_1150 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1150_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1150_1 (v_1150_2)))

theorem rs_1146 : recsK7OK T qscale den6 d14 lamN lamD l7 1146 5 = true := recsK7OK_succ (lo := 1146) (n := 4) r_1146 (recsK7OK_succ (lo := 1147) (n := 3) r_1147 (recsK7OK_succ (lo := 1148) (n := 2) r_1148 (recsK7OK_succ (lo := 1149) (n := 1) r_1149 (r_1150))))

end BeatAvg.K.K7
