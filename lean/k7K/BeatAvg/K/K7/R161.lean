import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_535 : treeK7OK l7 535 = true := by decide +kernel

theorem n_535 : (recAt l7 535).2.2.2.length ≤ 112 := by decide +kernel

theorem v_535_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 535 0 16 = true := by decide +kernel

theorem v_535_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 535 16 16 = true := by decide +kernel

theorem v_535_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 535 32 16 = true := by decide +kernel

theorem v_535_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 535 48 16 = true := by decide +kernel

theorem v_535_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 535 64 16 = true := by decide +kernel

theorem v_535_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 535 80 16 = true := by decide +kernel

theorem v_535_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 535 96 16 = true := by decide +kernel

theorem r_535 : recsK7OK T qscale den6 d14 lamN lamD l7 535 1 = true := recK7_of (n := 112) t_535 n_535 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_535_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_535_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_535_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_535_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_535_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_535_5 (v_535_6)))))))

theorem t_536 : treeK7OK l7 536 = true := by decide +kernel

theorem n_536 : (recAt l7 536).2.2.2.length ≤ 48 := by decide +kernel

theorem v_536_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 536 0 16 = true := by decide +kernel

theorem v_536_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 536 16 16 = true := by decide +kernel

theorem v_536_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 536 32 16 = true := by decide +kernel

theorem r_536 : recsK7OK T qscale den6 d14 lamN lamD l7 536 1 = true := recK7_of (n := 48) t_536 n_536 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_536_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_536_1 (v_536_2)))

theorem t_537 : treeK7OK l7 537 = true := by decide +kernel

theorem n_537 : (recAt l7 537).2.2.2.length ≤ 112 := by decide +kernel

theorem v_537_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 537 0 16 = true := by decide +kernel

theorem v_537_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 537 16 16 = true := by decide +kernel

theorem v_537_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 537 32 16 = true := by decide +kernel

theorem v_537_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 537 48 16 = true := by decide +kernel

theorem v_537_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 537 64 16 = true := by decide +kernel

theorem v_537_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 537 80 16 = true := by decide +kernel

theorem v_537_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 537 96 16 = true := by decide +kernel

theorem r_537 : recsK7OK T qscale den6 d14 lamN lamD l7 537 1 = true := recK7_of (n := 112) t_537 n_537 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_537_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_537_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_537_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_537_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_537_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_537_5 (v_537_6)))))))

theorem t_538 : treeK7OK l7 538 = true := by decide +kernel

theorem n_538 : (recAt l7 538).2.2.2.length ≤ 64 := by decide +kernel

theorem v_538_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 538 0 16 = true := by decide +kernel

theorem v_538_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 538 16 16 = true := by decide +kernel

theorem v_538_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 538 32 16 = true := by decide +kernel

theorem v_538_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 538 48 16 = true := by decide +kernel

theorem r_538 : recsK7OK T qscale den6 d14 lamN lamD l7 538 1 = true := recK7_of (n := 64) t_538 n_538 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_538_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_538_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_538_2 (v_538_3))))

theorem t_539 : treeK7OK l7 539 = true := by decide +kernel

theorem n_539 : (recAt l7 539).2.2.2.length ≤ 16 := by decide +kernel

theorem v_539_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 539 0 16 = true := by decide +kernel

theorem r_539 : recsK7OK T qscale den6 d14 lamN lamD l7 539 1 = true := recK7_of (n := 16) t_539 n_539 (v_539_0)

theorem rs_535 : recsK7OK T qscale den6 d14 lamN lamD l7 535 5 = true := recsK7OK_succ (lo := 535) (n := 4) r_535 (recsK7OK_succ (lo := 536) (n := 3) r_536 (recsK7OK_succ (lo := 537) (n := 2) r_537 (recsK7OK_succ (lo := 538) (n := 1) r_538 (r_539))))

end BeatAvg.K.K7
