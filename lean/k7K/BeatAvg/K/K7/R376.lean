import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1142 : treeK7OK l7 1142 = true := by decide +kernel

theorem n_1142 : (recAt l7 1142).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1142_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1142 0 16 = true := by decide +kernel

theorem v_1142_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1142 16 16 = true := by decide +kernel

theorem v_1142_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1142 32 16 = true := by decide +kernel

theorem v_1142_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1142 48 16 = true := by decide +kernel

theorem v_1142_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1142 64 16 = true := by decide +kernel

theorem v_1142_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1142 80 16 = true := by decide +kernel

theorem v_1142_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1142 96 16 = true := by decide +kernel

theorem r_1142 : recsK7OK T qscale den6 d14 lamN lamD l7 1142 1 = true := recK7_of (n := 112) t_1142 n_1142 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1142_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1142_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1142_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1142_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1142_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1142_5 (v_1142_6)))))))

theorem t_1143 : treeK7OK l7 1143 = true := by decide +kernel

theorem n_1143 : (recAt l7 1143).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1143_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1143 0 16 = true := by decide +kernel

theorem v_1143_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1143 16 16 = true := by decide +kernel

theorem v_1143_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1143 32 16 = true := by decide +kernel

theorem v_1143_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1143 48 16 = true := by decide +kernel

theorem v_1143_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1143 64 16 = true := by decide +kernel

theorem v_1143_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1143 80 16 = true := by decide +kernel

theorem r_1143 : recsK7OK T qscale den6 d14 lamN lamD l7 1143 1 = true := recK7_of (n := 96) t_1143 n_1143 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1143_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1143_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1143_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1143_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1143_4 (v_1143_5))))))

theorem t_1144 : treeK7OK l7 1144 = true := by decide +kernel

theorem n_1144 : (recAt l7 1144).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1144_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1144 0 16 = true := by decide +kernel

theorem v_1144_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1144 16 16 = true := by decide +kernel

theorem v_1144_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1144 32 16 = true := by decide +kernel

theorem v_1144_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1144 48 16 = true := by decide +kernel

theorem r_1144 : recsK7OK T qscale den6 d14 lamN lamD l7 1144 1 = true := recK7_of (n := 64) t_1144 n_1144 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1144_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1144_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1144_2 (v_1144_3))))

theorem t_1145 : treeK7OK l7 1145 = true := by decide +kernel

theorem n_1145 : (recAt l7 1145).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1145_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1145 0 16 = true := by decide +kernel

theorem v_1145_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1145 16 16 = true := by decide +kernel

theorem v_1145_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1145 32 16 = true := by decide +kernel

theorem v_1145_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1145 48 16 = true := by decide +kernel

theorem v_1145_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1145 64 16 = true := by decide +kernel

theorem v_1145_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1145 80 16 = true := by decide +kernel

theorem r_1145 : recsK7OK T qscale den6 d14 lamN lamD l7 1145 1 = true := recK7_of (n := 96) t_1145 n_1145 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1145_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1145_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1145_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1145_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1145_4 (v_1145_5))))))

theorem rs_1142 : recsK7OK T qscale den6 d14 lamN lamD l7 1142 4 = true := recsK7OK_succ (lo := 1142) (n := 3) r_1142 (recsK7OK_succ (lo := 1143) (n := 2) r_1143 (recsK7OK_succ (lo := 1144) (n := 1) r_1144 (r_1145)))

end BeatAvg.K.K7
