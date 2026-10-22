import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_362 : treeK7OK l7 362 = true := by decide +kernel

theorem n_362 : (recAt l7 362).2.2.2.length ≤ 192 := by decide +kernel

theorem v_362_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 0 16 = true := by decide +kernel

theorem v_362_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 16 16 = true := by decide +kernel

theorem v_362_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 32 16 = true := by decide +kernel

theorem v_362_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 48 16 = true := by decide +kernel

theorem v_362_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 64 16 = true := by decide +kernel

theorem v_362_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 80 16 = true := by decide +kernel

theorem v_362_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 96 16 = true := by decide +kernel

theorem v_362_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 112 16 = true := by decide +kernel

theorem v_362_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 128 16 = true := by decide +kernel

theorem v_362_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 144 16 = true := by decide +kernel

theorem v_362_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 160 16 = true := by decide +kernel

theorem v_362_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 362 176 16 = true := by decide +kernel

theorem r_362 : recsK7OK T qscale den6 d14 lamN lamD l7 362 1 = true := recK7_of (n := 192) t_362 n_362 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_362_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_362_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_362_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_362_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_362_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_362_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_362_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_362_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_362_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_362_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_362_10 (v_362_11))))))))))))

theorem t_363 : treeK7OK l7 363 = true := by decide +kernel

theorem n_363 : (recAt l7 363).2.2.2.length ≤ 64 := by decide +kernel

theorem v_363_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 363 0 16 = true := by decide +kernel

theorem v_363_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 363 16 16 = true := by decide +kernel

theorem v_363_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 363 32 16 = true := by decide +kernel

theorem v_363_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 363 48 16 = true := by decide +kernel

theorem r_363 : recsK7OK T qscale den6 d14 lamN lamD l7 363 1 = true := recK7_of (n := 64) t_363 n_363 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_363_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_363_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_363_2 (v_363_3))))

theorem t_364 : treeK7OK l7 364 = true := by decide +kernel

theorem n_364 : (recAt l7 364).2.2.2.length ≤ 128 := by decide +kernel

theorem v_364_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 0 16 = true := by decide +kernel

theorem v_364_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 16 16 = true := by decide +kernel

theorem v_364_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 32 16 = true := by decide +kernel

theorem v_364_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 48 16 = true := by decide +kernel

theorem v_364_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 64 16 = true := by decide +kernel

theorem v_364_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 80 16 = true := by decide +kernel

theorem v_364_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 96 16 = true := by decide +kernel

theorem v_364_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 364 112 16 = true := by decide +kernel

theorem r_364 : recsK7OK T qscale den6 d14 lamN lamD l7 364 1 = true := recK7_of (n := 128) t_364 n_364 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_364_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_364_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_364_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_364_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_364_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_364_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_364_6 (v_364_7))))))))

theorem rs_362 : recsK7OK T qscale den6 d14 lamN lamD l7 362 3 = true := recsK7OK_succ (lo := 362) (n := 2) r_362 (recsK7OK_succ (lo := 363) (n := 1) r_363 (r_364))

end BeatAvg.K.K7
