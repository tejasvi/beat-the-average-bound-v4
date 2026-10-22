import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1003 : treeK7OK l7 1003 = true := by decide +kernel

theorem n_1003 : (recAt l7 1003).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1003_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 0 16 = true := by decide +kernel

theorem v_1003_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 16 16 = true := by decide +kernel

theorem v_1003_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 32 16 = true := by decide +kernel

theorem v_1003_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 48 16 = true := by decide +kernel

theorem v_1003_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 64 16 = true := by decide +kernel

theorem v_1003_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 80 16 = true := by decide +kernel

theorem v_1003_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 96 16 = true := by decide +kernel

theorem v_1003_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 112 16 = true := by decide +kernel

theorem v_1003_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1003 128 16 = true := by decide +kernel

theorem r_1003 : recsK7OK T qscale den6 d14 lamN lamD l7 1003 1 = true := recK7_of (n := 144) t_1003 n_1003 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1003_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1003_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1003_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1003_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1003_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1003_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1003_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1003_7 (v_1003_8)))))))))

theorem t_1004 : treeK7OK l7 1004 = true := by decide +kernel

theorem n_1004 : (recAt l7 1004).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1004_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1004 0 16 = true := by decide +kernel

theorem v_1004_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1004 16 16 = true := by decide +kernel

theorem v_1004_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1004 32 16 = true := by decide +kernel

theorem v_1004_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1004 48 16 = true := by decide +kernel

theorem v_1004_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1004 64 16 = true := by decide +kernel

theorem v_1004_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1004 80 16 = true := by decide +kernel

theorem v_1004_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1004 96 16 = true := by decide +kernel

theorem r_1004 : recsK7OK T qscale den6 d14 lamN lamD l7 1004 1 = true := recK7_of (n := 112) t_1004 n_1004 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1004_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1004_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1004_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1004_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1004_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1004_5 (v_1004_6)))))))

theorem t_1005 : treeK7OK l7 1005 = true := by decide +kernel

theorem n_1005 : (recAt l7 1005).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1005_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1005 0 16 = true := by decide +kernel

theorem v_1005_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1005 16 16 = true := by decide +kernel

theorem v_1005_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1005 32 16 = true := by decide +kernel

theorem v_1005_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1005 48 16 = true := by decide +kernel

theorem r_1005 : recsK7OK T qscale den6 d14 lamN lamD l7 1005 1 = true := recK7_of (n := 64) t_1005 n_1005 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1005_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1005_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1005_2 (v_1005_3))))

theorem t_1006 : treeK7OK l7 1006 = true := by decide +kernel

theorem n_1006 : (recAt l7 1006).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1006_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1006 0 16 = true := by decide +kernel

theorem v_1006_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1006 16 16 = true := by decide +kernel

theorem v_1006_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1006 32 16 = true := by decide +kernel

theorem v_1006_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1006 48 16 = true := by decide +kernel

theorem v_1006_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1006 64 16 = true := by decide +kernel

theorem v_1006_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1006 80 16 = true := by decide +kernel

theorem r_1006 : recsK7OK T qscale den6 d14 lamN lamD l7 1006 1 = true := recK7_of (n := 96) t_1006 n_1006 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1006_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1006_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1006_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1006_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1006_4 (v_1006_5))))))

theorem rs_1003 : recsK7OK T qscale den6 d14 lamN lamD l7 1003 4 = true := recsK7OK_succ (lo := 1003) (n := 3) r_1003 (recsK7OK_succ (lo := 1004) (n := 2) r_1004 (recsK7OK_succ (lo := 1005) (n := 1) r_1005 (r_1006)))

end BeatAvg.K.K7
