import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_739 : treeK7OK l7 739 = true := by decide +kernel

theorem n_739 : (recAt l7 739).2.2.2.length ≤ 256 := by decide +kernel

theorem v_739_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 0 16 = true := by decide +kernel

theorem v_739_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 16 16 = true := by decide +kernel

theorem v_739_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 32 16 = true := by decide +kernel

theorem v_739_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 48 16 = true := by decide +kernel

theorem v_739_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 64 16 = true := by decide +kernel

theorem v_739_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 80 16 = true := by decide +kernel

theorem v_739_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 96 16 = true := by decide +kernel

theorem v_739_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 112 16 = true := by decide +kernel

theorem v_739_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 128 16 = true := by decide +kernel

theorem v_739_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 144 16 = true := by decide +kernel

theorem v_739_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 160 16 = true := by decide +kernel

theorem v_739_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 176 16 = true := by decide +kernel

theorem v_739_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 192 16 = true := by decide +kernel

theorem v_739_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 208 16 = true := by decide +kernel

theorem v_739_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 224 16 = true := by decide +kernel

theorem v_739_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 739 240 16 = true := by decide +kernel

theorem r_739 : recsK7OK T qscale den6 d14 lamN lamD l7 739 1 = true := recK7_of (n := 256) t_739 n_739 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_739_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_739_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_739_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_739_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_739_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_739_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_739_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_739_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_739_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_739_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_739_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_739_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_739_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_739_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_739_14 (v_739_15))))))))))))))))

theorem rs_739 : recsK7OK T qscale den6 d14 lamN lamD l7 739 1 = true := r_739

end BeatAvg.K.K7
