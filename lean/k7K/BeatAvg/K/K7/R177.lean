import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_597 : treeK7OK l7 597 = true := by decide +kernel

theorem n_597 : (recAt l7 597).2.2.2.length ≤ 80 := by decide +kernel

theorem v_597_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 597 0 16 = true := by decide +kernel

theorem v_597_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 597 16 16 = true := by decide +kernel

theorem v_597_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 597 32 16 = true := by decide +kernel

theorem v_597_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 597 48 16 = true := by decide +kernel

theorem v_597_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 597 64 16 = true := by decide +kernel

theorem r_597 : recsK7OK T qscale den6 d14 lamN lamD l7 597 1 = true := recK7_of (n := 80) t_597 n_597 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_597_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_597_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_597_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_597_3 (v_597_4)))))

theorem t_598 : treeK7OK l7 598 = true := by decide +kernel

theorem n_598 : (recAt l7 598).2.2.2.length ≤ 64 := by decide +kernel

theorem v_598_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 598 0 16 = true := by decide +kernel

theorem v_598_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 598 16 16 = true := by decide +kernel

theorem v_598_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 598 32 16 = true := by decide +kernel

theorem v_598_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 598 48 16 = true := by decide +kernel

theorem r_598 : recsK7OK T qscale den6 d14 lamN lamD l7 598 1 = true := recK7_of (n := 64) t_598 n_598 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_598_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_598_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_598_2 (v_598_3))))

theorem t_599 : treeK7OK l7 599 = true := by decide +kernel

theorem n_599 : (recAt l7 599).2.2.2.length ≤ 64 := by decide +kernel

theorem v_599_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 599 0 16 = true := by decide +kernel

theorem v_599_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 599 16 16 = true := by decide +kernel

theorem v_599_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 599 32 16 = true := by decide +kernel

theorem v_599_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 599 48 16 = true := by decide +kernel

theorem r_599 : recsK7OK T qscale den6 d14 lamN lamD l7 599 1 = true := recK7_of (n := 64) t_599 n_599 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_599_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_599_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_599_2 (v_599_3))))

theorem t_600 : treeK7OK l7 600 = true := by decide +kernel

theorem n_600 : (recAt l7 600).2.2.2.length ≤ 48 := by decide +kernel

theorem v_600_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 600 0 16 = true := by decide +kernel

theorem v_600_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 600 16 16 = true := by decide +kernel

theorem v_600_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 600 32 16 = true := by decide +kernel

theorem r_600 : recsK7OK T qscale den6 d14 lamN lamD l7 600 1 = true := recK7_of (n := 48) t_600 n_600 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_600_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_600_1 (v_600_2)))

theorem t_601 : treeK7OK l7 601 = true := by decide +kernel

theorem n_601 : (recAt l7 601).2.2.2.length ≤ 96 := by decide +kernel

theorem v_601_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 601 0 16 = true := by decide +kernel

theorem v_601_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 601 16 16 = true := by decide +kernel

theorem v_601_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 601 32 16 = true := by decide +kernel

theorem v_601_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 601 48 16 = true := by decide +kernel

theorem v_601_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 601 64 16 = true := by decide +kernel

theorem v_601_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 601 80 16 = true := by decide +kernel

theorem r_601 : recsK7OK T qscale den6 d14 lamN lamD l7 601 1 = true := recK7_of (n := 96) t_601 n_601 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_601_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_601_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_601_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_601_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_601_4 (v_601_5))))))

theorem t_602 : treeK7OK l7 602 = true := by decide +kernel

theorem n_602 : (recAt l7 602).2.2.2.length ≤ 64 := by decide +kernel

theorem v_602_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 602 0 16 = true := by decide +kernel

theorem v_602_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 602 16 16 = true := by decide +kernel

theorem v_602_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 602 32 16 = true := by decide +kernel

theorem v_602_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 602 48 16 = true := by decide +kernel

theorem r_602 : recsK7OK T qscale den6 d14 lamN lamD l7 602 1 = true := recK7_of (n := 64) t_602 n_602 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_602_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_602_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_602_2 (v_602_3))))

theorem t_603 : treeK7OK l7 603 = true := by decide +kernel

theorem n_603 : (recAt l7 603).2.2.2.length ≤ 32 := by decide +kernel

theorem v_603_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 603 0 16 = true := by decide +kernel

theorem v_603_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 603 16 16 = true := by decide +kernel

theorem r_603 : recsK7OK T qscale den6 d14 lamN lamD l7 603 1 = true := recK7_of (n := 32) t_603 n_603 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_603_0 (v_603_1))

theorem rs_597 : recsK7OK T qscale den6 d14 lamN lamD l7 597 7 = true := recsK7OK_succ (lo := 597) (n := 6) r_597 (recsK7OK_succ (lo := 598) (n := 5) r_598 (recsK7OK_succ (lo := 599) (n := 4) r_599 (recsK7OK_succ (lo := 600) (n := 3) r_600 (recsK7OK_succ (lo := 601) (n := 2) r_601 (recsK7OK_succ (lo := 602) (n := 1) r_602 (r_603))))))

end BeatAvg.K.K7
