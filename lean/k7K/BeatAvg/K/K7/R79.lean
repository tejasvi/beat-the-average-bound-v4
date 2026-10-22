import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_300 : treeK7OK l7 300 = true := by decide +kernel

theorem n_300 : (recAt l7 300).2.2.2.length ≤ 64 := by decide +kernel

theorem v_300_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 300 0 16 = true := by decide +kernel

theorem v_300_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 300 16 16 = true := by decide +kernel

theorem v_300_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 300 32 16 = true := by decide +kernel

theorem v_300_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 300 48 16 = true := by decide +kernel

theorem r_300 : recsK7OK T qscale den6 d14 lamN lamD l7 300 1 = true := recK7_of (n := 64) t_300 n_300 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_300_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_300_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_300_2 (v_300_3))))

theorem t_301 : treeK7OK l7 301 = true := by decide +kernel

theorem n_301 : (recAt l7 301).2.2.2.length ≤ 48 := by decide +kernel

theorem v_301_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 301 0 16 = true := by decide +kernel

theorem v_301_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 301 16 16 = true := by decide +kernel

theorem v_301_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 301 32 16 = true := by decide +kernel

theorem r_301 : recsK7OK T qscale den6 d14 lamN lamD l7 301 1 = true := recK7_of (n := 48) t_301 n_301 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_301_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_301_1 (v_301_2)))

theorem t_302 : treeK7OK l7 302 = true := by decide +kernel

theorem n_302 : (recAt l7 302).2.2.2.length ≤ 144 := by decide +kernel

theorem v_302_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 0 16 = true := by decide +kernel

theorem v_302_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 16 16 = true := by decide +kernel

theorem v_302_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 32 16 = true := by decide +kernel

theorem v_302_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 48 16 = true := by decide +kernel

theorem v_302_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 64 16 = true := by decide +kernel

theorem v_302_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 80 16 = true := by decide +kernel

theorem v_302_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 96 16 = true := by decide +kernel

theorem v_302_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 112 16 = true := by decide +kernel

theorem v_302_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 302 128 16 = true := by decide +kernel

theorem r_302 : recsK7OK T qscale den6 d14 lamN lamD l7 302 1 = true := recK7_of (n := 144) t_302 n_302 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_302_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_302_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_302_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_302_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_302_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_302_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_302_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_302_7 (v_302_8)))))))))

theorem t_303 : treeK7OK l7 303 = true := by decide +kernel

theorem n_303 : (recAt l7 303).2.2.2.length ≤ 48 := by decide +kernel

theorem v_303_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 303 0 16 = true := by decide +kernel

theorem v_303_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 303 16 16 = true := by decide +kernel

theorem v_303_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 303 32 16 = true := by decide +kernel

theorem r_303 : recsK7OK T qscale den6 d14 lamN lamD l7 303 1 = true := recK7_of (n := 48) t_303 n_303 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_303_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_303_1 (v_303_2)))

theorem t_304 : treeK7OK l7 304 = true := by decide +kernel

theorem n_304 : (recAt l7 304).2.2.2.length ≤ 32 := by decide +kernel

theorem v_304_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 304 0 16 = true := by decide +kernel

theorem v_304_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 304 16 16 = true := by decide +kernel

theorem r_304 : recsK7OK T qscale den6 d14 lamN lamD l7 304 1 = true := recK7_of (n := 32) t_304 n_304 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_304_0 (v_304_1))

theorem rs_300 : recsK7OK T qscale den6 d14 lamN lamD l7 300 5 = true := recsK7OK_succ (lo := 300) (n := 4) r_300 (recsK7OK_succ (lo := 301) (n := 3) r_301 (recsK7OK_succ (lo := 302) (n := 2) r_302 (recsK7OK_succ (lo := 303) (n := 1) r_303 (r_304))))

end BeatAvg.K.K7
