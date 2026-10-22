import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_930 : treeK7OK l7 930 = true := by decide +kernel

theorem n_930 : (recAt l7 930).2.2.2.length ≤ 256 := by decide +kernel

theorem v_930_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 0 16 = true := by decide +kernel

theorem v_930_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 16 16 = true := by decide +kernel

theorem v_930_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 32 16 = true := by decide +kernel

theorem v_930_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 48 16 = true := by decide +kernel

theorem v_930_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 64 16 = true := by decide +kernel

theorem v_930_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 80 16 = true := by decide +kernel

theorem v_930_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 96 16 = true := by decide +kernel

theorem v_930_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 112 16 = true := by decide +kernel

theorem v_930_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 128 16 = true := by decide +kernel

theorem v_930_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 144 16 = true := by decide +kernel

theorem v_930_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 160 16 = true := by decide +kernel

theorem v_930_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 176 16 = true := by decide +kernel

theorem v_930_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 192 16 = true := by decide +kernel

theorem v_930_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 208 16 = true := by decide +kernel

theorem v_930_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 224 16 = true := by decide +kernel

theorem v_930_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 930 240 16 = true := by decide +kernel

theorem r_930 : recsK7OK T qscale den6 d14 lamN lamD l7 930 1 = true := recK7_of (n := 256) t_930 n_930 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_930_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_930_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_930_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_930_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_930_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_930_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_930_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_930_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_930_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_930_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_930_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_930_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_930_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_930_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_930_14 (v_930_15))))))))))))))))

theorem rs_930 : recsK7OK T qscale den6 d14 lamN lamD l7 930 1 = true := r_930

end BeatAvg.K.K7
