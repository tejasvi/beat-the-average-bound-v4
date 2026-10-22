import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_816 : treeK7OK l7 816 = true := by decide +kernel

theorem n_816 : (recAt l7 816).2.2.2.length ≤ 288 := by decide +kernel

theorem v_816_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 0 16 = true := by decide +kernel

theorem v_816_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 16 16 = true := by decide +kernel

theorem v_816_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 32 16 = true := by decide +kernel

theorem v_816_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 48 16 = true := by decide +kernel

theorem v_816_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 64 16 = true := by decide +kernel

theorem v_816_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 80 16 = true := by decide +kernel

theorem v_816_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 96 16 = true := by decide +kernel

theorem v_816_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 112 16 = true := by decide +kernel

theorem v_816_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 128 16 = true := by decide +kernel

theorem v_816_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 144 16 = true := by decide +kernel

theorem v_816_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 160 16 = true := by decide +kernel

theorem v_816_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 176 16 = true := by decide +kernel

theorem v_816_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 192 16 = true := by decide +kernel

theorem v_816_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 208 16 = true := by decide +kernel

theorem v_816_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 224 16 = true := by decide +kernel

theorem v_816_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 240 16 = true := by decide +kernel

theorem v_816_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 256 16 = true := by decide +kernel

theorem v_816_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 816 272 16 = true := by decide +kernel

theorem r_816 : recsK7OK T qscale den6 d14 lamN lamD l7 816 1 = true := recK7_of (n := 288) t_816 n_816 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_816_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_816_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_816_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_816_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_816_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_816_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_816_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_816_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_816_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_816_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_816_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_816_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_816_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_816_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_816_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_816_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_816_16 (v_816_17))))))))))))))))))

theorem rs_816 : recsK7OK T qscale den6 d14 lamN lamD l7 816 1 = true := r_816

end BeatAvg.K.K7
