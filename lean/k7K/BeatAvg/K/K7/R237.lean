import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_781 : treeK7OK l7 781 = true := by decide +kernel

theorem n_781 : (recAt l7 781).2.2.2.length ≤ 240 := by decide +kernel

theorem v_781_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 0 16 = true := by decide +kernel

theorem v_781_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 16 16 = true := by decide +kernel

theorem v_781_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 32 16 = true := by decide +kernel

theorem v_781_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 48 16 = true := by decide +kernel

theorem v_781_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 64 16 = true := by decide +kernel

theorem v_781_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 80 16 = true := by decide +kernel

theorem v_781_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 96 16 = true := by decide +kernel

theorem v_781_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 112 16 = true := by decide +kernel

theorem v_781_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 128 16 = true := by decide +kernel

theorem v_781_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 144 16 = true := by decide +kernel

theorem v_781_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 160 16 = true := by decide +kernel

theorem v_781_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 176 16 = true := by decide +kernel

theorem v_781_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 192 16 = true := by decide +kernel

theorem v_781_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 208 16 = true := by decide +kernel

theorem v_781_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 781 224 16 = true := by decide +kernel

theorem r_781 : recsK7OK T qscale den6 d14 lamN lamD l7 781 1 = true := recK7_of (n := 240) t_781 n_781 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_781_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_781_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_781_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_781_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_781_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_781_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_781_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_781_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_781_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_781_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_781_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_781_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_781_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_781_13 (v_781_14)))))))))))))))

theorem t_782 : treeK7OK l7 782 = true := by decide +kernel

theorem n_782 : (recAt l7 782).2.2.2.length ≤ 176 := by decide +kernel

theorem v_782_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 0 16 = true := by decide +kernel

theorem v_782_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 16 16 = true := by decide +kernel

theorem v_782_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 32 16 = true := by decide +kernel

theorem v_782_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 48 16 = true := by decide +kernel

theorem v_782_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 64 16 = true := by decide +kernel

theorem v_782_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 80 16 = true := by decide +kernel

theorem v_782_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 96 16 = true := by decide +kernel

theorem v_782_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 112 16 = true := by decide +kernel

theorem v_782_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 128 16 = true := by decide +kernel

theorem v_782_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 144 16 = true := by decide +kernel

theorem v_782_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 782 160 16 = true := by decide +kernel

theorem r_782 : recsK7OK T qscale den6 d14 lamN lamD l7 782 1 = true := recK7_of (n := 176) t_782 n_782 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_782_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_782_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_782_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_782_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_782_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_782_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_782_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_782_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_782_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_782_9 (v_782_10)))))))))))

theorem rs_781 : recsK7OK T qscale den6 d14 lamN lamD l7 781 2 = true := recsK7OK_succ (lo := 781) (n := 1) r_781 (r_782)

end BeatAvg.K.K7
