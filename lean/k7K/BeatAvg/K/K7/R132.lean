import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_440 : treeK7OK l7 440 = true := by decide +kernel

theorem n_440 : (recAt l7 440).2.2.2.length ≤ 128 := by decide +kernel

theorem v_440_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 0 16 = true := by decide +kernel

theorem v_440_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 16 16 = true := by decide +kernel

theorem v_440_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 32 16 = true := by decide +kernel

theorem v_440_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 48 16 = true := by decide +kernel

theorem v_440_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 64 16 = true := by decide +kernel

theorem v_440_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 80 16 = true := by decide +kernel

theorem v_440_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 96 16 = true := by decide +kernel

theorem v_440_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 440 112 16 = true := by decide +kernel

theorem r_440 : recsK7OK T qscale den6 d14 lamN lamD l7 440 1 = true := recK7_of (n := 128) t_440 n_440 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_440_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_440_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_440_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_440_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_440_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_440_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_440_6 (v_440_7))))))))

theorem t_441 : treeK7OK l7 441 = true := by decide +kernel

theorem n_441 : (recAt l7 441).2.2.2.length ≤ 48 := by decide +kernel

theorem v_441_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 441 0 16 = true := by decide +kernel

theorem v_441_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 441 16 16 = true := by decide +kernel

theorem v_441_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 441 32 16 = true := by decide +kernel

theorem r_441 : recsK7OK T qscale den6 d14 lamN lamD l7 441 1 = true := recK7_of (n := 48) t_441 n_441 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_441_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_441_1 (v_441_2)))

theorem t_442 : treeK7OK l7 442 = true := by decide +kernel

theorem n_442 : (recAt l7 442).2.2.2.length ≤ 96 := by decide +kernel

theorem v_442_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 442 0 16 = true := by decide +kernel

theorem v_442_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 442 16 16 = true := by decide +kernel

theorem v_442_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 442 32 16 = true := by decide +kernel

theorem v_442_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 442 48 16 = true := by decide +kernel

theorem v_442_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 442 64 16 = true := by decide +kernel

theorem v_442_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 442 80 16 = true := by decide +kernel

theorem r_442 : recsK7OK T qscale den6 d14 lamN lamD l7 442 1 = true := recK7_of (n := 96) t_442 n_442 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_442_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_442_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_442_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_442_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_442_4 (v_442_5))))))

theorem t_443 : treeK7OK l7 443 = true := by decide +kernel

theorem n_443 : (recAt l7 443).2.2.2.length ≤ 64 := by decide +kernel

theorem v_443_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 443 0 16 = true := by decide +kernel

theorem v_443_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 443 16 16 = true := by decide +kernel

theorem v_443_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 443 32 16 = true := by decide +kernel

theorem v_443_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 443 48 16 = true := by decide +kernel

theorem r_443 : recsK7OK T qscale den6 d14 lamN lamD l7 443 1 = true := recK7_of (n := 64) t_443 n_443 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_443_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_443_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_443_2 (v_443_3))))

theorem rs_440 : recsK7OK T qscale den6 d14 lamN lamD l7 440 4 = true := recsK7OK_succ (lo := 440) (n := 3) r_440 (recsK7OK_succ (lo := 441) (n := 2) r_441 (recsK7OK_succ (lo := 442) (n := 1) r_442 (r_443)))

end BeatAvg.K.K7
