import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1169 : treeK7OK l7 1169 = true := by decide +kernel

theorem n_1169 : (recAt l7 1169).2.2.2.length ≤ 224 := by decide +kernel

theorem v_1169_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 0 16 = true := by decide +kernel

theorem v_1169_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 16 16 = true := by decide +kernel

theorem v_1169_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 32 16 = true := by decide +kernel

theorem v_1169_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 48 16 = true := by decide +kernel

theorem v_1169_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 64 16 = true := by decide +kernel

theorem v_1169_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 80 16 = true := by decide +kernel

theorem v_1169_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 96 16 = true := by decide +kernel

theorem v_1169_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 112 16 = true := by decide +kernel

theorem v_1169_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 128 16 = true := by decide +kernel

theorem v_1169_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 144 16 = true := by decide +kernel

theorem v_1169_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 160 16 = true := by decide +kernel

theorem v_1169_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 176 16 = true := by decide +kernel

theorem v_1169_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 192 16 = true := by decide +kernel

theorem v_1169_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 1169 208 16 = true := by decide +kernel

theorem r_1169 : recsK7OK T qscale den6 d14 lamN lamD l7 1169 1 = true := recK7_of (n := 224) t_1169 n_1169 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_1169_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_1169_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_1169_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_1169_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_1169_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_1169_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_1169_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_1169_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_1169_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_1169_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_1169_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_1169_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_1169_12 (v_1169_13))))))))))))))

theorem t_1170 : treeK7OK l7 1170 = true := by decide +kernel

theorem n_1170 : (recAt l7 1170).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1170_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 0 16 = true := by decide +kernel

theorem v_1170_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 16 16 = true := by decide +kernel

theorem v_1170_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 32 16 = true := by decide +kernel

theorem v_1170_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 48 16 = true := by decide +kernel

theorem v_1170_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 64 16 = true := by decide +kernel

theorem v_1170_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 80 16 = true := by decide +kernel

theorem v_1170_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 96 16 = true := by decide +kernel

theorem v_1170_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1170 112 16 = true := by decide +kernel

theorem r_1170 : recsK7OK T qscale den6 d14 lamN lamD l7 1170 1 = true := recK7_of (n := 128) t_1170 n_1170 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1170_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1170_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1170_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1170_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1170_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1170_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1170_6 (v_1170_7))))))))

theorem rs_1169 : recsK7OK T qscale den6 d14 lamN lamD l7 1169 2 = true := recsK7OK_succ (lo := 1169) (n := 1) r_1169 (r_1170)

end BeatAvg.K.K7
