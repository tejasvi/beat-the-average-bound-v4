import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1189 : treeK7OK l7 1189 = true := by decide +kernel

theorem n_1189 : (recAt l7 1189).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1189_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 0 16 = true := by decide +kernel

theorem v_1189_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 16 16 = true := by decide +kernel

theorem v_1189_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 32 16 = true := by decide +kernel

theorem v_1189_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 48 16 = true := by decide +kernel

theorem v_1189_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 64 16 = true := by decide +kernel

theorem v_1189_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 80 16 = true := by decide +kernel

theorem v_1189_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 96 16 = true := by decide +kernel

theorem v_1189_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 112 16 = true := by decide +kernel

theorem v_1189_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 128 16 = true := by decide +kernel

theorem v_1189_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1189 144 16 = true := by decide +kernel

theorem r_1189 : recsK7OK T qscale den6 d14 lamN lamD l7 1189 1 = true := recK7_of (n := 160) t_1189 n_1189 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1189_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1189_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1189_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1189_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1189_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1189_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1189_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1189_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1189_8 (v_1189_9))))))))))

theorem t_1190 : treeK7OK l7 1190 = true := by decide +kernel

theorem n_1190 : (recAt l7 1190).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1190_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1190 0 16 = true := by decide +kernel

theorem v_1190_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1190 16 16 = true := by decide +kernel

theorem v_1190_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1190 32 16 = true := by decide +kernel

theorem v_1190_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1190 48 16 = true := by decide +kernel

theorem v_1190_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1190 64 16 = true := by decide +kernel

theorem v_1190_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1190 80 16 = true := by decide +kernel

theorem v_1190_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1190 96 16 = true := by decide +kernel

theorem r_1190 : recsK7OK T qscale den6 d14 lamN lamD l7 1190 1 = true := recK7_of (n := 112) t_1190 n_1190 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1190_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1190_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1190_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1190_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1190_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1190_5 (v_1190_6)))))))

theorem t_1191 : treeK7OK l7 1191 = true := by decide +kernel

theorem n_1191 : (recAt l7 1191).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1191_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1191 0 16 = true := by decide +kernel

theorem v_1191_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1191 16 16 = true := by decide +kernel

theorem v_1191_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1191 32 16 = true := by decide +kernel

theorem v_1191_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1191 48 16 = true := by decide +kernel

theorem v_1191_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1191 64 16 = true := by decide +kernel

theorem v_1191_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1191 80 16 = true := by decide +kernel

theorem v_1191_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1191 96 16 = true := by decide +kernel

theorem r_1191 : recsK7OK T qscale den6 d14 lamN lamD l7 1191 1 = true := recK7_of (n := 112) t_1191 n_1191 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1191_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1191_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1191_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1191_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1191_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1191_5 (v_1191_6)))))))

theorem rs_1189 : recsK7OK T qscale den6 d14 lamN lamD l7 1189 3 = true := recsK7OK_succ (lo := 1189) (n := 2) r_1189 (recsK7OK_succ (lo := 1190) (n := 1) r_1190 (r_1191))

end BeatAvg.K.K7
