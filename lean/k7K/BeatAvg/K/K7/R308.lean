import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_943 : treeK7OK l7 943 = true := by decide +kernel

theorem n_943 : (recAt l7 943).2.2.2.length ≤ 48 := by decide +kernel

theorem v_943_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 943 0 16 = true := by decide +kernel

theorem v_943_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 943 16 16 = true := by decide +kernel

theorem v_943_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 943 32 16 = true := by decide +kernel

theorem r_943 : recsK7OK T qscale den6 d14 lamN lamD l7 943 1 = true := recK7_of (n := 48) t_943 n_943 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_943_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_943_1 (v_943_2)))

theorem t_944 : treeK7OK l7 944 = true := by decide +kernel

theorem n_944 : (recAt l7 944).2.2.2.length ≤ 272 := by decide +kernel

theorem v_944_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 0 16 = true := by decide +kernel

theorem v_944_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 16 16 = true := by decide +kernel

theorem v_944_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 32 16 = true := by decide +kernel

theorem v_944_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 48 16 = true := by decide +kernel

theorem v_944_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 64 16 = true := by decide +kernel

theorem v_944_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 80 16 = true := by decide +kernel

theorem v_944_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 96 16 = true := by decide +kernel

theorem v_944_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 112 16 = true := by decide +kernel

theorem v_944_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 128 16 = true := by decide +kernel

theorem v_944_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 144 16 = true := by decide +kernel

theorem v_944_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 160 16 = true := by decide +kernel

theorem v_944_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 176 16 = true := by decide +kernel

theorem v_944_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 192 16 = true := by decide +kernel

theorem v_944_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 208 16 = true := by decide +kernel

theorem v_944_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 224 16 = true := by decide +kernel

theorem v_944_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 240 16 = true := by decide +kernel

theorem v_944_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 944 256 16 = true := by decide +kernel

theorem r_944 : recsK7OK T qscale den6 d14 lamN lamD l7 944 1 = true := recK7_of (n := 272) t_944 n_944 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_944_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_944_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_944_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_944_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_944_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_944_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_944_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_944_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_944_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_944_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_944_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_944_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_944_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_944_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_944_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_944_15 (v_944_16)))))))))))))))))

theorem rs_943 : recsK7OK T qscale den6 d14 lamN lamD l7 943 2 = true := recsK7OK_succ (lo := 943) (n := 1) r_943 (r_944)

end BeatAvg.K.K7
