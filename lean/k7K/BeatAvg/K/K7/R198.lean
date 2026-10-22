import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_676 : treeK7OK l7 676 = true := by decide +kernel

theorem n_676 : (recAt l7 676).2.2.2.length ≤ 128 := by decide +kernel

theorem v_676_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 0 16 = true := by decide +kernel

theorem v_676_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 16 16 = true := by decide +kernel

theorem v_676_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 32 16 = true := by decide +kernel

theorem v_676_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 48 16 = true := by decide +kernel

theorem v_676_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 64 16 = true := by decide +kernel

theorem v_676_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 80 16 = true := by decide +kernel

theorem v_676_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 96 16 = true := by decide +kernel

theorem v_676_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 676 112 16 = true := by decide +kernel

theorem r_676 : recsK7OK T qscale den6 d14 lamN lamD l7 676 1 = true := recK7_of (n := 128) t_676 n_676 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_676_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_676_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_676_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_676_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_676_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_676_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_676_6 (v_676_7))))))))

theorem t_677 : treeK7OK l7 677 = true := by decide +kernel

theorem n_677 : (recAt l7 677).2.2.2.length ≤ 96 := by decide +kernel

theorem v_677_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 677 0 16 = true := by decide +kernel

theorem v_677_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 677 16 16 = true := by decide +kernel

theorem v_677_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 677 32 16 = true := by decide +kernel

theorem v_677_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 677 48 16 = true := by decide +kernel

theorem v_677_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 677 64 16 = true := by decide +kernel

theorem v_677_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 677 80 16 = true := by decide +kernel

theorem r_677 : recsK7OK T qscale den6 d14 lamN lamD l7 677 1 = true := recK7_of (n := 96) t_677 n_677 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_677_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_677_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_677_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_677_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_677_4 (v_677_5))))))

theorem t_678 : treeK7OK l7 678 = true := by decide +kernel

theorem n_678 : (recAt l7 678).2.2.2.length ≤ 80 := by decide +kernel

theorem v_678_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 678 0 16 = true := by decide +kernel

theorem v_678_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 678 16 16 = true := by decide +kernel

theorem v_678_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 678 32 16 = true := by decide +kernel

theorem v_678_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 678 48 16 = true := by decide +kernel

theorem v_678_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 678 64 16 = true := by decide +kernel

theorem r_678 : recsK7OK T qscale den6 d14 lamN lamD l7 678 1 = true := recK7_of (n := 80) t_678 n_678 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_678_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_678_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_678_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_678_3 (v_678_4)))))

theorem t_679 : treeK7OK l7 679 = true := by decide +kernel

theorem n_679 : (recAt l7 679).2.2.2.length ≤ 96 := by decide +kernel

theorem v_679_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 679 0 16 = true := by decide +kernel

theorem v_679_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 679 16 16 = true := by decide +kernel

theorem v_679_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 679 32 16 = true := by decide +kernel

theorem v_679_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 679 48 16 = true := by decide +kernel

theorem v_679_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 679 64 16 = true := by decide +kernel

theorem v_679_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 679 80 16 = true := by decide +kernel

theorem r_679 : recsK7OK T qscale den6 d14 lamN lamD l7 679 1 = true := recK7_of (n := 96) t_679 n_679 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_679_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_679_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_679_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_679_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_679_4 (v_679_5))))))

theorem rs_676 : recsK7OK T qscale den6 d14 lamN lamD l7 676 4 = true := recsK7OK_succ (lo := 676) (n := 3) r_676 (recsK7OK_succ (lo := 677) (n := 2) r_677 (recsK7OK_succ (lo := 678) (n := 1) r_678 (r_679)))

end BeatAvg.K.K7
