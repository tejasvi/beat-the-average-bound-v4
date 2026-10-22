import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_379 : treeK7OK l7 379 = true := by decide +kernel

theorem n_379 : (recAt l7 379).2.2.2.length ≤ 208 := by decide +kernel

theorem v_379_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 0 16 = true := by decide +kernel

theorem v_379_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 16 16 = true := by decide +kernel

theorem v_379_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 32 16 = true := by decide +kernel

theorem v_379_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 48 16 = true := by decide +kernel

theorem v_379_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 64 16 = true := by decide +kernel

theorem v_379_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 80 16 = true := by decide +kernel

theorem v_379_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 96 16 = true := by decide +kernel

theorem v_379_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 112 16 = true := by decide +kernel

theorem v_379_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 128 16 = true := by decide +kernel

theorem v_379_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 144 16 = true := by decide +kernel

theorem v_379_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 160 16 = true := by decide +kernel

theorem v_379_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 176 16 = true := by decide +kernel

theorem v_379_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 379 192 16 = true := by decide +kernel

theorem r_379 : recsK7OK T qscale den6 d14 lamN lamD l7 379 1 = true := recK7_of (n := 208) t_379 n_379 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_379_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_379_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_379_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_379_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_379_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_379_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_379_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_379_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_379_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_379_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_379_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_379_11 (v_379_12)))))))))))))

theorem t_380 : treeK7OK l7 380 = true := by decide +kernel

theorem n_380 : (recAt l7 380).2.2.2.length ≤ 112 := by decide +kernel

theorem v_380_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 380 0 16 = true := by decide +kernel

theorem v_380_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 380 16 16 = true := by decide +kernel

theorem v_380_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 380 32 16 = true := by decide +kernel

theorem v_380_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 380 48 16 = true := by decide +kernel

theorem v_380_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 380 64 16 = true := by decide +kernel

theorem v_380_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 380 80 16 = true := by decide +kernel

theorem v_380_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 380 96 16 = true := by decide +kernel

theorem r_380 : recsK7OK T qscale den6 d14 lamN lamD l7 380 1 = true := recK7_of (n := 112) t_380 n_380 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_380_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_380_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_380_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_380_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_380_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_380_5 (v_380_6)))))))

theorem rs_379 : recsK7OK T qscale den6 d14 lamN lamD l7 379 2 = true := recsK7OK_succ (lo := 379) (n := 1) r_379 (r_380)

end BeatAvg.K.K7
