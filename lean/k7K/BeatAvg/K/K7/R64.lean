import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_240 : treeK7OK l7 240 = true := by decide +kernel

theorem n_240 : (recAt l7 240).2.2.2.length ≤ 176 := by decide +kernel

theorem v_240_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 0 16 = true := by decide +kernel

theorem v_240_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 16 16 = true := by decide +kernel

theorem v_240_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 32 16 = true := by decide +kernel

theorem v_240_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 48 16 = true := by decide +kernel

theorem v_240_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 64 16 = true := by decide +kernel

theorem v_240_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 80 16 = true := by decide +kernel

theorem v_240_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 96 16 = true := by decide +kernel

theorem v_240_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 112 16 = true := by decide +kernel

theorem v_240_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 128 16 = true := by decide +kernel

theorem v_240_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 144 16 = true := by decide +kernel

theorem v_240_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 240 160 16 = true := by decide +kernel

theorem r_240 : recsK7OK T qscale den6 d14 lamN lamD l7 240 1 = true := recK7_of (n := 176) t_240 n_240 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_240_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_240_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_240_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_240_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_240_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_240_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_240_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_240_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_240_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_240_9 (v_240_10)))))))))))

theorem t_241 : treeK7OK l7 241 = true := by decide +kernel

theorem n_241 : (recAt l7 241).2.2.2.length ≤ 144 := by decide +kernel

theorem v_241_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 0 16 = true := by decide +kernel

theorem v_241_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 16 16 = true := by decide +kernel

theorem v_241_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 32 16 = true := by decide +kernel

theorem v_241_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 48 16 = true := by decide +kernel

theorem v_241_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 64 16 = true := by decide +kernel

theorem v_241_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 80 16 = true := by decide +kernel

theorem v_241_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 96 16 = true := by decide +kernel

theorem v_241_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 112 16 = true := by decide +kernel

theorem v_241_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 241 128 16 = true := by decide +kernel

theorem r_241 : recsK7OK T qscale den6 d14 lamN lamD l7 241 1 = true := recK7_of (n := 144) t_241 n_241 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_241_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_241_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_241_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_241_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_241_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_241_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_241_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_241_7 (v_241_8)))))))))

theorem rs_240 : recsK7OK T qscale den6 d14 lamN lamD l7 240 2 = true := recsK7OK_succ (lo := 240) (n := 1) r_240 (r_241)

end BeatAvg.K.K7
