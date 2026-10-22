import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_469 : treeK7OK l7 469 = true := by decide +kernel

theorem n_469 : (recAt l7 469).2.2.2.length ≤ 80 := by decide +kernel

theorem v_469_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 469 0 16 = true := by decide +kernel

theorem v_469_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 469 16 16 = true := by decide +kernel

theorem v_469_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 469 32 16 = true := by decide +kernel

theorem v_469_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 469 48 16 = true := by decide +kernel

theorem v_469_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 469 64 16 = true := by decide +kernel

theorem r_469 : recsK7OK T qscale den6 d14 lamN lamD l7 469 1 = true := recK7_of (n := 80) t_469 n_469 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_469_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_469_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_469_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_469_3 (v_469_4)))))

theorem t_470 : treeK7OK l7 470 = true := by decide +kernel

theorem n_470 : (recAt l7 470).2.2.2.length ≤ 240 := by decide +kernel

theorem v_470_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 0 16 = true := by decide +kernel

theorem v_470_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 16 16 = true := by decide +kernel

theorem v_470_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 32 16 = true := by decide +kernel

theorem v_470_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 48 16 = true := by decide +kernel

theorem v_470_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 64 16 = true := by decide +kernel

theorem v_470_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 80 16 = true := by decide +kernel

theorem v_470_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 96 16 = true := by decide +kernel

theorem v_470_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 112 16 = true := by decide +kernel

theorem v_470_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 128 16 = true := by decide +kernel

theorem v_470_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 144 16 = true := by decide +kernel

theorem v_470_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 160 16 = true := by decide +kernel

theorem v_470_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 176 16 = true := by decide +kernel

theorem v_470_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 192 16 = true := by decide +kernel

theorem v_470_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 208 16 = true := by decide +kernel

theorem v_470_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 470 224 16 = true := by decide +kernel

theorem r_470 : recsK7OK T qscale den6 d14 lamN lamD l7 470 1 = true := recK7_of (n := 240) t_470 n_470 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_470_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_470_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_470_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_470_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_470_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_470_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_470_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_470_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_470_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_470_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_470_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_470_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_470_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_470_13 (v_470_14)))))))))))))))

theorem rs_469 : recsK7OK T qscale den6 d14 lamN lamD l7 469 2 = true := recsK7OK_succ (lo := 469) (n := 1) r_469 (r_470)

end BeatAvg.K.K7
