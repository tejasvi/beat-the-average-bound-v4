import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_518 : treeK7OK l7 518 = true := by decide +kernel

theorem n_518 : (recAt l7 518).2.2.2.length ≤ 96 := by decide +kernel

theorem v_518_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 518 0 16 = true := by decide +kernel

theorem v_518_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 518 16 16 = true := by decide +kernel

theorem v_518_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 518 32 16 = true := by decide +kernel

theorem v_518_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 518 48 16 = true := by decide +kernel

theorem v_518_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 518 64 16 = true := by decide +kernel

theorem v_518_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 518 80 16 = true := by decide +kernel

theorem r_518 : recsK7OK T qscale den6 d14 lamN lamD l7 518 1 = true := recK7_of (n := 96) t_518 n_518 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_518_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_518_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_518_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_518_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_518_4 (v_518_5))))))

theorem t_519 : treeK7OK l7 519 = true := by decide +kernel

theorem n_519 : (recAt l7 519).2.2.2.length ≤ 160 := by decide +kernel

theorem v_519_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 0 16 = true := by decide +kernel

theorem v_519_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 16 16 = true := by decide +kernel

theorem v_519_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 32 16 = true := by decide +kernel

theorem v_519_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 48 16 = true := by decide +kernel

theorem v_519_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 64 16 = true := by decide +kernel

theorem v_519_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 80 16 = true := by decide +kernel

theorem v_519_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 96 16 = true := by decide +kernel

theorem v_519_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 112 16 = true := by decide +kernel

theorem v_519_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 128 16 = true := by decide +kernel

theorem v_519_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 519 144 16 = true := by decide +kernel

theorem r_519 : recsK7OK T qscale den6 d14 lamN lamD l7 519 1 = true := recK7_of (n := 160) t_519 n_519 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_519_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_519_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_519_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_519_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_519_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_519_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_519_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_519_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_519_8 (v_519_9))))))))))

theorem t_520 : treeK7OK l7 520 = true := by decide +kernel

theorem n_520 : (recAt l7 520).2.2.2.length ≤ 96 := by decide +kernel

theorem v_520_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 520 0 16 = true := by decide +kernel

theorem v_520_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 520 16 16 = true := by decide +kernel

theorem v_520_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 520 32 16 = true := by decide +kernel

theorem v_520_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 520 48 16 = true := by decide +kernel

theorem v_520_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 520 64 16 = true := by decide +kernel

theorem v_520_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 520 80 16 = true := by decide +kernel

theorem r_520 : recsK7OK T qscale den6 d14 lamN lamD l7 520 1 = true := recK7_of (n := 96) t_520 n_520 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_520_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_520_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_520_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_520_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_520_4 (v_520_5))))))

theorem t_521 : treeK7OK l7 521 = true := by decide +kernel

theorem n_521 : (recAt l7 521).2.2.2.length ≤ 64 := by decide +kernel

theorem v_521_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 521 0 16 = true := by decide +kernel

theorem v_521_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 521 16 16 = true := by decide +kernel

theorem v_521_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 521 32 16 = true := by decide +kernel

theorem v_521_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 521 48 16 = true := by decide +kernel

theorem r_521 : recsK7OK T qscale den6 d14 lamN lamD l7 521 1 = true := recK7_of (n := 64) t_521 n_521 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_521_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_521_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_521_2 (v_521_3))))

theorem rs_518 : recsK7OK T qscale den6 d14 lamN lamD l7 518 4 = true := recsK7OK_succ (lo := 518) (n := 3) r_518 (recsK7OK_succ (lo := 519) (n := 2) r_519 (recsK7OK_succ (lo := 520) (n := 1) r_520 (r_521)))

end BeatAvg.K.K7
