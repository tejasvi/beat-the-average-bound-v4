import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_305 : treeK7OK l7 305 = true := by decide +kernel

theorem n_305 : (recAt l7 305).2.2.2.length ≤ 160 := by decide +kernel

theorem v_305_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 0 16 = true := by decide +kernel

theorem v_305_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 16 16 = true := by decide +kernel

theorem v_305_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 32 16 = true := by decide +kernel

theorem v_305_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 48 16 = true := by decide +kernel

theorem v_305_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 64 16 = true := by decide +kernel

theorem v_305_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 80 16 = true := by decide +kernel

theorem v_305_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 96 16 = true := by decide +kernel

theorem v_305_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 112 16 = true := by decide +kernel

theorem v_305_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 128 16 = true := by decide +kernel

theorem v_305_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 305 144 16 = true := by decide +kernel

theorem r_305 : recsK7OK T qscale den6 d14 lamN lamD l7 305 1 = true := recK7_of (n := 160) t_305 n_305 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_305_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_305_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_305_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_305_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_305_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_305_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_305_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_305_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_305_8 (v_305_9))))))))))

theorem t_306 : treeK7OK l7 306 = true := by decide +kernel

theorem n_306 : (recAt l7 306).2.2.2.length ≤ 48 := by decide +kernel

theorem v_306_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 306 0 16 = true := by decide +kernel

theorem v_306_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 306 16 16 = true := by decide +kernel

theorem v_306_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 306 32 16 = true := by decide +kernel

theorem r_306 : recsK7OK T qscale den6 d14 lamN lamD l7 306 1 = true := recK7_of (n := 48) t_306 n_306 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_306_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_306_1 (v_306_2)))

theorem t_307 : treeK7OK l7 307 = true := by decide +kernel

theorem n_307 : (recAt l7 307).2.2.2.length ≤ 128 := by decide +kernel

theorem v_307_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 0 16 = true := by decide +kernel

theorem v_307_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 16 16 = true := by decide +kernel

theorem v_307_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 32 16 = true := by decide +kernel

theorem v_307_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 48 16 = true := by decide +kernel

theorem v_307_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 64 16 = true := by decide +kernel

theorem v_307_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 80 16 = true := by decide +kernel

theorem v_307_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 96 16 = true := by decide +kernel

theorem v_307_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 307 112 16 = true := by decide +kernel

theorem r_307 : recsK7OK T qscale den6 d14 lamN lamD l7 307 1 = true := recK7_of (n := 128) t_307 n_307 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_307_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_307_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_307_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_307_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_307_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_307_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_307_6 (v_307_7))))))))

theorem t_308 : treeK7OK l7 308 = true := by decide +kernel

theorem n_308 : (recAt l7 308).2.2.2.length ≤ 48 := by decide +kernel

theorem v_308_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 308 0 16 = true := by decide +kernel

theorem v_308_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 308 16 16 = true := by decide +kernel

theorem v_308_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 308 32 16 = true := by decide +kernel

theorem r_308 : recsK7OK T qscale den6 d14 lamN lamD l7 308 1 = true := recK7_of (n := 48) t_308 n_308 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_308_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_308_1 (v_308_2)))

theorem t_309 : treeK7OK l7 309 = true := by decide +kernel

theorem n_309 : (recAt l7 309).2.2.2.length ≤ 32 := by decide +kernel

theorem v_309_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 309 0 16 = true := by decide +kernel

theorem v_309_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 309 16 16 = true := by decide +kernel

theorem r_309 : recsK7OK T qscale den6 d14 lamN lamD l7 309 1 = true := recK7_of (n := 32) t_309 n_309 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_309_0 (v_309_1))

theorem rs_305 : recsK7OK T qscale den6 d14 lamN lamD l7 305 5 = true := recsK7OK_succ (lo := 305) (n := 4) r_305 (recsK7OK_succ (lo := 306) (n := 3) r_306 (recsK7OK_succ (lo := 307) (n := 2) r_307 (recsK7OK_succ (lo := 308) (n := 1) r_308 (r_309))))

end BeatAvg.K.K7
