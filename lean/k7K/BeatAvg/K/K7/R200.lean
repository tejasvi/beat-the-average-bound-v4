import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_683 : treeK7OK l7 683 = true := by decide +kernel

theorem n_683 : (recAt l7 683).2.2.2.length ≤ 128 := by decide +kernel

theorem v_683_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 0 16 = true := by decide +kernel

theorem v_683_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 16 16 = true := by decide +kernel

theorem v_683_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 32 16 = true := by decide +kernel

theorem v_683_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 48 16 = true := by decide +kernel

theorem v_683_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 64 16 = true := by decide +kernel

theorem v_683_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 80 16 = true := by decide +kernel

theorem v_683_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 96 16 = true := by decide +kernel

theorem v_683_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 683 112 16 = true := by decide +kernel

theorem r_683 : recsK7OK T qscale den6 d14 lamN lamD l7 683 1 = true := recK7_of (n := 128) t_683 n_683 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_683_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_683_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_683_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_683_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_683_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_683_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_683_6 (v_683_7))))))))

theorem t_684 : treeK7OK l7 684 = true := by decide +kernel

theorem n_684 : (recAt l7 684).2.2.2.length ≤ 32 := by decide +kernel

theorem v_684_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 684 0 16 = true := by decide +kernel

theorem v_684_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 684 16 16 = true := by decide +kernel

theorem r_684 : recsK7OK T qscale den6 d14 lamN lamD l7 684 1 = true := recK7_of (n := 32) t_684 n_684 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_684_0 (v_684_1))

theorem t_685 : treeK7OK l7 685 = true := by decide +kernel

theorem n_685 : (recAt l7 685).2.2.2.length ≤ 144 := by decide +kernel

theorem v_685_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 0 16 = true := by decide +kernel

theorem v_685_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 16 16 = true := by decide +kernel

theorem v_685_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 32 16 = true := by decide +kernel

theorem v_685_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 48 16 = true := by decide +kernel

theorem v_685_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 64 16 = true := by decide +kernel

theorem v_685_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 80 16 = true := by decide +kernel

theorem v_685_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 96 16 = true := by decide +kernel

theorem v_685_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 112 16 = true := by decide +kernel

theorem v_685_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 685 128 16 = true := by decide +kernel

theorem r_685 : recsK7OK T qscale den6 d14 lamN lamD l7 685 1 = true := recK7_of (n := 144) t_685 n_685 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_685_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_685_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_685_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_685_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_685_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_685_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_685_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_685_7 (v_685_8)))))))))

theorem t_686 : treeK7OK l7 686 = true := by decide +kernel

theorem n_686 : (recAt l7 686).2.2.2.length ≤ 64 := by decide +kernel

theorem v_686_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 686 0 16 = true := by decide +kernel

theorem v_686_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 686 16 16 = true := by decide +kernel

theorem v_686_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 686 32 16 = true := by decide +kernel

theorem v_686_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 686 48 16 = true := by decide +kernel

theorem r_686 : recsK7OK T qscale den6 d14 lamN lamD l7 686 1 = true := recK7_of (n := 64) t_686 n_686 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_686_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_686_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_686_2 (v_686_3))))

theorem rs_683 : recsK7OK T qscale den6 d14 lamN lamD l7 683 4 = true := recsK7OK_succ (lo := 683) (n := 3) r_683 (recsK7OK_succ (lo := 684) (n := 2) r_684 (recsK7OK_succ (lo := 685) (n := 1) r_685 (r_686)))

end BeatAvg.K.K7
