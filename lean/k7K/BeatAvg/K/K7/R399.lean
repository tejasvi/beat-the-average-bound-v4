import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1220 : treeK7OK l7 1220 = true := by decide +kernel

theorem n_1220 : (recAt l7 1220).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1220_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1220 0 16 = true := by decide +kernel

theorem v_1220_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1220 16 16 = true := by decide +kernel

theorem v_1220_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1220 32 16 = true := by decide +kernel

theorem v_1220_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1220 48 16 = true := by decide +kernel

theorem v_1220_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1220 64 16 = true := by decide +kernel

theorem r_1220 : recsK7OK T qscale den6 d14 lamN lamD l7 1220 1 = true := recK7_of (n := 80) t_1220 n_1220 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1220_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1220_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1220_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1220_3 (v_1220_4)))))

theorem t_1221 : treeK7OK l7 1221 = true := by decide +kernel

theorem n_1221 : (recAt l7 1221).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1221_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1221 0 16 = true := by decide +kernel

theorem v_1221_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1221 16 16 = true := by decide +kernel

theorem v_1221_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1221 32 16 = true := by decide +kernel

theorem v_1221_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1221 48 16 = true := by decide +kernel

theorem v_1221_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1221 64 16 = true := by decide +kernel

theorem r_1221 : recsK7OK T qscale den6 d14 lamN lamD l7 1221 1 = true := recK7_of (n := 80) t_1221 n_1221 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1221_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1221_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1221_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1221_3 (v_1221_4)))))

theorem t_1222 : treeK7OK l7 1222 = true := by decide +kernel

theorem n_1222 : (recAt l7 1222).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1222_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1222 0 16 = true := by decide +kernel

theorem v_1222_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1222 16 16 = true := by decide +kernel

theorem v_1222_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1222 32 16 = true := by decide +kernel

theorem v_1222_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1222 48 16 = true := by decide +kernel

theorem v_1222_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1222 64 16 = true := by decide +kernel

theorem v_1222_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1222 80 16 = true := by decide +kernel

theorem r_1222 : recsK7OK T qscale den6 d14 lamN lamD l7 1222 1 = true := recK7_of (n := 96) t_1222 n_1222 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1222_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1222_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1222_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1222_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1222_4 (v_1222_5))))))

theorem t_1223 : treeK7OK l7 1223 = true := by decide +kernel

theorem n_1223 : (recAt l7 1223).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1223_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 0 16 = true := by decide +kernel

theorem v_1223_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 16 16 = true := by decide +kernel

theorem v_1223_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 32 16 = true := by decide +kernel

theorem v_1223_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 48 16 = true := by decide +kernel

theorem v_1223_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 64 16 = true := by decide +kernel

theorem v_1223_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 80 16 = true := by decide +kernel

theorem v_1223_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 96 16 = true := by decide +kernel

theorem v_1223_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1223 112 16 = true := by decide +kernel

theorem r_1223 : recsK7OK T qscale den6 d14 lamN lamD l7 1223 1 = true := recK7_of (n := 128) t_1223 n_1223 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1223_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1223_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1223_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1223_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1223_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1223_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1223_6 (v_1223_7))))))))

theorem rs_1220 : recsK7OK T qscale den6 d14 lamN lamD l7 1220 4 = true := recsK7OK_succ (lo := 1220) (n := 3) r_1220 (recsK7OK_succ (lo := 1221) (n := 2) r_1221 (recsK7OK_succ (lo := 1222) (n := 1) r_1222 (r_1223)))

end BeatAvg.K.K7
