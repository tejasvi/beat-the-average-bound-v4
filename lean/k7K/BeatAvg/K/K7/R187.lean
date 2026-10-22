import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_636 : treeK7OK l7 636 = true := by decide +kernel

theorem n_636 : (recAt l7 636).2.2.2.length ≤ 224 := by decide +kernel

theorem v_636_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 0 16 = true := by decide +kernel

theorem v_636_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 16 16 = true := by decide +kernel

theorem v_636_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 32 16 = true := by decide +kernel

theorem v_636_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 48 16 = true := by decide +kernel

theorem v_636_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 64 16 = true := by decide +kernel

theorem v_636_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 80 16 = true := by decide +kernel

theorem v_636_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 96 16 = true := by decide +kernel

theorem v_636_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 112 16 = true := by decide +kernel

theorem v_636_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 128 16 = true := by decide +kernel

theorem v_636_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 144 16 = true := by decide +kernel

theorem v_636_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 160 16 = true := by decide +kernel

theorem v_636_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 176 16 = true := by decide +kernel

theorem v_636_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 192 16 = true := by decide +kernel

theorem v_636_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 636 208 16 = true := by decide +kernel

theorem r_636 : recsK7OK T qscale den6 d14 lamN lamD l7 636 1 = true := recK7_of (n := 224) t_636 n_636 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_636_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_636_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_636_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_636_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_636_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_636_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_636_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_636_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_636_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_636_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_636_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_636_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_636_12 (v_636_13))))))))))))))

theorem t_637 : treeK7OK l7 637 = true := by decide +kernel

theorem n_637 : (recAt l7 637).2.2.2.length ≤ 176 := by decide +kernel

theorem v_637_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 0 16 = true := by decide +kernel

theorem v_637_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 16 16 = true := by decide +kernel

theorem v_637_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 32 16 = true := by decide +kernel

theorem v_637_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 48 16 = true := by decide +kernel

theorem v_637_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 64 16 = true := by decide +kernel

theorem v_637_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 80 16 = true := by decide +kernel

theorem v_637_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 96 16 = true := by decide +kernel

theorem v_637_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 112 16 = true := by decide +kernel

theorem v_637_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 128 16 = true := by decide +kernel

theorem v_637_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 144 16 = true := by decide +kernel

theorem v_637_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 637 160 16 = true := by decide +kernel

theorem r_637 : recsK7OK T qscale den6 d14 lamN lamD l7 637 1 = true := recK7_of (n := 176) t_637 n_637 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_637_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_637_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_637_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_637_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_637_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_637_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_637_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_637_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_637_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_637_9 (v_637_10)))))))))))

theorem rs_636 : recsK7OK T qscale den6 d14 lamN lamD l7 636 2 = true := recsK7OK_succ (lo := 636) (n := 1) r_636 (r_637)

end BeatAvg.K.K7
