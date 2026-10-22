import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1164 : treeK7OK l7 1164 = true := by decide +kernel

theorem n_1164 : (recAt l7 1164).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1164_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1164 0 16 = true := by decide +kernel

theorem v_1164_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1164 16 16 = true := by decide +kernel

theorem v_1164_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1164 32 16 = true := by decide +kernel

theorem r_1164 : recsK7OK T qscale den6 d14 lamN lamD l7 1164 1 = true := recK7_of (n := 48) t_1164 n_1164 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1164_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1164_1 (v_1164_2)))

theorem t_1165 : treeK7OK l7 1165 = true := by decide +kernel

theorem n_1165 : (recAt l7 1165).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1165_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1165 0 16 = true := by decide +kernel

theorem v_1165_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1165 16 16 = true := by decide +kernel

theorem v_1165_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1165 32 16 = true := by decide +kernel

theorem v_1165_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1165 48 16 = true := by decide +kernel

theorem r_1165 : recsK7OK T qscale den6 d14 lamN lamD l7 1165 1 = true := recK7_of (n := 64) t_1165 n_1165 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1165_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1165_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1165_2 (v_1165_3))))

theorem t_1166 : treeK7OK l7 1166 = true := by decide +kernel

theorem n_1166 : (recAt l7 1166).2.2.2.length ≤ 240 := by decide +kernel

theorem v_1166_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 0 16 = true := by decide +kernel

theorem v_1166_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 16 16 = true := by decide +kernel

theorem v_1166_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 32 16 = true := by decide +kernel

theorem v_1166_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 48 16 = true := by decide +kernel

theorem v_1166_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 64 16 = true := by decide +kernel

theorem v_1166_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 80 16 = true := by decide +kernel

theorem v_1166_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 96 16 = true := by decide +kernel

theorem v_1166_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 112 16 = true := by decide +kernel

theorem v_1166_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 128 16 = true := by decide +kernel

theorem v_1166_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 144 16 = true := by decide +kernel

theorem v_1166_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 160 16 = true := by decide +kernel

theorem v_1166_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 176 16 = true := by decide +kernel

theorem v_1166_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 192 16 = true := by decide +kernel

theorem v_1166_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 208 16 = true := by decide +kernel

theorem v_1166_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 1166 224 16 = true := by decide +kernel

theorem r_1166 : recsK7OK T qscale den6 d14 lamN lamD l7 1166 1 = true := recK7_of (n := 240) t_1166 n_1166 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_1166_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_1166_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_1166_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_1166_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_1166_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_1166_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_1166_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_1166_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_1166_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_1166_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_1166_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_1166_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_1166_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_1166_13 (v_1166_14)))))))))))))))

theorem rs_1164 : recsK7OK T qscale den6 d14 lamN lamD l7 1164 3 = true := recsK7OK_succ (lo := 1164) (n := 2) r_1164 (recsK7OK_succ (lo := 1165) (n := 1) r_1165 (r_1166))

end BeatAvg.K.K7
