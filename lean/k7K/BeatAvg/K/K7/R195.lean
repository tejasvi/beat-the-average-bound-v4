import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_663 : treeK7OK l7 663 = true := by decide +kernel

theorem n_663 : (recAt l7 663).2.2.2.length ≤ 48 := by decide +kernel

theorem v_663_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 663 0 16 = true := by decide +kernel

theorem v_663_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 663 16 16 = true := by decide +kernel

theorem v_663_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 663 32 16 = true := by decide +kernel

theorem r_663 : recsK7OK T qscale den6 d14 lamN lamD l7 663 1 = true := recK7_of (n := 48) t_663 n_663 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_663_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_663_1 (v_663_2)))

theorem t_664 : treeK7OK l7 664 = true := by decide +kernel

theorem n_664 : (recAt l7 664).2.2.2.length ≤ 80 := by decide +kernel

theorem v_664_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 664 0 16 = true := by decide +kernel

theorem v_664_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 664 16 16 = true := by decide +kernel

theorem v_664_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 664 32 16 = true := by decide +kernel

theorem v_664_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 664 48 16 = true := by decide +kernel

theorem v_664_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 664 64 16 = true := by decide +kernel

theorem r_664 : recsK7OK T qscale den6 d14 lamN lamD l7 664 1 = true := recK7_of (n := 80) t_664 n_664 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_664_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_664_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_664_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_664_3 (v_664_4)))))

theorem t_665 : treeK7OK l7 665 = true := by decide +kernel

theorem n_665 : (recAt l7 665).2.2.2.length ≤ 48 := by decide +kernel

theorem v_665_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 665 0 16 = true := by decide +kernel

theorem v_665_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 665 16 16 = true := by decide +kernel

theorem v_665_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 665 32 16 = true := by decide +kernel

theorem r_665 : recsK7OK T qscale den6 d14 lamN lamD l7 665 1 = true := recK7_of (n := 48) t_665 n_665 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_665_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_665_1 (v_665_2)))

theorem t_666 : treeK7OK l7 666 = true := by decide +kernel

theorem n_666 : (recAt l7 666).2.2.2.length ≤ 32 := by decide +kernel

theorem v_666_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 666 0 16 = true := by decide +kernel

theorem v_666_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 666 16 16 = true := by decide +kernel

theorem r_666 : recsK7OK T qscale den6 d14 lamN lamD l7 666 1 = true := recK7_of (n := 32) t_666 n_666 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_666_0 (v_666_1))

theorem t_667 : treeK7OK l7 667 = true := by decide +kernel

theorem n_667 : (recAt l7 667).2.2.2.length ≤ 128 := by decide +kernel

theorem v_667_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 0 16 = true := by decide +kernel

theorem v_667_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 16 16 = true := by decide +kernel

theorem v_667_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 32 16 = true := by decide +kernel

theorem v_667_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 48 16 = true := by decide +kernel

theorem v_667_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 64 16 = true := by decide +kernel

theorem v_667_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 80 16 = true := by decide +kernel

theorem v_667_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 96 16 = true := by decide +kernel

theorem v_667_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 667 112 16 = true := by decide +kernel

theorem r_667 : recsK7OK T qscale den6 d14 lamN lamD l7 667 1 = true := recK7_of (n := 128) t_667 n_667 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_667_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_667_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_667_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_667_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_667_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_667_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_667_6 (v_667_7))))))))

theorem t_668 : treeK7OK l7 668 = true := by decide +kernel

theorem n_668 : (recAt l7 668).2.2.2.length ≤ 80 := by decide +kernel

theorem v_668_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 668 0 16 = true := by decide +kernel

theorem v_668_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 668 16 16 = true := by decide +kernel

theorem v_668_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 668 32 16 = true := by decide +kernel

theorem v_668_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 668 48 16 = true := by decide +kernel

theorem v_668_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 668 64 16 = true := by decide +kernel

theorem r_668 : recsK7OK T qscale den6 d14 lamN lamD l7 668 1 = true := recK7_of (n := 80) t_668 n_668 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_668_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_668_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_668_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_668_3 (v_668_4)))))

theorem t_669 : treeK7OK l7 669 = true := by decide +kernel

theorem n_669 : (recAt l7 669).2.2.2.length ≤ 48 := by decide +kernel

theorem v_669_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 669 0 16 = true := by decide +kernel

theorem v_669_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 669 16 16 = true := by decide +kernel

theorem v_669_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 669 32 16 = true := by decide +kernel

theorem r_669 : recsK7OK T qscale den6 d14 lamN lamD l7 669 1 = true := recK7_of (n := 48) t_669 n_669 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_669_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_669_1 (v_669_2)))

theorem rs_663 : recsK7OK T qscale den6 d14 lamN lamD l7 663 7 = true := recsK7OK_succ (lo := 663) (n := 6) r_663 (recsK7OK_succ (lo := 664) (n := 5) r_664 (recsK7OK_succ (lo := 665) (n := 4) r_665 (recsK7OK_succ (lo := 666) (n := 3) r_666 (recsK7OK_succ (lo := 667) (n := 2) r_667 (recsK7OK_succ (lo := 668) (n := 1) r_668 (r_669))))))

end BeatAvg.K.K7
