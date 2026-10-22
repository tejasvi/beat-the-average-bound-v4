import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_414 : treeK7OK l7 414 = true := by decide +kernel

theorem n_414 : (recAt l7 414).2.2.2.length ≤ 64 := by decide +kernel

theorem v_414_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 414 0 16 = true := by decide +kernel

theorem v_414_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 414 16 16 = true := by decide +kernel

theorem v_414_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 414 32 16 = true := by decide +kernel

theorem v_414_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 414 48 16 = true := by decide +kernel

theorem r_414 : recsK7OK T qscale den6 d14 lamN lamD l7 414 1 = true := recK7_of (n := 64) t_414 n_414 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_414_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_414_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_414_2 (v_414_3))))

theorem t_415 : treeK7OK l7 415 = true := by decide +kernel

theorem n_415 : (recAt l7 415).2.2.2.length ≤ 256 := by decide +kernel

theorem v_415_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 0 16 = true := by decide +kernel

theorem v_415_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 16 16 = true := by decide +kernel

theorem v_415_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 32 16 = true := by decide +kernel

theorem v_415_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 48 16 = true := by decide +kernel

theorem v_415_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 64 16 = true := by decide +kernel

theorem v_415_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 80 16 = true := by decide +kernel

theorem v_415_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 96 16 = true := by decide +kernel

theorem v_415_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 112 16 = true := by decide +kernel

theorem v_415_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 128 16 = true := by decide +kernel

theorem v_415_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 144 16 = true := by decide +kernel

theorem v_415_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 160 16 = true := by decide +kernel

theorem v_415_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 176 16 = true := by decide +kernel

theorem v_415_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 192 16 = true := by decide +kernel

theorem v_415_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 208 16 = true := by decide +kernel

theorem v_415_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 224 16 = true := by decide +kernel

theorem v_415_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 415 240 16 = true := by decide +kernel

theorem r_415 : recsK7OK T qscale den6 d14 lamN lamD l7 415 1 = true := recK7_of (n := 256) t_415 n_415 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_415_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_415_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_415_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_415_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_415_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_415_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_415_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_415_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_415_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_415_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_415_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_415_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_415_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_415_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_415_14 (v_415_15))))))))))))))))

theorem rs_414 : recsK7OK T qscale den6 d14 lamN lamD l7 414 2 = true := recsK7OK_succ (lo := 414) (n := 1) r_414 (r_415)

end BeatAvg.K.K7
