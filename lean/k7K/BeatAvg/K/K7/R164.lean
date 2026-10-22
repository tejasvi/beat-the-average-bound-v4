import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_547 : treeK7OK l7 547 = true := by decide +kernel

theorem n_547 : (recAt l7 547).2.2.2.length ≤ 144 := by decide +kernel

theorem v_547_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 0 16 = true := by decide +kernel

theorem v_547_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 16 16 = true := by decide +kernel

theorem v_547_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 32 16 = true := by decide +kernel

theorem v_547_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 48 16 = true := by decide +kernel

theorem v_547_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 64 16 = true := by decide +kernel

theorem v_547_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 80 16 = true := by decide +kernel

theorem v_547_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 96 16 = true := by decide +kernel

theorem v_547_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 112 16 = true := by decide +kernel

theorem v_547_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 547 128 16 = true := by decide +kernel

theorem r_547 : recsK7OK T qscale den6 d14 lamN lamD l7 547 1 = true := recK7_of (n := 144) t_547 n_547 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_547_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_547_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_547_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_547_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_547_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_547_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_547_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_547_7 (v_547_8)))))))))

theorem t_548 : treeK7OK l7 548 = true := by decide +kernel

theorem n_548 : (recAt l7 548).2.2.2.length ≤ 96 := by decide +kernel

theorem v_548_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 548 0 16 = true := by decide +kernel

theorem v_548_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 548 16 16 = true := by decide +kernel

theorem v_548_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 548 32 16 = true := by decide +kernel

theorem v_548_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 548 48 16 = true := by decide +kernel

theorem v_548_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 548 64 16 = true := by decide +kernel

theorem v_548_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 548 80 16 = true := by decide +kernel

theorem r_548 : recsK7OK T qscale den6 d14 lamN lamD l7 548 1 = true := recK7_of (n := 96) t_548 n_548 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_548_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_548_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_548_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_548_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_548_4 (v_548_5))))))

theorem t_549 : treeK7OK l7 549 = true := by decide +kernel

theorem n_549 : (recAt l7 549).2.2.2.length ≤ 48 := by decide +kernel

theorem v_549_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 549 0 16 = true := by decide +kernel

theorem v_549_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 549 16 16 = true := by decide +kernel

theorem v_549_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 549 32 16 = true := by decide +kernel

theorem r_549 : recsK7OK T qscale den6 d14 lamN lamD l7 549 1 = true := recK7_of (n := 48) t_549 n_549 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_549_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_549_1 (v_549_2)))

theorem t_550 : treeK7OK l7 550 = true := by decide +kernel

theorem n_550 : (recAt l7 550).2.2.2.length ≤ 96 := by decide +kernel

theorem v_550_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 550 0 16 = true := by decide +kernel

theorem v_550_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 550 16 16 = true := by decide +kernel

theorem v_550_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 550 32 16 = true := by decide +kernel

theorem v_550_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 550 48 16 = true := by decide +kernel

theorem v_550_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 550 64 16 = true := by decide +kernel

theorem v_550_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 550 80 16 = true := by decide +kernel

theorem r_550 : recsK7OK T qscale den6 d14 lamN lamD l7 550 1 = true := recK7_of (n := 96) t_550 n_550 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_550_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_550_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_550_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_550_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_550_4 (v_550_5))))))

theorem rs_547 : recsK7OK T qscale den6 d14 lamN lamD l7 547 4 = true := recsK7OK_succ (lo := 547) (n := 3) r_547 (recsK7OK_succ (lo := 548) (n := 2) r_548 (recsK7OK_succ (lo := 549) (n := 1) r_549 (r_550)))

end BeatAvg.K.K7
