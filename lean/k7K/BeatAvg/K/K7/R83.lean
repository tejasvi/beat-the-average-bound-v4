import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_318 : treeK7OK l7 318 = true := by decide +kernel

theorem n_318 : (recAt l7 318).2.2.2.length ≤ 176 := by decide +kernel

theorem v_318_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 0 16 = true := by decide +kernel

theorem v_318_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 16 16 = true := by decide +kernel

theorem v_318_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 32 16 = true := by decide +kernel

theorem v_318_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 48 16 = true := by decide +kernel

theorem v_318_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 64 16 = true := by decide +kernel

theorem v_318_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 80 16 = true := by decide +kernel

theorem v_318_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 96 16 = true := by decide +kernel

theorem v_318_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 112 16 = true := by decide +kernel

theorem v_318_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 128 16 = true := by decide +kernel

theorem v_318_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 144 16 = true := by decide +kernel

theorem v_318_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 318 160 16 = true := by decide +kernel

theorem r_318 : recsK7OK T qscale den6 d14 lamN lamD l7 318 1 = true := recK7_of (n := 176) t_318 n_318 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_318_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_318_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_318_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_318_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_318_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_318_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_318_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_318_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_318_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_318_9 (v_318_10)))))))))))

theorem t_319 : treeK7OK l7 319 = true := by decide +kernel

theorem n_319 : (recAt l7 319).2.2.2.length ≤ 64 := by decide +kernel

theorem v_319_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 319 0 16 = true := by decide +kernel

theorem v_319_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 319 16 16 = true := by decide +kernel

theorem v_319_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 319 32 16 = true := by decide +kernel

theorem v_319_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 319 48 16 = true := by decide +kernel

theorem r_319 : recsK7OK T qscale den6 d14 lamN lamD l7 319 1 = true := recK7_of (n := 64) t_319 n_319 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_319_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_319_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_319_2 (v_319_3))))

theorem t_320 : treeK7OK l7 320 = true := by decide +kernel

theorem n_320 : (recAt l7 320).2.2.2.length ≤ 144 := by decide +kernel

theorem v_320_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 0 16 = true := by decide +kernel

theorem v_320_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 16 16 = true := by decide +kernel

theorem v_320_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 32 16 = true := by decide +kernel

theorem v_320_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 48 16 = true := by decide +kernel

theorem v_320_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 64 16 = true := by decide +kernel

theorem v_320_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 80 16 = true := by decide +kernel

theorem v_320_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 96 16 = true := by decide +kernel

theorem v_320_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 112 16 = true := by decide +kernel

theorem v_320_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 320 128 16 = true := by decide +kernel

theorem r_320 : recsK7OK T qscale den6 d14 lamN lamD l7 320 1 = true := recK7_of (n := 144) t_320 n_320 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_320_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_320_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_320_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_320_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_320_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_320_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_320_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_320_7 (v_320_8)))))))))

theorem rs_318 : recsK7OK T qscale den6 d14 lamN lamD l7 318 3 = true := recsK7OK_succ (lo := 318) (n := 2) r_318 (recsK7OK_succ (lo := 319) (n := 1) r_319 (r_320))

end BeatAvg.K.K7
