import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_563 : treeK7OK l7 563 = true := by decide +kernel

theorem n_563 : (recAt l7 563).2.2.2.length ≤ 144 := by decide +kernel

theorem v_563_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 0 16 = true := by decide +kernel

theorem v_563_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 16 16 = true := by decide +kernel

theorem v_563_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 32 16 = true := by decide +kernel

theorem v_563_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 48 16 = true := by decide +kernel

theorem v_563_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 64 16 = true := by decide +kernel

theorem v_563_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 80 16 = true := by decide +kernel

theorem v_563_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 96 16 = true := by decide +kernel

theorem v_563_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 112 16 = true := by decide +kernel

theorem v_563_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 563 128 16 = true := by decide +kernel

theorem r_563 : recsK7OK T qscale den6 d14 lamN lamD l7 563 1 = true := recK7_of (n := 144) t_563 n_563 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_563_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_563_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_563_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_563_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_563_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_563_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_563_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_563_7 (v_563_8)))))))))

theorem t_564 : treeK7OK l7 564 = true := by decide +kernel

theorem n_564 : (recAt l7 564).2.2.2.length ≤ 80 := by decide +kernel

theorem v_564_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 564 0 16 = true := by decide +kernel

theorem v_564_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 564 16 16 = true := by decide +kernel

theorem v_564_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 564 32 16 = true := by decide +kernel

theorem v_564_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 564 48 16 = true := by decide +kernel

theorem v_564_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 564 64 16 = true := by decide +kernel

theorem r_564 : recsK7OK T qscale den6 d14 lamN lamD l7 564 1 = true := recK7_of (n := 80) t_564 n_564 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_564_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_564_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_564_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_564_3 (v_564_4)))))

theorem t_565 : treeK7OK l7 565 = true := by decide +kernel

theorem n_565 : (recAt l7 565).2.2.2.length ≤ 144 := by decide +kernel

theorem v_565_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 0 16 = true := by decide +kernel

theorem v_565_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 16 16 = true := by decide +kernel

theorem v_565_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 32 16 = true := by decide +kernel

theorem v_565_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 48 16 = true := by decide +kernel

theorem v_565_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 64 16 = true := by decide +kernel

theorem v_565_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 80 16 = true := by decide +kernel

theorem v_565_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 96 16 = true := by decide +kernel

theorem v_565_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 112 16 = true := by decide +kernel

theorem v_565_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 565 128 16 = true := by decide +kernel

theorem r_565 : recsK7OK T qscale den6 d14 lamN lamD l7 565 1 = true := recK7_of (n := 144) t_565 n_565 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_565_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_565_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_565_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_565_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_565_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_565_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_565_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_565_7 (v_565_8)))))))))

theorem rs_563 : recsK7OK T qscale den6 d14 lamN lamD l7 563 3 = true := recsK7OK_succ (lo := 563) (n := 2) r_563 (recsK7OK_succ (lo := 564) (n := 1) r_564 (r_565))

end BeatAvg.K.K7
