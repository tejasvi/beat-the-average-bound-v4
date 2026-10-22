import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_692 : treeK7OK l7 692 = true := by decide +kernel

theorem n_692 : (recAt l7 692).2.2.2.length ≤ 48 := by decide +kernel

theorem v_692_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 692 0 16 = true := by decide +kernel

theorem v_692_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 692 16 16 = true := by decide +kernel

theorem v_692_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 692 32 16 = true := by decide +kernel

theorem r_692 : recsK7OK T qscale den6 d14 lamN lamD l7 692 1 = true := recK7_of (n := 48) t_692 n_692 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_692_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_692_1 (v_692_2)))

theorem t_693 : treeK7OK l7 693 = true := by decide +kernel

theorem n_693 : (recAt l7 693).2.2.2.length ≤ 32 := by decide +kernel

theorem v_693_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 693 0 16 = true := by decide +kernel

theorem v_693_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 693 16 16 = true := by decide +kernel

theorem r_693 : recsK7OK T qscale den6 d14 lamN lamD l7 693 1 = true := recK7_of (n := 32) t_693 n_693 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_693_0 (v_693_1))

theorem t_694 : treeK7OK l7 694 = true := by decide +kernel

theorem n_694 : (recAt l7 694).2.2.2.length ≤ 48 := by decide +kernel

theorem v_694_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 694 0 16 = true := by decide +kernel

theorem v_694_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 694 16 16 = true := by decide +kernel

theorem v_694_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 694 32 16 = true := by decide +kernel

theorem r_694 : recsK7OK T qscale den6 d14 lamN lamD l7 694 1 = true := recK7_of (n := 48) t_694 n_694 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_694_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_694_1 (v_694_2)))

theorem t_695 : treeK7OK l7 695 = true := by decide +kernel

theorem n_695 : (recAt l7 695).2.2.2.length ≤ 32 := by decide +kernel

theorem v_695_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 695 0 16 = true := by decide +kernel

theorem v_695_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 695 16 16 = true := by decide +kernel

theorem r_695 : recsK7OK T qscale den6 d14 lamN lamD l7 695 1 = true := recK7_of (n := 32) t_695 n_695 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_695_0 (v_695_1))

theorem t_696 : treeK7OK l7 696 = true := by decide +kernel

theorem n_696 : (recAt l7 696).2.2.2.length ≤ 48 := by decide +kernel

theorem v_696_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 696 0 16 = true := by decide +kernel

theorem v_696_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 696 16 16 = true := by decide +kernel

theorem v_696_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 696 32 16 = true := by decide +kernel

theorem r_696 : recsK7OK T qscale den6 d14 lamN lamD l7 696 1 = true := recK7_of (n := 48) t_696 n_696 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_696_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_696_1 (v_696_2)))

theorem t_697 : treeK7OK l7 697 = true := by decide +kernel

theorem n_697 : (recAt l7 697).2.2.2.length ≤ 32 := by decide +kernel

theorem v_697_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 697 0 16 = true := by decide +kernel

theorem v_697_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 697 16 16 = true := by decide +kernel

theorem r_697 : recsK7OK T qscale den6 d14 lamN lamD l7 697 1 = true := recK7_of (n := 32) t_697 n_697 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_697_0 (v_697_1))

theorem t_698 : treeK7OK l7 698 = true := by decide +kernel

theorem n_698 : (recAt l7 698).2.2.2.length ≤ 96 := by decide +kernel

theorem v_698_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 698 0 16 = true := by decide +kernel

theorem v_698_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 698 16 16 = true := by decide +kernel

theorem v_698_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 698 32 16 = true := by decide +kernel

theorem v_698_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 698 48 16 = true := by decide +kernel

theorem v_698_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 698 64 16 = true := by decide +kernel

theorem v_698_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 698 80 16 = true := by decide +kernel

theorem r_698 : recsK7OK T qscale den6 d14 lamN lamD l7 698 1 = true := recK7_of (n := 96) t_698 n_698 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_698_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_698_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_698_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_698_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_698_4 (v_698_5))))))

theorem t_699 : treeK7OK l7 699 = true := by decide +kernel

theorem n_699 : (recAt l7 699).2.2.2.length ≤ 96 := by decide +kernel

theorem v_699_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 699 0 16 = true := by decide +kernel

theorem v_699_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 699 16 16 = true := by decide +kernel

theorem v_699_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 699 32 16 = true := by decide +kernel

theorem v_699_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 699 48 16 = true := by decide +kernel

theorem v_699_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 699 64 16 = true := by decide +kernel

theorem v_699_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 699 80 16 = true := by decide +kernel

theorem r_699 : recsK7OK T qscale den6 d14 lamN lamD l7 699 1 = true := recK7_of (n := 96) t_699 n_699 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_699_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_699_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_699_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_699_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_699_4 (v_699_5))))))

theorem rs_692 : recsK7OK T qscale den6 d14 lamN lamD l7 692 8 = true := recsK7OK_succ (lo := 692) (n := 7) r_692 (recsK7OK_succ (lo := 693) (n := 6) r_693 (recsK7OK_succ (lo := 694) (n := 5) r_694 (recsK7OK_succ (lo := 695) (n := 4) r_695 (recsK7OK_succ (lo := 696) (n := 3) r_696 (recsK7OK_succ (lo := 697) (n := 2) r_697 (recsK7OK_succ (lo := 698) (n := 1) r_698 (r_699)))))))

end BeatAvg.K.K7
