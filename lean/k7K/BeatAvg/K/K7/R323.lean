import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_978 : treeK7OK l7 978 = true := by decide +kernel

theorem n_978 : (recAt l7 978).2.2.2.length ≤ 240 := by decide +kernel

theorem v_978_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 0 16 = true := by decide +kernel

theorem v_978_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 16 16 = true := by decide +kernel

theorem v_978_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 32 16 = true := by decide +kernel

theorem v_978_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 48 16 = true := by decide +kernel

theorem v_978_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 64 16 = true := by decide +kernel

theorem v_978_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 80 16 = true := by decide +kernel

theorem v_978_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 96 16 = true := by decide +kernel

theorem v_978_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 112 16 = true := by decide +kernel

theorem v_978_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 128 16 = true := by decide +kernel

theorem v_978_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 144 16 = true := by decide +kernel

theorem v_978_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 160 16 = true := by decide +kernel

theorem v_978_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 176 16 = true := by decide +kernel

theorem v_978_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 192 16 = true := by decide +kernel

theorem v_978_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 208 16 = true := by decide +kernel

theorem v_978_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 978 224 16 = true := by decide +kernel

theorem r_978 : recsK7OK T qscale den6 d14 lamN lamD l7 978 1 = true := recK7_of (n := 240) t_978 n_978 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_978_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_978_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_978_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_978_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_978_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_978_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_978_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_978_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_978_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_978_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_978_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_978_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_978_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_978_13 (v_978_14)))))))))))))))

theorem rs_978 : recsK7OK T qscale den6 d14 lamN lamD l7 978 1 = true := r_978

end BeatAvg.K.K7
