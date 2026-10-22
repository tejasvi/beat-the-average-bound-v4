import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_947 : treeK7OK l7 947 = true := by decide +kernel

theorem n_947 : (recAt l7 947).2.2.2.length ≤ 240 := by decide +kernel

theorem v_947_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 0 16 = true := by decide +kernel

theorem v_947_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 16 16 = true := by decide +kernel

theorem v_947_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 32 16 = true := by decide +kernel

theorem v_947_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 48 16 = true := by decide +kernel

theorem v_947_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 64 16 = true := by decide +kernel

theorem v_947_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 80 16 = true := by decide +kernel

theorem v_947_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 96 16 = true := by decide +kernel

theorem v_947_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 112 16 = true := by decide +kernel

theorem v_947_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 128 16 = true := by decide +kernel

theorem v_947_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 144 16 = true := by decide +kernel

theorem v_947_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 160 16 = true := by decide +kernel

theorem v_947_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 176 16 = true := by decide +kernel

theorem v_947_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 192 16 = true := by decide +kernel

theorem v_947_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 208 16 = true := by decide +kernel

theorem v_947_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 947 224 16 = true := by decide +kernel

theorem r_947 : recsK7OK T qscale den6 d14 lamN lamD l7 947 1 = true := recK7_of (n := 240) t_947 n_947 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_947_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_947_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_947_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_947_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_947_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_947_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_947_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_947_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_947_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_947_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_947_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_947_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_947_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_947_13 (v_947_14)))))))))))))))

theorem t_948 : treeK7OK l7 948 = true := by decide +kernel

theorem n_948 : (recAt l7 948).2.2.2.length ≤ 112 := by decide +kernel

theorem v_948_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 948 0 16 = true := by decide +kernel

theorem v_948_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 948 16 16 = true := by decide +kernel

theorem v_948_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 948 32 16 = true := by decide +kernel

theorem v_948_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 948 48 16 = true := by decide +kernel

theorem v_948_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 948 64 16 = true := by decide +kernel

theorem v_948_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 948 80 16 = true := by decide +kernel

theorem v_948_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 948 96 16 = true := by decide +kernel

theorem r_948 : recsK7OK T qscale den6 d14 lamN lamD l7 948 1 = true := recK7_of (n := 112) t_948 n_948 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_948_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_948_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_948_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_948_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_948_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_948_5 (v_948_6)))))))

theorem rs_947 : recsK7OK T qscale den6 d14 lamN lamD l7 947 2 = true := recsK7OK_succ (lo := 947) (n := 1) r_947 (r_948)

end BeatAvg.K.K7
