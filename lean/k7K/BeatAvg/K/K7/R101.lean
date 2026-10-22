import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_359 : treeK7OK l7 359 = true := by decide +kernel

theorem n_359 : (recAt l7 359).2.2.2.length ≤ 240 := by decide +kernel

theorem v_359_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 0 16 = true := by decide +kernel

theorem v_359_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 16 16 = true := by decide +kernel

theorem v_359_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 32 16 = true := by decide +kernel

theorem v_359_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 48 16 = true := by decide +kernel

theorem v_359_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 64 16 = true := by decide +kernel

theorem v_359_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 80 16 = true := by decide +kernel

theorem v_359_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 96 16 = true := by decide +kernel

theorem v_359_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 112 16 = true := by decide +kernel

theorem v_359_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 128 16 = true := by decide +kernel

theorem v_359_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 144 16 = true := by decide +kernel

theorem v_359_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 160 16 = true := by decide +kernel

theorem v_359_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 176 16 = true := by decide +kernel

theorem v_359_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 192 16 = true := by decide +kernel

theorem v_359_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 208 16 = true := by decide +kernel

theorem v_359_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 359 224 16 = true := by decide +kernel

theorem r_359 : recsK7OK T qscale den6 d14 lamN lamD l7 359 1 = true := recK7_of (n := 240) t_359 n_359 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_359_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_359_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_359_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_359_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_359_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_359_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_359_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_359_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_359_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_359_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_359_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_359_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_359_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_359_13 (v_359_14)))))))))))))))

theorem t_360 : treeK7OK l7 360 = true := by decide +kernel

theorem n_360 : (recAt l7 360).2.2.2.length ≤ 96 := by decide +kernel

theorem v_360_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 360 0 16 = true := by decide +kernel

theorem v_360_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 360 16 16 = true := by decide +kernel

theorem v_360_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 360 32 16 = true := by decide +kernel

theorem v_360_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 360 48 16 = true := by decide +kernel

theorem v_360_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 360 64 16 = true := by decide +kernel

theorem v_360_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 360 80 16 = true := by decide +kernel

theorem r_360 : recsK7OK T qscale den6 d14 lamN lamD l7 360 1 = true := recK7_of (n := 96) t_360 n_360 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_360_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_360_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_360_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_360_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_360_4 (v_360_5))))))

theorem t_361 : treeK7OK l7 361 = true := by decide +kernel

theorem n_361 : (recAt l7 361).2.2.2.length ≤ 48 := by decide +kernel

theorem v_361_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 361 0 16 = true := by decide +kernel

theorem v_361_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 361 16 16 = true := by decide +kernel

theorem v_361_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 361 32 16 = true := by decide +kernel

theorem r_361 : recsK7OK T qscale den6 d14 lamN lamD l7 361 1 = true := recK7_of (n := 48) t_361 n_361 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_361_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_361_1 (v_361_2)))

theorem rs_359 : recsK7OK T qscale den6 d14 lamN lamD l7 359 3 = true := recsK7OK_succ (lo := 359) (n := 2) r_359 (recsK7OK_succ (lo := 360) (n := 1) r_360 (r_361))

end BeatAvg.K.K7
