import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_594 : treeK7OK l7 594 = true := by decide +kernel

theorem n_594 : (recAt l7 594).2.2.2.length ≤ 144 := by decide +kernel

theorem v_594_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 0 16 = true := by decide +kernel

theorem v_594_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 16 16 = true := by decide +kernel

theorem v_594_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 32 16 = true := by decide +kernel

theorem v_594_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 48 16 = true := by decide +kernel

theorem v_594_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 64 16 = true := by decide +kernel

theorem v_594_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 80 16 = true := by decide +kernel

theorem v_594_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 96 16 = true := by decide +kernel

theorem v_594_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 112 16 = true := by decide +kernel

theorem v_594_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 594 128 16 = true := by decide +kernel

theorem r_594 : recsK7OK T qscale den6 d14 lamN lamD l7 594 1 = true := recK7_of (n := 144) t_594 n_594 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_594_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_594_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_594_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_594_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_594_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_594_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_594_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_594_7 (v_594_8)))))))))

theorem t_595 : treeK7OK l7 595 = true := by decide +kernel

theorem n_595 : (recAt l7 595).2.2.2.length ≤ 112 := by decide +kernel

theorem v_595_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 595 0 16 = true := by decide +kernel

theorem v_595_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 595 16 16 = true := by decide +kernel

theorem v_595_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 595 32 16 = true := by decide +kernel

theorem v_595_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 595 48 16 = true := by decide +kernel

theorem v_595_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 595 64 16 = true := by decide +kernel

theorem v_595_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 595 80 16 = true := by decide +kernel

theorem v_595_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 595 96 16 = true := by decide +kernel

theorem r_595 : recsK7OK T qscale den6 d14 lamN lamD l7 595 1 = true := recK7_of (n := 112) t_595 n_595 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_595_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_595_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_595_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_595_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_595_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_595_5 (v_595_6)))))))

theorem t_596 : treeK7OK l7 596 = true := by decide +kernel

theorem n_596 : (recAt l7 596).2.2.2.length ≤ 128 := by decide +kernel

theorem v_596_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 0 16 = true := by decide +kernel

theorem v_596_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 16 16 = true := by decide +kernel

theorem v_596_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 32 16 = true := by decide +kernel

theorem v_596_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 48 16 = true := by decide +kernel

theorem v_596_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 64 16 = true := by decide +kernel

theorem v_596_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 80 16 = true := by decide +kernel

theorem v_596_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 96 16 = true := by decide +kernel

theorem v_596_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 596 112 16 = true := by decide +kernel

theorem r_596 : recsK7OK T qscale den6 d14 lamN lamD l7 596 1 = true := recK7_of (n := 128) t_596 n_596 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_596_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_596_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_596_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_596_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_596_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_596_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_596_6 (v_596_7))))))))

theorem rs_594 : recsK7OK T qscale den6 d14 lamN lamD l7 594 3 = true := recsK7OK_succ (lo := 594) (n := 2) r_594 (recsK7OK_succ (lo := 595) (n := 1) r_595 (r_596))

end BeatAvg.K.K7
