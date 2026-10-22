import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1187 : treeK7OK l7 1187 = true := by decide +kernel

theorem n_1187 : (recAt l7 1187).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1187_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 0 16 = true := by decide +kernel

theorem v_1187_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 16 16 = true := by decide +kernel

theorem v_1187_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 32 16 = true := by decide +kernel

theorem v_1187_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 48 16 = true := by decide +kernel

theorem v_1187_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 64 16 = true := by decide +kernel

theorem v_1187_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 80 16 = true := by decide +kernel

theorem v_1187_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 96 16 = true := by decide +kernel

theorem v_1187_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 112 16 = true := by decide +kernel

theorem v_1187_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 128 16 = true := by decide +kernel

theorem v_1187_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1187 144 16 = true := by decide +kernel

theorem r_1187 : recsK7OK T qscale den6 d14 lamN lamD l7 1187 1 = true := recK7_of (n := 160) t_1187 n_1187 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1187_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1187_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1187_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1187_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1187_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1187_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1187_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1187_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1187_8 (v_1187_9))))))))))

theorem t_1188 : treeK7OK l7 1188 = true := by decide +kernel

theorem n_1188 : (recAt l7 1188).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1188_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 0 16 = true := by decide +kernel

theorem v_1188_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 16 16 = true := by decide +kernel

theorem v_1188_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 32 16 = true := by decide +kernel

theorem v_1188_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 48 16 = true := by decide +kernel

theorem v_1188_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 64 16 = true := by decide +kernel

theorem v_1188_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 80 16 = true := by decide +kernel

theorem v_1188_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 96 16 = true := by decide +kernel

theorem v_1188_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 112 16 = true := by decide +kernel

theorem v_1188_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1188 128 16 = true := by decide +kernel

theorem r_1188 : recsK7OK T qscale den6 d14 lamN lamD l7 1188 1 = true := recK7_of (n := 144) t_1188 n_1188 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1188_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1188_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1188_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1188_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1188_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1188_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1188_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1188_7 (v_1188_8)))))))))

theorem rs_1187 : recsK7OK T qscale den6 d14 lamN lamD l7 1187 2 = true := recsK7OK_succ (lo := 1187) (n := 1) r_1187 (r_1188)

end BeatAvg.K.K7
