import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_589 : treeK7OK l7 589 = true := by decide +kernel

theorem n_589 : (recAt l7 589).2.2.2.length ≤ 48 := by decide +kernel

theorem v_589_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 589 0 16 = true := by decide +kernel

theorem v_589_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 589 16 16 = true := by decide +kernel

theorem v_589_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 589 32 16 = true := by decide +kernel

theorem r_589 : recsK7OK T qscale den6 d14 lamN lamD l7 589 1 = true := recK7_of (n := 48) t_589 n_589 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_589_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_589_1 (v_589_2)))

theorem t_590 : treeK7OK l7 590 = true := by decide +kernel

theorem n_590 : (recAt l7 590).2.2.2.length ≤ 128 := by decide +kernel

theorem v_590_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 0 16 = true := by decide +kernel

theorem v_590_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 16 16 = true := by decide +kernel

theorem v_590_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 32 16 = true := by decide +kernel

theorem v_590_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 48 16 = true := by decide +kernel

theorem v_590_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 64 16 = true := by decide +kernel

theorem v_590_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 80 16 = true := by decide +kernel

theorem v_590_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 96 16 = true := by decide +kernel

theorem v_590_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 590 112 16 = true := by decide +kernel

theorem r_590 : recsK7OK T qscale den6 d14 lamN lamD l7 590 1 = true := recK7_of (n := 128) t_590 n_590 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_590_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_590_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_590_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_590_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_590_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_590_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_590_6 (v_590_7))))))))

theorem t_591 : treeK7OK l7 591 = true := by decide +kernel

theorem n_591 : (recAt l7 591).2.2.2.length ≤ 48 := by decide +kernel

theorem v_591_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 591 0 16 = true := by decide +kernel

theorem v_591_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 591 16 16 = true := by decide +kernel

theorem v_591_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 591 32 16 = true := by decide +kernel

theorem r_591 : recsK7OK T qscale den6 d14 lamN lamD l7 591 1 = true := recK7_of (n := 48) t_591 n_591 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_591_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_591_1 (v_591_2)))

theorem t_592 : treeK7OK l7 592 = true := by decide +kernel

theorem n_592 : (recAt l7 592).2.2.2.length ≤ 32 := by decide +kernel

theorem v_592_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 592 0 16 = true := by decide +kernel

theorem v_592_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 592 16 16 = true := by decide +kernel

theorem r_592 : recsK7OK T qscale den6 d14 lamN lamD l7 592 1 = true := recK7_of (n := 32) t_592 n_592 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_592_0 (v_592_1))

theorem t_593 : treeK7OK l7 593 = true := by decide +kernel

theorem n_593 : (recAt l7 593).2.2.2.length ≤ 48 := by decide +kernel

theorem v_593_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 593 0 16 = true := by decide +kernel

theorem v_593_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 593 16 16 = true := by decide +kernel

theorem v_593_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 593 32 16 = true := by decide +kernel

theorem r_593 : recsK7OK T qscale den6 d14 lamN lamD l7 593 1 = true := recK7_of (n := 48) t_593 n_593 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_593_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_593_1 (v_593_2)))

theorem rs_589 : recsK7OK T qscale den6 d14 lamN lamD l7 589 5 = true := recsK7OK_succ (lo := 589) (n := 4) r_589 (recsK7OK_succ (lo := 590) (n := 3) r_590 (recsK7OK_succ (lo := 591) (n := 2) r_591 (recsK7OK_succ (lo := 592) (n := 1) r_592 (r_593))))

end BeatAvg.K.K7
