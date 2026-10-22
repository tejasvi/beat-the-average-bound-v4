import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_728 : treeK7OK l7 728 = true := by decide +kernel

theorem n_728 : (recAt l7 728).2.2.2.length ≤ 272 := by decide +kernel

theorem v_728_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 0 16 = true := by decide +kernel

theorem v_728_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 16 16 = true := by decide +kernel

theorem v_728_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 32 16 = true := by decide +kernel

theorem v_728_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 48 16 = true := by decide +kernel

theorem v_728_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 64 16 = true := by decide +kernel

theorem v_728_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 80 16 = true := by decide +kernel

theorem v_728_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 96 16 = true := by decide +kernel

theorem v_728_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 112 16 = true := by decide +kernel

theorem v_728_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 128 16 = true := by decide +kernel

theorem v_728_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 144 16 = true := by decide +kernel

theorem v_728_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 160 16 = true := by decide +kernel

theorem v_728_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 176 16 = true := by decide +kernel

theorem v_728_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 192 16 = true := by decide +kernel

theorem v_728_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 208 16 = true := by decide +kernel

theorem v_728_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 224 16 = true := by decide +kernel

theorem v_728_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 240 16 = true := by decide +kernel

theorem v_728_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 728 256 16 = true := by decide +kernel

theorem r_728 : recsK7OK T qscale den6 d14 lamN lamD l7 728 1 = true := recK7_of (n := 272) t_728 n_728 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_728_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_728_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_728_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_728_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_728_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_728_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_728_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_728_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_728_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_728_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_728_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_728_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_728_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_728_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_728_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_728_15 (v_728_16)))))))))))))))))

theorem rs_728 : recsK7OK T qscale den6 d14 lamN lamD l7 728 1 = true := r_728

end BeatAvg.K.K7
