import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_919 : treeK7OK l7 919 = true := by decide +kernel

theorem n_919 : (recAt l7 919).2.2.2.length ≤ 208 := by decide +kernel

theorem v_919_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 0 16 = true := by decide +kernel

theorem v_919_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 16 16 = true := by decide +kernel

theorem v_919_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 32 16 = true := by decide +kernel

theorem v_919_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 48 16 = true := by decide +kernel

theorem v_919_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 64 16 = true := by decide +kernel

theorem v_919_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 80 16 = true := by decide +kernel

theorem v_919_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 96 16 = true := by decide +kernel

theorem v_919_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 112 16 = true := by decide +kernel

theorem v_919_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 128 16 = true := by decide +kernel

theorem v_919_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 144 16 = true := by decide +kernel

theorem v_919_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 160 16 = true := by decide +kernel

theorem v_919_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 176 16 = true := by decide +kernel

theorem v_919_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 919 192 16 = true := by decide +kernel

theorem r_919 : recsK7OK T qscale den6 d14 lamN lamD l7 919 1 = true := recK7_of (n := 208) t_919 n_919 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_919_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_919_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_919_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_919_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_919_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_919_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_919_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_919_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_919_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_919_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_919_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_919_11 (v_919_12)))))))))))))

theorem t_920 : treeK7OK l7 920 = true := by decide +kernel

theorem n_920 : (recAt l7 920).2.2.2.length ≤ 144 := by decide +kernel

theorem v_920_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 0 16 = true := by decide +kernel

theorem v_920_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 16 16 = true := by decide +kernel

theorem v_920_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 32 16 = true := by decide +kernel

theorem v_920_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 48 16 = true := by decide +kernel

theorem v_920_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 64 16 = true := by decide +kernel

theorem v_920_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 80 16 = true := by decide +kernel

theorem v_920_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 96 16 = true := by decide +kernel

theorem v_920_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 112 16 = true := by decide +kernel

theorem v_920_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 920 128 16 = true := by decide +kernel

theorem r_920 : recsK7OK T qscale den6 d14 lamN lamD l7 920 1 = true := recK7_of (n := 144) t_920 n_920 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_920_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_920_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_920_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_920_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_920_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_920_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_920_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_920_7 (v_920_8)))))))))

theorem rs_919 : recsK7OK T qscale den6 d14 lamN lamD l7 919 2 = true := recsK7OK_succ (lo := 919) (n := 1) r_919 (r_920)

end BeatAvg.K.K7
