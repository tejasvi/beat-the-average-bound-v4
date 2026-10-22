import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_134 : treeK7OK l7 134 = true := by decide +kernel

theorem n_134 : (recAt l7 134).2.2.2.length ≤ 208 := by decide +kernel

theorem v_134_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 0 16 = true := by decide +kernel

theorem v_134_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 16 16 = true := by decide +kernel

theorem v_134_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 32 16 = true := by decide +kernel

theorem v_134_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 48 16 = true := by decide +kernel

theorem v_134_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 64 16 = true := by decide +kernel

theorem v_134_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 80 16 = true := by decide +kernel

theorem v_134_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 96 16 = true := by decide +kernel

theorem v_134_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 112 16 = true := by decide +kernel

theorem v_134_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 128 16 = true := by decide +kernel

theorem v_134_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 144 16 = true := by decide +kernel

theorem v_134_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 160 16 = true := by decide +kernel

theorem v_134_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 176 16 = true := by decide +kernel

theorem v_134_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 134 192 16 = true := by decide +kernel

theorem r_134 : recsK7OK T qscale den6 d14 lamN lamD l7 134 1 = true := recK7_of (n := 208) t_134 n_134 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_134_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_134_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_134_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_134_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_134_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_134_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_134_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_134_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_134_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_134_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_134_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_134_11 (v_134_12)))))))))))))

theorem t_135 : treeK7OK l7 135 = true := by decide +kernel

theorem n_135 : (recAt l7 135).2.2.2.length ≤ 128 := by decide +kernel

theorem v_135_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 0 16 = true := by decide +kernel

theorem v_135_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 16 16 = true := by decide +kernel

theorem v_135_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 32 16 = true := by decide +kernel

theorem v_135_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 48 16 = true := by decide +kernel

theorem v_135_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 64 16 = true := by decide +kernel

theorem v_135_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 80 16 = true := by decide +kernel

theorem v_135_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 96 16 = true := by decide +kernel

theorem v_135_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 135 112 16 = true := by decide +kernel

theorem r_135 : recsK7OK T qscale den6 d14 lamN lamD l7 135 1 = true := recK7_of (n := 128) t_135 n_135 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_135_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_135_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_135_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_135_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_135_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_135_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_135_6 (v_135_7))))))))

theorem t_136 : treeK7OK l7 136 = true := by decide +kernel

theorem n_136 : (recAt l7 136).2.2.2.length ≤ 32 := by decide +kernel

theorem v_136_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 136 0 16 = true := by decide +kernel

theorem v_136_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 136 16 16 = true := by decide +kernel

theorem r_136 : recsK7OK T qscale den6 d14 lamN lamD l7 136 1 = true := recK7_of (n := 32) t_136 n_136 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_136_0 (v_136_1))

theorem rs_134 : recsK7OK T qscale den6 d14 lamN lamD l7 134 3 = true := recsK7OK_succ (lo := 134) (n := 2) r_134 (recsK7OK_succ (lo := 135) (n := 1) r_135 (r_136))

end BeatAvg.K.K7
