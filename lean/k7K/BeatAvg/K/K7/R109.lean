import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_381 : treeK7OK l7 381 = true := by decide +kernel

theorem n_381 : (recAt l7 381).2.2.2.length ≤ 208 := by decide +kernel

theorem v_381_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 0 16 = true := by decide +kernel

theorem v_381_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 16 16 = true := by decide +kernel

theorem v_381_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 32 16 = true := by decide +kernel

theorem v_381_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 48 16 = true := by decide +kernel

theorem v_381_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 64 16 = true := by decide +kernel

theorem v_381_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 80 16 = true := by decide +kernel

theorem v_381_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 96 16 = true := by decide +kernel

theorem v_381_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 112 16 = true := by decide +kernel

theorem v_381_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 128 16 = true := by decide +kernel

theorem v_381_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 144 16 = true := by decide +kernel

theorem v_381_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 160 16 = true := by decide +kernel

theorem v_381_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 176 16 = true := by decide +kernel

theorem v_381_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 381 192 16 = true := by decide +kernel

theorem r_381 : recsK7OK T qscale den6 d14 lamN lamD l7 381 1 = true := recK7_of (n := 208) t_381 n_381 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_381_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_381_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_381_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_381_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_381_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_381_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_381_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_381_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_381_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_381_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_381_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_381_11 (v_381_12)))))))))))))

theorem t_382 : treeK7OK l7 382 = true := by decide +kernel

theorem n_382 : (recAt l7 382).2.2.2.length ≤ 128 := by decide +kernel

theorem v_382_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 0 16 = true := by decide +kernel

theorem v_382_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 16 16 = true := by decide +kernel

theorem v_382_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 32 16 = true := by decide +kernel

theorem v_382_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 48 16 = true := by decide +kernel

theorem v_382_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 64 16 = true := by decide +kernel

theorem v_382_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 80 16 = true := by decide +kernel

theorem v_382_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 96 16 = true := by decide +kernel

theorem v_382_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 382 112 16 = true := by decide +kernel

theorem r_382 : recsK7OK T qscale den6 d14 lamN lamD l7 382 1 = true := recK7_of (n := 128) t_382 n_382 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_382_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_382_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_382_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_382_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_382_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_382_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_382_6 (v_382_7))))))))

theorem rs_381 : recsK7OK T qscale den6 d14 lamN lamD l7 381 2 = true := recsK7OK_succ (lo := 381) (n := 1) r_381 (r_382)

end BeatAvg.K.K7
