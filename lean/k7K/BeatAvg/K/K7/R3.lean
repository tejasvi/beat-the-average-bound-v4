import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_8 : treeK7OK l7 8 = true := by decide +kernel

theorem n_8 : (recAt l7 8).2.2.2.length ≤ 176 := by decide +kernel

theorem v_8_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 0 16 = true := by decide +kernel

theorem v_8_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 16 16 = true := by decide +kernel

theorem v_8_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 32 16 = true := by decide +kernel

theorem v_8_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 48 16 = true := by decide +kernel

theorem v_8_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 64 16 = true := by decide +kernel

theorem v_8_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 80 16 = true := by decide +kernel

theorem v_8_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 96 16 = true := by decide +kernel

theorem v_8_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 112 16 = true := by decide +kernel

theorem v_8_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 128 16 = true := by decide +kernel

theorem v_8_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 144 16 = true := by decide +kernel

theorem v_8_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 8 160 16 = true := by decide +kernel

theorem r_8 : recsK7OK T qscale den6 d14 lamN lamD l7 8 1 = true := recK7_of (n := 176) t_8 n_8 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_8_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_8_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_8_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_8_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_8_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_8_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_8_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_8_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_8_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_8_9 (v_8_10)))))))))))

theorem t_9 : treeK7OK l7 9 = true := by decide +kernel

theorem n_9 : (recAt l7 9).2.2.2.length ≤ 128 := by decide +kernel

theorem v_9_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 0 16 = true := by decide +kernel

theorem v_9_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 16 16 = true := by decide +kernel

theorem v_9_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 32 16 = true := by decide +kernel

theorem v_9_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 48 16 = true := by decide +kernel

theorem v_9_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 64 16 = true := by decide +kernel

theorem v_9_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 80 16 = true := by decide +kernel

theorem v_9_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 96 16 = true := by decide +kernel

theorem v_9_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 9 112 16 = true := by decide +kernel

theorem r_9 : recsK7OK T qscale den6 d14 lamN lamD l7 9 1 = true := recK7_of (n := 128) t_9 n_9 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_9_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_9_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_9_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_9_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_9_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_9_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_9_6 (v_9_7))))))))

theorem rs_8 : recsK7OK T qscale den6 d14 lamN lamD l7 8 2 = true := recsK7OK_succ (lo := 8) (n := 1) r_8 (r_9)

end BeatAvg.K.K7
