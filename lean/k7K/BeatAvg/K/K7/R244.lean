import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_798 : treeK7OK l7 798 = true := by decide +kernel

theorem n_798 : (recAt l7 798).2.2.2.length ≤ 416 := by decide +kernel

theorem v_798_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 0 16 = true := by decide +kernel

theorem v_798_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 16 16 = true := by decide +kernel

theorem v_798_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 32 16 = true := by decide +kernel

theorem v_798_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 48 16 = true := by decide +kernel

theorem v_798_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 64 16 = true := by decide +kernel

theorem v_798_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 80 16 = true := by decide +kernel

theorem v_798_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 96 16 = true := by decide +kernel

theorem v_798_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 112 16 = true := by decide +kernel

theorem v_798_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 128 16 = true := by decide +kernel

theorem v_798_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 144 16 = true := by decide +kernel

theorem v_798_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 160 16 = true := by decide +kernel

theorem v_798_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 176 16 = true := by decide +kernel

theorem v_798_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 192 16 = true := by decide +kernel

theorem v_798_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 208 16 = true := by decide +kernel

theorem v_798_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 224 16 = true := by decide +kernel

theorem v_798_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 240 16 = true := by decide +kernel

theorem v_798_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 256 16 = true := by decide +kernel

theorem v_798_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 272 16 = true := by decide +kernel

theorem v_798_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 288 16 = true := by decide +kernel

theorem v_798_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 304 16 = true := by decide +kernel

theorem v_798_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 320 16 = true := by decide +kernel

theorem v_798_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 336 16 = true := by decide +kernel

theorem v_798_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 352 16 = true := by decide +kernel

theorem v_798_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 368 16 = true := by decide +kernel

theorem v_798_24 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 384 16 = true := by decide +kernel

theorem v_798_25 : leavesK7OK T qscale den6 d14 lamN lamD l7 798 400 16 = true := by decide +kernel

theorem r_798 : recsK7OK T qscale den6 d14 lamN lamD l7 798 1 = true := recK7_of (n := 416) t_798 n_798 (leavesK7OK_add (lo := 0) (n := 16) (m := 400) v_798_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 384) v_798_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 368) v_798_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 352) v_798_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 336) v_798_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 320) v_798_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 304) v_798_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 288) v_798_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 272) v_798_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 256) v_798_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 240) v_798_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 224) v_798_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 208) v_798_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 192) v_798_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 176) v_798_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 160) v_798_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 144) v_798_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 128) v_798_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 112) v_798_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 96) v_798_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 80) v_798_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 64) v_798_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 48) v_798_22 (leavesK7OK_add (lo := 368) (n := 16) (m := 32) v_798_23 (leavesK7OK_add (lo := 384) (n := 16) (m := 16) v_798_24 (v_798_25))))))))))))))))))))))))))

theorem rs_798 : recsK7OK T qscale den6 d14 lamN lamD l7 798 1 = true := r_798

end BeatAvg.K.K7
