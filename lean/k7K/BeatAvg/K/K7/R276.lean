import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_870 : treeK7OK l7 870 = true := by decide +kernel

theorem n_870 : (recAt l7 870).2.2.2.length ≤ 416 := by decide +kernel

theorem v_870_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 0 16 = true := by decide +kernel

theorem v_870_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 16 16 = true := by decide +kernel

theorem v_870_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 32 16 = true := by decide +kernel

theorem v_870_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 48 16 = true := by decide +kernel

theorem v_870_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 64 16 = true := by decide +kernel

theorem v_870_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 80 16 = true := by decide +kernel

theorem v_870_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 96 16 = true := by decide +kernel

theorem v_870_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 112 16 = true := by decide +kernel

theorem v_870_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 128 16 = true := by decide +kernel

theorem v_870_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 144 16 = true := by decide +kernel

theorem v_870_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 160 16 = true := by decide +kernel

theorem v_870_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 176 16 = true := by decide +kernel

theorem v_870_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 192 16 = true := by decide +kernel

theorem v_870_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 208 16 = true := by decide +kernel

theorem v_870_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 224 16 = true := by decide +kernel

theorem v_870_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 240 16 = true := by decide +kernel

theorem v_870_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 256 16 = true := by decide +kernel

theorem v_870_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 272 16 = true := by decide +kernel

theorem v_870_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 288 16 = true := by decide +kernel

theorem v_870_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 304 16 = true := by decide +kernel

theorem v_870_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 320 16 = true := by decide +kernel

theorem v_870_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 336 16 = true := by decide +kernel

theorem v_870_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 352 16 = true := by decide +kernel

theorem v_870_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 368 16 = true := by decide +kernel

theorem v_870_24 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 384 16 = true := by decide +kernel

theorem v_870_25 : leavesK7OK T qscale den6 d14 lamN lamD l7 870 400 16 = true := by decide +kernel

theorem r_870 : recsK7OK T qscale den6 d14 lamN lamD l7 870 1 = true := recK7_of (n := 416) t_870 n_870 (leavesK7OK_add (lo := 0) (n := 16) (m := 400) v_870_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 384) v_870_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 368) v_870_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 352) v_870_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 336) v_870_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 320) v_870_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 304) v_870_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 288) v_870_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 272) v_870_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 256) v_870_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 240) v_870_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 224) v_870_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 208) v_870_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 192) v_870_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 176) v_870_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 160) v_870_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 144) v_870_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 128) v_870_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 112) v_870_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 96) v_870_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 80) v_870_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 64) v_870_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 48) v_870_22 (leavesK7OK_add (lo := 368) (n := 16) (m := 32) v_870_23 (leavesK7OK_add (lo := 384) (n := 16) (m := 16) v_870_24 (v_870_25))))))))))))))))))))))))))

theorem rs_870 : recsK7OK T qscale den6 d14 lamN lamD l7 870 1 = true := r_870

end BeatAvg.K.K7
