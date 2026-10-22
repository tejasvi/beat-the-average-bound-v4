import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_455 : treeK7OK l7 455 = true := by decide +kernel

theorem n_455 : (recAt l7 455).2.2.2.length ≤ 48 := by decide +kernel

theorem v_455_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 455 0 16 = true := by decide +kernel

theorem v_455_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 455 16 16 = true := by decide +kernel

theorem v_455_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 455 32 16 = true := by decide +kernel

theorem r_455 : recsK7OK T qscale den6 d14 lamN lamD l7 455 1 = true := recK7_of (n := 48) t_455 n_455 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_455_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_455_1 (v_455_2)))

theorem t_456 : treeK7OK l7 456 = true := by decide +kernel

theorem n_456 : (recAt l7 456).2.2.2.length ≤ 112 := by decide +kernel

theorem v_456_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 456 0 16 = true := by decide +kernel

theorem v_456_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 456 16 16 = true := by decide +kernel

theorem v_456_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 456 32 16 = true := by decide +kernel

theorem v_456_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 456 48 16 = true := by decide +kernel

theorem v_456_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 456 64 16 = true := by decide +kernel

theorem v_456_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 456 80 16 = true := by decide +kernel

theorem v_456_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 456 96 16 = true := by decide +kernel

theorem r_456 : recsK7OK T qscale den6 d14 lamN lamD l7 456 1 = true := recK7_of (n := 112) t_456 n_456 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_456_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_456_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_456_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_456_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_456_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_456_5 (v_456_6)))))))

theorem t_457 : treeK7OK l7 457 = true := by decide +kernel

theorem n_457 : (recAt l7 457).2.2.2.length ≤ 80 := by decide +kernel

theorem v_457_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 457 0 16 = true := by decide +kernel

theorem v_457_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 457 16 16 = true := by decide +kernel

theorem v_457_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 457 32 16 = true := by decide +kernel

theorem v_457_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 457 48 16 = true := by decide +kernel

theorem v_457_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 457 64 16 = true := by decide +kernel

theorem r_457 : recsK7OK T qscale den6 d14 lamN lamD l7 457 1 = true := recK7_of (n := 80) t_457 n_457 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_457_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_457_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_457_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_457_3 (v_457_4)))))

theorem t_458 : treeK7OK l7 458 = true := by decide +kernel

theorem n_458 : (recAt l7 458).2.2.2.length ≤ 48 := by decide +kernel

theorem v_458_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 458 0 16 = true := by decide +kernel

theorem v_458_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 458 16 16 = true := by decide +kernel

theorem v_458_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 458 32 16 = true := by decide +kernel

theorem r_458 : recsK7OK T qscale den6 d14 lamN lamD l7 458 1 = true := recK7_of (n := 48) t_458 n_458 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_458_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_458_1 (v_458_2)))

theorem t_459 : treeK7OK l7 459 = true := by decide +kernel

theorem n_459 : (recAt l7 459).2.2.2.length ≤ 48 := by decide +kernel

theorem v_459_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 459 0 16 = true := by decide +kernel

theorem v_459_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 459 16 16 = true := by decide +kernel

theorem v_459_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 459 32 16 = true := by decide +kernel

theorem r_459 : recsK7OK T qscale den6 d14 lamN lamD l7 459 1 = true := recK7_of (n := 48) t_459 n_459 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_459_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_459_1 (v_459_2)))

theorem t_460 : treeK7OK l7 460 = true := by decide +kernel

theorem n_460 : (recAt l7 460).2.2.2.length ≤ 64 := by decide +kernel

theorem v_460_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 460 0 16 = true := by decide +kernel

theorem v_460_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 460 16 16 = true := by decide +kernel

theorem v_460_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 460 32 16 = true := by decide +kernel

theorem v_460_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 460 48 16 = true := by decide +kernel

theorem r_460 : recsK7OK T qscale den6 d14 lamN lamD l7 460 1 = true := recK7_of (n := 64) t_460 n_460 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_460_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_460_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_460_2 (v_460_3))))

theorem rs_455 : recsK7OK T qscale den6 d14 lamN lamD l7 455 6 = true := recsK7OK_succ (lo := 455) (n := 5) r_455 (recsK7OK_succ (lo := 456) (n := 4) r_456 (recsK7OK_succ (lo := 457) (n := 3) r_457 (recsK7OK_succ (lo := 458) (n := 2) r_458 (recsK7OK_succ (lo := 459) (n := 1) r_459 (r_460)))))

end BeatAvg.K.K7
