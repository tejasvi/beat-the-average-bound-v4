import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_282 : treeK7OK l7 282 = true := by decide +kernel

theorem n_282 : (recAt l7 282).2.2.2.length ≤ 208 := by decide +kernel

theorem v_282_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 0 16 = true := by decide +kernel

theorem v_282_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 16 16 = true := by decide +kernel

theorem v_282_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 32 16 = true := by decide +kernel

theorem v_282_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 48 16 = true := by decide +kernel

theorem v_282_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 64 16 = true := by decide +kernel

theorem v_282_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 80 16 = true := by decide +kernel

theorem v_282_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 96 16 = true := by decide +kernel

theorem v_282_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 112 16 = true := by decide +kernel

theorem v_282_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 128 16 = true := by decide +kernel

theorem v_282_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 144 16 = true := by decide +kernel

theorem v_282_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 160 16 = true := by decide +kernel

theorem v_282_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 176 16 = true := by decide +kernel

theorem v_282_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 282 192 16 = true := by decide +kernel

theorem r_282 : recsK7OK T qscale den6 d14 lamN lamD l7 282 1 = true := recK7_of (n := 208) t_282 n_282 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_282_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_282_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_282_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_282_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_282_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_282_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_282_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_282_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_282_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_282_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_282_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_282_11 (v_282_12)))))))))))))

theorem t_283 : treeK7OK l7 283 = true := by decide +kernel

theorem n_283 : (recAt l7 283).2.2.2.length ≤ 160 := by decide +kernel

theorem v_283_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 0 16 = true := by decide +kernel

theorem v_283_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 16 16 = true := by decide +kernel

theorem v_283_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 32 16 = true := by decide +kernel

theorem v_283_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 48 16 = true := by decide +kernel

theorem v_283_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 64 16 = true := by decide +kernel

theorem v_283_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 80 16 = true := by decide +kernel

theorem v_283_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 96 16 = true := by decide +kernel

theorem v_283_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 112 16 = true := by decide +kernel

theorem v_283_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 128 16 = true := by decide +kernel

theorem v_283_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 283 144 16 = true := by decide +kernel

theorem r_283 : recsK7OK T qscale den6 d14 lamN lamD l7 283 1 = true := recK7_of (n := 160) t_283 n_283 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_283_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_283_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_283_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_283_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_283_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_283_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_283_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_283_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_283_8 (v_283_9))))))))))

theorem rs_282 : recsK7OK T qscale den6 d14 lamN lamD l7 282 2 = true := recsK7OK_succ (lo := 282) (n := 1) r_282 (r_283)

end BeatAvg.K.K7
