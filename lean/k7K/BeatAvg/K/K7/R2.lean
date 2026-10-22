import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_6 : treeK7OK l7 6 = true := by decide +kernel

theorem n_6 : (recAt l7 6).2.2.2.length ≤ 80 := by decide +kernel

theorem v_6_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 6 0 16 = true := by decide +kernel

theorem v_6_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 6 16 16 = true := by decide +kernel

theorem v_6_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 6 32 16 = true := by decide +kernel

theorem v_6_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 6 48 16 = true := by decide +kernel

theorem v_6_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 6 64 16 = true := by decide +kernel

theorem r_6 : recsK7OK T qscale den6 d14 lamN lamD l7 6 1 = true := recK7_of (n := 80) t_6 n_6 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_6_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_6_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_6_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_6_3 (v_6_4)))))

theorem t_7 : treeK7OK l7 7 = true := by decide +kernel

theorem n_7 : (recAt l7 7).2.2.2.length ≤ 224 := by decide +kernel

theorem v_7_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 0 16 = true := by decide +kernel

theorem v_7_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 16 16 = true := by decide +kernel

theorem v_7_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 32 16 = true := by decide +kernel

theorem v_7_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 48 16 = true := by decide +kernel

theorem v_7_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 64 16 = true := by decide +kernel

theorem v_7_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 80 16 = true := by decide +kernel

theorem v_7_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 96 16 = true := by decide +kernel

theorem v_7_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 112 16 = true := by decide +kernel

theorem v_7_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 128 16 = true := by decide +kernel

theorem v_7_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 144 16 = true := by decide +kernel

theorem v_7_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 160 16 = true := by decide +kernel

theorem v_7_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 176 16 = true := by decide +kernel

theorem v_7_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 192 16 = true := by decide +kernel

theorem v_7_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 7 208 16 = true := by decide +kernel

theorem r_7 : recsK7OK T qscale den6 d14 lamN lamD l7 7 1 = true := recK7_of (n := 224) t_7 n_7 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_7_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_7_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_7_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_7_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_7_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_7_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_7_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_7_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_7_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_7_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_7_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_7_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_7_12 (v_7_13))))))))))))))

theorem rs_6 : recsK7OK T qscale den6 d14 lamN lamD l7 6 2 = true := recsK7OK_succ (lo := 6) (n := 1) r_6 (r_7)

end BeatAvg.K.K7
