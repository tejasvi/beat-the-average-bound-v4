import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_115 : treeK7OK l7 115 = true := by decide +kernel

theorem n_115 : (recAt l7 115).2.2.2.length ≤ 176 := by decide +kernel

theorem v_115_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 0 16 = true := by decide +kernel

theorem v_115_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 16 16 = true := by decide +kernel

theorem v_115_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 32 16 = true := by decide +kernel

theorem v_115_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 48 16 = true := by decide +kernel

theorem v_115_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 64 16 = true := by decide +kernel

theorem v_115_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 80 16 = true := by decide +kernel

theorem v_115_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 96 16 = true := by decide +kernel

theorem v_115_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 112 16 = true := by decide +kernel

theorem v_115_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 128 16 = true := by decide +kernel

theorem v_115_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 144 16 = true := by decide +kernel

theorem v_115_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 115 160 16 = true := by decide +kernel

theorem r_115 : recsK7OK T qscale den6 d14 lamN lamD l7 115 1 = true := recK7_of (n := 176) t_115 n_115 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_115_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_115_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_115_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_115_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_115_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_115_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_115_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_115_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_115_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_115_9 (v_115_10)))))))))))

theorem t_116 : treeK7OK l7 116 = true := by decide +kernel

theorem n_116 : (recAt l7 116).2.2.2.length ≤ 208 := by decide +kernel

theorem v_116_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 0 16 = true := by decide +kernel

theorem v_116_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 16 16 = true := by decide +kernel

theorem v_116_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 32 16 = true := by decide +kernel

theorem v_116_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 48 16 = true := by decide +kernel

theorem v_116_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 64 16 = true := by decide +kernel

theorem v_116_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 80 16 = true := by decide +kernel

theorem v_116_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 96 16 = true := by decide +kernel

theorem v_116_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 112 16 = true := by decide +kernel

theorem v_116_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 128 16 = true := by decide +kernel

theorem v_116_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 144 16 = true := by decide +kernel

theorem v_116_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 160 16 = true := by decide +kernel

theorem v_116_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 176 16 = true := by decide +kernel

theorem v_116_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 116 192 16 = true := by decide +kernel

theorem r_116 : recsK7OK T qscale den6 d14 lamN lamD l7 116 1 = true := recK7_of (n := 208) t_116 n_116 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_116_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_116_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_116_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_116_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_116_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_116_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_116_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_116_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_116_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_116_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_116_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_116_11 (v_116_12)))))))))))))

theorem rs_115 : recsK7OK T qscale den6 d14 lamN lamD l7 115 2 = true := recsK7OK_succ (lo := 115) (n := 1) r_115 (r_116)

end BeatAvg.K.K7
