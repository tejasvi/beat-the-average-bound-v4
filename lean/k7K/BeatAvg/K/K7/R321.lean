import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_976 : treeK7OK l7 976 = true := by decide +kernel

theorem n_976 : (recAt l7 976).2.2.2.length ≤ 208 := by decide +kernel

theorem v_976_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 0 16 = true := by decide +kernel

theorem v_976_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 16 16 = true := by decide +kernel

theorem v_976_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 32 16 = true := by decide +kernel

theorem v_976_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 48 16 = true := by decide +kernel

theorem v_976_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 64 16 = true := by decide +kernel

theorem v_976_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 80 16 = true := by decide +kernel

theorem v_976_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 96 16 = true := by decide +kernel

theorem v_976_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 112 16 = true := by decide +kernel

theorem v_976_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 128 16 = true := by decide +kernel

theorem v_976_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 144 16 = true := by decide +kernel

theorem v_976_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 160 16 = true := by decide +kernel

theorem v_976_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 176 16 = true := by decide +kernel

theorem v_976_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 976 192 16 = true := by decide +kernel

theorem r_976 : recsK7OK T qscale den6 d14 lamN lamD l7 976 1 = true := recK7_of (n := 208) t_976 n_976 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_976_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_976_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_976_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_976_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_976_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_976_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_976_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_976_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_976_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_976_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_976_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_976_11 (v_976_12)))))))))))))

theorem rs_976 : recsK7OK T qscale den6 d14 lamN lamD l7 976 1 = true := r_976

end BeatAvg.K.K7
