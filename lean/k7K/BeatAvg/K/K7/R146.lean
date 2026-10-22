import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_485 : treeK7OK l7 485 = true := by decide +kernel

theorem n_485 : (recAt l7 485).2.2.2.length ≤ 48 := by decide +kernel

theorem v_485_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 485 0 16 = true := by decide +kernel

theorem v_485_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 485 16 16 = true := by decide +kernel

theorem v_485_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 485 32 16 = true := by decide +kernel

theorem r_485 : recsK7OK T qscale den6 d14 lamN lamD l7 485 1 = true := recK7_of (n := 48) t_485 n_485 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_485_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_485_1 (v_485_2)))

theorem t_486 : treeK7OK l7 486 = true := by decide +kernel

theorem n_486 : (recAt l7 486).2.2.2.length ≤ 48 := by decide +kernel

theorem v_486_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 486 0 16 = true := by decide +kernel

theorem v_486_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 486 16 16 = true := by decide +kernel

theorem v_486_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 486 32 16 = true := by decide +kernel

theorem r_486 : recsK7OK T qscale den6 d14 lamN lamD l7 486 1 = true := recK7_of (n := 48) t_486 n_486 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_486_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_486_1 (v_486_2)))

theorem t_487 : treeK7OK l7 487 = true := by decide +kernel

theorem n_487 : (recAt l7 487).2.2.2.length ≤ 48 := by decide +kernel

theorem v_487_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 487 0 16 = true := by decide +kernel

theorem v_487_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 487 16 16 = true := by decide +kernel

theorem v_487_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 487 32 16 = true := by decide +kernel

theorem r_487 : recsK7OK T qscale den6 d14 lamN lamD l7 487 1 = true := recK7_of (n := 48) t_487 n_487 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_487_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_487_1 (v_487_2)))

theorem t_488 : treeK7OK l7 488 = true := by decide +kernel

theorem n_488 : (recAt l7 488).2.2.2.length ≤ 48 := by decide +kernel

theorem v_488_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 488 0 16 = true := by decide +kernel

theorem v_488_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 488 16 16 = true := by decide +kernel

theorem v_488_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 488 32 16 = true := by decide +kernel

theorem r_488 : recsK7OK T qscale den6 d14 lamN lamD l7 488 1 = true := recK7_of (n := 48) t_488 n_488 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_488_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_488_1 (v_488_2)))

theorem t_489 : treeK7OK l7 489 = true := by decide +kernel

theorem n_489 : (recAt l7 489).2.2.2.length ≤ 48 := by decide +kernel

theorem v_489_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 489 0 16 = true := by decide +kernel

theorem v_489_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 489 16 16 = true := by decide +kernel

theorem v_489_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 489 32 16 = true := by decide +kernel

theorem r_489 : recsK7OK T qscale den6 d14 lamN lamD l7 489 1 = true := recK7_of (n := 48) t_489 n_489 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_489_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_489_1 (v_489_2)))

theorem t_490 : treeK7OK l7 490 = true := by decide +kernel

theorem n_490 : (recAt l7 490).2.2.2.length ≤ 48 := by decide +kernel

theorem v_490_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 490 0 16 = true := by decide +kernel

theorem v_490_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 490 16 16 = true := by decide +kernel

theorem v_490_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 490 32 16 = true := by decide +kernel

theorem r_490 : recsK7OK T qscale den6 d14 lamN lamD l7 490 1 = true := recK7_of (n := 48) t_490 n_490 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_490_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_490_1 (v_490_2)))

theorem t_491 : treeK7OK l7 491 = true := by decide +kernel

theorem n_491 : (recAt l7 491).2.2.2.length ≤ 80 := by decide +kernel

theorem v_491_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 491 0 16 = true := by decide +kernel

theorem v_491_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 491 16 16 = true := by decide +kernel

theorem v_491_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 491 32 16 = true := by decide +kernel

theorem v_491_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 491 48 16 = true := by decide +kernel

theorem v_491_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 491 64 16 = true := by decide +kernel

theorem r_491 : recsK7OK T qscale den6 d14 lamN lamD l7 491 1 = true := recK7_of (n := 80) t_491 n_491 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_491_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_491_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_491_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_491_3 (v_491_4)))))

theorem rs_485 : recsK7OK T qscale den6 d14 lamN lamD l7 485 7 = true := recsK7OK_succ (lo := 485) (n := 6) r_485 (recsK7OK_succ (lo := 486) (n := 5) r_486 (recsK7OK_succ (lo := 487) (n := 4) r_487 (recsK7OK_succ (lo := 488) (n := 3) r_488 (recsK7OK_succ (lo := 489) (n := 2) r_489 (recsK7OK_succ (lo := 490) (n := 1) r_490 (r_491))))))

end BeatAvg.K.K7
