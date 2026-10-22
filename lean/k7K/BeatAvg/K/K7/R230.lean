import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_767 : treeK7OK l7 767 = true := by decide +kernel

theorem n_767 : (recAt l7 767).2.2.2.length ≤ 32 := by decide +kernel

theorem v_767_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 767 0 16 = true := by decide +kernel

theorem v_767_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 767 16 16 = true := by decide +kernel

theorem r_767 : recsK7OK T qscale den6 d14 lamN lamD l7 767 1 = true := recK7_of (n := 32) t_767 n_767 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_767_0 (v_767_1))

theorem t_768 : treeK7OK l7 768 = true := by decide +kernel

theorem n_768 : (recAt l7 768).2.2.2.length ≤ 272 := by decide +kernel

theorem v_768_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 0 16 = true := by decide +kernel

theorem v_768_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 16 16 = true := by decide +kernel

theorem v_768_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 32 16 = true := by decide +kernel

theorem v_768_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 48 16 = true := by decide +kernel

theorem v_768_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 64 16 = true := by decide +kernel

theorem v_768_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 80 16 = true := by decide +kernel

theorem v_768_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 96 16 = true := by decide +kernel

theorem v_768_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 112 16 = true := by decide +kernel

theorem v_768_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 128 16 = true := by decide +kernel

theorem v_768_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 144 16 = true := by decide +kernel

theorem v_768_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 160 16 = true := by decide +kernel

theorem v_768_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 176 16 = true := by decide +kernel

theorem v_768_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 192 16 = true := by decide +kernel

theorem v_768_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 208 16 = true := by decide +kernel

theorem v_768_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 224 16 = true := by decide +kernel

theorem v_768_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 240 16 = true := by decide +kernel

theorem v_768_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 768 256 16 = true := by decide +kernel

theorem r_768 : recsK7OK T qscale den6 d14 lamN lamD l7 768 1 = true := recK7_of (n := 272) t_768 n_768 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_768_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_768_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_768_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_768_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_768_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_768_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_768_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_768_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_768_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_768_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_768_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_768_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_768_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_768_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_768_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_768_15 (v_768_16)))))))))))))))))

theorem rs_767 : recsK7OK T qscale den6 d14 lamN lamD l7 767 2 = true := recsK7OK_succ (lo := 767) (n := 1) r_767 (r_768)

end BeatAvg.K.K7
