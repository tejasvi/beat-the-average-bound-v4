import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_129 : treeK7OK l7 129 = true := by decide +kernel

theorem n_129 : (recAt l7 129).2.2.2.length ≤ 144 := by decide +kernel

theorem v_129_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 0 16 = true := by decide +kernel

theorem v_129_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 16 16 = true := by decide +kernel

theorem v_129_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 32 16 = true := by decide +kernel

theorem v_129_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 48 16 = true := by decide +kernel

theorem v_129_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 64 16 = true := by decide +kernel

theorem v_129_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 80 16 = true := by decide +kernel

theorem v_129_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 96 16 = true := by decide +kernel

theorem v_129_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 112 16 = true := by decide +kernel

theorem v_129_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 129 128 16 = true := by decide +kernel

theorem r_129 : recsK7OK T qscale den6 d14 lamN lamD l7 129 1 = true := recK7_of (n := 144) t_129 n_129 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_129_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_129_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_129_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_129_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_129_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_129_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_129_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_129_7 (v_129_8)))))))))

theorem t_130 : treeK7OK l7 130 = true := by decide +kernel

theorem n_130 : (recAt l7 130).2.2.2.length ≤ 192 := by decide +kernel

theorem v_130_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 0 16 = true := by decide +kernel

theorem v_130_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 16 16 = true := by decide +kernel

theorem v_130_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 32 16 = true := by decide +kernel

theorem v_130_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 48 16 = true := by decide +kernel

theorem v_130_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 64 16 = true := by decide +kernel

theorem v_130_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 80 16 = true := by decide +kernel

theorem v_130_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 96 16 = true := by decide +kernel

theorem v_130_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 112 16 = true := by decide +kernel

theorem v_130_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 128 16 = true := by decide +kernel

theorem v_130_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 144 16 = true := by decide +kernel

theorem v_130_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 160 16 = true := by decide +kernel

theorem v_130_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 130 176 16 = true := by decide +kernel

theorem r_130 : recsK7OK T qscale den6 d14 lamN lamD l7 130 1 = true := recK7_of (n := 192) t_130 n_130 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_130_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_130_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_130_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_130_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_130_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_130_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_130_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_130_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_130_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_130_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_130_10 (v_130_11))))))))))))

theorem rs_129 : recsK7OK T qscale den6 d14 lamN lamD l7 129 2 = true := recsK7OK_succ (lo := 129) (n := 1) r_129 (r_130)

end BeatAvg.K.K7
