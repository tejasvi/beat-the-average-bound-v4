import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1049 : treeK7OK l7 1049 = true := by decide +kernel

theorem n_1049 : (recAt l7 1049).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1049_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 0 16 = true := by decide +kernel

theorem v_1049_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 16 16 = true := by decide +kernel

theorem v_1049_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 32 16 = true := by decide +kernel

theorem v_1049_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 48 16 = true := by decide +kernel

theorem v_1049_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 64 16 = true := by decide +kernel

theorem v_1049_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 80 16 = true := by decide +kernel

theorem v_1049_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 96 16 = true := by decide +kernel

theorem v_1049_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 112 16 = true := by decide +kernel

theorem v_1049_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1049 128 16 = true := by decide +kernel

theorem r_1049 : recsK7OK T qscale den6 d14 lamN lamD l7 1049 1 = true := recK7_of (n := 144) t_1049 n_1049 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1049_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1049_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1049_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1049_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1049_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1049_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1049_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1049_7 (v_1049_8)))))))))

theorem t_1050 : treeK7OK l7 1050 = true := by decide +kernel

theorem n_1050 : (recAt l7 1050).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1050_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 0 16 = true := by decide +kernel

theorem v_1050_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 16 16 = true := by decide +kernel

theorem v_1050_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 32 16 = true := by decide +kernel

theorem v_1050_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 48 16 = true := by decide +kernel

theorem v_1050_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 64 16 = true := by decide +kernel

theorem v_1050_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 80 16 = true := by decide +kernel

theorem v_1050_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 96 16 = true := by decide +kernel

theorem v_1050_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 112 16 = true := by decide +kernel

theorem v_1050_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1050 128 16 = true := by decide +kernel

theorem r_1050 : recsK7OK T qscale den6 d14 lamN lamD l7 1050 1 = true := recK7_of (n := 144) t_1050 n_1050 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1050_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1050_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1050_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1050_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1050_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1050_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1050_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1050_7 (v_1050_8)))))))))

theorem t_1051 : treeK7OK l7 1051 = true := by decide +kernel

theorem n_1051 : (recAt l7 1051).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1051_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1051 0 16 = true := by decide +kernel

theorem v_1051_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1051 16 16 = true := by decide +kernel

theorem v_1051_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1051 32 16 = true := by decide +kernel

theorem v_1051_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1051 48 16 = true := by decide +kernel

theorem v_1051_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1051 64 16 = true := by decide +kernel

theorem v_1051_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1051 80 16 = true := by decide +kernel

theorem r_1051 : recsK7OK T qscale den6 d14 lamN lamD l7 1051 1 = true := recK7_of (n := 96) t_1051 n_1051 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1051_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1051_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1051_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1051_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1051_4 (v_1051_5))))))

theorem rs_1049 : recsK7OK T qscale den6 d14 lamN lamD l7 1049 3 = true := recsK7OK_succ (lo := 1049) (n := 2) r_1049 (recsK7OK_succ (lo := 1050) (n := 1) r_1050 (r_1051))

end BeatAvg.K.K7
