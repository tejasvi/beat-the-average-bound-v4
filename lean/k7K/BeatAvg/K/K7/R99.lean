import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_355 : treeK7OK l7 355 = true := by decide +kernel

theorem n_355 : (recAt l7 355).2.2.2.length ≤ 288 := by decide +kernel

theorem v_355_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 0 16 = true := by decide +kernel

theorem v_355_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 16 16 = true := by decide +kernel

theorem v_355_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 32 16 = true := by decide +kernel

theorem v_355_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 48 16 = true := by decide +kernel

theorem v_355_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 64 16 = true := by decide +kernel

theorem v_355_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 80 16 = true := by decide +kernel

theorem v_355_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 96 16 = true := by decide +kernel

theorem v_355_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 112 16 = true := by decide +kernel

theorem v_355_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 128 16 = true := by decide +kernel

theorem v_355_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 144 16 = true := by decide +kernel

theorem v_355_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 160 16 = true := by decide +kernel

theorem v_355_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 176 16 = true := by decide +kernel

theorem v_355_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 192 16 = true := by decide +kernel

theorem v_355_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 208 16 = true := by decide +kernel

theorem v_355_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 224 16 = true := by decide +kernel

theorem v_355_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 240 16 = true := by decide +kernel

theorem v_355_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 256 16 = true := by decide +kernel

theorem v_355_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 355 272 16 = true := by decide +kernel

theorem r_355 : recsK7OK T qscale den6 d14 lamN lamD l7 355 1 = true := recK7_of (n := 288) t_355 n_355 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_355_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_355_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_355_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_355_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_355_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_355_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_355_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_355_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_355_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_355_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_355_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_355_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_355_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_355_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_355_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_355_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_355_16 (v_355_17))))))))))))))))))

theorem rs_355 : recsK7OK T qscale den6 d14 lamN lamD l7 355 1 = true := r_355

end BeatAvg.K.K7
