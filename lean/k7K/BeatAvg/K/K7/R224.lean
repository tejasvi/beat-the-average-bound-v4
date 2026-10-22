import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_753 : treeK7OK l7 753 = true := by decide +kernel

theorem n_753 : (recAt l7 753).2.2.2.length ≤ 224 := by decide +kernel

theorem v_753_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 0 16 = true := by decide +kernel

theorem v_753_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 16 16 = true := by decide +kernel

theorem v_753_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 32 16 = true := by decide +kernel

theorem v_753_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 48 16 = true := by decide +kernel

theorem v_753_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 64 16 = true := by decide +kernel

theorem v_753_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 80 16 = true := by decide +kernel

theorem v_753_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 96 16 = true := by decide +kernel

theorem v_753_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 112 16 = true := by decide +kernel

theorem v_753_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 128 16 = true := by decide +kernel

theorem v_753_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 144 16 = true := by decide +kernel

theorem v_753_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 160 16 = true := by decide +kernel

theorem v_753_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 176 16 = true := by decide +kernel

theorem v_753_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 192 16 = true := by decide +kernel

theorem v_753_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 753 208 16 = true := by decide +kernel

theorem r_753 : recsK7OK T qscale den6 d14 lamN lamD l7 753 1 = true := recK7_of (n := 224) t_753 n_753 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_753_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_753_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_753_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_753_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_753_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_753_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_753_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_753_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_753_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_753_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_753_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_753_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_753_12 (v_753_13))))))))))))))

theorem t_754 : treeK7OK l7 754 = true := by decide +kernel

theorem n_754 : (recAt l7 754).2.2.2.length ≤ 128 := by decide +kernel

theorem v_754_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 0 16 = true := by decide +kernel

theorem v_754_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 16 16 = true := by decide +kernel

theorem v_754_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 32 16 = true := by decide +kernel

theorem v_754_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 48 16 = true := by decide +kernel

theorem v_754_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 64 16 = true := by decide +kernel

theorem v_754_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 80 16 = true := by decide +kernel

theorem v_754_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 96 16 = true := by decide +kernel

theorem v_754_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 754 112 16 = true := by decide +kernel

theorem r_754 : recsK7OK T qscale den6 d14 lamN lamD l7 754 1 = true := recK7_of (n := 128) t_754 n_754 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_754_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_754_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_754_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_754_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_754_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_754_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_754_6 (v_754_7))))))))

theorem rs_753 : recsK7OK T qscale den6 d14 lamN lamD l7 753 2 = true := recsK7OK_succ (lo := 753) (n := 1) r_753 (r_754)

end BeatAvg.K.K7
