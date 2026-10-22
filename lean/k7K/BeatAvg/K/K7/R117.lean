import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_410 : treeK7OK l7 410 = true := by decide +kernel

theorem n_410 : (recAt l7 410).2.2.2.length ≤ 192 := by decide +kernel

theorem v_410_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 0 16 = true := by decide +kernel

theorem v_410_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 16 16 = true := by decide +kernel

theorem v_410_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 32 16 = true := by decide +kernel

theorem v_410_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 48 16 = true := by decide +kernel

theorem v_410_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 64 16 = true := by decide +kernel

theorem v_410_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 80 16 = true := by decide +kernel

theorem v_410_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 96 16 = true := by decide +kernel

theorem v_410_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 112 16 = true := by decide +kernel

theorem v_410_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 128 16 = true := by decide +kernel

theorem v_410_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 144 16 = true := by decide +kernel

theorem v_410_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 160 16 = true := by decide +kernel

theorem v_410_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 410 176 16 = true := by decide +kernel

theorem r_410 : recsK7OK T qscale den6 d14 lamN lamD l7 410 1 = true := recK7_of (n := 192) t_410 n_410 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_410_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_410_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_410_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_410_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_410_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_410_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_410_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_410_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_410_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_410_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_410_10 (v_410_11))))))))))))

theorem t_411 : treeK7OK l7 411 = true := by decide +kernel

theorem n_411 : (recAt l7 411).2.2.2.length ≤ 192 := by decide +kernel

theorem v_411_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 0 16 = true := by decide +kernel

theorem v_411_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 16 16 = true := by decide +kernel

theorem v_411_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 32 16 = true := by decide +kernel

theorem v_411_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 48 16 = true := by decide +kernel

theorem v_411_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 64 16 = true := by decide +kernel

theorem v_411_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 80 16 = true := by decide +kernel

theorem v_411_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 96 16 = true := by decide +kernel

theorem v_411_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 112 16 = true := by decide +kernel

theorem v_411_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 128 16 = true := by decide +kernel

theorem v_411_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 144 16 = true := by decide +kernel

theorem v_411_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 160 16 = true := by decide +kernel

theorem v_411_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 411 176 16 = true := by decide +kernel

theorem r_411 : recsK7OK T qscale den6 d14 lamN lamD l7 411 1 = true := recK7_of (n := 192) t_411 n_411 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_411_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_411_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_411_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_411_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_411_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_411_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_411_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_411_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_411_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_411_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_411_10 (v_411_11))))))))))))

theorem rs_410 : recsK7OK T qscale den6 d14 lamN lamD l7 410 2 = true := recsK7OK_succ (lo := 410) (n := 1) r_410 (r_411)

end BeatAvg.K.K7
