import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1135 : treeK7OK l7 1135 = true := by decide +kernel

theorem n_1135 : (recAt l7 1135).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1135_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1135 0 16 = true := by decide +kernel

theorem v_1135_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1135 16 16 = true := by decide +kernel

theorem v_1135_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1135 32 16 = true := by decide +kernel

theorem v_1135_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1135 48 16 = true := by decide +kernel

theorem v_1135_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1135 64 16 = true := by decide +kernel

theorem v_1135_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1135 80 16 = true := by decide +kernel

theorem v_1135_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1135 96 16 = true := by decide +kernel

theorem r_1135 : recsK7OK T qscale den6 d14 lamN lamD l7 1135 1 = true := recK7_of (n := 112) t_1135 n_1135 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1135_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1135_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1135_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1135_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1135_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1135_5 (v_1135_6)))))))

theorem t_1136 : treeK7OK l7 1136 = true := by decide +kernel

theorem n_1136 : (recAt l7 1136).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1136_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1136 0 16 = true := by decide +kernel

theorem v_1136_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1136 16 16 = true := by decide +kernel

theorem v_1136_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1136 32 16 = true := by decide +kernel

theorem v_1136_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1136 48 16 = true := by decide +kernel

theorem v_1136_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1136 64 16 = true := by decide +kernel

theorem v_1136_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1136 80 16 = true := by decide +kernel

theorem v_1136_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1136 96 16 = true := by decide +kernel

theorem r_1136 : recsK7OK T qscale den6 d14 lamN lamD l7 1136 1 = true := recK7_of (n := 112) t_1136 n_1136 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1136_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1136_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1136_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1136_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1136_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1136_5 (v_1136_6)))))))

theorem t_1137 : treeK7OK l7 1137 = true := by decide +kernel

theorem n_1137 : (recAt l7 1137).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1137_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 0 16 = true := by decide +kernel

theorem v_1137_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 16 16 = true := by decide +kernel

theorem v_1137_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 32 16 = true := by decide +kernel

theorem v_1137_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 48 16 = true := by decide +kernel

theorem v_1137_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 64 16 = true := by decide +kernel

theorem v_1137_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 80 16 = true := by decide +kernel

theorem v_1137_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 96 16 = true := by decide +kernel

theorem v_1137_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1137 112 16 = true := by decide +kernel

theorem r_1137 : recsK7OK T qscale den6 d14 lamN lamD l7 1137 1 = true := recK7_of (n := 128) t_1137 n_1137 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1137_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1137_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1137_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1137_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1137_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1137_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1137_6 (v_1137_7))))))))

theorem rs_1135 : recsK7OK T qscale den6 d14 lamN lamD l7 1135 3 = true := recsK7OK_succ (lo := 1135) (n := 2) r_1135 (recsK7OK_succ (lo := 1136) (n := 1) r_1136 (r_1137))

end BeatAvg.K.K7
