import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_271 : treeK7OK l7 271 = true := by decide +kernel

theorem n_271 : (recAt l7 271).2.2.2.length ≤ 112 := by decide +kernel

theorem v_271_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 271 0 16 = true := by decide +kernel

theorem v_271_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 271 16 16 = true := by decide +kernel

theorem v_271_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 271 32 16 = true := by decide +kernel

theorem v_271_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 271 48 16 = true := by decide +kernel

theorem v_271_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 271 64 16 = true := by decide +kernel

theorem v_271_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 271 80 16 = true := by decide +kernel

theorem v_271_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 271 96 16 = true := by decide +kernel

theorem r_271 : recsK7OK T qscale den6 d14 lamN lamD l7 271 1 = true := recK7_of (n := 112) t_271 n_271 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_271_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_271_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_271_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_271_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_271_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_271_5 (v_271_6)))))))

theorem t_272 : treeK7OK l7 272 = true := by decide +kernel

theorem n_272 : (recAt l7 272).2.2.2.length ≤ 80 := by decide +kernel

theorem v_272_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 272 0 16 = true := by decide +kernel

theorem v_272_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 272 16 16 = true := by decide +kernel

theorem v_272_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 272 32 16 = true := by decide +kernel

theorem v_272_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 272 48 16 = true := by decide +kernel

theorem v_272_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 272 64 16 = true := by decide +kernel

theorem r_272 : recsK7OK T qscale den6 d14 lamN lamD l7 272 1 = true := recK7_of (n := 80) t_272 n_272 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_272_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_272_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_272_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_272_3 (v_272_4)))))

theorem t_273 : treeK7OK l7 273 = true := by decide +kernel

theorem n_273 : (recAt l7 273).2.2.2.length ≤ 80 := by decide +kernel

theorem v_273_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 273 0 16 = true := by decide +kernel

theorem v_273_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 273 16 16 = true := by decide +kernel

theorem v_273_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 273 32 16 = true := by decide +kernel

theorem v_273_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 273 48 16 = true := by decide +kernel

theorem v_273_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 273 64 16 = true := by decide +kernel

theorem r_273 : recsK7OK T qscale den6 d14 lamN lamD l7 273 1 = true := recK7_of (n := 80) t_273 n_273 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_273_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_273_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_273_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_273_3 (v_273_4)))))

theorem t_274 : treeK7OK l7 274 = true := by decide +kernel

theorem n_274 : (recAt l7 274).2.2.2.length ≤ 80 := by decide +kernel

theorem v_274_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 274 0 16 = true := by decide +kernel

theorem v_274_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 274 16 16 = true := by decide +kernel

theorem v_274_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 274 32 16 = true := by decide +kernel

theorem v_274_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 274 48 16 = true := by decide +kernel

theorem v_274_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 274 64 16 = true := by decide +kernel

theorem r_274 : recsK7OK T qscale den6 d14 lamN lamD l7 274 1 = true := recK7_of (n := 80) t_274 n_274 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_274_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_274_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_274_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_274_3 (v_274_4)))))

theorem t_275 : treeK7OK l7 275 = true := by decide +kernel

theorem n_275 : (recAt l7 275).2.2.2.length ≤ 48 := by decide +kernel

theorem v_275_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 275 0 16 = true := by decide +kernel

theorem v_275_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 275 16 16 = true := by decide +kernel

theorem v_275_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 275 32 16 = true := by decide +kernel

theorem r_275 : recsK7OK T qscale den6 d14 lamN lamD l7 275 1 = true := recK7_of (n := 48) t_275 n_275 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_275_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_275_1 (v_275_2)))

theorem rs_271 : recsK7OK T qscale den6 d14 lamN lamD l7 271 5 = true := recsK7OK_succ (lo := 271) (n := 4) r_271 (recsK7OK_succ (lo := 272) (n := 3) r_272 (recsK7OK_succ (lo := 273) (n := 2) r_273 (recsK7OK_succ (lo := 274) (n := 1) r_274 (r_275))))

end BeatAvg.K.K7
