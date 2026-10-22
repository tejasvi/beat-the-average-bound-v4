import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_936 : treeK7OK l7 936 = true := by decide +kernel

theorem n_936 : (recAt l7 936).2.2.2.length ≤ 208 := by decide +kernel

theorem v_936_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 0 16 = true := by decide +kernel

theorem v_936_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 16 16 = true := by decide +kernel

theorem v_936_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 32 16 = true := by decide +kernel

theorem v_936_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 48 16 = true := by decide +kernel

theorem v_936_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 64 16 = true := by decide +kernel

theorem v_936_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 80 16 = true := by decide +kernel

theorem v_936_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 96 16 = true := by decide +kernel

theorem v_936_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 112 16 = true := by decide +kernel

theorem v_936_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 128 16 = true := by decide +kernel

theorem v_936_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 144 16 = true := by decide +kernel

theorem v_936_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 160 16 = true := by decide +kernel

theorem v_936_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 176 16 = true := by decide +kernel

theorem v_936_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 936 192 16 = true := by decide +kernel

theorem r_936 : recsK7OK T qscale den6 d14 lamN lamD l7 936 1 = true := recK7_of (n := 208) t_936 n_936 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_936_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_936_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_936_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_936_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_936_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_936_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_936_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_936_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_936_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_936_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_936_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_936_11 (v_936_12)))))))))))))

theorem rs_936 : recsK7OK T qscale den6 d14 lamN lamD l7 936 1 = true := r_936

end BeatAvg.K.K7
