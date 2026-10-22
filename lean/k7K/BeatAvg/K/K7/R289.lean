import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_898 : treeK7OK l7 898 = true := by decide +kernel

theorem n_898 : (recAt l7 898).2.2.2.length ≤ 176 := by decide +kernel

theorem v_898_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 0 16 = true := by decide +kernel

theorem v_898_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 16 16 = true := by decide +kernel

theorem v_898_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 32 16 = true := by decide +kernel

theorem v_898_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 48 16 = true := by decide +kernel

theorem v_898_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 64 16 = true := by decide +kernel

theorem v_898_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 80 16 = true := by decide +kernel

theorem v_898_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 96 16 = true := by decide +kernel

theorem v_898_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 112 16 = true := by decide +kernel

theorem v_898_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 128 16 = true := by decide +kernel

theorem v_898_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 144 16 = true := by decide +kernel

theorem v_898_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 898 160 16 = true := by decide +kernel

theorem r_898 : recsK7OK T qscale den6 d14 lamN lamD l7 898 1 = true := recK7_of (n := 176) t_898 n_898 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_898_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_898_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_898_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_898_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_898_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_898_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_898_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_898_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_898_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_898_9 (v_898_10)))))))))))

theorem t_899 : treeK7OK l7 899 = true := by decide +kernel

theorem n_899 : (recAt l7 899).2.2.2.length ≤ 160 := by decide +kernel

theorem v_899_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 0 16 = true := by decide +kernel

theorem v_899_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 16 16 = true := by decide +kernel

theorem v_899_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 32 16 = true := by decide +kernel

theorem v_899_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 48 16 = true := by decide +kernel

theorem v_899_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 64 16 = true := by decide +kernel

theorem v_899_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 80 16 = true := by decide +kernel

theorem v_899_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 96 16 = true := by decide +kernel

theorem v_899_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 112 16 = true := by decide +kernel

theorem v_899_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 128 16 = true := by decide +kernel

theorem v_899_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 899 144 16 = true := by decide +kernel

theorem r_899 : recsK7OK T qscale den6 d14 lamN lamD l7 899 1 = true := recK7_of (n := 160) t_899 n_899 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_899_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_899_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_899_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_899_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_899_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_899_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_899_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_899_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_899_8 (v_899_9))))))))))

theorem rs_898 : recsK7OK T qscale den6 d14 lamN lamD l7 898 2 = true := recsK7OK_succ (lo := 898) (n := 1) r_898 (r_899)

end BeatAvg.K.K7
