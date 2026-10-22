import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1205 : treeK7OK l7 1205 = true := by decide +kernel

theorem n_1205 : (recAt l7 1205).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1205_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 0 16 = true := by decide +kernel

theorem v_1205_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 16 16 = true := by decide +kernel

theorem v_1205_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 32 16 = true := by decide +kernel

theorem v_1205_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 48 16 = true := by decide +kernel

theorem v_1205_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 64 16 = true := by decide +kernel

theorem v_1205_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 80 16 = true := by decide +kernel

theorem v_1205_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 96 16 = true := by decide +kernel

theorem v_1205_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 112 16 = true := by decide +kernel

theorem v_1205_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 128 16 = true := by decide +kernel

theorem v_1205_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1205 144 16 = true := by decide +kernel

theorem r_1205 : recsK7OK T qscale den6 d14 lamN lamD l7 1205 1 = true := recK7_of (n := 160) t_1205 n_1205 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1205_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1205_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1205_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1205_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1205_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1205_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1205_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1205_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1205_8 (v_1205_9))))))))))

theorem t_1206 : treeK7OK l7 1206 = true := by decide +kernel

theorem n_1206 : (recAt l7 1206).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1206_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1206 0 16 = true := by decide +kernel

theorem v_1206_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1206 16 16 = true := by decide +kernel

theorem r_1206 : recsK7OK T qscale den6 d14 lamN lamD l7 1206 1 = true := recK7_of (n := 32) t_1206 n_1206 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1206_0 (v_1206_1))

theorem t_1207 : treeK7OK l7 1207 = true := by decide +kernel

theorem n_1207 : (recAt l7 1207).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1207_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1207 0 16 = true := by decide +kernel

theorem v_1207_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1207 16 16 = true := by decide +kernel

theorem r_1207 : recsK7OK T qscale den6 d14 lamN lamD l7 1207 1 = true := recK7_of (n := 32) t_1207 n_1207 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1207_0 (v_1207_1))

theorem t_1208 : treeK7OK l7 1208 = true := by decide +kernel

theorem n_1208 : (recAt l7 1208).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1208_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1208 0 16 = true := by decide +kernel

theorem v_1208_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1208 16 16 = true := by decide +kernel

theorem v_1208_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1208 32 16 = true := by decide +kernel

theorem r_1208 : recsK7OK T qscale den6 d14 lamN lamD l7 1208 1 = true := recK7_of (n := 48) t_1208 n_1208 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1208_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1208_1 (v_1208_2)))

theorem t_1209 : treeK7OK l7 1209 = true := by decide +kernel

theorem n_1209 : (recAt l7 1209).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1209_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 0 16 = true := by decide +kernel

theorem v_1209_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 16 16 = true := by decide +kernel

theorem v_1209_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 32 16 = true := by decide +kernel

theorem v_1209_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 48 16 = true := by decide +kernel

theorem v_1209_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 64 16 = true := by decide +kernel

theorem v_1209_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 80 16 = true := by decide +kernel

theorem v_1209_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 96 16 = true := by decide +kernel

theorem v_1209_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1209 112 16 = true := by decide +kernel

theorem r_1209 : recsK7OK T qscale den6 d14 lamN lamD l7 1209 1 = true := recK7_of (n := 128) t_1209 n_1209 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1209_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1209_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1209_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1209_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1209_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1209_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1209_6 (v_1209_7))))))))

theorem t_1210 : treeK7OK l7 1210 = true := by decide +kernel

theorem n_1210 : (recAt l7 1210).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1210_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1210 0 16 = true := by decide +kernel

theorem v_1210_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1210 16 16 = true := by decide +kernel

theorem v_1210_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1210 32 16 = true := by decide +kernel

theorem r_1210 : recsK7OK T qscale den6 d14 lamN lamD l7 1210 1 = true := recK7_of (n := 48) t_1210 n_1210 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1210_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1210_1 (v_1210_2)))

theorem rs_1205 : recsK7OK T qscale den6 d14 lamN lamD l7 1205 6 = true := recsK7OK_succ (lo := 1205) (n := 5) r_1205 (recsK7OK_succ (lo := 1206) (n := 4) r_1206 (recsK7OK_succ (lo := 1207) (n := 3) r_1207 (recsK7OK_succ (lo := 1208) (n := 2) r_1208 (recsK7OK_succ (lo := 1209) (n := 1) r_1209 (r_1210)))))

end BeatAvg.K.K7
