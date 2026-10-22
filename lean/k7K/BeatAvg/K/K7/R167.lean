import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_561 : treeK7OK l7 561 = true := by decide +kernel

theorem n_561 : (recAt l7 561).2.2.2.length ≤ 112 := by decide +kernel

theorem v_561_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 561 0 16 = true := by decide +kernel

theorem v_561_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 561 16 16 = true := by decide +kernel

theorem v_561_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 561 32 16 = true := by decide +kernel

theorem v_561_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 561 48 16 = true := by decide +kernel

theorem v_561_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 561 64 16 = true := by decide +kernel

theorem v_561_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 561 80 16 = true := by decide +kernel

theorem v_561_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 561 96 16 = true := by decide +kernel

theorem r_561 : recsK7OK T qscale den6 d14 lamN lamD l7 561 1 = true := recK7_of (n := 112) t_561 n_561 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_561_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_561_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_561_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_561_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_561_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_561_5 (v_561_6)))))))

theorem t_562 : treeK7OK l7 562 = true := by decide +kernel

theorem n_562 : (recAt l7 562).2.2.2.length ≤ 192 := by decide +kernel

theorem v_562_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 0 16 = true := by decide +kernel

theorem v_562_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 16 16 = true := by decide +kernel

theorem v_562_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 32 16 = true := by decide +kernel

theorem v_562_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 48 16 = true := by decide +kernel

theorem v_562_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 64 16 = true := by decide +kernel

theorem v_562_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 80 16 = true := by decide +kernel

theorem v_562_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 96 16 = true := by decide +kernel

theorem v_562_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 112 16 = true := by decide +kernel

theorem v_562_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 128 16 = true := by decide +kernel

theorem v_562_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 144 16 = true := by decide +kernel

theorem v_562_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 160 16 = true := by decide +kernel

theorem v_562_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 562 176 16 = true := by decide +kernel

theorem r_562 : recsK7OK T qscale den6 d14 lamN lamD l7 562 1 = true := recK7_of (n := 192) t_562 n_562 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_562_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_562_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_562_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_562_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_562_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_562_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_562_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_562_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_562_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_562_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_562_10 (v_562_11))))))))))))

theorem rs_561 : recsK7OK T qscale den6 d14 lamN lamD l7 561 2 = true := recsK7OK_succ (lo := 561) (n := 1) r_561 (r_562)

end BeatAvg.K.K7
