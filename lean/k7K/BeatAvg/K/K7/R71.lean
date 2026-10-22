import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_265 : treeK7OK l7 265 = true := by decide +kernel

theorem n_265 : (recAt l7 265).2.2.2.length ≤ 144 := by decide +kernel

theorem v_265_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 0 16 = true := by decide +kernel

theorem v_265_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 16 16 = true := by decide +kernel

theorem v_265_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 32 16 = true := by decide +kernel

theorem v_265_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 48 16 = true := by decide +kernel

theorem v_265_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 64 16 = true := by decide +kernel

theorem v_265_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 80 16 = true := by decide +kernel

theorem v_265_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 96 16 = true := by decide +kernel

theorem v_265_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 112 16 = true := by decide +kernel

theorem v_265_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 265 128 16 = true := by decide +kernel

theorem r_265 : recsK7OK T qscale den6 d14 lamN lamD l7 265 1 = true := recK7_of (n := 144) t_265 n_265 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_265_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_265_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_265_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_265_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_265_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_265_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_265_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_265_7 (v_265_8)))))))))

theorem t_266 : treeK7OK l7 266 = true := by decide +kernel

theorem n_266 : (recAt l7 266).2.2.2.length ≤ 160 := by decide +kernel

theorem v_266_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 0 16 = true := by decide +kernel

theorem v_266_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 16 16 = true := by decide +kernel

theorem v_266_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 32 16 = true := by decide +kernel

theorem v_266_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 48 16 = true := by decide +kernel

theorem v_266_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 64 16 = true := by decide +kernel

theorem v_266_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 80 16 = true := by decide +kernel

theorem v_266_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 96 16 = true := by decide +kernel

theorem v_266_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 112 16 = true := by decide +kernel

theorem v_266_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 128 16 = true := by decide +kernel

theorem v_266_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 266 144 16 = true := by decide +kernel

theorem r_266 : recsK7OK T qscale den6 d14 lamN lamD l7 266 1 = true := recK7_of (n := 160) t_266 n_266 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_266_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_266_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_266_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_266_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_266_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_266_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_266_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_266_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_266_8 (v_266_9))))))))))

theorem rs_265 : recsK7OK T qscale den6 d14 lamN lamD l7 265 2 = true := recsK7OK_succ (lo := 265) (n := 1) r_265 (r_266)

end BeatAvg.K.K7
