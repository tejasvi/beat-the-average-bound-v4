import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_450 : treeK7OK l7 450 = true := by decide +kernel

theorem n_450 : (recAt l7 450).2.2.2.length ≤ 128 := by decide +kernel

theorem v_450_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 0 16 = true := by decide +kernel

theorem v_450_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 16 16 = true := by decide +kernel

theorem v_450_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 32 16 = true := by decide +kernel

theorem v_450_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 48 16 = true := by decide +kernel

theorem v_450_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 64 16 = true := by decide +kernel

theorem v_450_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 80 16 = true := by decide +kernel

theorem v_450_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 96 16 = true := by decide +kernel

theorem v_450_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 450 112 16 = true := by decide +kernel

theorem r_450 : recsK7OK T qscale den6 d14 lamN lamD l7 450 1 = true := recK7_of (n := 128) t_450 n_450 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_450_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_450_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_450_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_450_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_450_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_450_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_450_6 (v_450_7))))))))

theorem t_451 : treeK7OK l7 451 = true := by decide +kernel

theorem n_451 : (recAt l7 451).2.2.2.length ≤ 112 := by decide +kernel

theorem v_451_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 451 0 16 = true := by decide +kernel

theorem v_451_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 451 16 16 = true := by decide +kernel

theorem v_451_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 451 32 16 = true := by decide +kernel

theorem v_451_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 451 48 16 = true := by decide +kernel

theorem v_451_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 451 64 16 = true := by decide +kernel

theorem v_451_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 451 80 16 = true := by decide +kernel

theorem v_451_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 451 96 16 = true := by decide +kernel

theorem r_451 : recsK7OK T qscale den6 d14 lamN lamD l7 451 1 = true := recK7_of (n := 112) t_451 n_451 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_451_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_451_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_451_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_451_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_451_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_451_5 (v_451_6)))))))

theorem t_452 : treeK7OK l7 452 = true := by decide +kernel

theorem n_452 : (recAt l7 452).2.2.2.length ≤ 80 := by decide +kernel

theorem v_452_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 452 0 16 = true := by decide +kernel

theorem v_452_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 452 16 16 = true := by decide +kernel

theorem v_452_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 452 32 16 = true := by decide +kernel

theorem v_452_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 452 48 16 = true := by decide +kernel

theorem v_452_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 452 64 16 = true := by decide +kernel

theorem r_452 : recsK7OK T qscale den6 d14 lamN lamD l7 452 1 = true := recK7_of (n := 80) t_452 n_452 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_452_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_452_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_452_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_452_3 (v_452_4)))))

theorem t_453 : treeK7OK l7 453 = true := by decide +kernel

theorem n_453 : (recAt l7 453).2.2.2.length ≤ 48 := by decide +kernel

theorem v_453_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 453 0 16 = true := by decide +kernel

theorem v_453_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 453 16 16 = true := by decide +kernel

theorem v_453_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 453 32 16 = true := by decide +kernel

theorem r_453 : recsK7OK T qscale den6 d14 lamN lamD l7 453 1 = true := recK7_of (n := 48) t_453 n_453 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_453_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_453_1 (v_453_2)))

theorem t_454 : treeK7OK l7 454 = true := by decide +kernel

theorem n_454 : (recAt l7 454).2.2.2.length ≤ 48 := by decide +kernel

theorem v_454_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 454 0 16 = true := by decide +kernel

theorem v_454_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 454 16 16 = true := by decide +kernel

theorem v_454_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 454 32 16 = true := by decide +kernel

theorem r_454 : recsK7OK T qscale den6 d14 lamN lamD l7 454 1 = true := recK7_of (n := 48) t_454 n_454 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_454_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_454_1 (v_454_2)))

theorem rs_450 : recsK7OK T qscale den6 d14 lamN lamD l7 450 5 = true := recsK7OK_succ (lo := 450) (n := 4) r_450 (recsK7OK_succ (lo := 451) (n := 3) r_451 (recsK7OK_succ (lo := 452) (n := 2) r_452 (recsK7OK_succ (lo := 453) (n := 1) r_453 (r_454))))

end BeatAvg.K.K7
