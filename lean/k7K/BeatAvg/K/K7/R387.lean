import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1177 : treeK7OK l7 1177 = true := by decide +kernel

theorem n_1177 : (recAt l7 1177).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1177_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1177 0 16 = true := by decide +kernel

theorem v_1177_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1177 16 16 = true := by decide +kernel

theorem v_1177_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1177 32 16 = true := by decide +kernel

theorem v_1177_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1177 48 16 = true := by decide +kernel

theorem v_1177_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1177 64 16 = true := by decide +kernel

theorem v_1177_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1177 80 16 = true := by decide +kernel

theorem r_1177 : recsK7OK T qscale den6 d14 lamN lamD l7 1177 1 = true := recK7_of (n := 96) t_1177 n_1177 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1177_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1177_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1177_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1177_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1177_4 (v_1177_5))))))

theorem t_1178 : treeK7OK l7 1178 = true := by decide +kernel

theorem n_1178 : (recAt l7 1178).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1178_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1178 0 16 = true := by decide +kernel

theorem v_1178_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1178 16 16 = true := by decide +kernel

theorem v_1178_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1178 32 16 = true := by decide +kernel

theorem v_1178_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1178 48 16 = true := by decide +kernel

theorem v_1178_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1178 64 16 = true := by decide +kernel

theorem r_1178 : recsK7OK T qscale den6 d14 lamN lamD l7 1178 1 = true := recK7_of (n := 80) t_1178 n_1178 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1178_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1178_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1178_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1178_3 (v_1178_4)))))

theorem t_1179 : treeK7OK l7 1179 = true := by decide +kernel

theorem n_1179 : (recAt l7 1179).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1179_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1179 0 16 = true := by decide +kernel

theorem v_1179_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1179 16 16 = true := by decide +kernel

theorem v_1179_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1179 32 16 = true := by decide +kernel

theorem v_1179_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1179 48 16 = true := by decide +kernel

theorem v_1179_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1179 64 16 = true := by decide +kernel

theorem v_1179_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1179 80 16 = true := by decide +kernel

theorem v_1179_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1179 96 16 = true := by decide +kernel

theorem r_1179 : recsK7OK T qscale den6 d14 lamN lamD l7 1179 1 = true := recK7_of (n := 112) t_1179 n_1179 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1179_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1179_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1179_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1179_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1179_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1179_5 (v_1179_6)))))))

theorem rs_1177 : recsK7OK T qscale den6 d14 lamN lamD l7 1177 3 = true := recsK7OK_succ (lo := 1177) (n := 2) r_1177 (recsK7OK_succ (lo := 1178) (n := 1) r_1178 (r_1179))

end BeatAvg.K.K7
