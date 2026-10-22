import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1074 : treeK7OK l7 1074 = true := by decide +kernel

theorem n_1074 : (recAt l7 1074).2.2.2.length ≤ 176 := by decide +kernel

theorem v_1074_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 0 16 = true := by decide +kernel

theorem v_1074_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 16 16 = true := by decide +kernel

theorem v_1074_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 32 16 = true := by decide +kernel

theorem v_1074_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 48 16 = true := by decide +kernel

theorem v_1074_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 64 16 = true := by decide +kernel

theorem v_1074_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 80 16 = true := by decide +kernel

theorem v_1074_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 96 16 = true := by decide +kernel

theorem v_1074_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 112 16 = true := by decide +kernel

theorem v_1074_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 128 16 = true := by decide +kernel

theorem v_1074_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 144 16 = true := by decide +kernel

theorem v_1074_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1074 160 16 = true := by decide +kernel

theorem r_1074 : recsK7OK T qscale den6 d14 lamN lamD l7 1074 1 = true := recK7_of (n := 176) t_1074 n_1074 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_1074_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_1074_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_1074_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_1074_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_1074_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_1074_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_1074_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_1074_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_1074_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_1074_9 (v_1074_10)))))))))))

theorem t_1075 : treeK7OK l7 1075 = true := by decide +kernel

theorem n_1075 : (recAt l7 1075).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1075_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 0 16 = true := by decide +kernel

theorem v_1075_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 16 16 = true := by decide +kernel

theorem v_1075_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 32 16 = true := by decide +kernel

theorem v_1075_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 48 16 = true := by decide +kernel

theorem v_1075_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 64 16 = true := by decide +kernel

theorem v_1075_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 80 16 = true := by decide +kernel

theorem v_1075_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 96 16 = true := by decide +kernel

theorem v_1075_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 112 16 = true := by decide +kernel

theorem v_1075_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 128 16 = true := by decide +kernel

theorem v_1075_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1075 144 16 = true := by decide +kernel

theorem r_1075 : recsK7OK T qscale den6 d14 lamN lamD l7 1075 1 = true := recK7_of (n := 160) t_1075 n_1075 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1075_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1075_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1075_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1075_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1075_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1075_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1075_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1075_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1075_8 (v_1075_9))))))))))

theorem rs_1074 : recsK7OK T qscale den6 d14 lamN lamD l7 1074 2 = true := recsK7OK_succ (lo := 1074) (n := 1) r_1074 (r_1075)

end BeatAvg.K.K7
