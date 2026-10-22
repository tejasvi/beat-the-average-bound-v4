import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_928 : treeK7OK l7 928 = true := by decide +kernel

theorem n_928 : (recAt l7 928).2.2.2.length ≤ 80 := by decide +kernel

theorem v_928_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 928 0 16 = true := by decide +kernel

theorem v_928_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 928 16 16 = true := by decide +kernel

theorem v_928_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 928 32 16 = true := by decide +kernel

theorem v_928_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 928 48 16 = true := by decide +kernel

theorem v_928_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 928 64 16 = true := by decide +kernel

theorem r_928 : recsK7OK T qscale den6 d14 lamN lamD l7 928 1 = true := recK7_of (n := 80) t_928 n_928 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_928_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_928_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_928_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_928_3 (v_928_4)))))

theorem t_929 : treeK7OK l7 929 = true := by decide +kernel

theorem n_929 : (recAt l7 929).2.2.2.length ≤ 272 := by decide +kernel

theorem v_929_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 0 16 = true := by decide +kernel

theorem v_929_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 16 16 = true := by decide +kernel

theorem v_929_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 32 16 = true := by decide +kernel

theorem v_929_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 48 16 = true := by decide +kernel

theorem v_929_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 64 16 = true := by decide +kernel

theorem v_929_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 80 16 = true := by decide +kernel

theorem v_929_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 96 16 = true := by decide +kernel

theorem v_929_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 112 16 = true := by decide +kernel

theorem v_929_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 128 16 = true := by decide +kernel

theorem v_929_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 144 16 = true := by decide +kernel

theorem v_929_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 160 16 = true := by decide +kernel

theorem v_929_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 176 16 = true := by decide +kernel

theorem v_929_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 192 16 = true := by decide +kernel

theorem v_929_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 208 16 = true := by decide +kernel

theorem v_929_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 224 16 = true := by decide +kernel

theorem v_929_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 240 16 = true := by decide +kernel

theorem v_929_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 929 256 16 = true := by decide +kernel

theorem r_929 : recsK7OK T qscale den6 d14 lamN lamD l7 929 1 = true := recK7_of (n := 272) t_929 n_929 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_929_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_929_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_929_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_929_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_929_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_929_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_929_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_929_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_929_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_929_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_929_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_929_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_929_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_929_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_929_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_929_15 (v_929_16)))))))))))))))))

theorem rs_928 : recsK7OK T qscale den6 d14 lamN lamD l7 928 2 = true := recsK7OK_succ (lo := 928) (n := 1) r_928 (r_929)

end BeatAvg.K.K7
