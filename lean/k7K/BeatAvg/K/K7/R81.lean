import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_310 : treeK7OK l7 310 = true := by decide +kernel

theorem n_310 : (recAt l7 310).2.2.2.length ≤ 128 := by decide +kernel

theorem v_310_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 0 16 = true := by decide +kernel

theorem v_310_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 16 16 = true := by decide +kernel

theorem v_310_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 32 16 = true := by decide +kernel

theorem v_310_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 48 16 = true := by decide +kernel

theorem v_310_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 64 16 = true := by decide +kernel

theorem v_310_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 80 16 = true := by decide +kernel

theorem v_310_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 96 16 = true := by decide +kernel

theorem v_310_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 310 112 16 = true := by decide +kernel

theorem r_310 : recsK7OK T qscale den6 d14 lamN lamD l7 310 1 = true := recK7_of (n := 128) t_310 n_310 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_310_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_310_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_310_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_310_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_310_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_310_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_310_6 (v_310_7))))))))

theorem t_311 : treeK7OK l7 311 = true := by decide +kernel

theorem n_311 : (recAt l7 311).2.2.2.length ≤ 48 := by decide +kernel

theorem v_311_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 311 0 16 = true := by decide +kernel

theorem v_311_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 311 16 16 = true := by decide +kernel

theorem v_311_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 311 32 16 = true := by decide +kernel

theorem r_311 : recsK7OK T qscale den6 d14 lamN lamD l7 311 1 = true := recK7_of (n := 48) t_311 n_311 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_311_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_311_1 (v_311_2)))

theorem t_312 : treeK7OK l7 312 = true := by decide +kernel

theorem n_312 : (recAt l7 312).2.2.2.length ≤ 96 := by decide +kernel

theorem v_312_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 312 0 16 = true := by decide +kernel

theorem v_312_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 312 16 16 = true := by decide +kernel

theorem v_312_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 312 32 16 = true := by decide +kernel

theorem v_312_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 312 48 16 = true := by decide +kernel

theorem v_312_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 312 64 16 = true := by decide +kernel

theorem v_312_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 312 80 16 = true := by decide +kernel

theorem r_312 : recsK7OK T qscale den6 d14 lamN lamD l7 312 1 = true := recK7_of (n := 96) t_312 n_312 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_312_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_312_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_312_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_312_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_312_4 (v_312_5))))))

theorem t_313 : treeK7OK l7 313 = true := by decide +kernel

theorem n_313 : (recAt l7 313).2.2.2.length ≤ 48 := by decide +kernel

theorem v_313_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 313 0 16 = true := by decide +kernel

theorem v_313_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 313 16 16 = true := by decide +kernel

theorem v_313_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 313 32 16 = true := by decide +kernel

theorem r_313 : recsK7OK T qscale den6 d14 lamN lamD l7 313 1 = true := recK7_of (n := 48) t_313 n_313 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_313_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_313_1 (v_313_2)))

theorem t_314 : treeK7OK l7 314 = true := by decide +kernel

theorem n_314 : (recAt l7 314).2.2.2.length ≤ 32 := by decide +kernel

theorem v_314_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 314 0 16 = true := by decide +kernel

theorem v_314_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 314 16 16 = true := by decide +kernel

theorem r_314 : recsK7OK T qscale den6 d14 lamN lamD l7 314 1 = true := recK7_of (n := 32) t_314 n_314 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_314_0 (v_314_1))

theorem rs_310 : recsK7OK T qscale den6 d14 lamN lamD l7 310 5 = true := recsK7OK_succ (lo := 310) (n := 4) r_310 (recsK7OK_succ (lo := 311) (n := 3) r_311 (recsK7OK_succ (lo := 312) (n := 2) r_312 (recsK7OK_succ (lo := 313) (n := 1) r_313 (r_314))))

end BeatAvg.K.K7
