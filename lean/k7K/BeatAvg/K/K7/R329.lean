import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_986 : treeK7OK l7 986 = true := by decide +kernel

theorem n_986 : (recAt l7 986).2.2.2.length ≤ 224 := by decide +kernel

theorem v_986_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 0 16 = true := by decide +kernel

theorem v_986_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 16 16 = true := by decide +kernel

theorem v_986_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 32 16 = true := by decide +kernel

theorem v_986_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 48 16 = true := by decide +kernel

theorem v_986_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 64 16 = true := by decide +kernel

theorem v_986_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 80 16 = true := by decide +kernel

theorem v_986_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 96 16 = true := by decide +kernel

theorem v_986_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 112 16 = true := by decide +kernel

theorem v_986_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 128 16 = true := by decide +kernel

theorem v_986_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 144 16 = true := by decide +kernel

theorem v_986_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 160 16 = true := by decide +kernel

theorem v_986_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 176 16 = true := by decide +kernel

theorem v_986_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 192 16 = true := by decide +kernel

theorem v_986_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 986 208 16 = true := by decide +kernel

theorem r_986 : recsK7OK T qscale den6 d14 lamN lamD l7 986 1 = true := recK7_of (n := 224) t_986 n_986 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_986_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_986_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_986_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_986_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_986_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_986_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_986_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_986_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_986_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_986_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_986_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_986_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_986_12 (v_986_13))))))))))))))

theorem rs_986 : recsK7OK T qscale den6 d14 lamN lamD l7 986 1 = true := r_986

end BeatAvg.K.K7
