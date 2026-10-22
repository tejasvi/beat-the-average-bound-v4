import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_461 : treeK7OK l7 461 = true := by decide +kernel

theorem n_461 : (recAt l7 461).2.2.2.length ≤ 48 := by decide +kernel

theorem v_461_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 461 0 16 = true := by decide +kernel

theorem v_461_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 461 16 16 = true := by decide +kernel

theorem v_461_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 461 32 16 = true := by decide +kernel

theorem r_461 : recsK7OK T qscale den6 d14 lamN lamD l7 461 1 = true := recK7_of (n := 48) t_461 n_461 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_461_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_461_1 (v_461_2)))

theorem t_462 : treeK7OK l7 462 = true := by decide +kernel

theorem n_462 : (recAt l7 462).2.2.2.length ≤ 128 := by decide +kernel

theorem v_462_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 0 16 = true := by decide +kernel

theorem v_462_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 16 16 = true := by decide +kernel

theorem v_462_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 32 16 = true := by decide +kernel

theorem v_462_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 48 16 = true := by decide +kernel

theorem v_462_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 64 16 = true := by decide +kernel

theorem v_462_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 80 16 = true := by decide +kernel

theorem v_462_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 96 16 = true := by decide +kernel

theorem v_462_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 462 112 16 = true := by decide +kernel

theorem r_462 : recsK7OK T qscale den6 d14 lamN lamD l7 462 1 = true := recK7_of (n := 128) t_462 n_462 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_462_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_462_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_462_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_462_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_462_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_462_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_462_6 (v_462_7))))))))

theorem t_463 : treeK7OK l7 463 = true := by decide +kernel

theorem n_463 : (recAt l7 463).2.2.2.length ≤ 240 := by decide +kernel

theorem v_463_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 0 16 = true := by decide +kernel

theorem v_463_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 16 16 = true := by decide +kernel

theorem v_463_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 32 16 = true := by decide +kernel

theorem v_463_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 48 16 = true := by decide +kernel

theorem v_463_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 64 16 = true := by decide +kernel

theorem v_463_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 80 16 = true := by decide +kernel

theorem v_463_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 96 16 = true := by decide +kernel

theorem v_463_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 112 16 = true := by decide +kernel

theorem v_463_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 128 16 = true := by decide +kernel

theorem v_463_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 144 16 = true := by decide +kernel

theorem v_463_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 160 16 = true := by decide +kernel

theorem v_463_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 176 16 = true := by decide +kernel

theorem v_463_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 192 16 = true := by decide +kernel

theorem v_463_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 208 16 = true := by decide +kernel

theorem v_463_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 463 224 16 = true := by decide +kernel

theorem r_463 : recsK7OK T qscale den6 d14 lamN lamD l7 463 1 = true := recK7_of (n := 240) t_463 n_463 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_463_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_463_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_463_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_463_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_463_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_463_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_463_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_463_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_463_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_463_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_463_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_463_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_463_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_463_13 (v_463_14)))))))))))))))

theorem rs_461 : recsK7OK T qscale den6 d14 lamN lamD l7 461 3 = true := recsK7OK_succ (lo := 461) (n := 2) r_461 (recsK7OK_succ (lo := 462) (n := 1) r_462 (r_463))

end BeatAvg.K.K7
