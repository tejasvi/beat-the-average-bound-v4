import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_523 : treeK7OK l7 523 = true := by decide +kernel

theorem n_523 : (recAt l7 523).2.2.2.length ≤ 208 := by decide +kernel

theorem v_523_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 0 16 = true := by decide +kernel

theorem v_523_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 16 16 = true := by decide +kernel

theorem v_523_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 32 16 = true := by decide +kernel

theorem v_523_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 48 16 = true := by decide +kernel

theorem v_523_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 64 16 = true := by decide +kernel

theorem v_523_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 80 16 = true := by decide +kernel

theorem v_523_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 96 16 = true := by decide +kernel

theorem v_523_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 112 16 = true := by decide +kernel

theorem v_523_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 128 16 = true := by decide +kernel

theorem v_523_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 144 16 = true := by decide +kernel

theorem v_523_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 160 16 = true := by decide +kernel

theorem v_523_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 176 16 = true := by decide +kernel

theorem v_523_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 523 192 16 = true := by decide +kernel

theorem r_523 : recsK7OK T qscale den6 d14 lamN lamD l7 523 1 = true := recK7_of (n := 208) t_523 n_523 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_523_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_523_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_523_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_523_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_523_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_523_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_523_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_523_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_523_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_523_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_523_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_523_11 (v_523_12)))))))))))))

theorem t_524 : treeK7OK l7 524 = true := by decide +kernel

theorem n_524 : (recAt l7 524).2.2.2.length ≤ 64 := by decide +kernel

theorem v_524_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 524 0 16 = true := by decide +kernel

theorem v_524_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 524 16 16 = true := by decide +kernel

theorem v_524_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 524 32 16 = true := by decide +kernel

theorem v_524_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 524 48 16 = true := by decide +kernel

theorem r_524 : recsK7OK T qscale den6 d14 lamN lamD l7 524 1 = true := recK7_of (n := 64) t_524 n_524 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_524_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_524_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_524_2 (v_524_3))))

theorem t_525 : treeK7OK l7 525 = true := by decide +kernel

theorem n_525 : (recAt l7 525).2.2.2.length ≤ 80 := by decide +kernel

theorem v_525_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 525 0 16 = true := by decide +kernel

theorem v_525_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 525 16 16 = true := by decide +kernel

theorem v_525_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 525 32 16 = true := by decide +kernel

theorem v_525_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 525 48 16 = true := by decide +kernel

theorem v_525_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 525 64 16 = true := by decide +kernel

theorem r_525 : recsK7OK T qscale den6 d14 lamN lamD l7 525 1 = true := recK7_of (n := 80) t_525 n_525 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_525_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_525_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_525_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_525_3 (v_525_4)))))

theorem t_526 : treeK7OK l7 526 = true := by decide +kernel

theorem n_526 : (recAt l7 526).2.2.2.length ≤ 64 := by decide +kernel

theorem v_526_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 526 0 16 = true := by decide +kernel

theorem v_526_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 526 16 16 = true := by decide +kernel

theorem v_526_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 526 32 16 = true := by decide +kernel

theorem v_526_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 526 48 16 = true := by decide +kernel

theorem r_526 : recsK7OK T qscale den6 d14 lamN lamD l7 526 1 = true := recK7_of (n := 64) t_526 n_526 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_526_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_526_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_526_2 (v_526_3))))

theorem rs_523 : recsK7OK T qscale den6 d14 lamN lamD l7 523 4 = true := recsK7OK_succ (lo := 523) (n := 3) r_523 (recsK7OK_succ (lo := 524) (n := 2) r_524 (recsK7OK_succ (lo := 525) (n := 1) r_525 (r_526)))

end BeatAvg.K.K7
