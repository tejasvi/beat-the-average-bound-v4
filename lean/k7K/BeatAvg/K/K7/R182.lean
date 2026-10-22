import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_621 : treeK7OK l7 621 = true := by decide +kernel

theorem n_621 : (recAt l7 621).2.2.2.length ≤ 144 := by decide +kernel

theorem v_621_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 0 16 = true := by decide +kernel

theorem v_621_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 16 16 = true := by decide +kernel

theorem v_621_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 32 16 = true := by decide +kernel

theorem v_621_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 48 16 = true := by decide +kernel

theorem v_621_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 64 16 = true := by decide +kernel

theorem v_621_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 80 16 = true := by decide +kernel

theorem v_621_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 96 16 = true := by decide +kernel

theorem v_621_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 112 16 = true := by decide +kernel

theorem v_621_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 621 128 16 = true := by decide +kernel

theorem r_621 : recsK7OK T qscale den6 d14 lamN lamD l7 621 1 = true := recK7_of (n := 144) t_621 n_621 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_621_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_621_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_621_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_621_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_621_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_621_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_621_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_621_7 (v_621_8)))))))))

theorem t_622 : treeK7OK l7 622 = true := by decide +kernel

theorem n_622 : (recAt l7 622).2.2.2.length ≤ 64 := by decide +kernel

theorem v_622_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 622 0 16 = true := by decide +kernel

theorem v_622_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 622 16 16 = true := by decide +kernel

theorem v_622_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 622 32 16 = true := by decide +kernel

theorem v_622_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 622 48 16 = true := by decide +kernel

theorem r_622 : recsK7OK T qscale den6 d14 lamN lamD l7 622 1 = true := recK7_of (n := 64) t_622 n_622 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_622_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_622_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_622_2 (v_622_3))))

theorem t_623 : treeK7OK l7 623 = true := by decide +kernel

theorem n_623 : (recAt l7 623).2.2.2.length ≤ 32 := by decide +kernel

theorem v_623_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 623 0 16 = true := by decide +kernel

theorem v_623_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 623 16 16 = true := by decide +kernel

theorem r_623 : recsK7OK T qscale den6 d14 lamN lamD l7 623 1 = true := recK7_of (n := 32) t_623 n_623 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_623_0 (v_623_1))

theorem t_624 : treeK7OK l7 624 = true := by decide +kernel

theorem n_624 : (recAt l7 624).2.2.2.length ≤ 48 := by decide +kernel

theorem v_624_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 624 0 16 = true := by decide +kernel

theorem v_624_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 624 16 16 = true := by decide +kernel

theorem v_624_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 624 32 16 = true := by decide +kernel

theorem r_624 : recsK7OK T qscale den6 d14 lamN lamD l7 624 1 = true := recK7_of (n := 48) t_624 n_624 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_624_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_624_1 (v_624_2)))

theorem t_625 : treeK7OK l7 625 = true := by decide +kernel

theorem n_625 : (recAt l7 625).2.2.2.length ≤ 48 := by decide +kernel

theorem v_625_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 625 0 16 = true := by decide +kernel

theorem v_625_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 625 16 16 = true := by decide +kernel

theorem v_625_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 625 32 16 = true := by decide +kernel

theorem r_625 : recsK7OK T qscale den6 d14 lamN lamD l7 625 1 = true := recK7_of (n := 48) t_625 n_625 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_625_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_625_1 (v_625_2)))

theorem rs_621 : recsK7OK T qscale den6 d14 lamN lamD l7 621 5 = true := recsK7OK_succ (lo := 621) (n := 4) r_621 (recsK7OK_succ (lo := 622) (n := 3) r_622 (recsK7OK_succ (lo := 623) (n := 2) r_623 (recsK7OK_succ (lo := 624) (n := 1) r_624 (r_625))))

end BeatAvg.K.K7
