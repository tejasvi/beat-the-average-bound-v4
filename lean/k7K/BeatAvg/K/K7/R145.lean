import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_481 : treeK7OK l7 481 = true := by decide +kernel

theorem n_481 : (recAt l7 481).2.2.2.length ≤ 80 := by decide +kernel

theorem v_481_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 481 0 16 = true := by decide +kernel

theorem v_481_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 481 16 16 = true := by decide +kernel

theorem v_481_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 481 32 16 = true := by decide +kernel

theorem v_481_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 481 48 16 = true := by decide +kernel

theorem v_481_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 481 64 16 = true := by decide +kernel

theorem r_481 : recsK7OK T qscale den6 d14 lamN lamD l7 481 1 = true := recK7_of (n := 80) t_481 n_481 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_481_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_481_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_481_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_481_3 (v_481_4)))))

theorem t_482 : treeK7OK l7 482 = true := by decide +kernel

theorem n_482 : (recAt l7 482).2.2.2.length ≤ 144 := by decide +kernel

theorem v_482_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 0 16 = true := by decide +kernel

theorem v_482_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 16 16 = true := by decide +kernel

theorem v_482_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 32 16 = true := by decide +kernel

theorem v_482_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 48 16 = true := by decide +kernel

theorem v_482_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 64 16 = true := by decide +kernel

theorem v_482_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 80 16 = true := by decide +kernel

theorem v_482_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 96 16 = true := by decide +kernel

theorem v_482_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 112 16 = true := by decide +kernel

theorem v_482_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 482 128 16 = true := by decide +kernel

theorem r_482 : recsK7OK T qscale den6 d14 lamN lamD l7 482 1 = true := recK7_of (n := 144) t_482 n_482 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_482_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_482_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_482_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_482_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_482_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_482_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_482_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_482_7 (v_482_8)))))))))

theorem t_483 : treeK7OK l7 483 = true := by decide +kernel

theorem n_483 : (recAt l7 483).2.2.2.length ≤ 96 := by decide +kernel

theorem v_483_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 483 0 16 = true := by decide +kernel

theorem v_483_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 483 16 16 = true := by decide +kernel

theorem v_483_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 483 32 16 = true := by decide +kernel

theorem v_483_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 483 48 16 = true := by decide +kernel

theorem v_483_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 483 64 16 = true := by decide +kernel

theorem v_483_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 483 80 16 = true := by decide +kernel

theorem r_483 : recsK7OK T qscale den6 d14 lamN lamD l7 483 1 = true := recK7_of (n := 96) t_483 n_483 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_483_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_483_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_483_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_483_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_483_4 (v_483_5))))))

theorem t_484 : treeK7OK l7 484 = true := by decide +kernel

theorem n_484 : (recAt l7 484).2.2.2.length ≤ 80 := by decide +kernel

theorem v_484_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 484 0 16 = true := by decide +kernel

theorem v_484_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 484 16 16 = true := by decide +kernel

theorem v_484_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 484 32 16 = true := by decide +kernel

theorem v_484_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 484 48 16 = true := by decide +kernel

theorem v_484_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 484 64 16 = true := by decide +kernel

theorem r_484 : recsK7OK T qscale den6 d14 lamN lamD l7 484 1 = true := recK7_of (n := 80) t_484 n_484 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_484_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_484_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_484_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_484_3 (v_484_4)))))

theorem rs_481 : recsK7OK T qscale den6 d14 lamN lamD l7 481 4 = true := recsK7OK_succ (lo := 481) (n := 3) r_481 (recsK7OK_succ (lo := 482) (n := 2) r_482 (recsK7OK_succ (lo := 483) (n := 1) r_483 (r_484)))

end BeatAvg.K.K7
