import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_821 : treeK7OK l7 821 = true := by decide +kernel

theorem n_821 : (recAt l7 821).2.2.2.length ≤ 224 := by decide +kernel

theorem v_821_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 0 16 = true := by decide +kernel

theorem v_821_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 16 16 = true := by decide +kernel

theorem v_821_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 32 16 = true := by decide +kernel

theorem v_821_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 48 16 = true := by decide +kernel

theorem v_821_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 64 16 = true := by decide +kernel

theorem v_821_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 80 16 = true := by decide +kernel

theorem v_821_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 96 16 = true := by decide +kernel

theorem v_821_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 112 16 = true := by decide +kernel

theorem v_821_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 128 16 = true := by decide +kernel

theorem v_821_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 144 16 = true := by decide +kernel

theorem v_821_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 160 16 = true := by decide +kernel

theorem v_821_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 176 16 = true := by decide +kernel

theorem v_821_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 192 16 = true := by decide +kernel

theorem v_821_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 821 208 16 = true := by decide +kernel

theorem r_821 : recsK7OK T qscale den6 d14 lamN lamD l7 821 1 = true := recK7_of (n := 224) t_821 n_821 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_821_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_821_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_821_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_821_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_821_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_821_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_821_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_821_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_821_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_821_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_821_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_821_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_821_12 (v_821_13))))))))))))))

theorem rs_821 : recsK7OK T qscale den6 d14 lamN lamD l7 821 1 = true := r_821

end BeatAvg.K.K7
