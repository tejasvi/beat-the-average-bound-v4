import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_983 : treeK7OK l7 983 = true := by decide +kernel

theorem n_983 : (recAt l7 983).2.2.2.length ≤ 224 := by decide +kernel

theorem v_983_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 0 16 = true := by decide +kernel

theorem v_983_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 16 16 = true := by decide +kernel

theorem v_983_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 32 16 = true := by decide +kernel

theorem v_983_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 48 16 = true := by decide +kernel

theorem v_983_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 64 16 = true := by decide +kernel

theorem v_983_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 80 16 = true := by decide +kernel

theorem v_983_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 96 16 = true := by decide +kernel

theorem v_983_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 112 16 = true := by decide +kernel

theorem v_983_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 128 16 = true := by decide +kernel

theorem v_983_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 144 16 = true := by decide +kernel

theorem v_983_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 160 16 = true := by decide +kernel

theorem v_983_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 176 16 = true := by decide +kernel

theorem v_983_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 192 16 = true := by decide +kernel

theorem v_983_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 983 208 16 = true := by decide +kernel

theorem r_983 : recsK7OK T qscale den6 d14 lamN lamD l7 983 1 = true := recK7_of (n := 224) t_983 n_983 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_983_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_983_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_983_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_983_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_983_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_983_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_983_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_983_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_983_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_983_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_983_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_983_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_983_12 (v_983_13))))))))))))))

theorem rs_983 : recsK7OK T qscale den6 d14 lamN lamD l7 983 1 = true := r_983

end BeatAvg.K.K7
