import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_343 : treeK7OK l7 343 = true := by decide +kernel

theorem n_343 : (recAt l7 343).2.2.2.length ≤ 128 := by decide +kernel

theorem v_343_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 0 16 = true := by decide +kernel

theorem v_343_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 16 16 = true := by decide +kernel

theorem v_343_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 32 16 = true := by decide +kernel

theorem v_343_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 48 16 = true := by decide +kernel

theorem v_343_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 64 16 = true := by decide +kernel

theorem v_343_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 80 16 = true := by decide +kernel

theorem v_343_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 96 16 = true := by decide +kernel

theorem v_343_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 343 112 16 = true := by decide +kernel

theorem r_343 : recsK7OK T qscale den6 d14 lamN lamD l7 343 1 = true := recK7_of (n := 128) t_343 n_343 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_343_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_343_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_343_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_343_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_343_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_343_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_343_6 (v_343_7))))))))

theorem t_344 : treeK7OK l7 344 = true := by decide +kernel

theorem n_344 : (recAt l7 344).2.2.2.length ≤ 208 := by decide +kernel

theorem v_344_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 0 16 = true := by decide +kernel

theorem v_344_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 16 16 = true := by decide +kernel

theorem v_344_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 32 16 = true := by decide +kernel

theorem v_344_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 48 16 = true := by decide +kernel

theorem v_344_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 64 16 = true := by decide +kernel

theorem v_344_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 80 16 = true := by decide +kernel

theorem v_344_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 96 16 = true := by decide +kernel

theorem v_344_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 112 16 = true := by decide +kernel

theorem v_344_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 128 16 = true := by decide +kernel

theorem v_344_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 144 16 = true := by decide +kernel

theorem v_344_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 160 16 = true := by decide +kernel

theorem v_344_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 176 16 = true := by decide +kernel

theorem v_344_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 344 192 16 = true := by decide +kernel

theorem r_344 : recsK7OK T qscale den6 d14 lamN lamD l7 344 1 = true := recK7_of (n := 208) t_344 n_344 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_344_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_344_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_344_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_344_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_344_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_344_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_344_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_344_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_344_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_344_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_344_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_344_11 (v_344_12)))))))))))))

theorem rs_343 : recsK7OK T qscale den6 d14 lamN lamD l7 343 2 = true := recsK7OK_succ (lo := 343) (n := 1) r_343 (r_344)

end BeatAvg.K.K7
