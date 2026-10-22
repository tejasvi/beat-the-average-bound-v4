import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_329 : treeK7OK l7 329 = true := by decide +kernel

theorem n_329 : (recAt l7 329).2.2.2.length ≤ 128 := by decide +kernel

theorem v_329_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 0 16 = true := by decide +kernel

theorem v_329_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 16 16 = true := by decide +kernel

theorem v_329_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 32 16 = true := by decide +kernel

theorem v_329_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 48 16 = true := by decide +kernel

theorem v_329_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 64 16 = true := by decide +kernel

theorem v_329_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 80 16 = true := by decide +kernel

theorem v_329_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 96 16 = true := by decide +kernel

theorem v_329_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 329 112 16 = true := by decide +kernel

theorem r_329 : recsK7OK T qscale den6 d14 lamN lamD l7 329 1 = true := recK7_of (n := 128) t_329 n_329 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_329_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_329_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_329_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_329_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_329_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_329_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_329_6 (v_329_7))))))))

theorem t_330 : treeK7OK l7 330 = true := by decide +kernel

theorem n_330 : (recAt l7 330).2.2.2.length ≤ 96 := by decide +kernel

theorem v_330_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 330 0 16 = true := by decide +kernel

theorem v_330_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 330 16 16 = true := by decide +kernel

theorem v_330_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 330 32 16 = true := by decide +kernel

theorem v_330_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 330 48 16 = true := by decide +kernel

theorem v_330_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 330 64 16 = true := by decide +kernel

theorem v_330_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 330 80 16 = true := by decide +kernel

theorem r_330 : recsK7OK T qscale den6 d14 lamN lamD l7 330 1 = true := recK7_of (n := 96) t_330 n_330 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_330_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_330_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_330_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_330_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_330_4 (v_330_5))))))

theorem t_331 : treeK7OK l7 331 = true := by decide +kernel

theorem n_331 : (recAt l7 331).2.2.2.length ≤ 80 := by decide +kernel

theorem v_331_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 331 0 16 = true := by decide +kernel

theorem v_331_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 331 16 16 = true := by decide +kernel

theorem v_331_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 331 32 16 = true := by decide +kernel

theorem v_331_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 331 48 16 = true := by decide +kernel

theorem v_331_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 331 64 16 = true := by decide +kernel

theorem r_331 : recsK7OK T qscale den6 d14 lamN lamD l7 331 1 = true := recK7_of (n := 80) t_331 n_331 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_331_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_331_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_331_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_331_3 (v_331_4)))))

theorem t_332 : treeK7OK l7 332 = true := by decide +kernel

theorem n_332 : (recAt l7 332).2.2.2.length ≤ 112 := by decide +kernel

theorem v_332_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 332 0 16 = true := by decide +kernel

theorem v_332_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 332 16 16 = true := by decide +kernel

theorem v_332_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 332 32 16 = true := by decide +kernel

theorem v_332_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 332 48 16 = true := by decide +kernel

theorem v_332_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 332 64 16 = true := by decide +kernel

theorem v_332_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 332 80 16 = true := by decide +kernel

theorem v_332_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 332 96 16 = true := by decide +kernel

theorem r_332 : recsK7OK T qscale den6 d14 lamN lamD l7 332 1 = true := recK7_of (n := 112) t_332 n_332 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_332_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_332_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_332_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_332_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_332_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_332_5 (v_332_6)))))))

theorem rs_329 : recsK7OK T qscale den6 d14 lamN lamD l7 329 4 = true := recsK7OK_succ (lo := 329) (n := 3) r_329 (recsK7OK_succ (lo := 330) (n := 2) r_330 (recsK7OK_succ (lo := 331) (n := 1) r_331 (r_332)))

end BeatAvg.K.K7
