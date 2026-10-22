import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_477 : treeK7OK l7 477 = true := by decide +kernel

theorem n_477 : (recAt l7 477).2.2.2.length ≤ 96 := by decide +kernel

theorem v_477_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 477 0 16 = true := by decide +kernel

theorem v_477_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 477 16 16 = true := by decide +kernel

theorem v_477_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 477 32 16 = true := by decide +kernel

theorem v_477_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 477 48 16 = true := by decide +kernel

theorem v_477_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 477 64 16 = true := by decide +kernel

theorem v_477_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 477 80 16 = true := by decide +kernel

theorem r_477 : recsK7OK T qscale den6 d14 lamN lamD l7 477 1 = true := recK7_of (n := 96) t_477 n_477 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_477_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_477_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_477_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_477_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_477_4 (v_477_5))))))

theorem t_478 : treeK7OK l7 478 = true := by decide +kernel

theorem n_478 : (recAt l7 478).2.2.2.length ≤ 128 := by decide +kernel

theorem v_478_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 0 16 = true := by decide +kernel

theorem v_478_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 16 16 = true := by decide +kernel

theorem v_478_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 32 16 = true := by decide +kernel

theorem v_478_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 48 16 = true := by decide +kernel

theorem v_478_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 64 16 = true := by decide +kernel

theorem v_478_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 80 16 = true := by decide +kernel

theorem v_478_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 96 16 = true := by decide +kernel

theorem v_478_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 478 112 16 = true := by decide +kernel

theorem r_478 : recsK7OK T qscale den6 d14 lamN lamD l7 478 1 = true := recK7_of (n := 128) t_478 n_478 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_478_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_478_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_478_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_478_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_478_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_478_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_478_6 (v_478_7))))))))

theorem t_479 : treeK7OK l7 479 = true := by decide +kernel

theorem n_479 : (recAt l7 479).2.2.2.length ≤ 48 := by decide +kernel

theorem v_479_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 479 0 16 = true := by decide +kernel

theorem v_479_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 479 16 16 = true := by decide +kernel

theorem v_479_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 479 32 16 = true := by decide +kernel

theorem r_479 : recsK7OK T qscale den6 d14 lamN lamD l7 479 1 = true := recK7_of (n := 48) t_479 n_479 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_479_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_479_1 (v_479_2)))

theorem t_480 : treeK7OK l7 480 = true := by decide +kernel

theorem n_480 : (recAt l7 480).2.2.2.length ≤ 96 := by decide +kernel

theorem v_480_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 480 0 16 = true := by decide +kernel

theorem v_480_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 480 16 16 = true := by decide +kernel

theorem v_480_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 480 32 16 = true := by decide +kernel

theorem v_480_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 480 48 16 = true := by decide +kernel

theorem v_480_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 480 64 16 = true := by decide +kernel

theorem v_480_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 480 80 16 = true := by decide +kernel

theorem r_480 : recsK7OK T qscale den6 d14 lamN lamD l7 480 1 = true := recK7_of (n := 96) t_480 n_480 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_480_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_480_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_480_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_480_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_480_4 (v_480_5))))))

theorem rs_477 : recsK7OK T qscale den6 d14 lamN lamD l7 477 4 = true := recsK7OK_succ (lo := 477) (n := 3) r_477 (recsK7OK_succ (lo := 478) (n := 2) r_478 (recsK7OK_succ (lo := 479) (n := 1) r_479 (r_480)))

end BeatAvg.K.K7
