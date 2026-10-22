import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_351 : treeK7OK l7 351 = true := by decide +kernel

theorem n_351 : (recAt l7 351).2.2.2.length ≤ 160 := by decide +kernel

theorem v_351_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 0 16 = true := by decide +kernel

theorem v_351_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 16 16 = true := by decide +kernel

theorem v_351_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 32 16 = true := by decide +kernel

theorem v_351_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 48 16 = true := by decide +kernel

theorem v_351_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 64 16 = true := by decide +kernel

theorem v_351_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 80 16 = true := by decide +kernel

theorem v_351_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 96 16 = true := by decide +kernel

theorem v_351_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 112 16 = true := by decide +kernel

theorem v_351_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 128 16 = true := by decide +kernel

theorem v_351_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 351 144 16 = true := by decide +kernel

theorem r_351 : recsK7OK T qscale den6 d14 lamN lamD l7 351 1 = true := recK7_of (n := 160) t_351 n_351 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_351_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_351_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_351_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_351_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_351_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_351_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_351_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_351_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_351_8 (v_351_9))))))))))

theorem t_352 : treeK7OK l7 352 = true := by decide +kernel

theorem n_352 : (recAt l7 352).2.2.2.length ≤ 224 := by decide +kernel

theorem v_352_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 0 16 = true := by decide +kernel

theorem v_352_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 16 16 = true := by decide +kernel

theorem v_352_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 32 16 = true := by decide +kernel

theorem v_352_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 48 16 = true := by decide +kernel

theorem v_352_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 64 16 = true := by decide +kernel

theorem v_352_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 80 16 = true := by decide +kernel

theorem v_352_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 96 16 = true := by decide +kernel

theorem v_352_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 112 16 = true := by decide +kernel

theorem v_352_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 128 16 = true := by decide +kernel

theorem v_352_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 144 16 = true := by decide +kernel

theorem v_352_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 160 16 = true := by decide +kernel

theorem v_352_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 176 16 = true := by decide +kernel

theorem v_352_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 192 16 = true := by decide +kernel

theorem v_352_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 352 208 16 = true := by decide +kernel

theorem r_352 : recsK7OK T qscale den6 d14 lamN lamD l7 352 1 = true := recK7_of (n := 224) t_352 n_352 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_352_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_352_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_352_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_352_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_352_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_352_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_352_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_352_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_352_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_352_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_352_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_352_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_352_12 (v_352_13))))))))))))))

theorem rs_351 : recsK7OK T qscale den6 d14 lamN lamD l7 351 2 = true := recsK7OK_succ (lo := 351) (n := 1) r_351 (r_352)

end BeatAvg.K.K7
