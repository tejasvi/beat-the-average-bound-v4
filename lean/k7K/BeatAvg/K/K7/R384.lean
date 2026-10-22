import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1171 : treeK7OK l7 1171 = true := by decide +kernel

theorem n_1171 : (recAt l7 1171).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1171_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1171 0 16 = true := by decide +kernel

theorem v_1171_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1171 16 16 = true := by decide +kernel

theorem v_1171_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1171 32 16 = true := by decide +kernel

theorem v_1171_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1171 48 16 = true := by decide +kernel

theorem v_1171_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1171 64 16 = true := by decide +kernel

theorem v_1171_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1171 80 16 = true := by decide +kernel

theorem r_1171 : recsK7OK T qscale den6 d14 lamN lamD l7 1171 1 = true := recK7_of (n := 96) t_1171 n_1171 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1171_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1171_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1171_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1171_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1171_4 (v_1171_5))))))

theorem t_1172 : treeK7OK l7 1172 = true := by decide +kernel

theorem n_1172 : (recAt l7 1172).2.2.2.length ≤ 256 := by decide +kernel

theorem v_1172_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 0 16 = true := by decide +kernel

theorem v_1172_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 16 16 = true := by decide +kernel

theorem v_1172_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 32 16 = true := by decide +kernel

theorem v_1172_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 48 16 = true := by decide +kernel

theorem v_1172_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 64 16 = true := by decide +kernel

theorem v_1172_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 80 16 = true := by decide +kernel

theorem v_1172_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 96 16 = true := by decide +kernel

theorem v_1172_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 112 16 = true := by decide +kernel

theorem v_1172_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 128 16 = true := by decide +kernel

theorem v_1172_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 144 16 = true := by decide +kernel

theorem v_1172_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 160 16 = true := by decide +kernel

theorem v_1172_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 176 16 = true := by decide +kernel

theorem v_1172_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 192 16 = true := by decide +kernel

theorem v_1172_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 208 16 = true := by decide +kernel

theorem v_1172_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 224 16 = true := by decide +kernel

theorem v_1172_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 1172 240 16 = true := by decide +kernel

theorem r_1172 : recsK7OK T qscale den6 d14 lamN lamD l7 1172 1 = true := recK7_of (n := 256) t_1172 n_1172 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_1172_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_1172_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_1172_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_1172_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_1172_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_1172_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_1172_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_1172_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_1172_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_1172_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_1172_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_1172_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_1172_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_1172_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_1172_14 (v_1172_15))))))))))))))))

theorem rs_1171 : recsK7OK T qscale den6 d14 lamN lamD l7 1171 2 = true := recsK7OK_succ (lo := 1171) (n := 1) r_1171 (r_1172)

end BeatAvg.K.K7
