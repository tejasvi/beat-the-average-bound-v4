import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1175 : treeK7OK l7 1175 = true := by decide +kernel

theorem n_1175 : (recAt l7 1175).2.2.2.length ≤ 240 := by decide +kernel

theorem v_1175_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 0 16 = true := by decide +kernel

theorem v_1175_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 16 16 = true := by decide +kernel

theorem v_1175_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 32 16 = true := by decide +kernel

theorem v_1175_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 48 16 = true := by decide +kernel

theorem v_1175_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 64 16 = true := by decide +kernel

theorem v_1175_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 80 16 = true := by decide +kernel

theorem v_1175_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 96 16 = true := by decide +kernel

theorem v_1175_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 112 16 = true := by decide +kernel

theorem v_1175_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 128 16 = true := by decide +kernel

theorem v_1175_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 144 16 = true := by decide +kernel

theorem v_1175_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 160 16 = true := by decide +kernel

theorem v_1175_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 176 16 = true := by decide +kernel

theorem v_1175_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 192 16 = true := by decide +kernel

theorem v_1175_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 208 16 = true := by decide +kernel

theorem v_1175_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 1175 224 16 = true := by decide +kernel

theorem r_1175 : recsK7OK T qscale den6 d14 lamN lamD l7 1175 1 = true := recK7_of (n := 240) t_1175 n_1175 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_1175_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_1175_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_1175_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_1175_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_1175_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_1175_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_1175_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_1175_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_1175_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_1175_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_1175_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_1175_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_1175_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_1175_13 (v_1175_14)))))))))))))))

theorem t_1176 : treeK7OK l7 1176 = true := by decide +kernel

theorem n_1176 : (recAt l7 1176).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1176_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 0 16 = true := by decide +kernel

theorem v_1176_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 16 16 = true := by decide +kernel

theorem v_1176_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 32 16 = true := by decide +kernel

theorem v_1176_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 48 16 = true := by decide +kernel

theorem v_1176_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 64 16 = true := by decide +kernel

theorem v_1176_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 80 16 = true := by decide +kernel

theorem v_1176_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 96 16 = true := by decide +kernel

theorem v_1176_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 112 16 = true := by decide +kernel

theorem v_1176_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 128 16 = true := by decide +kernel

theorem v_1176_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1176 144 16 = true := by decide +kernel

theorem r_1176 : recsK7OK T qscale den6 d14 lamN lamD l7 1176 1 = true := recK7_of (n := 160) t_1176 n_1176 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1176_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1176_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1176_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1176_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1176_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1176_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1176_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1176_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1176_8 (v_1176_9))))))))))

theorem rs_1175 : recsK7OK T qscale den6 d14 lamN lamD l7 1175 2 = true := recsK7OK_succ (lo := 1175) (n := 1) r_1175 (r_1176)

end BeatAvg.K.K7
