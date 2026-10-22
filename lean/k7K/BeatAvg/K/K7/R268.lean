import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_844 : treeK7OK l7 844 = true := by decide +kernel

theorem n_844 : (recAt l7 844).2.2.2.length ≤ 160 := by decide +kernel

theorem v_844_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 0 16 = true := by decide +kernel

theorem v_844_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 16 16 = true := by decide +kernel

theorem v_844_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 32 16 = true := by decide +kernel

theorem v_844_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 48 16 = true := by decide +kernel

theorem v_844_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 64 16 = true := by decide +kernel

theorem v_844_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 80 16 = true := by decide +kernel

theorem v_844_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 96 16 = true := by decide +kernel

theorem v_844_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 112 16 = true := by decide +kernel

theorem v_844_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 128 16 = true := by decide +kernel

theorem v_844_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 844 144 16 = true := by decide +kernel

theorem r_844 : recsK7OK T qscale den6 d14 lamN lamD l7 844 1 = true := recK7_of (n := 160) t_844 n_844 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_844_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_844_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_844_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_844_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_844_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_844_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_844_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_844_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_844_8 (v_844_9))))))))))

theorem t_845 : treeK7OK l7 845 = true := by decide +kernel

theorem n_845 : (recAt l7 845).2.2.2.length ≤ 208 := by decide +kernel

theorem v_845_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 0 16 = true := by decide +kernel

theorem v_845_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 16 16 = true := by decide +kernel

theorem v_845_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 32 16 = true := by decide +kernel

theorem v_845_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 48 16 = true := by decide +kernel

theorem v_845_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 64 16 = true := by decide +kernel

theorem v_845_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 80 16 = true := by decide +kernel

theorem v_845_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 96 16 = true := by decide +kernel

theorem v_845_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 112 16 = true := by decide +kernel

theorem v_845_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 128 16 = true := by decide +kernel

theorem v_845_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 144 16 = true := by decide +kernel

theorem v_845_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 160 16 = true := by decide +kernel

theorem v_845_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 176 16 = true := by decide +kernel

theorem v_845_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 845 192 16 = true := by decide +kernel

theorem r_845 : recsK7OK T qscale den6 d14 lamN lamD l7 845 1 = true := recK7_of (n := 208) t_845 n_845 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_845_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_845_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_845_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_845_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_845_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_845_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_845_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_845_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_845_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_845_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_845_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_845_11 (v_845_12)))))))))))))

theorem rs_844 : recsK7OK T qscale den6 d14 lamN lamD l7 844 2 = true := recsK7OK_succ (lo := 844) (n := 1) r_844 (r_845)

end BeatAvg.K.K7
