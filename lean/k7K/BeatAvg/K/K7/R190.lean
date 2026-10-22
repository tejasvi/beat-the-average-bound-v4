import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_643 : treeK7OK l7 643 = true := by decide +kernel

theorem n_643 : (recAt l7 643).2.2.2.length ≤ 160 := by decide +kernel

theorem v_643_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 0 16 = true := by decide +kernel

theorem v_643_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 16 16 = true := by decide +kernel

theorem v_643_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 32 16 = true := by decide +kernel

theorem v_643_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 48 16 = true := by decide +kernel

theorem v_643_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 64 16 = true := by decide +kernel

theorem v_643_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 80 16 = true := by decide +kernel

theorem v_643_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 96 16 = true := by decide +kernel

theorem v_643_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 112 16 = true := by decide +kernel

theorem v_643_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 128 16 = true := by decide +kernel

theorem v_643_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 643 144 16 = true := by decide +kernel

theorem r_643 : recsK7OK T qscale den6 d14 lamN lamD l7 643 1 = true := recK7_of (n := 160) t_643 n_643 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_643_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_643_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_643_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_643_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_643_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_643_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_643_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_643_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_643_8 (v_643_9))))))))))

theorem t_644 : treeK7OK l7 644 = true := by decide +kernel

theorem n_644 : (recAt l7 644).2.2.2.length ≤ 64 := by decide +kernel

theorem v_644_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 644 0 16 = true := by decide +kernel

theorem v_644_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 644 16 16 = true := by decide +kernel

theorem v_644_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 644 32 16 = true := by decide +kernel

theorem v_644_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 644 48 16 = true := by decide +kernel

theorem r_644 : recsK7OK T qscale den6 d14 lamN lamD l7 644 1 = true := recK7_of (n := 64) t_644 n_644 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_644_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_644_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_644_2 (v_644_3))))

theorem t_645 : treeK7OK l7 645 = true := by decide +kernel

theorem n_645 : (recAt l7 645).2.2.2.length ≤ 96 := by decide +kernel

theorem v_645_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 645 0 16 = true := by decide +kernel

theorem v_645_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 645 16 16 = true := by decide +kernel

theorem v_645_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 645 32 16 = true := by decide +kernel

theorem v_645_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 645 48 16 = true := by decide +kernel

theorem v_645_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 645 64 16 = true := by decide +kernel

theorem v_645_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 645 80 16 = true := by decide +kernel

theorem r_645 : recsK7OK T qscale den6 d14 lamN lamD l7 645 1 = true := recK7_of (n := 96) t_645 n_645 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_645_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_645_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_645_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_645_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_645_4 (v_645_5))))))

theorem rs_643 : recsK7OK T qscale den6 d14 lamN lamD l7 643 3 = true := recsK7OK_succ (lo := 643) (n := 2) r_643 (recsK7OK_succ (lo := 644) (n := 1) r_644 (r_645))

end BeatAvg.K.K7
