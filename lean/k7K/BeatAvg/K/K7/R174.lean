import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_585 : treeK7OK l7 585 = true := by decide +kernel

theorem n_585 : (recAt l7 585).2.2.2.length ≤ 176 := by decide +kernel

theorem v_585_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 0 16 = true := by decide +kernel

theorem v_585_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 16 16 = true := by decide +kernel

theorem v_585_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 32 16 = true := by decide +kernel

theorem v_585_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 48 16 = true := by decide +kernel

theorem v_585_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 64 16 = true := by decide +kernel

theorem v_585_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 80 16 = true := by decide +kernel

theorem v_585_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 96 16 = true := by decide +kernel

theorem v_585_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 112 16 = true := by decide +kernel

theorem v_585_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 128 16 = true := by decide +kernel

theorem v_585_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 144 16 = true := by decide +kernel

theorem v_585_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 585 160 16 = true := by decide +kernel

theorem r_585 : recsK7OK T qscale den6 d14 lamN lamD l7 585 1 = true := recK7_of (n := 176) t_585 n_585 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_585_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_585_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_585_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_585_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_585_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_585_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_585_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_585_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_585_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_585_9 (v_585_10)))))))))))

theorem t_586 : treeK7OK l7 586 = true := by decide +kernel

theorem n_586 : (recAt l7 586).2.2.2.length ≤ 64 := by decide +kernel

theorem v_586_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 586 0 16 = true := by decide +kernel

theorem v_586_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 586 16 16 = true := by decide +kernel

theorem v_586_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 586 32 16 = true := by decide +kernel

theorem v_586_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 586 48 16 = true := by decide +kernel

theorem r_586 : recsK7OK T qscale den6 d14 lamN lamD l7 586 1 = true := recK7_of (n := 64) t_586 n_586 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_586_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_586_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_586_2 (v_586_3))))

theorem t_587 : treeK7OK l7 587 = true := by decide +kernel

theorem n_587 : (recAt l7 587).2.2.2.length ≤ 64 := by decide +kernel

theorem v_587_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 587 0 16 = true := by decide +kernel

theorem v_587_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 587 16 16 = true := by decide +kernel

theorem v_587_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 587 32 16 = true := by decide +kernel

theorem v_587_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 587 48 16 = true := by decide +kernel

theorem r_587 : recsK7OK T qscale den6 d14 lamN lamD l7 587 1 = true := recK7_of (n := 64) t_587 n_587 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_587_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_587_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_587_2 (v_587_3))))

theorem t_588 : treeK7OK l7 588 = true := by decide +kernel

theorem n_588 : (recAt l7 588).2.2.2.length ≤ 112 := by decide +kernel

theorem v_588_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 588 0 16 = true := by decide +kernel

theorem v_588_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 588 16 16 = true := by decide +kernel

theorem v_588_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 588 32 16 = true := by decide +kernel

theorem v_588_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 588 48 16 = true := by decide +kernel

theorem v_588_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 588 64 16 = true := by decide +kernel

theorem v_588_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 588 80 16 = true := by decide +kernel

theorem v_588_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 588 96 16 = true := by decide +kernel

theorem r_588 : recsK7OK T qscale den6 d14 lamN lamD l7 588 1 = true := recK7_of (n := 112) t_588 n_588 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_588_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_588_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_588_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_588_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_588_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_588_5 (v_588_6)))))))

theorem rs_585 : recsK7OK T qscale den6 d14 lamN lamD l7 585 4 = true := recsK7OK_succ (lo := 585) (n := 3) r_585 (recsK7OK_succ (lo := 586) (n := 2) r_586 (recsK7OK_succ (lo := 587) (n := 1) r_587 (r_588)))

end BeatAvg.K.K7
