import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_751 : treeK7OK l7 751 = true := by decide +kernel

theorem n_751 : (recAt l7 751).2.2.2.length ≤ 224 := by decide +kernel

theorem v_751_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 0 16 = true := by decide +kernel

theorem v_751_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 16 16 = true := by decide +kernel

theorem v_751_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 32 16 = true := by decide +kernel

theorem v_751_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 48 16 = true := by decide +kernel

theorem v_751_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 64 16 = true := by decide +kernel

theorem v_751_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 80 16 = true := by decide +kernel

theorem v_751_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 96 16 = true := by decide +kernel

theorem v_751_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 112 16 = true := by decide +kernel

theorem v_751_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 128 16 = true := by decide +kernel

theorem v_751_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 144 16 = true := by decide +kernel

theorem v_751_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 160 16 = true := by decide +kernel

theorem v_751_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 176 16 = true := by decide +kernel

theorem v_751_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 192 16 = true := by decide +kernel

theorem v_751_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 751 208 16 = true := by decide +kernel

theorem r_751 : recsK7OK T qscale den6 d14 lamN lamD l7 751 1 = true := recK7_of (n := 224) t_751 n_751 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_751_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_751_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_751_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_751_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_751_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_751_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_751_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_751_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_751_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_751_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_751_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_751_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_751_12 (v_751_13))))))))))))))

theorem rs_751 : recsK7OK T qscale den6 d14 lamN lamD l7 751 1 = true := r_751

end BeatAvg.K.K7
