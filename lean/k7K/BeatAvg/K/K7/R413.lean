import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1288 : treeK7OK l7 1288 = true := by decide +kernel

theorem n_1288 : (recAt l7 1288).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1288_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1288 0 16 = true := by decide +kernel

theorem v_1288_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1288 16 16 = true := by decide +kernel

theorem v_1288_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1288 32 16 = true := by decide +kernel

theorem v_1288_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1288 48 16 = true := by decide +kernel

theorem v_1288_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1288 64 16 = true := by decide +kernel

theorem r_1288 : recsK7OK T qscale den6 d14 lamN lamD l7 1288 1 = true := recK7_of (n := 80) t_1288 n_1288 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1288_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1288_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1288_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1288_3 (v_1288_4)))))

theorem t_1289 : treeK7OK l7 1289 = true := by decide +kernel

theorem n_1289 : (recAt l7 1289).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1289_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1289 0 16 = true := by decide +kernel

theorem v_1289_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1289 16 16 = true := by decide +kernel

theorem v_1289_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1289 32 16 = true := by decide +kernel

theorem v_1289_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1289 48 16 = true := by decide +kernel

theorem v_1289_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1289 64 16 = true := by decide +kernel

theorem r_1289 : recsK7OK T qscale den6 d14 lamN lamD l7 1289 1 = true := recK7_of (n := 80) t_1289 n_1289 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1289_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1289_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1289_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1289_3 (v_1289_4)))))

theorem rs_1288 : recsK7OK T qscale den6 d14 lamN lamD l7 1288 2 = true := recsK7OK_succ (lo := 1288) (n := 1) r_1288 (r_1289)

end BeatAvg.K.K7
