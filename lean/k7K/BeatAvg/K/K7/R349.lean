import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1041 : treeK7OK l7 1041 = true := by decide +kernel

theorem n_1041 : (recAt l7 1041).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1041_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 0 16 = true := by decide +kernel

theorem v_1041_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 16 16 = true := by decide +kernel

theorem v_1041_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 32 16 = true := by decide +kernel

theorem v_1041_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 48 16 = true := by decide +kernel

theorem v_1041_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 64 16 = true := by decide +kernel

theorem v_1041_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 80 16 = true := by decide +kernel

theorem v_1041_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 96 16 = true := by decide +kernel

theorem v_1041_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 112 16 = true := by decide +kernel

theorem v_1041_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1041 128 16 = true := by decide +kernel

theorem r_1041 : recsK7OK T qscale den6 d14 lamN lamD l7 1041 1 = true := recK7_of (n := 144) t_1041 n_1041 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1041_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1041_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1041_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1041_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1041_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1041_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1041_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1041_7 (v_1041_8)))))))))

theorem t_1042 : treeK7OK l7 1042 = true := by decide +kernel

theorem n_1042 : (recAt l7 1042).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1042_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1042 0 16 = true := by decide +kernel

theorem v_1042_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1042 16 16 = true := by decide +kernel

theorem v_1042_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1042 32 16 = true := by decide +kernel

theorem v_1042_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1042 48 16 = true := by decide +kernel

theorem v_1042_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1042 64 16 = true := by decide +kernel

theorem r_1042 : recsK7OK T qscale den6 d14 lamN lamD l7 1042 1 = true := recK7_of (n := 80) t_1042 n_1042 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1042_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1042_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1042_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1042_3 (v_1042_4)))))

theorem t_1043 : treeK7OK l7 1043 = true := by decide +kernel

theorem n_1043 : (recAt l7 1043).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1043_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 0 16 = true := by decide +kernel

theorem v_1043_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 16 16 = true := by decide +kernel

theorem v_1043_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 32 16 = true := by decide +kernel

theorem v_1043_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 48 16 = true := by decide +kernel

theorem v_1043_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 64 16 = true := by decide +kernel

theorem v_1043_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 80 16 = true := by decide +kernel

theorem v_1043_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 96 16 = true := by decide +kernel

theorem v_1043_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 112 16 = true := by decide +kernel

theorem v_1043_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1043 128 16 = true := by decide +kernel

theorem r_1043 : recsK7OK T qscale den6 d14 lamN lamD l7 1043 1 = true := recK7_of (n := 144) t_1043 n_1043 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1043_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1043_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1043_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1043_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1043_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1043_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1043_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1043_7 (v_1043_8)))))))))

theorem rs_1041 : recsK7OK T qscale den6 d14 lamN lamD l7 1041 3 = true := recsK7OK_succ (lo := 1041) (n := 2) r_1041 (recsK7OK_succ (lo := 1042) (n := 1) r_1042 (r_1043))

end BeatAvg.K.K7
