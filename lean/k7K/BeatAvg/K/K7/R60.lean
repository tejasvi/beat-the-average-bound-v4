import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_229 : treeK7OK l7 229 = true := by decide +kernel

theorem n_229 : (recAt l7 229).2.2.2.length ≤ 64 := by decide +kernel

theorem v_229_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 229 0 16 = true := by decide +kernel

theorem v_229_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 229 16 16 = true := by decide +kernel

theorem v_229_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 229 32 16 = true := by decide +kernel

theorem v_229_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 229 48 16 = true := by decide +kernel

theorem r_229 : recsK7OK T qscale den6 d14 lamN lamD l7 229 1 = true := recK7_of (n := 64) t_229 n_229 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_229_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_229_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_229_2 (v_229_3))))

theorem t_230 : treeK7OK l7 230 = true := by decide +kernel

theorem n_230 : (recAt l7 230).2.2.2.length ≤ 176 := by decide +kernel

theorem v_230_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 0 16 = true := by decide +kernel

theorem v_230_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 16 16 = true := by decide +kernel

theorem v_230_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 32 16 = true := by decide +kernel

theorem v_230_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 48 16 = true := by decide +kernel

theorem v_230_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 64 16 = true := by decide +kernel

theorem v_230_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 80 16 = true := by decide +kernel

theorem v_230_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 96 16 = true := by decide +kernel

theorem v_230_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 112 16 = true := by decide +kernel

theorem v_230_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 128 16 = true := by decide +kernel

theorem v_230_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 144 16 = true := by decide +kernel

theorem v_230_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 230 160 16 = true := by decide +kernel

theorem r_230 : recsK7OK T qscale den6 d14 lamN lamD l7 230 1 = true := recK7_of (n := 176) t_230 n_230 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_230_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_230_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_230_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_230_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_230_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_230_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_230_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_230_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_230_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_230_9 (v_230_10)))))))))))

theorem t_231 : treeK7OK l7 231 = true := by decide +kernel

theorem n_231 : (recAt l7 231).2.2.2.length ≤ 160 := by decide +kernel

theorem v_231_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 0 16 = true := by decide +kernel

theorem v_231_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 16 16 = true := by decide +kernel

theorem v_231_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 32 16 = true := by decide +kernel

theorem v_231_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 48 16 = true := by decide +kernel

theorem v_231_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 64 16 = true := by decide +kernel

theorem v_231_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 80 16 = true := by decide +kernel

theorem v_231_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 96 16 = true := by decide +kernel

theorem v_231_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 112 16 = true := by decide +kernel

theorem v_231_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 128 16 = true := by decide +kernel

theorem v_231_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 231 144 16 = true := by decide +kernel

theorem r_231 : recsK7OK T qscale den6 d14 lamN lamD l7 231 1 = true := recK7_of (n := 160) t_231 n_231 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_231_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_231_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_231_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_231_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_231_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_231_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_231_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_231_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_231_8 (v_231_9))))))))))

theorem rs_229 : recsK7OK T qscale den6 d14 lamN lamD l7 229 3 = true := recsK7OK_succ (lo := 229) (n := 2) r_229 (recsK7OK_succ (lo := 230) (n := 1) r_230 (r_231))

end BeatAvg.K.K7
