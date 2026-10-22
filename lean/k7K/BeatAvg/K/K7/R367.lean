import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1103 : treeK7OK l7 1103 = true := by decide +kernel

theorem n_1103 : (recAt l7 1103).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1103_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 0 16 = true := by decide +kernel

theorem v_1103_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 16 16 = true := by decide +kernel

theorem v_1103_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 32 16 = true := by decide +kernel

theorem v_1103_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 48 16 = true := by decide +kernel

theorem v_1103_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 64 16 = true := by decide +kernel

theorem v_1103_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 80 16 = true := by decide +kernel

theorem v_1103_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 96 16 = true := by decide +kernel

theorem v_1103_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 112 16 = true := by decide +kernel

theorem v_1103_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1103 128 16 = true := by decide +kernel

theorem r_1103 : recsK7OK T qscale den6 d14 lamN lamD l7 1103 1 = true := recK7_of (n := 144) t_1103 n_1103 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1103_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1103_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1103_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1103_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1103_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1103_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1103_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1103_7 (v_1103_8)))))))))

theorem t_1104 : treeK7OK l7 1104 = true := by decide +kernel

theorem n_1104 : (recAt l7 1104).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1104_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1104 0 16 = true := by decide +kernel

theorem v_1104_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1104 16 16 = true := by decide +kernel

theorem r_1104 : recsK7OK T qscale den6 d14 lamN lamD l7 1104 1 = true := recK7_of (n := 32) t_1104 n_1104 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1104_0 (v_1104_1))

theorem t_1105 : treeK7OK l7 1105 = true := by decide +kernel

theorem n_1105 : (recAt l7 1105).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1105_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 0 16 = true := by decide +kernel

theorem v_1105_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 16 16 = true := by decide +kernel

theorem v_1105_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 32 16 = true := by decide +kernel

theorem v_1105_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 48 16 = true := by decide +kernel

theorem v_1105_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 64 16 = true := by decide +kernel

theorem v_1105_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 80 16 = true := by decide +kernel

theorem v_1105_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 96 16 = true := by decide +kernel

theorem v_1105_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1105 112 16 = true := by decide +kernel

theorem r_1105 : recsK7OK T qscale den6 d14 lamN lamD l7 1105 1 = true := recK7_of (n := 128) t_1105 n_1105 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1105_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1105_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1105_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1105_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1105_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1105_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1105_6 (v_1105_7))))))))

theorem t_1106 : treeK7OK l7 1106 = true := by decide +kernel

theorem n_1106 : (recAt l7 1106).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1106_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1106 0 16 = true := by decide +kernel

theorem v_1106_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1106 16 16 = true := by decide +kernel

theorem v_1106_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1106 32 16 = true := by decide +kernel

theorem v_1106_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1106 48 16 = true := by decide +kernel

theorem v_1106_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1106 64 16 = true := by decide +kernel

theorem r_1106 : recsK7OK T qscale den6 d14 lamN lamD l7 1106 1 = true := recK7_of (n := 80) t_1106 n_1106 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1106_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1106_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1106_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1106_3 (v_1106_4)))))

theorem rs_1103 : recsK7OK T qscale den6 d14 lamN lamD l7 1103 4 = true := recsK7OK_succ (lo := 1103) (n := 3) r_1103 (recsK7OK_succ (lo := 1104) (n := 2) r_1104 (recsK7OK_succ (lo := 1105) (n := 1) r_1105 (r_1106)))

end BeatAvg.K.K7
