import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_369 : treeK7OK l7 369 = true := by decide +kernel

theorem n_369 : (recAt l7 369).2.2.2.length ≤ 288 := by decide +kernel

theorem v_369_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 0 16 = true := by decide +kernel

theorem v_369_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 16 16 = true := by decide +kernel

theorem v_369_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 32 16 = true := by decide +kernel

theorem v_369_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 48 16 = true := by decide +kernel

theorem v_369_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 64 16 = true := by decide +kernel

theorem v_369_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 80 16 = true := by decide +kernel

theorem v_369_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 96 16 = true := by decide +kernel

theorem v_369_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 112 16 = true := by decide +kernel

theorem v_369_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 128 16 = true := by decide +kernel

theorem v_369_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 144 16 = true := by decide +kernel

theorem v_369_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 160 16 = true := by decide +kernel

theorem v_369_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 176 16 = true := by decide +kernel

theorem v_369_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 192 16 = true := by decide +kernel

theorem v_369_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 208 16 = true := by decide +kernel

theorem v_369_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 224 16 = true := by decide +kernel

theorem v_369_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 240 16 = true := by decide +kernel

theorem v_369_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 256 16 = true := by decide +kernel

theorem v_369_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 369 272 16 = true := by decide +kernel

theorem r_369 : recsK7OK T qscale den6 d14 lamN lamD l7 369 1 = true := recK7_of (n := 288) t_369 n_369 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_369_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_369_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_369_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_369_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_369_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_369_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_369_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_369_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_369_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_369_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_369_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_369_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_369_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_369_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_369_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_369_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_369_16 (v_369_17))))))))))))))))))

theorem t_370 : treeK7OK l7 370 = true := by decide +kernel

theorem n_370 : (recAt l7 370).2.2.2.length ≤ 64 := by decide +kernel

theorem v_370_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 370 0 16 = true := by decide +kernel

theorem v_370_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 370 16 16 = true := by decide +kernel

theorem v_370_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 370 32 16 = true := by decide +kernel

theorem v_370_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 370 48 16 = true := by decide +kernel

theorem r_370 : recsK7OK T qscale den6 d14 lamN lamD l7 370 1 = true := recK7_of (n := 64) t_370 n_370 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_370_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_370_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_370_2 (v_370_3))))

theorem rs_369 : recsK7OK T qscale den6 d14 lamN lamD l7 369 2 = true := recsK7OK_succ (lo := 369) (n := 1) r_369 (r_370)

end BeatAvg.K.K7
