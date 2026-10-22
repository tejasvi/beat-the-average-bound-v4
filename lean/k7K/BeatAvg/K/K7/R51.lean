import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_187 : treeK7OK l7 187 = true := by decide +kernel

theorem n_187 : (recAt l7 187).2.2.2.length ≤ 176 := by decide +kernel

theorem v_187_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 0 16 = true := by decide +kernel

theorem v_187_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 16 16 = true := by decide +kernel

theorem v_187_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 32 16 = true := by decide +kernel

theorem v_187_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 48 16 = true := by decide +kernel

theorem v_187_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 64 16 = true := by decide +kernel

theorem v_187_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 80 16 = true := by decide +kernel

theorem v_187_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 96 16 = true := by decide +kernel

theorem v_187_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 112 16 = true := by decide +kernel

theorem v_187_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 128 16 = true := by decide +kernel

theorem v_187_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 144 16 = true := by decide +kernel

theorem v_187_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 187 160 16 = true := by decide +kernel

theorem r_187 : recsK7OK T qscale den6 d14 lamN lamD l7 187 1 = true := recK7_of (n := 176) t_187 n_187 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_187_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_187_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_187_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_187_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_187_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_187_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_187_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_187_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_187_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_187_9 (v_187_10)))))))))))

theorem t_188 : treeK7OK l7 188 = true := by decide +kernel

theorem n_188 : (recAt l7 188).2.2.2.length ≤ 32 := by decide +kernel

theorem v_188_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 188 0 16 = true := by decide +kernel

theorem v_188_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 188 16 16 = true := by decide +kernel

theorem r_188 : recsK7OK T qscale den6 d14 lamN lamD l7 188 1 = true := recK7_of (n := 32) t_188 n_188 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_188_0 (v_188_1))

theorem t_189 : treeK7OK l7 189 = true := by decide +kernel

theorem n_189 : (recAt l7 189).2.2.2.length ≤ 96 := by decide +kernel

theorem v_189_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 189 0 16 = true := by decide +kernel

theorem v_189_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 189 16 16 = true := by decide +kernel

theorem v_189_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 189 32 16 = true := by decide +kernel

theorem v_189_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 189 48 16 = true := by decide +kernel

theorem v_189_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 189 64 16 = true := by decide +kernel

theorem v_189_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 189 80 16 = true := by decide +kernel

theorem r_189 : recsK7OK T qscale den6 d14 lamN lamD l7 189 1 = true := recK7_of (n := 96) t_189 n_189 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_189_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_189_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_189_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_189_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_189_4 (v_189_5))))))

theorem t_190 : treeK7OK l7 190 = true := by decide +kernel

theorem n_190 : (recAt l7 190).2.2.2.length ≤ 112 := by decide +kernel

theorem v_190_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 190 0 16 = true := by decide +kernel

theorem v_190_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 190 16 16 = true := by decide +kernel

theorem v_190_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 190 32 16 = true := by decide +kernel

theorem v_190_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 190 48 16 = true := by decide +kernel

theorem v_190_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 190 64 16 = true := by decide +kernel

theorem v_190_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 190 80 16 = true := by decide +kernel

theorem v_190_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 190 96 16 = true := by decide +kernel

theorem r_190 : recsK7OK T qscale den6 d14 lamN lamD l7 190 1 = true := recK7_of (n := 112) t_190 n_190 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_190_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_190_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_190_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_190_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_190_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_190_5 (v_190_6)))))))

theorem rs_187 : recsK7OK T qscale den6 d14 lamN lamD l7 187 4 = true := recsK7OK_succ (lo := 187) (n := 3) r_187 (recsK7OK_succ (lo := 188) (n := 2) r_188 (recsK7OK_succ (lo := 189) (n := 1) r_189 (r_190)))

end BeatAvg.K.K7
