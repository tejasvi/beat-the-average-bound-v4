import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_604 : treeK7OK l7 604 = true := by decide +kernel

theorem n_604 : (recAt l7 604).2.2.2.length ≤ 64 := by decide +kernel

theorem v_604_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 604 0 16 = true := by decide +kernel

theorem v_604_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 604 16 16 = true := by decide +kernel

theorem v_604_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 604 32 16 = true := by decide +kernel

theorem v_604_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 604 48 16 = true := by decide +kernel

theorem r_604 : recsK7OK T qscale den6 d14 lamN lamD l7 604 1 = true := recK7_of (n := 64) t_604 n_604 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_604_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_604_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_604_2 (v_604_3))))

theorem t_605 : treeK7OK l7 605 = true := by decide +kernel

theorem n_605 : (recAt l7 605).2.2.2.length ≤ 64 := by decide +kernel

theorem v_605_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 605 0 16 = true := by decide +kernel

theorem v_605_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 605 16 16 = true := by decide +kernel

theorem v_605_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 605 32 16 = true := by decide +kernel

theorem v_605_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 605 48 16 = true := by decide +kernel

theorem r_605 : recsK7OK T qscale den6 d14 lamN lamD l7 605 1 = true := recK7_of (n := 64) t_605 n_605 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_605_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_605_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_605_2 (v_605_3))))

theorem t_606 : treeK7OK l7 606 = true := by decide +kernel

theorem n_606 : (recAt l7 606).2.2.2.length ≤ 144 := by decide +kernel

theorem v_606_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 0 16 = true := by decide +kernel

theorem v_606_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 16 16 = true := by decide +kernel

theorem v_606_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 32 16 = true := by decide +kernel

theorem v_606_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 48 16 = true := by decide +kernel

theorem v_606_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 64 16 = true := by decide +kernel

theorem v_606_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 80 16 = true := by decide +kernel

theorem v_606_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 96 16 = true := by decide +kernel

theorem v_606_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 112 16 = true := by decide +kernel

theorem v_606_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 606 128 16 = true := by decide +kernel

theorem r_606 : recsK7OK T qscale den6 d14 lamN lamD l7 606 1 = true := recK7_of (n := 144) t_606 n_606 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_606_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_606_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_606_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_606_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_606_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_606_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_606_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_606_7 (v_606_8)))))))))

theorem rs_604 : recsK7OK T qscale den6 d14 lamN lamD l7 604 3 = true := recsK7OK_succ (lo := 604) (n := 2) r_604 (recsK7OK_succ (lo := 605) (n := 1) r_605 (r_606))

end BeatAvg.K.K7
