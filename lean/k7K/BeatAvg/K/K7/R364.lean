import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1095 : treeK7OK l7 1095 = true := by decide +kernel

theorem n_1095 : (recAt l7 1095).2.2.2.length ≤ 192 := by decide +kernel

theorem v_1095_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 0 16 = true := by decide +kernel

theorem v_1095_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 16 16 = true := by decide +kernel

theorem v_1095_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 32 16 = true := by decide +kernel

theorem v_1095_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 48 16 = true := by decide +kernel

theorem v_1095_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 64 16 = true := by decide +kernel

theorem v_1095_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 80 16 = true := by decide +kernel

theorem v_1095_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 96 16 = true := by decide +kernel

theorem v_1095_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 112 16 = true := by decide +kernel

theorem v_1095_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 128 16 = true := by decide +kernel

theorem v_1095_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 144 16 = true := by decide +kernel

theorem v_1095_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 160 16 = true := by decide +kernel

theorem v_1095_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1095 176 16 = true := by decide +kernel

theorem r_1095 : recsK7OK T qscale den6 d14 lamN lamD l7 1095 1 = true := recK7_of (n := 192) t_1095 n_1095 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_1095_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_1095_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_1095_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_1095_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_1095_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_1095_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_1095_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_1095_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_1095_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_1095_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_1095_10 (v_1095_11))))))))))))

theorem t_1096 : treeK7OK l7 1096 = true := by decide +kernel

theorem n_1096 : (recAt l7 1096).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1096_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 0 16 = true := by decide +kernel

theorem v_1096_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 16 16 = true := by decide +kernel

theorem v_1096_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 32 16 = true := by decide +kernel

theorem v_1096_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 48 16 = true := by decide +kernel

theorem v_1096_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 64 16 = true := by decide +kernel

theorem v_1096_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 80 16 = true := by decide +kernel

theorem v_1096_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 96 16 = true := by decide +kernel

theorem v_1096_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 112 16 = true := by decide +kernel

theorem v_1096_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 128 16 = true := by decide +kernel

theorem v_1096_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1096 144 16 = true := by decide +kernel

theorem r_1096 : recsK7OK T qscale den6 d14 lamN lamD l7 1096 1 = true := recK7_of (n := 160) t_1096 n_1096 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1096_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1096_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1096_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1096_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1096_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1096_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1096_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1096_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1096_8 (v_1096_9))))))))))

theorem rs_1095 : recsK7OK T qscale den6 d14 lamN lamD l7 1095 2 = true := recsK7OK_succ (lo := 1095) (n := 1) r_1095 (r_1096)

end BeatAvg.K.K7
