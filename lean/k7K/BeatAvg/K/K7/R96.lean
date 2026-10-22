import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_348 : treeK7OK l7 348 = true := by decide +kernel

theorem n_348 : (recAt l7 348).2.2.2.length ≤ 48 := by decide +kernel

theorem v_348_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 348 0 16 = true := by decide +kernel

theorem v_348_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 348 16 16 = true := by decide +kernel

theorem v_348_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 348 32 16 = true := by decide +kernel

theorem r_348 : recsK7OK T qscale den6 d14 lamN lamD l7 348 1 = true := recK7_of (n := 48) t_348 n_348 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_348_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_348_1 (v_348_2)))

theorem t_349 : treeK7OK l7 349 = true := by decide +kernel

theorem n_349 : (recAt l7 349).2.2.2.length ≤ 64 := by decide +kernel

theorem v_349_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 349 0 16 = true := by decide +kernel

theorem v_349_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 349 16 16 = true := by decide +kernel

theorem v_349_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 349 32 16 = true := by decide +kernel

theorem v_349_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 349 48 16 = true := by decide +kernel

theorem r_349 : recsK7OK T qscale den6 d14 lamN lamD l7 349 1 = true := recK7_of (n := 64) t_349 n_349 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_349_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_349_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_349_2 (v_349_3))))

theorem t_350 : treeK7OK l7 350 = true := by decide +kernel

theorem n_350 : (recAt l7 350).2.2.2.length ≤ 288 := by decide +kernel

theorem v_350_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 0 16 = true := by decide +kernel

theorem v_350_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 16 16 = true := by decide +kernel

theorem v_350_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 32 16 = true := by decide +kernel

theorem v_350_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 48 16 = true := by decide +kernel

theorem v_350_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 64 16 = true := by decide +kernel

theorem v_350_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 80 16 = true := by decide +kernel

theorem v_350_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 96 16 = true := by decide +kernel

theorem v_350_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 112 16 = true := by decide +kernel

theorem v_350_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 128 16 = true := by decide +kernel

theorem v_350_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 144 16 = true := by decide +kernel

theorem v_350_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 160 16 = true := by decide +kernel

theorem v_350_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 176 16 = true := by decide +kernel

theorem v_350_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 192 16 = true := by decide +kernel

theorem v_350_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 208 16 = true := by decide +kernel

theorem v_350_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 224 16 = true := by decide +kernel

theorem v_350_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 240 16 = true := by decide +kernel

theorem v_350_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 256 16 = true := by decide +kernel

theorem v_350_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 350 272 16 = true := by decide +kernel

theorem r_350 : recsK7OK T qscale den6 d14 lamN lamD l7 350 1 = true := recK7_of (n := 288) t_350 n_350 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_350_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_350_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_350_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_350_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_350_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_350_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_350_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_350_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_350_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_350_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_350_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_350_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_350_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_350_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_350_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_350_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_350_16 (v_350_17))))))))))))))))))

theorem rs_348 : recsK7OK T qscale den6 d14 lamN lamD l7 348 3 = true := recsK7OK_succ (lo := 348) (n := 2) r_348 (recsK7OK_succ (lo := 349) (n := 1) r_349 (r_350))

end BeatAvg.K.K7
