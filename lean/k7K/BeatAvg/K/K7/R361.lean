import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1082 : treeK7OK l7 1082 = true := by decide +kernel

theorem n_1082 : (recAt l7 1082).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1082_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1082 0 16 = true := by decide +kernel

theorem v_1082_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1082 16 16 = true := by decide +kernel

theorem v_1082_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1082 32 16 = true := by decide +kernel

theorem v_1082_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1082 48 16 = true := by decide +kernel

theorem v_1082_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1082 64 16 = true := by decide +kernel

theorem v_1082_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1082 80 16 = true := by decide +kernel

theorem r_1082 : recsK7OK T qscale den6 d14 lamN lamD l7 1082 1 = true := recK7_of (n := 96) t_1082 n_1082 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1082_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1082_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1082_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1082_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1082_4 (v_1082_5))))))

theorem t_1083 : treeK7OK l7 1083 = true := by decide +kernel

theorem n_1083 : (recAt l7 1083).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1083_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1083 0 16 = true := by decide +kernel

theorem v_1083_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1083 16 16 = true := by decide +kernel

theorem v_1083_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1083 32 16 = true := by decide +kernel

theorem v_1083_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1083 48 16 = true := by decide +kernel

theorem v_1083_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1083 64 16 = true := by decide +kernel

theorem v_1083_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1083 80 16 = true := by decide +kernel

theorem v_1083_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1083 96 16 = true := by decide +kernel

theorem r_1083 : recsK7OK T qscale den6 d14 lamN lamD l7 1083 1 = true := recK7_of (n := 112) t_1083 n_1083 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1083_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1083_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1083_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1083_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1083_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1083_5 (v_1083_6)))))))

theorem t_1084 : treeK7OK l7 1084 = true := by decide +kernel

theorem n_1084 : (recAt l7 1084).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1084_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1084 0 16 = true := by decide +kernel

theorem v_1084_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1084 16 16 = true := by decide +kernel

theorem v_1084_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1084 32 16 = true := by decide +kernel

theorem v_1084_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1084 48 16 = true := by decide +kernel

theorem v_1084_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1084 64 16 = true := by decide +kernel

theorem v_1084_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1084 80 16 = true := by decide +kernel

theorem r_1084 : recsK7OK T qscale den6 d14 lamN lamD l7 1084 1 = true := recK7_of (n := 96) t_1084 n_1084 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1084_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1084_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1084_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1084_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1084_4 (v_1084_5))))))

theorem t_1085 : treeK7OK l7 1085 = true := by decide +kernel

theorem n_1085 : (recAt l7 1085).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1085_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1085 0 16 = true := by decide +kernel

theorem v_1085_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1085 16 16 = true := by decide +kernel

theorem v_1085_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1085 32 16 = true := by decide +kernel

theorem v_1085_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1085 48 16 = true := by decide +kernel

theorem v_1085_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1085 64 16 = true := by decide +kernel

theorem r_1085 : recsK7OK T qscale den6 d14 lamN lamD l7 1085 1 = true := recK7_of (n := 80) t_1085 n_1085 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1085_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1085_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1085_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1085_3 (v_1085_4)))))

theorem rs_1082 : recsK7OK T qscale den6 d14 lamN lamD l7 1082 4 = true := recsK7OK_succ (lo := 1082) (n := 3) r_1082 (recsK7OK_succ (lo := 1083) (n := 2) r_1083 (recsK7OK_succ (lo := 1084) (n := 1) r_1084 (r_1085)))

end BeatAvg.K.K7
