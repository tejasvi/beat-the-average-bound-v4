import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_646 : treeK7OK l7 646 = true := by decide +kernel

theorem n_646 : (recAt l7 646).2.2.2.length ≤ 144 := by decide +kernel

theorem v_646_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 0 16 = true := by decide +kernel

theorem v_646_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 16 16 = true := by decide +kernel

theorem v_646_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 32 16 = true := by decide +kernel

theorem v_646_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 48 16 = true := by decide +kernel

theorem v_646_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 64 16 = true := by decide +kernel

theorem v_646_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 80 16 = true := by decide +kernel

theorem v_646_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 96 16 = true := by decide +kernel

theorem v_646_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 112 16 = true := by decide +kernel

theorem v_646_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 646 128 16 = true := by decide +kernel

theorem r_646 : recsK7OK T qscale den6 d14 lamN lamD l7 646 1 = true := recK7_of (n := 144) t_646 n_646 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_646_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_646_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_646_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_646_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_646_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_646_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_646_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_646_7 (v_646_8)))))))))

theorem t_647 : treeK7OK l7 647 = true := by decide +kernel

theorem n_647 : (recAt l7 647).2.2.2.length ≤ 80 := by decide +kernel

theorem v_647_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 647 0 16 = true := by decide +kernel

theorem v_647_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 647 16 16 = true := by decide +kernel

theorem v_647_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 647 32 16 = true := by decide +kernel

theorem v_647_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 647 48 16 = true := by decide +kernel

theorem v_647_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 647 64 16 = true := by decide +kernel

theorem r_647 : recsK7OK T qscale den6 d14 lamN lamD l7 647 1 = true := recK7_of (n := 80) t_647 n_647 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_647_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_647_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_647_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_647_3 (v_647_4)))))

theorem t_648 : treeK7OK l7 648 = true := by decide +kernel

theorem n_648 : (recAt l7 648).2.2.2.length ≤ 80 := by decide +kernel

theorem v_648_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 648 0 16 = true := by decide +kernel

theorem v_648_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 648 16 16 = true := by decide +kernel

theorem v_648_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 648 32 16 = true := by decide +kernel

theorem v_648_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 648 48 16 = true := by decide +kernel

theorem v_648_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 648 64 16 = true := by decide +kernel

theorem r_648 : recsK7OK T qscale den6 d14 lamN lamD l7 648 1 = true := recK7_of (n := 80) t_648 n_648 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_648_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_648_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_648_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_648_3 (v_648_4)))))

theorem rs_646 : recsK7OK T qscale den6 d14 lamN lamD l7 646 3 = true := recsK7OK_succ (lo := 646) (n := 2) r_646 (recsK7OK_succ (lo := 647) (n := 1) r_647 (r_648))

end BeatAvg.K.K7
