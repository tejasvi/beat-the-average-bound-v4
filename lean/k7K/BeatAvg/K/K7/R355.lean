import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1065 : treeK7OK l7 1065 = true := by decide +kernel

theorem n_1065 : (recAt l7 1065).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1065_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1065 0 16 = true := by decide +kernel

theorem v_1065_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1065 16 16 = true := by decide +kernel

theorem v_1065_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1065 32 16 = true := by decide +kernel

theorem v_1065_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1065 48 16 = true := by decide +kernel

theorem r_1065 : recsK7OK T qscale den6 d14 lamN lamD l7 1065 1 = true := recK7_of (n := 64) t_1065 n_1065 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1065_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1065_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1065_2 (v_1065_3))))

theorem t_1066 : treeK7OK l7 1066 = true := by decide +kernel

theorem n_1066 : (recAt l7 1066).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1066_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 0 16 = true := by decide +kernel

theorem v_1066_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 16 16 = true := by decide +kernel

theorem v_1066_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 32 16 = true := by decide +kernel

theorem v_1066_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 48 16 = true := by decide +kernel

theorem v_1066_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 64 16 = true := by decide +kernel

theorem v_1066_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 80 16 = true := by decide +kernel

theorem v_1066_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 96 16 = true := by decide +kernel

theorem v_1066_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 112 16 = true := by decide +kernel

theorem v_1066_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 128 16 = true := by decide +kernel

theorem v_1066_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1066 144 16 = true := by decide +kernel

theorem r_1066 : recsK7OK T qscale den6 d14 lamN lamD l7 1066 1 = true := recK7_of (n := 160) t_1066 n_1066 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1066_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1066_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1066_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1066_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1066_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1066_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1066_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1066_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1066_8 (v_1066_9))))))))))

theorem t_1067 : treeK7OK l7 1067 = true := by decide +kernel

theorem n_1067 : (recAt l7 1067).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1067_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 0 16 = true := by decide +kernel

theorem v_1067_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 16 16 = true := by decide +kernel

theorem v_1067_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 32 16 = true := by decide +kernel

theorem v_1067_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 48 16 = true := by decide +kernel

theorem v_1067_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 64 16 = true := by decide +kernel

theorem v_1067_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 80 16 = true := by decide +kernel

theorem v_1067_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 96 16 = true := by decide +kernel

theorem v_1067_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 112 16 = true := by decide +kernel

theorem v_1067_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 128 16 = true := by decide +kernel

theorem v_1067_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1067 144 16 = true := by decide +kernel

theorem r_1067 : recsK7OK T qscale den6 d14 lamN lamD l7 1067 1 = true := recK7_of (n := 160) t_1067 n_1067 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1067_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1067_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1067_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1067_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1067_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1067_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1067_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1067_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1067_8 (v_1067_9))))))))))

theorem rs_1065 : recsK7OK T qscale den6 d14 lamN lamD l7 1065 3 = true := recsK7OK_succ (lo := 1065) (n := 2) r_1065 (recsK7OK_succ (lo := 1066) (n := 1) r_1066 (r_1067))

end BeatAvg.K.K7
