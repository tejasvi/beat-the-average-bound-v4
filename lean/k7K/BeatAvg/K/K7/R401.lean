import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1227 : treeK7OK l7 1227 = true := by decide +kernel

theorem n_1227 : (recAt l7 1227).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1227_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1227 0 16 = true := by decide +kernel

theorem v_1227_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1227 16 16 = true := by decide +kernel

theorem v_1227_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1227 32 16 = true := by decide +kernel

theorem v_1227_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1227 48 16 = true := by decide +kernel

theorem r_1227 : recsK7OK T qscale den6 d14 lamN lamD l7 1227 1 = true := recK7_of (n := 64) t_1227 n_1227 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1227_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1227_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1227_2 (v_1227_3))))

theorem t_1228 : treeK7OK l7 1228 = true := by decide +kernel

theorem n_1228 : (recAt l7 1228).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1228_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1228 0 16 = true := by decide +kernel

theorem v_1228_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1228 16 16 = true := by decide +kernel

theorem v_1228_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1228 32 16 = true := by decide +kernel

theorem v_1228_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1228 48 16 = true := by decide +kernel

theorem v_1228_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1228 64 16 = true := by decide +kernel

theorem r_1228 : recsK7OK T qscale den6 d14 lamN lamD l7 1228 1 = true := recK7_of (n := 80) t_1228 n_1228 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1228_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1228_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1228_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1228_3 (v_1228_4)))))

theorem t_1229 : treeK7OK l7 1229 = true := by decide +kernel

theorem n_1229 : (recAt l7 1229).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1229_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1229 0 16 = true := by decide +kernel

theorem v_1229_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1229 16 16 = true := by decide +kernel

theorem v_1229_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1229 32 16 = true := by decide +kernel

theorem v_1229_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1229 48 16 = true := by decide +kernel

theorem v_1229_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1229 64 16 = true := by decide +kernel

theorem v_1229_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1229 80 16 = true := by decide +kernel

theorem v_1229_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1229 96 16 = true := by decide +kernel

theorem r_1229 : recsK7OK T qscale den6 d14 lamN lamD l7 1229 1 = true := recK7_of (n := 112) t_1229 n_1229 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1229_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1229_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1229_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1229_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1229_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1229_5 (v_1229_6)))))))

theorem t_1230 : treeK7OK l7 1230 = true := by decide +kernel

theorem n_1230 : (recAt l7 1230).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1230_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1230 0 16 = true := by decide +kernel

theorem v_1230_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1230 16 16 = true := by decide +kernel

theorem v_1230_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1230 32 16 = true := by decide +kernel

theorem v_1230_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1230 48 16 = true := by decide +kernel

theorem v_1230_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1230 64 16 = true := by decide +kernel

theorem r_1230 : recsK7OK T qscale den6 d14 lamN lamD l7 1230 1 = true := recK7_of (n := 80) t_1230 n_1230 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1230_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1230_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1230_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1230_3 (v_1230_4)))))

theorem t_1231 : treeK7OK l7 1231 = true := by decide +kernel

theorem n_1231 : (recAt l7 1231).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1231_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1231 0 16 = true := by decide +kernel

theorem v_1231_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1231 16 16 = true := by decide +kernel

theorem v_1231_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1231 32 16 = true := by decide +kernel

theorem v_1231_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1231 48 16 = true := by decide +kernel

theorem v_1231_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1231 64 16 = true := by decide +kernel

theorem r_1231 : recsK7OK T qscale den6 d14 lamN lamD l7 1231 1 = true := recK7_of (n := 80) t_1231 n_1231 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1231_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1231_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1231_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1231_3 (v_1231_4)))))

theorem rs_1227 : recsK7OK T qscale den6 d14 lamN lamD l7 1227 5 = true := recsK7OK_succ (lo := 1227) (n := 4) r_1227 (recsK7OK_succ (lo := 1228) (n := 3) r_1228 (recsK7OK_succ (lo := 1229) (n := 2) r_1229 (recsK7OK_succ (lo := 1230) (n := 1) r_1230 (r_1231))))

end BeatAvg.K.K7
