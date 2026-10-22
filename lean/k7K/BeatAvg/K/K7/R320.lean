import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_975 : treeK7OK l7 975 = true := by decide +kernel

theorem n_975 : (recAt l7 975).2.2.2.length ≤ 224 := by decide +kernel

theorem v_975_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 0 16 = true := by decide +kernel

theorem v_975_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 16 16 = true := by decide +kernel

theorem v_975_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 32 16 = true := by decide +kernel

theorem v_975_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 48 16 = true := by decide +kernel

theorem v_975_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 64 16 = true := by decide +kernel

theorem v_975_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 80 16 = true := by decide +kernel

theorem v_975_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 96 16 = true := by decide +kernel

theorem v_975_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 112 16 = true := by decide +kernel

theorem v_975_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 128 16 = true := by decide +kernel

theorem v_975_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 144 16 = true := by decide +kernel

theorem v_975_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 160 16 = true := by decide +kernel

theorem v_975_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 176 16 = true := by decide +kernel

theorem v_975_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 192 16 = true := by decide +kernel

theorem v_975_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 975 208 16 = true := by decide +kernel

theorem r_975 : recsK7OK T qscale den6 d14 lamN lamD l7 975 1 = true := recK7_of (n := 224) t_975 n_975 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_975_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_975_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_975_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_975_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_975_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_975_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_975_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_975_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_975_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_975_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_975_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_975_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_975_12 (v_975_13))))))))))))))

theorem rs_975 : recsK7OK T qscale den6 d14 lamN lamD l7 975 1 = true := r_975

end BeatAvg.K.K7
