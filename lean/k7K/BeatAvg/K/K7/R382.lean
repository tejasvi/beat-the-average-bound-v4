import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1167 : treeK7OK l7 1167 = true := by decide +kernel

theorem n_1167 : (recAt l7 1167).2.2.2.length ≤ 240 := by decide +kernel

theorem v_1167_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 0 16 = true := by decide +kernel

theorem v_1167_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 16 16 = true := by decide +kernel

theorem v_1167_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 32 16 = true := by decide +kernel

theorem v_1167_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 48 16 = true := by decide +kernel

theorem v_1167_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 64 16 = true := by decide +kernel

theorem v_1167_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 80 16 = true := by decide +kernel

theorem v_1167_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 96 16 = true := by decide +kernel

theorem v_1167_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 112 16 = true := by decide +kernel

theorem v_1167_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 128 16 = true := by decide +kernel

theorem v_1167_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 144 16 = true := by decide +kernel

theorem v_1167_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 160 16 = true := by decide +kernel

theorem v_1167_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 176 16 = true := by decide +kernel

theorem v_1167_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 192 16 = true := by decide +kernel

theorem v_1167_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 208 16 = true := by decide +kernel

theorem v_1167_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 1167 224 16 = true := by decide +kernel

theorem r_1167 : recsK7OK T qscale den6 d14 lamN lamD l7 1167 1 = true := recK7_of (n := 240) t_1167 n_1167 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_1167_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_1167_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_1167_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_1167_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_1167_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_1167_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_1167_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_1167_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_1167_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_1167_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_1167_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_1167_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_1167_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_1167_13 (v_1167_14)))))))))))))))

theorem t_1168 : treeK7OK l7 1168 = true := by decide +kernel

theorem n_1168 : (recAt l7 1168).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1168_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 0 16 = true := by decide +kernel

theorem v_1168_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 16 16 = true := by decide +kernel

theorem v_1168_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 32 16 = true := by decide +kernel

theorem v_1168_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 48 16 = true := by decide +kernel

theorem v_1168_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 64 16 = true := by decide +kernel

theorem v_1168_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 80 16 = true := by decide +kernel

theorem v_1168_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 96 16 = true := by decide +kernel

theorem v_1168_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1168 112 16 = true := by decide +kernel

theorem r_1168 : recsK7OK T qscale den6 d14 lamN lamD l7 1168 1 = true := recK7_of (n := 128) t_1168 n_1168 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1168_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1168_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1168_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1168_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1168_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1168_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1168_6 (v_1168_7))))))))

theorem rs_1167 : recsK7OK T qscale den6 d14 lamN lamD l7 1167 2 = true := recsK7OK_succ (lo := 1167) (n := 1) r_1167 (r_1168)

end BeatAvg.K.K7
