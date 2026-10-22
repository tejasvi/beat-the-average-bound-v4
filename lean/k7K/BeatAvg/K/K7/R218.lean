import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_746 : treeK7OK l7 746 = true := by decide +kernel

theorem n_746 : (recAt l7 746).2.2.2.length ≤ 192 := by decide +kernel

theorem v_746_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 0 16 = true := by decide +kernel

theorem v_746_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 16 16 = true := by decide +kernel

theorem v_746_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 32 16 = true := by decide +kernel

theorem v_746_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 48 16 = true := by decide +kernel

theorem v_746_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 64 16 = true := by decide +kernel

theorem v_746_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 80 16 = true := by decide +kernel

theorem v_746_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 96 16 = true := by decide +kernel

theorem v_746_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 112 16 = true := by decide +kernel

theorem v_746_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 128 16 = true := by decide +kernel

theorem v_746_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 144 16 = true := by decide +kernel

theorem v_746_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 160 16 = true := by decide +kernel

theorem v_746_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 746 176 16 = true := by decide +kernel

theorem r_746 : recsK7OK T qscale den6 d14 lamN lamD l7 746 1 = true := recK7_of (n := 192) t_746 n_746 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_746_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_746_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_746_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_746_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_746_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_746_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_746_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_746_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_746_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_746_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_746_10 (v_746_11))))))))))))

theorem t_747 : treeK7OK l7 747 = true := by decide +kernel

theorem n_747 : (recAt l7 747).2.2.2.length ≤ 144 := by decide +kernel

theorem v_747_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 0 16 = true := by decide +kernel

theorem v_747_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 16 16 = true := by decide +kernel

theorem v_747_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 32 16 = true := by decide +kernel

theorem v_747_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 48 16 = true := by decide +kernel

theorem v_747_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 64 16 = true := by decide +kernel

theorem v_747_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 80 16 = true := by decide +kernel

theorem v_747_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 96 16 = true := by decide +kernel

theorem v_747_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 112 16 = true := by decide +kernel

theorem v_747_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 747 128 16 = true := by decide +kernel

theorem r_747 : recsK7OK T qscale den6 d14 lamN lamD l7 747 1 = true := recK7_of (n := 144) t_747 n_747 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_747_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_747_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_747_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_747_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_747_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_747_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_747_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_747_7 (v_747_8)))))))))

theorem rs_746 : recsK7OK T qscale den6 d14 lamN lamD l7 746 2 = true := recsK7OK_succ (lo := 746) (n := 1) r_746 (r_747)

end BeatAvg.K.K7
