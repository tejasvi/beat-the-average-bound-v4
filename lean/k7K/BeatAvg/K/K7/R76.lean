import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_284 : treeK7OK l7 284 = true := by decide +kernel

theorem n_284 : (recAt l7 284).2.2.2.length ≤ 128 := by decide +kernel

theorem v_284_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 0 16 = true := by decide +kernel

theorem v_284_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 16 16 = true := by decide +kernel

theorem v_284_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 32 16 = true := by decide +kernel

theorem v_284_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 48 16 = true := by decide +kernel

theorem v_284_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 64 16 = true := by decide +kernel

theorem v_284_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 80 16 = true := by decide +kernel

theorem v_284_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 96 16 = true := by decide +kernel

theorem v_284_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 284 112 16 = true := by decide +kernel

theorem r_284 : recsK7OK T qscale den6 d14 lamN lamD l7 284 1 = true := recK7_of (n := 128) t_284 n_284 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_284_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_284_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_284_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_284_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_284_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_284_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_284_6 (v_284_7))))))))

theorem t_285 : treeK7OK l7 285 = true := by decide +kernel

theorem n_285 : (recAt l7 285).2.2.2.length ≤ 128 := by decide +kernel

theorem v_285_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 0 16 = true := by decide +kernel

theorem v_285_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 16 16 = true := by decide +kernel

theorem v_285_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 32 16 = true := by decide +kernel

theorem v_285_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 48 16 = true := by decide +kernel

theorem v_285_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 64 16 = true := by decide +kernel

theorem v_285_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 80 16 = true := by decide +kernel

theorem v_285_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 96 16 = true := by decide +kernel

theorem v_285_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 285 112 16 = true := by decide +kernel

theorem r_285 : recsK7OK T qscale den6 d14 lamN lamD l7 285 1 = true := recK7_of (n := 128) t_285 n_285 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_285_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_285_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_285_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_285_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_285_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_285_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_285_6 (v_285_7))))))))

theorem t_286 : treeK7OK l7 286 = true := by decide +kernel

theorem n_286 : (recAt l7 286).2.2.2.length ≤ 96 := by decide +kernel

theorem v_286_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 286 0 16 = true := by decide +kernel

theorem v_286_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 286 16 16 = true := by decide +kernel

theorem v_286_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 286 32 16 = true := by decide +kernel

theorem v_286_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 286 48 16 = true := by decide +kernel

theorem v_286_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 286 64 16 = true := by decide +kernel

theorem v_286_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 286 80 16 = true := by decide +kernel

theorem r_286 : recsK7OK T qscale den6 d14 lamN lamD l7 286 1 = true := recK7_of (n := 96) t_286 n_286 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_286_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_286_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_286_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_286_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_286_4 (v_286_5))))))

theorem t_287 : treeK7OK l7 287 = true := by decide +kernel

theorem n_287 : (recAt l7 287).2.2.2.length ≤ 80 := by decide +kernel

theorem v_287_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 287 0 16 = true := by decide +kernel

theorem v_287_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 287 16 16 = true := by decide +kernel

theorem v_287_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 287 32 16 = true := by decide +kernel

theorem v_287_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 287 48 16 = true := by decide +kernel

theorem v_287_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 287 64 16 = true := by decide +kernel

theorem r_287 : recsK7OK T qscale den6 d14 lamN lamD l7 287 1 = true := recK7_of (n := 80) t_287 n_287 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_287_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_287_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_287_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_287_3 (v_287_4)))))

theorem rs_284 : recsK7OK T qscale den6 d14 lamN lamD l7 284 4 = true := recsK7OK_succ (lo := 284) (n := 3) r_284 (recsK7OK_succ (lo := 285) (n := 2) r_285 (recsK7OK_succ (lo := 286) (n := 1) r_286 (r_287)))

end BeatAvg.K.K7
