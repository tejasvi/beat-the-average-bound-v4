import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1180 : treeK7OK l7 1180 = true := by decide +kernel

theorem n_1180 : (recAt l7 1180).2.2.2.length ≤ 208 := by decide +kernel

theorem v_1180_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 0 16 = true := by decide +kernel

theorem v_1180_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 16 16 = true := by decide +kernel

theorem v_1180_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 32 16 = true := by decide +kernel

theorem v_1180_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 48 16 = true := by decide +kernel

theorem v_1180_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 64 16 = true := by decide +kernel

theorem v_1180_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 80 16 = true := by decide +kernel

theorem v_1180_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 96 16 = true := by decide +kernel

theorem v_1180_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 112 16 = true := by decide +kernel

theorem v_1180_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 128 16 = true := by decide +kernel

theorem v_1180_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 144 16 = true := by decide +kernel

theorem v_1180_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 160 16 = true := by decide +kernel

theorem v_1180_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 176 16 = true := by decide +kernel

theorem v_1180_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 1180 192 16 = true := by decide +kernel

theorem r_1180 : recsK7OK T qscale den6 d14 lamN lamD l7 1180 1 = true := recK7_of (n := 208) t_1180 n_1180 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_1180_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_1180_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_1180_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_1180_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_1180_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_1180_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_1180_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_1180_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_1180_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_1180_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_1180_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_1180_11 (v_1180_12)))))))))))))

theorem t_1181 : treeK7OK l7 1181 = true := by decide +kernel

theorem n_1181 : (recAt l7 1181).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1181_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 0 16 = true := by decide +kernel

theorem v_1181_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 16 16 = true := by decide +kernel

theorem v_1181_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 32 16 = true := by decide +kernel

theorem v_1181_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 48 16 = true := by decide +kernel

theorem v_1181_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 64 16 = true := by decide +kernel

theorem v_1181_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 80 16 = true := by decide +kernel

theorem v_1181_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 96 16 = true := by decide +kernel

theorem v_1181_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1181 112 16 = true := by decide +kernel

theorem r_1181 : recsK7OK T qscale den6 d14 lamN lamD l7 1181 1 = true := recK7_of (n := 128) t_1181 n_1181 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1181_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1181_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1181_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1181_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1181_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1181_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1181_6 (v_1181_7))))))))

theorem rs_1180 : recsK7OK T qscale den6 d14 lamN lamD l7 1180 2 = true := recsK7OK_succ (lo := 1180) (n := 1) r_1180 (r_1181)

end BeatAvg.K.K7
