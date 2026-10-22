import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_820 : treeK7OK l7 820 = true := by decide +kernel

theorem n_820 : (recAt l7 820).2.2.2.length ≤ 240 := by decide +kernel

theorem v_820_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 0 16 = true := by decide +kernel

theorem v_820_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 16 16 = true := by decide +kernel

theorem v_820_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 32 16 = true := by decide +kernel

theorem v_820_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 48 16 = true := by decide +kernel

theorem v_820_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 64 16 = true := by decide +kernel

theorem v_820_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 80 16 = true := by decide +kernel

theorem v_820_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 96 16 = true := by decide +kernel

theorem v_820_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 112 16 = true := by decide +kernel

theorem v_820_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 128 16 = true := by decide +kernel

theorem v_820_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 144 16 = true := by decide +kernel

theorem v_820_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 160 16 = true := by decide +kernel

theorem v_820_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 176 16 = true := by decide +kernel

theorem v_820_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 192 16 = true := by decide +kernel

theorem v_820_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 208 16 = true := by decide +kernel

theorem v_820_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 820 224 16 = true := by decide +kernel

theorem r_820 : recsK7OK T qscale den6 d14 lamN lamD l7 820 1 = true := recK7_of (n := 240) t_820 n_820 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_820_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_820_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_820_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_820_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_820_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_820_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_820_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_820_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_820_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_820_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_820_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_820_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_820_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_820_13 (v_820_14)))))))))))))))

theorem rs_820 : recsK7OK T qscale den6 d14 lamN lamD l7 820 1 = true := r_820

end BeatAvg.K.K7
