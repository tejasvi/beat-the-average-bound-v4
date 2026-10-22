import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_875 : treeK7OK l7 875 = true := by decide +kernel

theorem n_875 : (recAt l7 875).2.2.2.length ≤ 192 := by decide +kernel

theorem v_875_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 0 16 = true := by decide +kernel

theorem v_875_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 16 16 = true := by decide +kernel

theorem v_875_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 32 16 = true := by decide +kernel

theorem v_875_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 48 16 = true := by decide +kernel

theorem v_875_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 64 16 = true := by decide +kernel

theorem v_875_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 80 16 = true := by decide +kernel

theorem v_875_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 96 16 = true := by decide +kernel

theorem v_875_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 112 16 = true := by decide +kernel

theorem v_875_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 128 16 = true := by decide +kernel

theorem v_875_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 144 16 = true := by decide +kernel

theorem v_875_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 160 16 = true := by decide +kernel

theorem v_875_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 875 176 16 = true := by decide +kernel

theorem r_875 : recsK7OK T qscale den6 d14 lamN lamD l7 875 1 = true := recK7_of (n := 192) t_875 n_875 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_875_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_875_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_875_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_875_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_875_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_875_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_875_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_875_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_875_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_875_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_875_10 (v_875_11))))))))))))

theorem rs_875 : recsK7OK T qscale den6 d14 lamN lamD l7 875 1 = true := r_875

end BeatAvg.K.K7
