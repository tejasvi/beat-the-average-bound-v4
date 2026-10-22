import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_910 : treeK7OK l7 910 = true := by decide +kernel

theorem n_910 : (recAt l7 910).2.2.2.length ≤ 256 := by decide +kernel

theorem v_910_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 0 16 = true := by decide +kernel

theorem v_910_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 16 16 = true := by decide +kernel

theorem v_910_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 32 16 = true := by decide +kernel

theorem v_910_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 48 16 = true := by decide +kernel

theorem v_910_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 64 16 = true := by decide +kernel

theorem v_910_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 80 16 = true := by decide +kernel

theorem v_910_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 96 16 = true := by decide +kernel

theorem v_910_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 112 16 = true := by decide +kernel

theorem v_910_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 128 16 = true := by decide +kernel

theorem v_910_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 144 16 = true := by decide +kernel

theorem v_910_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 160 16 = true := by decide +kernel

theorem v_910_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 176 16 = true := by decide +kernel

theorem v_910_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 192 16 = true := by decide +kernel

theorem v_910_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 208 16 = true := by decide +kernel

theorem v_910_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 224 16 = true := by decide +kernel

theorem v_910_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 910 240 16 = true := by decide +kernel

theorem r_910 : recsK7OK T qscale den6 d14 lamN lamD l7 910 1 = true := recK7_of (n := 256) t_910 n_910 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_910_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_910_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_910_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_910_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_910_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_910_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_910_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_910_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_910_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_910_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_910_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_910_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_910_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_910_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_910_14 (v_910_15))))))))))))))))

theorem rs_910 : recsK7OK T qscale den6 d14 lamN lamD l7 910 1 = true := r_910

end BeatAvg.K.K7
