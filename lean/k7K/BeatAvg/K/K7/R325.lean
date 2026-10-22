import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_980 : treeK7OK l7 980 = true := by decide +kernel

theorem n_980 : (recAt l7 980).2.2.2.length ≤ 256 := by decide +kernel

theorem v_980_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 0 16 = true := by decide +kernel

theorem v_980_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 16 16 = true := by decide +kernel

theorem v_980_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 32 16 = true := by decide +kernel

theorem v_980_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 48 16 = true := by decide +kernel

theorem v_980_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 64 16 = true := by decide +kernel

theorem v_980_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 80 16 = true := by decide +kernel

theorem v_980_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 96 16 = true := by decide +kernel

theorem v_980_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 112 16 = true := by decide +kernel

theorem v_980_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 128 16 = true := by decide +kernel

theorem v_980_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 144 16 = true := by decide +kernel

theorem v_980_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 160 16 = true := by decide +kernel

theorem v_980_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 176 16 = true := by decide +kernel

theorem v_980_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 192 16 = true := by decide +kernel

theorem v_980_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 208 16 = true := by decide +kernel

theorem v_980_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 224 16 = true := by decide +kernel

theorem v_980_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 980 240 16 = true := by decide +kernel

theorem r_980 : recsK7OK T qscale den6 d14 lamN lamD l7 980 1 = true := recK7_of (n := 256) t_980 n_980 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_980_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_980_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_980_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_980_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_980_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_980_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_980_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_980_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_980_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_980_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_980_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_980_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_980_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_980_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_980_14 (v_980_15))))))))))))))))

theorem rs_980 : recsK7OK T qscale den6 d14 lamN lamD l7 980 1 = true := r_980

end BeatAvg.K.K7
