import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_446 : treeK7OK l7 446 = true := by decide +kernel

theorem n_446 : (recAt l7 446).2.2.2.length ≤ 80 := by decide +kernel

theorem v_446_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 446 0 16 = true := by decide +kernel

theorem v_446_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 446 16 16 = true := by decide +kernel

theorem v_446_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 446 32 16 = true := by decide +kernel

theorem v_446_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 446 48 16 = true := by decide +kernel

theorem v_446_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 446 64 16 = true := by decide +kernel

theorem r_446 : recsK7OK T qscale den6 d14 lamN lamD l7 446 1 = true := recK7_of (n := 80) t_446 n_446 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_446_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_446_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_446_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_446_3 (v_446_4)))))

theorem t_447 : treeK7OK l7 447 = true := by decide +kernel

theorem n_447 : (recAt l7 447).2.2.2.length ≤ 128 := by decide +kernel

theorem v_447_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 0 16 = true := by decide +kernel

theorem v_447_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 16 16 = true := by decide +kernel

theorem v_447_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 32 16 = true := by decide +kernel

theorem v_447_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 48 16 = true := by decide +kernel

theorem v_447_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 64 16 = true := by decide +kernel

theorem v_447_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 80 16 = true := by decide +kernel

theorem v_447_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 96 16 = true := by decide +kernel

theorem v_447_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 447 112 16 = true := by decide +kernel

theorem r_447 : recsK7OK T qscale den6 d14 lamN lamD l7 447 1 = true := recK7_of (n := 128) t_447 n_447 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_447_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_447_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_447_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_447_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_447_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_447_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_447_6 (v_447_7))))))))

theorem t_448 : treeK7OK l7 448 = true := by decide +kernel

theorem n_448 : (recAt l7 448).2.2.2.length ≤ 80 := by decide +kernel

theorem v_448_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 448 0 16 = true := by decide +kernel

theorem v_448_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 448 16 16 = true := by decide +kernel

theorem v_448_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 448 32 16 = true := by decide +kernel

theorem v_448_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 448 48 16 = true := by decide +kernel

theorem v_448_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 448 64 16 = true := by decide +kernel

theorem r_448 : recsK7OK T qscale den6 d14 lamN lamD l7 448 1 = true := recK7_of (n := 80) t_448 n_448 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_448_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_448_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_448_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_448_3 (v_448_4)))))

theorem t_449 : treeK7OK l7 449 = true := by decide +kernel

theorem n_449 : (recAt l7 449).2.2.2.length ≤ 64 := by decide +kernel

theorem v_449_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 449 0 16 = true := by decide +kernel

theorem v_449_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 449 16 16 = true := by decide +kernel

theorem v_449_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 449 32 16 = true := by decide +kernel

theorem v_449_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 449 48 16 = true := by decide +kernel

theorem r_449 : recsK7OK T qscale den6 d14 lamN lamD l7 449 1 = true := recK7_of (n := 64) t_449 n_449 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_449_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_449_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_449_2 (v_449_3))))

theorem rs_446 : recsK7OK T qscale den6 d14 lamN lamD l7 446 4 = true := recsK7OK_succ (lo := 446) (n := 3) r_446 (recsK7OK_succ (lo := 447) (n := 2) r_447 (recsK7OK_succ (lo := 448) (n := 1) r_448 (r_449)))

end BeatAvg.K.K7
