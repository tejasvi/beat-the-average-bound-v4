import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_752 : treeK7OK l7 752 = true := by decide +kernel

theorem n_752 : (recAt l7 752).2.2.2.length ≤ 336 := by decide +kernel

theorem v_752_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 0 16 = true := by decide +kernel

theorem v_752_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 16 16 = true := by decide +kernel

theorem v_752_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 32 16 = true := by decide +kernel

theorem v_752_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 48 16 = true := by decide +kernel

theorem v_752_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 64 16 = true := by decide +kernel

theorem v_752_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 80 16 = true := by decide +kernel

theorem v_752_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 96 16 = true := by decide +kernel

theorem v_752_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 112 16 = true := by decide +kernel

theorem v_752_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 128 16 = true := by decide +kernel

theorem v_752_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 144 16 = true := by decide +kernel

theorem v_752_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 160 16 = true := by decide +kernel

theorem v_752_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 176 16 = true := by decide +kernel

theorem v_752_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 192 16 = true := by decide +kernel

theorem v_752_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 208 16 = true := by decide +kernel

theorem v_752_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 224 16 = true := by decide +kernel

theorem v_752_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 240 16 = true := by decide +kernel

theorem v_752_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 256 16 = true := by decide +kernel

theorem v_752_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 272 16 = true := by decide +kernel

theorem v_752_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 288 16 = true := by decide +kernel

theorem v_752_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 304 16 = true := by decide +kernel

theorem v_752_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 752 320 16 = true := by decide +kernel

theorem r_752 : recsK7OK T qscale den6 d14 lamN lamD l7 752 1 = true := recK7_of (n := 336) t_752 n_752 (leavesK7OK_add (lo := 0) (n := 16) (m := 320) v_752_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 304) v_752_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 288) v_752_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 272) v_752_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 256) v_752_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 240) v_752_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 224) v_752_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 208) v_752_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 192) v_752_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 176) v_752_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 160) v_752_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 144) v_752_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 128) v_752_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 112) v_752_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 96) v_752_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 80) v_752_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 64) v_752_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 48) v_752_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 32) v_752_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 16) v_752_19 (v_752_20)))))))))))))))))))))

theorem rs_752 : recsK7OK T qscale den6 d14 lamN lamD l7 752 1 = true := r_752

end BeatAvg.K.K7
