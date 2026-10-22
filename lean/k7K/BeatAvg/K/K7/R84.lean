import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_321 : treeK7OK l7 321 = true := by decide +kernel

theorem n_321 : (recAt l7 321).2.2.2.length ≤ 80 := by decide +kernel

theorem v_321_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 321 0 16 = true := by decide +kernel

theorem v_321_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 321 16 16 = true := by decide +kernel

theorem v_321_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 321 32 16 = true := by decide +kernel

theorem v_321_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 321 48 16 = true := by decide +kernel

theorem v_321_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 321 64 16 = true := by decide +kernel

theorem r_321 : recsK7OK T qscale den6 d14 lamN lamD l7 321 1 = true := recK7_of (n := 80) t_321 n_321 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_321_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_321_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_321_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_321_3 (v_321_4)))))

theorem t_322 : treeK7OK l7 322 = true := by decide +kernel

theorem n_322 : (recAt l7 322).2.2.2.length ≤ 64 := by decide +kernel

theorem v_322_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 322 0 16 = true := by decide +kernel

theorem v_322_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 322 16 16 = true := by decide +kernel

theorem v_322_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 322 32 16 = true := by decide +kernel

theorem v_322_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 322 48 16 = true := by decide +kernel

theorem r_322 : recsK7OK T qscale den6 d14 lamN lamD l7 322 1 = true := recK7_of (n := 64) t_322 n_322 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_322_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_322_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_322_2 (v_322_3))))

theorem t_323 : treeK7OK l7 323 = true := by decide +kernel

theorem n_323 : (recAt l7 323).2.2.2.length ≤ 64 := by decide +kernel

theorem v_323_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 323 0 16 = true := by decide +kernel

theorem v_323_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 323 16 16 = true := by decide +kernel

theorem v_323_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 323 32 16 = true := by decide +kernel

theorem v_323_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 323 48 16 = true := by decide +kernel

theorem r_323 : recsK7OK T qscale den6 d14 lamN lamD l7 323 1 = true := recK7_of (n := 64) t_323 n_323 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_323_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_323_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_323_2 (v_323_3))))

theorem t_324 : treeK7OK l7 324 = true := by decide +kernel

theorem n_324 : (recAt l7 324).2.2.2.length ≤ 64 := by decide +kernel

theorem v_324_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 324 0 16 = true := by decide +kernel

theorem v_324_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 324 16 16 = true := by decide +kernel

theorem v_324_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 324 32 16 = true := by decide +kernel

theorem v_324_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 324 48 16 = true := by decide +kernel

theorem r_324 : recsK7OK T qscale den6 d14 lamN lamD l7 324 1 = true := recK7_of (n := 64) t_324 n_324 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_324_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_324_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_324_2 (v_324_3))))

theorem t_325 : treeK7OK l7 325 = true := by decide +kernel

theorem n_325 : (recAt l7 325).2.2.2.length ≤ 48 := by decide +kernel

theorem v_325_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 325 0 16 = true := by decide +kernel

theorem v_325_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 325 16 16 = true := by decide +kernel

theorem v_325_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 325 32 16 = true := by decide +kernel

theorem r_325 : recsK7OK T qscale den6 d14 lamN lamD l7 325 1 = true := recK7_of (n := 48) t_325 n_325 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_325_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_325_1 (v_325_2)))

theorem t_326 : treeK7OK l7 326 = true := by decide +kernel

theorem n_326 : (recAt l7 326).2.2.2.length ≤ 48 := by decide +kernel

theorem v_326_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 326 0 16 = true := by decide +kernel

theorem v_326_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 326 16 16 = true := by decide +kernel

theorem v_326_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 326 32 16 = true := by decide +kernel

theorem r_326 : recsK7OK T qscale den6 d14 lamN lamD l7 326 1 = true := recK7_of (n := 48) t_326 n_326 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_326_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_326_1 (v_326_2)))

theorem t_327 : treeK7OK l7 327 = true := by decide +kernel

theorem n_327 : (recAt l7 327).2.2.2.length ≤ 48 := by decide +kernel

theorem v_327_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 327 0 16 = true := by decide +kernel

theorem v_327_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 327 16 16 = true := by decide +kernel

theorem v_327_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 327 32 16 = true := by decide +kernel

theorem r_327 : recsK7OK T qscale den6 d14 lamN lamD l7 327 1 = true := recK7_of (n := 48) t_327 n_327 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_327_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_327_1 (v_327_2)))

theorem t_328 : treeK7OK l7 328 = true := by decide +kernel

theorem n_328 : (recAt l7 328).2.2.2.length ≤ 32 := by decide +kernel

theorem v_328_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 328 0 16 = true := by decide +kernel

theorem v_328_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 328 16 16 = true := by decide +kernel

theorem r_328 : recsK7OK T qscale den6 d14 lamN lamD l7 328 1 = true := recK7_of (n := 32) t_328 n_328 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_328_0 (v_328_1))

theorem rs_321 : recsK7OK T qscale den6 d14 lamN lamD l7 321 8 = true := recsK7OK_succ (lo := 321) (n := 7) r_321 (recsK7OK_succ (lo := 322) (n := 6) r_322 (recsK7OK_succ (lo := 323) (n := 5) r_323 (recsK7OK_succ (lo := 324) (n := 4) r_324 (recsK7OK_succ (lo := 325) (n := 3) r_325 (recsK7OK_succ (lo := 326) (n := 2) r_326 (recsK7OK_succ (lo := 327) (n := 1) r_327 (r_328)))))))

end BeatAvg.K.K7
