import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_394 : treeK7OK l7 394 = true := by decide +kernel

theorem n_394 : (recAt l7 394).2.2.2.length ≤ 96 := by decide +kernel

theorem v_394_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 394 0 16 = true := by decide +kernel

theorem v_394_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 394 16 16 = true := by decide +kernel

theorem v_394_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 394 32 16 = true := by decide +kernel

theorem v_394_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 394 48 16 = true := by decide +kernel

theorem v_394_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 394 64 16 = true := by decide +kernel

theorem v_394_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 394 80 16 = true := by decide +kernel

theorem r_394 : recsK7OK T qscale den6 d14 lamN lamD l7 394 1 = true := recK7_of (n := 96) t_394 n_394 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_394_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_394_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_394_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_394_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_394_4 (v_394_5))))))

theorem t_395 : treeK7OK l7 395 = true := by decide +kernel

theorem n_395 : (recAt l7 395).2.2.2.length ≤ 64 := by decide +kernel

theorem v_395_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 395 0 16 = true := by decide +kernel

theorem v_395_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 395 16 16 = true := by decide +kernel

theorem v_395_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 395 32 16 = true := by decide +kernel

theorem v_395_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 395 48 16 = true := by decide +kernel

theorem r_395 : recsK7OK T qscale den6 d14 lamN lamD l7 395 1 = true := recK7_of (n := 64) t_395 n_395 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_395_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_395_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_395_2 (v_395_3))))

theorem t_396 : treeK7OK l7 396 = true := by decide +kernel

theorem n_396 : (recAt l7 396).2.2.2.length ≤ 64 := by decide +kernel

theorem v_396_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 396 0 16 = true := by decide +kernel

theorem v_396_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 396 16 16 = true := by decide +kernel

theorem v_396_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 396 32 16 = true := by decide +kernel

theorem v_396_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 396 48 16 = true := by decide +kernel

theorem r_396 : recsK7OK T qscale den6 d14 lamN lamD l7 396 1 = true := recK7_of (n := 64) t_396 n_396 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_396_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_396_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_396_2 (v_396_3))))

theorem t_397 : treeK7OK l7 397 = true := by decide +kernel

theorem n_397 : (recAt l7 397).2.2.2.length ≤ 32 := by decide +kernel

theorem v_397_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 397 0 16 = true := by decide +kernel

theorem v_397_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 397 16 16 = true := by decide +kernel

theorem r_397 : recsK7OK T qscale den6 d14 lamN lamD l7 397 1 = true := recK7_of (n := 32) t_397 n_397 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_397_0 (v_397_1))

theorem t_398 : treeK7OK l7 398 = true := by decide +kernel

theorem n_398 : (recAt l7 398).2.2.2.length ≤ 128 := by decide +kernel

theorem v_398_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 0 16 = true := by decide +kernel

theorem v_398_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 16 16 = true := by decide +kernel

theorem v_398_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 32 16 = true := by decide +kernel

theorem v_398_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 48 16 = true := by decide +kernel

theorem v_398_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 64 16 = true := by decide +kernel

theorem v_398_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 80 16 = true := by decide +kernel

theorem v_398_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 96 16 = true := by decide +kernel

theorem v_398_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 398 112 16 = true := by decide +kernel

theorem r_398 : recsK7OK T qscale den6 d14 lamN lamD l7 398 1 = true := recK7_of (n := 128) t_398 n_398 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_398_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_398_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_398_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_398_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_398_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_398_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_398_6 (v_398_7))))))))

theorem rs_394 : recsK7OK T qscale den6 d14 lamN lamD l7 394 5 = true := recsK7OK_succ (lo := 394) (n := 4) r_394 (recsK7OK_succ (lo := 395) (n := 3) r_395 (recsK7OK_succ (lo := 396) (n := 2) r_396 (recsK7OK_succ (lo := 397) (n := 1) r_397 (r_398))))

end BeatAvg.K.K7
