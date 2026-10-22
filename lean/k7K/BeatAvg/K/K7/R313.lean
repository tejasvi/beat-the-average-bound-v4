import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_955 : treeK7OK l7 955 = true := by decide +kernel

theorem n_955 : (recAt l7 955).2.2.2.length ≤ 256 := by decide +kernel

theorem v_955_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 0 16 = true := by decide +kernel

theorem v_955_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 16 16 = true := by decide +kernel

theorem v_955_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 32 16 = true := by decide +kernel

theorem v_955_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 48 16 = true := by decide +kernel

theorem v_955_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 64 16 = true := by decide +kernel

theorem v_955_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 80 16 = true := by decide +kernel

theorem v_955_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 96 16 = true := by decide +kernel

theorem v_955_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 112 16 = true := by decide +kernel

theorem v_955_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 128 16 = true := by decide +kernel

theorem v_955_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 144 16 = true := by decide +kernel

theorem v_955_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 160 16 = true := by decide +kernel

theorem v_955_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 176 16 = true := by decide +kernel

theorem v_955_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 192 16 = true := by decide +kernel

theorem v_955_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 208 16 = true := by decide +kernel

theorem v_955_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 224 16 = true := by decide +kernel

theorem v_955_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 955 240 16 = true := by decide +kernel

theorem r_955 : recsK7OK T qscale den6 d14 lamN lamD l7 955 1 = true := recK7_of (n := 256) t_955 n_955 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_955_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_955_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_955_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_955_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_955_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_955_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_955_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_955_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_955_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_955_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_955_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_955_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_955_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_955_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_955_14 (v_955_15))))))))))))))))

theorem rs_955 : recsK7OK T qscale den6 d14 lamN lamD l7 955 1 = true := r_955

end BeatAvg.K.K7
