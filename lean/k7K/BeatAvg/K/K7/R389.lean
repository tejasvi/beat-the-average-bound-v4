import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1182 : treeK7OK l7 1182 = true := by decide +kernel

theorem n_1182 : (recAt l7 1182).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1182_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 0 16 = true := by decide +kernel

theorem v_1182_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 16 16 = true := by decide +kernel

theorem v_1182_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 32 16 = true := by decide +kernel

theorem v_1182_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 48 16 = true := by decide +kernel

theorem v_1182_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 64 16 = true := by decide +kernel

theorem v_1182_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 80 16 = true := by decide +kernel

theorem v_1182_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 96 16 = true := by decide +kernel

theorem v_1182_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 112 16 = true := by decide +kernel

theorem v_1182_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 128 16 = true := by decide +kernel

theorem v_1182_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1182 144 16 = true := by decide +kernel

theorem r_1182 : recsK7OK T qscale den6 d14 lamN lamD l7 1182 1 = true := recK7_of (n := 160) t_1182 n_1182 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1182_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1182_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1182_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1182_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1182_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1182_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1182_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1182_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1182_8 (v_1182_9))))))))))

theorem t_1183 : treeK7OK l7 1183 = true := by decide +kernel

theorem n_1183 : (recAt l7 1183).2.2.2.length ≤ 192 := by decide +kernel

theorem v_1183_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 0 16 = true := by decide +kernel

theorem v_1183_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 16 16 = true := by decide +kernel

theorem v_1183_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 32 16 = true := by decide +kernel

theorem v_1183_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 48 16 = true := by decide +kernel

theorem v_1183_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 64 16 = true := by decide +kernel

theorem v_1183_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 80 16 = true := by decide +kernel

theorem v_1183_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 96 16 = true := by decide +kernel

theorem v_1183_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 112 16 = true := by decide +kernel

theorem v_1183_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 128 16 = true := by decide +kernel

theorem v_1183_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 144 16 = true := by decide +kernel

theorem v_1183_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 160 16 = true := by decide +kernel

theorem v_1183_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1183 176 16 = true := by decide +kernel

theorem r_1183 : recsK7OK T qscale den6 d14 lamN lamD l7 1183 1 = true := recK7_of (n := 192) t_1183 n_1183 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_1183_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_1183_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_1183_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_1183_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_1183_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_1183_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_1183_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_1183_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_1183_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_1183_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_1183_10 (v_1183_11))))))))))))

theorem rs_1182 : recsK7OK T qscale den6 d14 lamN lamD l7 1182 2 = true := recsK7OK_succ (lo := 1182) (n := 1) r_1182 (r_1183)

end BeatAvg.K.K7
