import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_34 : treeK7OK l7 34 = true := by decide +kernel

theorem n_34 : (recAt l7 34).2.2.2.length ≤ 144 := by decide +kernel

theorem v_34_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 0 16 = true := by decide +kernel

theorem v_34_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 16 16 = true := by decide +kernel

theorem v_34_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 32 16 = true := by decide +kernel

theorem v_34_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 48 16 = true := by decide +kernel

theorem v_34_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 64 16 = true := by decide +kernel

theorem v_34_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 80 16 = true := by decide +kernel

theorem v_34_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 96 16 = true := by decide +kernel

theorem v_34_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 112 16 = true := by decide +kernel

theorem v_34_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 34 128 16 = true := by decide +kernel

theorem r_34 : recsK7OK T qscale den6 d14 lamN lamD l7 34 1 = true := recK7_of (n := 144) t_34 n_34 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_34_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_34_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_34_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_34_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_34_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_34_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_34_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_34_7 (v_34_8)))))))))

theorem t_35 : treeK7OK l7 35 = true := by decide +kernel

theorem n_35 : (recAt l7 35).2.2.2.length ≤ 48 := by decide +kernel

theorem v_35_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 35 0 16 = true := by decide +kernel

theorem v_35_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 35 16 16 = true := by decide +kernel

theorem v_35_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 35 32 16 = true := by decide +kernel

theorem r_35 : recsK7OK T qscale den6 d14 lamN lamD l7 35 1 = true := recK7_of (n := 48) t_35 n_35 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_35_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_35_1 (v_35_2)))

theorem t_36 : treeK7OK l7 36 = true := by decide +kernel

theorem n_36 : (recAt l7 36).2.2.2.length ≤ 96 := by decide +kernel

theorem v_36_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 36 0 16 = true := by decide +kernel

theorem v_36_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 36 16 16 = true := by decide +kernel

theorem v_36_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 36 32 16 = true := by decide +kernel

theorem v_36_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 36 48 16 = true := by decide +kernel

theorem v_36_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 36 64 16 = true := by decide +kernel

theorem v_36_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 36 80 16 = true := by decide +kernel

theorem r_36 : recsK7OK T qscale den6 d14 lamN lamD l7 36 1 = true := recK7_of (n := 96) t_36 n_36 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_36_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_36_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_36_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_36_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_36_4 (v_36_5))))))

theorem t_37 : treeK7OK l7 37 = true := by decide +kernel

theorem n_37 : (recAt l7 37).2.2.2.length ≤ 96 := by decide +kernel

theorem v_37_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 37 0 16 = true := by decide +kernel

theorem v_37_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 37 16 16 = true := by decide +kernel

theorem v_37_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 37 32 16 = true := by decide +kernel

theorem v_37_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 37 48 16 = true := by decide +kernel

theorem v_37_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 37 64 16 = true := by decide +kernel

theorem v_37_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 37 80 16 = true := by decide +kernel

theorem r_37 : recsK7OK T qscale den6 d14 lamN lamD l7 37 1 = true := recK7_of (n := 96) t_37 n_37 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_37_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_37_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_37_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_37_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_37_4 (v_37_5))))))

theorem t_38 : treeK7OK l7 38 = true := by decide +kernel

theorem n_38 : (recAt l7 38).2.2.2.length ≤ 32 := by decide +kernel

theorem v_38_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 38 0 16 = true := by decide +kernel

theorem v_38_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 38 16 16 = true := by decide +kernel

theorem r_38 : recsK7OK T qscale den6 d14 lamN lamD l7 38 1 = true := recK7_of (n := 32) t_38 n_38 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_38_0 (v_38_1))

theorem rs_34 : recsK7OK T qscale den6 d14 lamN lamD l7 34 5 = true := recsK7OK_succ (lo := 34) (n := 4) r_34 (recsK7OK_succ (lo := 35) (n := 3) r_35 (recsK7OK_succ (lo := 36) (n := 2) r_36 (recsK7OK_succ (lo := 37) (n := 1) r_37 (r_38))))

end BeatAvg.K.K7
