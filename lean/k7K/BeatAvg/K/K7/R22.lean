import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_74 : treeK7OK l7 74 = true := by decide +kernel

theorem n_74 : (recAt l7 74).2.2.2.length ≤ 224 := by decide +kernel

theorem v_74_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 0 16 = true := by decide +kernel

theorem v_74_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 16 16 = true := by decide +kernel

theorem v_74_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 32 16 = true := by decide +kernel

theorem v_74_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 48 16 = true := by decide +kernel

theorem v_74_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 64 16 = true := by decide +kernel

theorem v_74_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 80 16 = true := by decide +kernel

theorem v_74_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 96 16 = true := by decide +kernel

theorem v_74_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 112 16 = true := by decide +kernel

theorem v_74_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 128 16 = true := by decide +kernel

theorem v_74_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 144 16 = true := by decide +kernel

theorem v_74_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 160 16 = true := by decide +kernel

theorem v_74_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 176 16 = true := by decide +kernel

theorem v_74_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 192 16 = true := by decide +kernel

theorem v_74_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 74 208 16 = true := by decide +kernel

theorem r_74 : recsK7OK T qscale den6 d14 lamN lamD l7 74 1 = true := recK7_of (n := 224) t_74 n_74 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_74_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_74_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_74_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_74_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_74_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_74_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_74_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_74_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_74_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_74_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_74_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_74_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_74_12 (v_74_13))))))))))))))

theorem t_75 : treeK7OK l7 75 = true := by decide +kernel

theorem n_75 : (recAt l7 75).2.2.2.length ≤ 32 := by decide +kernel

theorem v_75_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 75 0 16 = true := by decide +kernel

theorem v_75_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 75 16 16 = true := by decide +kernel

theorem r_75 : recsK7OK T qscale den6 d14 lamN lamD l7 75 1 = true := recK7_of (n := 32) t_75 n_75 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_75_0 (v_75_1))

theorem t_76 : treeK7OK l7 76 = true := by decide +kernel

theorem n_76 : (recAt l7 76).2.2.2.length ≤ 128 := by decide +kernel

theorem v_76_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 0 16 = true := by decide +kernel

theorem v_76_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 16 16 = true := by decide +kernel

theorem v_76_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 32 16 = true := by decide +kernel

theorem v_76_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 48 16 = true := by decide +kernel

theorem v_76_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 64 16 = true := by decide +kernel

theorem v_76_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 80 16 = true := by decide +kernel

theorem v_76_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 96 16 = true := by decide +kernel

theorem v_76_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 76 112 16 = true := by decide +kernel

theorem r_76 : recsK7OK T qscale den6 d14 lamN lamD l7 76 1 = true := recK7_of (n := 128) t_76 n_76 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_76_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_76_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_76_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_76_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_76_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_76_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_76_6 (v_76_7))))))))

theorem rs_74 : recsK7OK T qscale den6 d14 lamN lamD l7 74 3 = true := recsK7OK_succ (lo := 74) (n := 2) r_74 (recsK7OK_succ (lo := 75) (n := 1) r_75 (r_76))

end BeatAvg.K.K7
