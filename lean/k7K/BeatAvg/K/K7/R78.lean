import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_293 : treeK7OK l7 293 = true := by decide +kernel

theorem n_293 : (recAt l7 293).2.2.2.length ≤ 64 := by decide +kernel

theorem v_293_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 293 0 16 = true := by decide +kernel

theorem v_293_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 293 16 16 = true := by decide +kernel

theorem v_293_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 293 32 16 = true := by decide +kernel

theorem v_293_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 293 48 16 = true := by decide +kernel

theorem r_293 : recsK7OK T qscale den6 d14 lamN lamD l7 293 1 = true := recK7_of (n := 64) t_293 n_293 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_293_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_293_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_293_2 (v_293_3))))

theorem t_294 : treeK7OK l7 294 = true := by decide +kernel

theorem n_294 : (recAt l7 294).2.2.2.length ≤ 80 := by decide +kernel

theorem v_294_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 294 0 16 = true := by decide +kernel

theorem v_294_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 294 16 16 = true := by decide +kernel

theorem v_294_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 294 32 16 = true := by decide +kernel

theorem v_294_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 294 48 16 = true := by decide +kernel

theorem v_294_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 294 64 16 = true := by decide +kernel

theorem r_294 : recsK7OK T qscale den6 d14 lamN lamD l7 294 1 = true := recK7_of (n := 80) t_294 n_294 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_294_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_294_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_294_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_294_3 (v_294_4)))))

theorem t_295 : treeK7OK l7 295 = true := by decide +kernel

theorem n_295 : (recAt l7 295).2.2.2.length ≤ 32 := by decide +kernel

theorem v_295_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 295 0 16 = true := by decide +kernel

theorem v_295_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 295 16 16 = true := by decide +kernel

theorem r_295 : recsK7OK T qscale den6 d14 lamN lamD l7 295 1 = true := recK7_of (n := 32) t_295 n_295 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_295_0 (v_295_1))

theorem t_296 : treeK7OK l7 296 = true := by decide +kernel

theorem n_296 : (recAt l7 296).2.2.2.length ≤ 32 := by decide +kernel

theorem v_296_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 296 0 16 = true := by decide +kernel

theorem v_296_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 296 16 16 = true := by decide +kernel

theorem r_296 : recsK7OK T qscale den6 d14 lamN lamD l7 296 1 = true := recK7_of (n := 32) t_296 n_296 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_296_0 (v_296_1))

theorem t_297 : treeK7OK l7 297 = true := by decide +kernel

theorem n_297 : (recAt l7 297).2.2.2.length ≤ 112 := by decide +kernel

theorem v_297_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 297 0 16 = true := by decide +kernel

theorem v_297_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 297 16 16 = true := by decide +kernel

theorem v_297_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 297 32 16 = true := by decide +kernel

theorem v_297_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 297 48 16 = true := by decide +kernel

theorem v_297_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 297 64 16 = true := by decide +kernel

theorem v_297_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 297 80 16 = true := by decide +kernel

theorem v_297_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 297 96 16 = true := by decide +kernel

theorem r_297 : recsK7OK T qscale den6 d14 lamN lamD l7 297 1 = true := recK7_of (n := 112) t_297 n_297 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_297_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_297_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_297_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_297_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_297_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_297_5 (v_297_6)))))))

theorem t_298 : treeK7OK l7 298 = true := by decide +kernel

theorem n_298 : (recAt l7 298).2.2.2.length ≤ 48 := by decide +kernel

theorem v_298_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 298 0 16 = true := by decide +kernel

theorem v_298_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 298 16 16 = true := by decide +kernel

theorem v_298_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 298 32 16 = true := by decide +kernel

theorem r_298 : recsK7OK T qscale den6 d14 lamN lamD l7 298 1 = true := recK7_of (n := 48) t_298 n_298 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_298_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_298_1 (v_298_2)))

theorem t_299 : treeK7OK l7 299 = true := by decide +kernel

theorem n_299 : (recAt l7 299).2.2.2.length ≤ 64 := by decide +kernel

theorem v_299_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 299 0 16 = true := by decide +kernel

theorem v_299_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 299 16 16 = true := by decide +kernel

theorem v_299_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 299 32 16 = true := by decide +kernel

theorem v_299_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 299 48 16 = true := by decide +kernel

theorem r_299 : recsK7OK T qscale den6 d14 lamN lamD l7 299 1 = true := recK7_of (n := 64) t_299 n_299 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_299_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_299_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_299_2 (v_299_3))))

theorem rs_293 : recsK7OK T qscale den6 d14 lamN lamD l7 293 7 = true := recsK7OK_succ (lo := 293) (n := 6) r_293 (recsK7OK_succ (lo := 294) (n := 5) r_294 (recsK7OK_succ (lo := 295) (n := 4) r_295 (recsK7OK_succ (lo := 296) (n := 3) r_296 (recsK7OK_succ (lo := 297) (n := 2) r_297 (recsK7OK_succ (lo := 298) (n := 1) r_298 (r_299))))))

end BeatAvg.K.K7
