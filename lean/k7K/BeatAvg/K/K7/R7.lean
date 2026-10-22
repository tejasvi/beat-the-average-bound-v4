import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_19 : treeK7OK l7 19 = true := by decide +kernel

theorem n_19 : (recAt l7 19).2.2.2.length ≤ 272 := by decide +kernel

theorem v_19_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 0 16 = true := by decide +kernel

theorem v_19_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 16 16 = true := by decide +kernel

theorem v_19_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 32 16 = true := by decide +kernel

theorem v_19_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 48 16 = true := by decide +kernel

theorem v_19_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 64 16 = true := by decide +kernel

theorem v_19_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 80 16 = true := by decide +kernel

theorem v_19_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 96 16 = true := by decide +kernel

theorem v_19_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 112 16 = true := by decide +kernel

theorem v_19_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 128 16 = true := by decide +kernel

theorem v_19_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 144 16 = true := by decide +kernel

theorem v_19_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 160 16 = true := by decide +kernel

theorem v_19_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 176 16 = true := by decide +kernel

theorem v_19_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 192 16 = true := by decide +kernel

theorem v_19_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 208 16 = true := by decide +kernel

theorem v_19_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 224 16 = true := by decide +kernel

theorem v_19_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 240 16 = true := by decide +kernel

theorem v_19_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 19 256 16 = true := by decide +kernel

theorem r_19 : recsK7OK T qscale den6 d14 lamN lamD l7 19 1 = true := recK7_of (n := 272) t_19 n_19 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_19_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_19_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_19_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_19_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_19_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_19_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_19_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_19_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_19_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_19_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_19_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_19_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_19_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_19_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_19_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_19_15 (v_19_16)))))))))))))))))

theorem t_20 : treeK7OK l7 20 = true := by decide +kernel

theorem n_20 : (recAt l7 20).2.2.2.length ≤ 144 := by decide +kernel

theorem v_20_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 0 16 = true := by decide +kernel

theorem v_20_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 16 16 = true := by decide +kernel

theorem v_20_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 32 16 = true := by decide +kernel

theorem v_20_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 48 16 = true := by decide +kernel

theorem v_20_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 64 16 = true := by decide +kernel

theorem v_20_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 80 16 = true := by decide +kernel

theorem v_20_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 96 16 = true := by decide +kernel

theorem v_20_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 112 16 = true := by decide +kernel

theorem v_20_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 20 128 16 = true := by decide +kernel

theorem r_20 : recsK7OK T qscale den6 d14 lamN lamD l7 20 1 = true := recK7_of (n := 144) t_20 n_20 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_20_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_20_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_20_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_20_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_20_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_20_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_20_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_20_7 (v_20_8)))))))))

theorem rs_19 : recsK7OK T qscale den6 d14 lamN lamD l7 19 2 = true := recsK7OK_succ (lo := 19) (n := 1) r_19 (r_20)

end BeatAvg.K.K7
