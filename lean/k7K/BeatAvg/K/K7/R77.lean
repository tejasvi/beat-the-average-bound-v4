import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_288 : treeK7OK l7 288 = true := by decide +kernel

theorem n_288 : (recAt l7 288).2.2.2.length ≤ 48 := by decide +kernel

theorem v_288_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 288 0 16 = true := by decide +kernel

theorem v_288_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 288 16 16 = true := by decide +kernel

theorem v_288_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 288 32 16 = true := by decide +kernel

theorem r_288 : recsK7OK T qscale den6 d14 lamN lamD l7 288 1 = true := recK7_of (n := 48) t_288 n_288 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_288_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_288_1 (v_288_2)))

theorem t_289 : treeK7OK l7 289 = true := by decide +kernel

theorem n_289 : (recAt l7 289).2.2.2.length ≤ 80 := by decide +kernel

theorem v_289_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 289 0 16 = true := by decide +kernel

theorem v_289_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 289 16 16 = true := by decide +kernel

theorem v_289_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 289 32 16 = true := by decide +kernel

theorem v_289_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 289 48 16 = true := by decide +kernel

theorem v_289_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 289 64 16 = true := by decide +kernel

theorem r_289 : recsK7OK T qscale den6 d14 lamN lamD l7 289 1 = true := recK7_of (n := 80) t_289 n_289 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_289_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_289_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_289_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_289_3 (v_289_4)))))

theorem t_290 : treeK7OK l7 290 = true := by decide +kernel

theorem n_290 : (recAt l7 290).2.2.2.length ≤ 64 := by decide +kernel

theorem v_290_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 290 0 16 = true := by decide +kernel

theorem v_290_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 290 16 16 = true := by decide +kernel

theorem v_290_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 290 32 16 = true := by decide +kernel

theorem v_290_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 290 48 16 = true := by decide +kernel

theorem r_290 : recsK7OK T qscale den6 d14 lamN lamD l7 290 1 = true := recK7_of (n := 64) t_290 n_290 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_290_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_290_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_290_2 (v_290_3))))

theorem t_291 : treeK7OK l7 291 = true := by decide +kernel

theorem n_291 : (recAt l7 291).2.2.2.length ≤ 144 := by decide +kernel

theorem v_291_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 0 16 = true := by decide +kernel

theorem v_291_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 16 16 = true := by decide +kernel

theorem v_291_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 32 16 = true := by decide +kernel

theorem v_291_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 48 16 = true := by decide +kernel

theorem v_291_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 64 16 = true := by decide +kernel

theorem v_291_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 80 16 = true := by decide +kernel

theorem v_291_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 96 16 = true := by decide +kernel

theorem v_291_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 112 16 = true := by decide +kernel

theorem v_291_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 291 128 16 = true := by decide +kernel

theorem r_291 : recsK7OK T qscale den6 d14 lamN lamD l7 291 1 = true := recK7_of (n := 144) t_291 n_291 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_291_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_291_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_291_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_291_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_291_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_291_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_291_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_291_7 (v_291_8)))))))))

theorem t_292 : treeK7OK l7 292 = true := by decide +kernel

theorem n_292 : (recAt l7 292).2.2.2.length ≤ 96 := by decide +kernel

theorem v_292_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 292 0 16 = true := by decide +kernel

theorem v_292_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 292 16 16 = true := by decide +kernel

theorem v_292_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 292 32 16 = true := by decide +kernel

theorem v_292_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 292 48 16 = true := by decide +kernel

theorem v_292_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 292 64 16 = true := by decide +kernel

theorem v_292_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 292 80 16 = true := by decide +kernel

theorem r_292 : recsK7OK T qscale den6 d14 lamN lamD l7 292 1 = true := recK7_of (n := 96) t_292 n_292 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_292_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_292_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_292_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_292_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_292_4 (v_292_5))))))

theorem rs_288 : recsK7OK T qscale den6 d14 lamN lamD l7 288 5 = true := recsK7OK_succ (lo := 288) (n := 4) r_288 (recsK7OK_succ (lo := 289) (n := 3) r_289 (recsK7OK_succ (lo := 290) (n := 2) r_290 (recsK7OK_succ (lo := 291) (n := 1) r_291 (r_292))))

end BeatAvg.K.K7
