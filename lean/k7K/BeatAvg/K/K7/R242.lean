import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_796 : treeK7OK l7 796 = true := by decide +kernel

theorem n_796 : (recAt l7 796).2.2.2.length ≤ 256 := by decide +kernel

theorem v_796_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 0 16 = true := by decide +kernel

theorem v_796_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 16 16 = true := by decide +kernel

theorem v_796_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 32 16 = true := by decide +kernel

theorem v_796_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 48 16 = true := by decide +kernel

theorem v_796_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 64 16 = true := by decide +kernel

theorem v_796_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 80 16 = true := by decide +kernel

theorem v_796_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 96 16 = true := by decide +kernel

theorem v_796_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 112 16 = true := by decide +kernel

theorem v_796_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 128 16 = true := by decide +kernel

theorem v_796_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 144 16 = true := by decide +kernel

theorem v_796_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 160 16 = true := by decide +kernel

theorem v_796_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 176 16 = true := by decide +kernel

theorem v_796_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 192 16 = true := by decide +kernel

theorem v_796_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 208 16 = true := by decide +kernel

theorem v_796_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 224 16 = true := by decide +kernel

theorem v_796_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 796 240 16 = true := by decide +kernel

theorem r_796 : recsK7OK T qscale den6 d14 lamN lamD l7 796 1 = true := recK7_of (n := 256) t_796 n_796 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_796_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_796_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_796_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_796_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_796_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_796_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_796_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_796_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_796_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_796_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_796_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_796_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_796_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_796_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_796_14 (v_796_15))))))))))))))))

theorem rs_796 : recsK7OK T qscale den6 d14 lamN lamD l7 796 1 = true := r_796

end BeatAvg.K.K7
