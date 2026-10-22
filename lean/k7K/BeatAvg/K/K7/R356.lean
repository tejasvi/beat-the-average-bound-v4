import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1068 : treeK7OK l7 1068 = true := by decide +kernel

theorem n_1068 : (recAt l7 1068).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1068_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 0 16 = true := by decide +kernel

theorem v_1068_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 16 16 = true := by decide +kernel

theorem v_1068_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 32 16 = true := by decide +kernel

theorem v_1068_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 48 16 = true := by decide +kernel

theorem v_1068_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 64 16 = true := by decide +kernel

theorem v_1068_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 80 16 = true := by decide +kernel

theorem v_1068_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 96 16 = true := by decide +kernel

theorem v_1068_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 112 16 = true := by decide +kernel

theorem v_1068_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 128 16 = true := by decide +kernel

theorem v_1068_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1068 144 16 = true := by decide +kernel

theorem r_1068 : recsK7OK T qscale den6 d14 lamN lamD l7 1068 1 = true := recK7_of (n := 160) t_1068 n_1068 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1068_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1068_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1068_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1068_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1068_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1068_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1068_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1068_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1068_8 (v_1068_9))))))))))

theorem t_1069 : treeK7OK l7 1069 = true := by decide +kernel

theorem n_1069 : (recAt l7 1069).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1069_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1069 0 16 = true := by decide +kernel

theorem v_1069_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1069 16 16 = true := by decide +kernel

theorem v_1069_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1069 32 16 = true := by decide +kernel

theorem v_1069_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1069 48 16 = true := by decide +kernel

theorem r_1069 : recsK7OK T qscale den6 d14 lamN lamD l7 1069 1 = true := recK7_of (n := 64) t_1069 n_1069 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1069_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1069_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1069_2 (v_1069_3))))

theorem t_1070 : treeK7OK l7 1070 = true := by decide +kernel

theorem n_1070 : (recAt l7 1070).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1070_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1070 0 16 = true := by decide +kernel

theorem v_1070_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1070 16 16 = true := by decide +kernel

theorem v_1070_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1070 32 16 = true := by decide +kernel

theorem v_1070_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1070 48 16 = true := by decide +kernel

theorem v_1070_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1070 64 16 = true := by decide +kernel

theorem v_1070_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1070 80 16 = true := by decide +kernel

theorem v_1070_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1070 96 16 = true := by decide +kernel

theorem r_1070 : recsK7OK T qscale den6 d14 lamN lamD l7 1070 1 = true := recK7_of (n := 112) t_1070 n_1070 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1070_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1070_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1070_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1070_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1070_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1070_5 (v_1070_6)))))))

theorem rs_1068 : recsK7OK T qscale den6 d14 lamN lamD l7 1068 3 = true := recsK7OK_succ (lo := 1068) (n := 2) r_1068 (recsK7OK_succ (lo := 1069) (n := 1) r_1069 (r_1070))

end BeatAvg.K.K7
