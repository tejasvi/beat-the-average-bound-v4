import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_759 : treeK7OK l7 759 = true := by decide +kernel

theorem n_759 : (recAt l7 759).2.2.2.length ≤ 320 := by decide +kernel

theorem v_759_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 0 16 = true := by decide +kernel

theorem v_759_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 16 16 = true := by decide +kernel

theorem v_759_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 32 16 = true := by decide +kernel

theorem v_759_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 48 16 = true := by decide +kernel

theorem v_759_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 64 16 = true := by decide +kernel

theorem v_759_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 80 16 = true := by decide +kernel

theorem v_759_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 96 16 = true := by decide +kernel

theorem v_759_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 112 16 = true := by decide +kernel

theorem v_759_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 128 16 = true := by decide +kernel

theorem v_759_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 144 16 = true := by decide +kernel

theorem v_759_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 160 16 = true := by decide +kernel

theorem v_759_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 176 16 = true := by decide +kernel

theorem v_759_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 192 16 = true := by decide +kernel

theorem v_759_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 208 16 = true := by decide +kernel

theorem v_759_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 224 16 = true := by decide +kernel

theorem v_759_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 240 16 = true := by decide +kernel

theorem v_759_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 256 16 = true := by decide +kernel

theorem v_759_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 272 16 = true := by decide +kernel

theorem v_759_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 288 16 = true := by decide +kernel

theorem v_759_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 759 304 16 = true := by decide +kernel

theorem r_759 : recsK7OK T qscale den6 d14 lamN lamD l7 759 1 = true := recK7_of (n := 320) t_759 n_759 (leavesK7OK_add (lo := 0) (n := 16) (m := 304) v_759_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 288) v_759_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 272) v_759_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 256) v_759_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 240) v_759_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 224) v_759_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 208) v_759_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 192) v_759_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 176) v_759_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 160) v_759_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 144) v_759_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 128) v_759_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 112) v_759_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 96) v_759_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 80) v_759_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 64) v_759_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 48) v_759_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 32) v_759_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 16) v_759_18 (v_759_19))))))))))))))))))))

theorem rs_759 : recsK7OK T qscale den6 d14 lamN lamD l7 759 1 = true := r_759

end BeatAvg.K.K7
