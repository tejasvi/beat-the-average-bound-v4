import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_42 : treeK7OK l7 42 = true := by decide +kernel

theorem n_42 : (recAt l7 42).2.2.2.length ≤ 160 := by decide +kernel

theorem v_42_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 0 16 = true := by decide +kernel

theorem v_42_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 16 16 = true := by decide +kernel

theorem v_42_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 32 16 = true := by decide +kernel

theorem v_42_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 48 16 = true := by decide +kernel

theorem v_42_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 64 16 = true := by decide +kernel

theorem v_42_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 80 16 = true := by decide +kernel

theorem v_42_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 96 16 = true := by decide +kernel

theorem v_42_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 112 16 = true := by decide +kernel

theorem v_42_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 128 16 = true := by decide +kernel

theorem v_42_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 42 144 16 = true := by decide +kernel

theorem r_42 : recsK7OK T qscale den6 d14 lamN lamD l7 42 1 = true := recK7_of (n := 160) t_42 n_42 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_42_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_42_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_42_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_42_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_42_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_42_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_42_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_42_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_42_8 (v_42_9))))))))))

theorem t_43 : treeK7OK l7 43 = true := by decide +kernel

theorem n_43 : (recAt l7 43).2.2.2.length ≤ 112 := by decide +kernel

theorem v_43_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 43 0 16 = true := by decide +kernel

theorem v_43_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 43 16 16 = true := by decide +kernel

theorem v_43_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 43 32 16 = true := by decide +kernel

theorem v_43_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 43 48 16 = true := by decide +kernel

theorem v_43_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 43 64 16 = true := by decide +kernel

theorem v_43_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 43 80 16 = true := by decide +kernel

theorem v_43_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 43 96 16 = true := by decide +kernel

theorem r_43 : recsK7OK T qscale den6 d14 lamN lamD l7 43 1 = true := recK7_of (n := 112) t_43 n_43 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_43_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_43_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_43_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_43_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_43_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_43_5 (v_43_6)))))))

theorem t_44 : treeK7OK l7 44 = true := by decide +kernel

theorem n_44 : (recAt l7 44).2.2.2.length ≤ 64 := by decide +kernel

theorem v_44_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 44 0 16 = true := by decide +kernel

theorem v_44_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 44 16 16 = true := by decide +kernel

theorem v_44_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 44 32 16 = true := by decide +kernel

theorem v_44_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 44 48 16 = true := by decide +kernel

theorem r_44 : recsK7OK T qscale den6 d14 lamN lamD l7 44 1 = true := recK7_of (n := 64) t_44 n_44 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_44_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_44_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_44_2 (v_44_3))))

theorem t_45 : treeK7OK l7 45 = true := by decide +kernel

theorem n_45 : (recAt l7 45).2.2.2.length ≤ 48 := by decide +kernel

theorem v_45_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 45 0 16 = true := by decide +kernel

theorem v_45_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 45 16 16 = true := by decide +kernel

theorem v_45_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 45 32 16 = true := by decide +kernel

theorem r_45 : recsK7OK T qscale den6 d14 lamN lamD l7 45 1 = true := recK7_of (n := 48) t_45 n_45 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_45_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_45_1 (v_45_2)))

theorem t_46 : treeK7OK l7 46 = true := by decide +kernel

theorem n_46 : (recAt l7 46).2.2.2.length ≤ 32 := by decide +kernel

theorem v_46_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 46 0 16 = true := by decide +kernel

theorem v_46_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 46 16 16 = true := by decide +kernel

theorem r_46 : recsK7OK T qscale den6 d14 lamN lamD l7 46 1 = true := recK7_of (n := 32) t_46 n_46 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_46_0 (v_46_1))

theorem rs_42 : recsK7OK T qscale den6 d14 lamN lamD l7 42 5 = true := recsK7OK_succ (lo := 42) (n := 4) r_42 (recsK7OK_succ (lo := 43) (n := 3) r_43 (recsK7OK_succ (lo := 44) (n := 2) r_44 (recsK7OK_succ (lo := 45) (n := 1) r_45 (r_46))))

end BeatAvg.K.K7
