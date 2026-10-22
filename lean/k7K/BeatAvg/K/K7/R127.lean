import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_428 : treeK7OK l7 428 = true := by decide +kernel

theorem n_428 : (recAt l7 428).2.2.2.length ≤ 128 := by decide +kernel

theorem v_428_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 0 16 = true := by decide +kernel

theorem v_428_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 16 16 = true := by decide +kernel

theorem v_428_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 32 16 = true := by decide +kernel

theorem v_428_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 48 16 = true := by decide +kernel

theorem v_428_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 64 16 = true := by decide +kernel

theorem v_428_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 80 16 = true := by decide +kernel

theorem v_428_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 96 16 = true := by decide +kernel

theorem v_428_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 428 112 16 = true := by decide +kernel

theorem r_428 : recsK7OK T qscale den6 d14 lamN lamD l7 428 1 = true := recK7_of (n := 128) t_428 n_428 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_428_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_428_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_428_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_428_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_428_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_428_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_428_6 (v_428_7))))))))

theorem t_429 : treeK7OK l7 429 = true := by decide +kernel

theorem n_429 : (recAt l7 429).2.2.2.length ≤ 128 := by decide +kernel

theorem v_429_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 0 16 = true := by decide +kernel

theorem v_429_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 16 16 = true := by decide +kernel

theorem v_429_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 32 16 = true := by decide +kernel

theorem v_429_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 48 16 = true := by decide +kernel

theorem v_429_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 64 16 = true := by decide +kernel

theorem v_429_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 80 16 = true := by decide +kernel

theorem v_429_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 96 16 = true := by decide +kernel

theorem v_429_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 429 112 16 = true := by decide +kernel

theorem r_429 : recsK7OK T qscale den6 d14 lamN lamD l7 429 1 = true := recK7_of (n := 128) t_429 n_429 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_429_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_429_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_429_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_429_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_429_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_429_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_429_6 (v_429_7))))))))

theorem t_430 : treeK7OK l7 430 = true := by decide +kernel

theorem n_430 : (recAt l7 430).2.2.2.length ≤ 64 := by decide +kernel

theorem v_430_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 430 0 16 = true := by decide +kernel

theorem v_430_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 430 16 16 = true := by decide +kernel

theorem v_430_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 430 32 16 = true := by decide +kernel

theorem v_430_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 430 48 16 = true := by decide +kernel

theorem r_430 : recsK7OK T qscale den6 d14 lamN lamD l7 430 1 = true := recK7_of (n := 64) t_430 n_430 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_430_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_430_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_430_2 (v_430_3))))

theorem rs_428 : recsK7OK T qscale den6 d14 lamN lamD l7 428 3 = true := recsK7OK_succ (lo := 428) (n := 2) r_428 (recsK7OK_succ (lo := 429) (n := 1) r_429 (r_430))

end BeatAvg.K.K7
