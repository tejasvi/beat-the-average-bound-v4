import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_819 : treeK7OK l7 819 = true := by decide +kernel

theorem n_819 : (recAt l7 819).2.2.2.length ≤ 336 := by decide +kernel

theorem v_819_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 0 16 = true := by decide +kernel

theorem v_819_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 16 16 = true := by decide +kernel

theorem v_819_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 32 16 = true := by decide +kernel

theorem v_819_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 48 16 = true := by decide +kernel

theorem v_819_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 64 16 = true := by decide +kernel

theorem v_819_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 80 16 = true := by decide +kernel

theorem v_819_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 96 16 = true := by decide +kernel

theorem v_819_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 112 16 = true := by decide +kernel

theorem v_819_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 128 16 = true := by decide +kernel

theorem v_819_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 144 16 = true := by decide +kernel

theorem v_819_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 160 16 = true := by decide +kernel

theorem v_819_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 176 16 = true := by decide +kernel

theorem v_819_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 192 16 = true := by decide +kernel

theorem v_819_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 208 16 = true := by decide +kernel

theorem v_819_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 224 16 = true := by decide +kernel

theorem v_819_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 240 16 = true := by decide +kernel

theorem v_819_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 256 16 = true := by decide +kernel

theorem v_819_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 272 16 = true := by decide +kernel

theorem v_819_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 288 16 = true := by decide +kernel

theorem v_819_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 304 16 = true := by decide +kernel

theorem v_819_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 819 320 16 = true := by decide +kernel

theorem r_819 : recsK7OK T qscale den6 d14 lamN lamD l7 819 1 = true := recK7_of (n := 336) t_819 n_819 (leavesK7OK_add (lo := 0) (n := 16) (m := 320) v_819_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 304) v_819_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 288) v_819_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 272) v_819_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 256) v_819_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 240) v_819_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 224) v_819_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 208) v_819_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 192) v_819_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 176) v_819_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 160) v_819_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 144) v_819_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 128) v_819_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 112) v_819_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 96) v_819_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 80) v_819_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 64) v_819_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 48) v_819_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 32) v_819_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 16) v_819_19 (v_819_20)))))))))))))))))))))

theorem rs_819 : recsK7OK T qscale den6 d14 lamN lamD l7 819 1 = true := r_819

end BeatAvg.K.K7
