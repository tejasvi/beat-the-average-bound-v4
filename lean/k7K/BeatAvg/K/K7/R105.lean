import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_371 : treeK7OK l7 371 = true := by decide +kernel

theorem n_371 : (recAt l7 371).2.2.2.length ≤ 272 := by decide +kernel

theorem v_371_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 0 16 = true := by decide +kernel

theorem v_371_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 16 16 = true := by decide +kernel

theorem v_371_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 32 16 = true := by decide +kernel

theorem v_371_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 48 16 = true := by decide +kernel

theorem v_371_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 64 16 = true := by decide +kernel

theorem v_371_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 80 16 = true := by decide +kernel

theorem v_371_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 96 16 = true := by decide +kernel

theorem v_371_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 112 16 = true := by decide +kernel

theorem v_371_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 128 16 = true := by decide +kernel

theorem v_371_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 144 16 = true := by decide +kernel

theorem v_371_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 160 16 = true := by decide +kernel

theorem v_371_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 176 16 = true := by decide +kernel

theorem v_371_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 192 16 = true := by decide +kernel

theorem v_371_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 208 16 = true := by decide +kernel

theorem v_371_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 224 16 = true := by decide +kernel

theorem v_371_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 240 16 = true := by decide +kernel

theorem v_371_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 371 256 16 = true := by decide +kernel

theorem r_371 : recsK7OK T qscale den6 d14 lamN lamD l7 371 1 = true := recK7_of (n := 272) t_371 n_371 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_371_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_371_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_371_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_371_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_371_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_371_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_371_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_371_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_371_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_371_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_371_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_371_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_371_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_371_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_371_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_371_15 (v_371_16)))))))))))))))))

theorem t_372 : treeK7OK l7 372 = true := by decide +kernel

theorem n_372 : (recAt l7 372).2.2.2.length ≤ 80 := by decide +kernel

theorem v_372_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 372 0 16 = true := by decide +kernel

theorem v_372_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 372 16 16 = true := by decide +kernel

theorem v_372_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 372 32 16 = true := by decide +kernel

theorem v_372_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 372 48 16 = true := by decide +kernel

theorem v_372_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 372 64 16 = true := by decide +kernel

theorem r_372 : recsK7OK T qscale den6 d14 lamN lamD l7 372 1 = true := recK7_of (n := 80) t_372 n_372 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_372_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_372_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_372_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_372_3 (v_372_4)))))

theorem t_373 : treeK7OK l7 373 = true := by decide +kernel

theorem n_373 : (recAt l7 373).2.2.2.length ≤ 48 := by decide +kernel

theorem v_373_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 373 0 16 = true := by decide +kernel

theorem v_373_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 373 16 16 = true := by decide +kernel

theorem v_373_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 373 32 16 = true := by decide +kernel

theorem r_373 : recsK7OK T qscale den6 d14 lamN lamD l7 373 1 = true := recK7_of (n := 48) t_373 n_373 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_373_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_373_1 (v_373_2)))

theorem rs_371 : recsK7OK T qscale den6 d14 lamN lamD l7 371 3 = true := recsK7OK_succ (lo := 371) (n := 2) r_371 (recsK7OK_succ (lo := 372) (n := 1) r_372 (r_373))

end BeatAvg.K.K7
