import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_113 : treeK7OK l7 113 = true := by decide +kernel

theorem n_113 : (recAt l7 113).2.2.2.length ≤ 288 := by decide +kernel

theorem v_113_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 0 16 = true := by decide +kernel

theorem v_113_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 16 16 = true := by decide +kernel

theorem v_113_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 32 16 = true := by decide +kernel

theorem v_113_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 48 16 = true := by decide +kernel

theorem v_113_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 64 16 = true := by decide +kernel

theorem v_113_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 80 16 = true := by decide +kernel

theorem v_113_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 96 16 = true := by decide +kernel

theorem v_113_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 112 16 = true := by decide +kernel

theorem v_113_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 128 16 = true := by decide +kernel

theorem v_113_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 144 16 = true := by decide +kernel

theorem v_113_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 160 16 = true := by decide +kernel

theorem v_113_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 176 16 = true := by decide +kernel

theorem v_113_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 192 16 = true := by decide +kernel

theorem v_113_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 208 16 = true := by decide +kernel

theorem v_113_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 224 16 = true := by decide +kernel

theorem v_113_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 240 16 = true := by decide +kernel

theorem v_113_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 256 16 = true := by decide +kernel

theorem v_113_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 113 272 16 = true := by decide +kernel

theorem r_113 : recsK7OK T qscale den6 d14 lamN lamD l7 113 1 = true := recK7_of (n := 288) t_113 n_113 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_113_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_113_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_113_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_113_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_113_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_113_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_113_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_113_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_113_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_113_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_113_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_113_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_113_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_113_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_113_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_113_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_113_16 (v_113_17))))))))))))))))))

theorem t_114 : treeK7OK l7 114 = true := by decide +kernel

theorem n_114 : (recAt l7 114).2.2.2.length ≤ 48 := by decide +kernel

theorem v_114_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 114 0 16 = true := by decide +kernel

theorem v_114_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 114 16 16 = true := by decide +kernel

theorem v_114_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 114 32 16 = true := by decide +kernel

theorem r_114 : recsK7OK T qscale den6 d14 lamN lamD l7 114 1 = true := recK7_of (n := 48) t_114 n_114 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_114_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_114_1 (v_114_2)))

theorem rs_113 : recsK7OK T qscale den6 d14 lamN lamD l7 113 2 = true := recsK7OK_succ (lo := 113) (n := 1) r_113 (r_114)

end BeatAvg.K.K7
