import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_17 : treeK7OK l7 17 = true := by decide +kernel

theorem n_17 : (recAt l7 17).2.2.2.length ≤ 64 := by decide +kernel

theorem v_17_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 17 0 16 = true := by decide +kernel

theorem v_17_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 17 16 16 = true := by decide +kernel

theorem v_17_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 17 32 16 = true := by decide +kernel

theorem v_17_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 17 48 16 = true := by decide +kernel

theorem r_17 : recsK7OK T qscale den6 d14 lamN lamD l7 17 1 = true := recK7_of (n := 64) t_17 n_17 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_17_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_17_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_17_2 (v_17_3))))

theorem t_18 : treeK7OK l7 18 = true := by decide +kernel

theorem n_18 : (recAt l7 18).2.2.2.length ≤ 304 := by decide +kernel

theorem v_18_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 0 16 = true := by decide +kernel

theorem v_18_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 16 16 = true := by decide +kernel

theorem v_18_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 32 16 = true := by decide +kernel

theorem v_18_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 48 16 = true := by decide +kernel

theorem v_18_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 64 16 = true := by decide +kernel

theorem v_18_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 80 16 = true := by decide +kernel

theorem v_18_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 96 16 = true := by decide +kernel

theorem v_18_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 112 16 = true := by decide +kernel

theorem v_18_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 128 16 = true := by decide +kernel

theorem v_18_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 144 16 = true := by decide +kernel

theorem v_18_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 160 16 = true := by decide +kernel

theorem v_18_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 176 16 = true := by decide +kernel

theorem v_18_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 192 16 = true := by decide +kernel

theorem v_18_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 208 16 = true := by decide +kernel

theorem v_18_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 224 16 = true := by decide +kernel

theorem v_18_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 240 16 = true := by decide +kernel

theorem v_18_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 256 16 = true := by decide +kernel

theorem v_18_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 272 16 = true := by decide +kernel

theorem v_18_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 18 288 16 = true := by decide +kernel

theorem r_18 : recsK7OK T qscale den6 d14 lamN lamD l7 18 1 = true := recK7_of (n := 304) t_18 n_18 (leavesK7OK_add (lo := 0) (n := 16) (m := 288) v_18_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 272) v_18_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 256) v_18_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 240) v_18_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 224) v_18_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 208) v_18_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 192) v_18_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 176) v_18_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 160) v_18_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 144) v_18_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 128) v_18_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 112) v_18_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 96) v_18_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 80) v_18_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 64) v_18_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 48) v_18_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 32) v_18_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 16) v_18_17 (v_18_18)))))))))))))))))))

theorem rs_17 : recsK7OK T qscale den6 d14 lamN lamD l7 17 2 = true := recsK7OK_succ (lo := 17) (n := 1) r_17 (r_18)

end BeatAvg.K.K7
