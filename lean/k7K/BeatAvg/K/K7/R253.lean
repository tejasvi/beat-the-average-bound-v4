import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_817 : treeK7OK l7 817 = true := by decide +kernel

theorem n_817 : (recAt l7 817).2.2.2.length ≤ 144 := by decide +kernel

theorem v_817_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 0 16 = true := by decide +kernel

theorem v_817_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 16 16 = true := by decide +kernel

theorem v_817_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 32 16 = true := by decide +kernel

theorem v_817_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 48 16 = true := by decide +kernel

theorem v_817_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 64 16 = true := by decide +kernel

theorem v_817_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 80 16 = true := by decide +kernel

theorem v_817_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 96 16 = true := by decide +kernel

theorem v_817_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 112 16 = true := by decide +kernel

theorem v_817_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 817 128 16 = true := by decide +kernel

theorem r_817 : recsK7OK T qscale den6 d14 lamN lamD l7 817 1 = true := recK7_of (n := 144) t_817 n_817 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_817_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_817_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_817_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_817_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_817_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_817_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_817_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_817_7 (v_817_8)))))))))

theorem t_818 : treeK7OK l7 818 = true := by decide +kernel

theorem n_818 : (recAt l7 818).2.2.2.length ≤ 208 := by decide +kernel

theorem v_818_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 0 16 = true := by decide +kernel

theorem v_818_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 16 16 = true := by decide +kernel

theorem v_818_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 32 16 = true := by decide +kernel

theorem v_818_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 48 16 = true := by decide +kernel

theorem v_818_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 64 16 = true := by decide +kernel

theorem v_818_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 80 16 = true := by decide +kernel

theorem v_818_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 96 16 = true := by decide +kernel

theorem v_818_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 112 16 = true := by decide +kernel

theorem v_818_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 128 16 = true := by decide +kernel

theorem v_818_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 144 16 = true := by decide +kernel

theorem v_818_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 160 16 = true := by decide +kernel

theorem v_818_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 176 16 = true := by decide +kernel

theorem v_818_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 818 192 16 = true := by decide +kernel

theorem r_818 : recsK7OK T qscale den6 d14 lamN lamD l7 818 1 = true := recK7_of (n := 208) t_818 n_818 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_818_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_818_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_818_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_818_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_818_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_818_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_818_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_818_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_818_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_818_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_818_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_818_11 (v_818_12)))))))))))))

theorem rs_817 : recsK7OK T qscale den6 d14 lamN lamD l7 817 2 = true := recsK7OK_succ (lo := 817) (n := 1) r_817 (r_818)

end BeatAvg.K.K7
