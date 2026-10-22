import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_740 : treeK7OK l7 740 = true := by decide +kernel

theorem n_740 : (recAt l7 740).2.2.2.length ≤ 256 := by decide +kernel

theorem v_740_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 0 16 = true := by decide +kernel

theorem v_740_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 16 16 = true := by decide +kernel

theorem v_740_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 32 16 = true := by decide +kernel

theorem v_740_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 48 16 = true := by decide +kernel

theorem v_740_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 64 16 = true := by decide +kernel

theorem v_740_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 80 16 = true := by decide +kernel

theorem v_740_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 96 16 = true := by decide +kernel

theorem v_740_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 112 16 = true := by decide +kernel

theorem v_740_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 128 16 = true := by decide +kernel

theorem v_740_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 144 16 = true := by decide +kernel

theorem v_740_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 160 16 = true := by decide +kernel

theorem v_740_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 176 16 = true := by decide +kernel

theorem v_740_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 192 16 = true := by decide +kernel

theorem v_740_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 208 16 = true := by decide +kernel

theorem v_740_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 224 16 = true := by decide +kernel

theorem v_740_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 740 240 16 = true := by decide +kernel

theorem r_740 : recsK7OK T qscale den6 d14 lamN lamD l7 740 1 = true := recK7_of (n := 256) t_740 n_740 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_740_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_740_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_740_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_740_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_740_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_740_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_740_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_740_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_740_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_740_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_740_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_740_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_740_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_740_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_740_14 (v_740_15))))))))))))))))

theorem rs_740 : recsK7OK T qscale den6 d14 lamN lamD l7 740 1 = true := r_740

end BeatAvg.K.K7
