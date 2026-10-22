import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_581 : treeK7OK l7 581 = true := by decide +kernel

theorem n_581 : (recAt l7 581).2.2.2.length ≤ 144 := by decide +kernel

theorem v_581_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 0 16 = true := by decide +kernel

theorem v_581_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 16 16 = true := by decide +kernel

theorem v_581_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 32 16 = true := by decide +kernel

theorem v_581_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 48 16 = true := by decide +kernel

theorem v_581_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 64 16 = true := by decide +kernel

theorem v_581_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 80 16 = true := by decide +kernel

theorem v_581_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 96 16 = true := by decide +kernel

theorem v_581_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 112 16 = true := by decide +kernel

theorem v_581_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 581 128 16 = true := by decide +kernel

theorem r_581 : recsK7OK T qscale den6 d14 lamN lamD l7 581 1 = true := recK7_of (n := 144) t_581 n_581 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_581_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_581_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_581_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_581_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_581_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_581_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_581_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_581_7 (v_581_8)))))))))

theorem t_582 : treeK7OK l7 582 = true := by decide +kernel

theorem n_582 : (recAt l7 582).2.2.2.length ≤ 80 := by decide +kernel

theorem v_582_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 582 0 16 = true := by decide +kernel

theorem v_582_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 582 16 16 = true := by decide +kernel

theorem v_582_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 582 32 16 = true := by decide +kernel

theorem v_582_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 582 48 16 = true := by decide +kernel

theorem v_582_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 582 64 16 = true := by decide +kernel

theorem r_582 : recsK7OK T qscale den6 d14 lamN lamD l7 582 1 = true := recK7_of (n := 80) t_582 n_582 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_582_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_582_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_582_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_582_3 (v_582_4)))))

theorem t_583 : treeK7OK l7 583 = true := by decide +kernel

theorem n_583 : (recAt l7 583).2.2.2.length ≤ 80 := by decide +kernel

theorem v_583_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 583 0 16 = true := by decide +kernel

theorem v_583_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 583 16 16 = true := by decide +kernel

theorem v_583_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 583 32 16 = true := by decide +kernel

theorem v_583_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 583 48 16 = true := by decide +kernel

theorem v_583_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 583 64 16 = true := by decide +kernel

theorem r_583 : recsK7OK T qscale den6 d14 lamN lamD l7 583 1 = true := recK7_of (n := 80) t_583 n_583 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_583_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_583_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_583_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_583_3 (v_583_4)))))

theorem t_584 : treeK7OK l7 584 = true := by decide +kernel

theorem n_584 : (recAt l7 584).2.2.2.length ≤ 80 := by decide +kernel

theorem v_584_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 584 0 16 = true := by decide +kernel

theorem v_584_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 584 16 16 = true := by decide +kernel

theorem v_584_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 584 32 16 = true := by decide +kernel

theorem v_584_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 584 48 16 = true := by decide +kernel

theorem v_584_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 584 64 16 = true := by decide +kernel

theorem r_584 : recsK7OK T qscale den6 d14 lamN lamD l7 584 1 = true := recK7_of (n := 80) t_584 n_584 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_584_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_584_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_584_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_584_3 (v_584_4)))))

theorem rs_581 : recsK7OK T qscale den6 d14 lamN lamD l7 581 4 = true := recsK7OK_succ (lo := 581) (n := 3) r_581 (recsK7OK_succ (lo := 582) (n := 2) r_582 (recsK7OK_succ (lo := 583) (n := 1) r_583 (r_584)))

end BeatAvg.K.K7
