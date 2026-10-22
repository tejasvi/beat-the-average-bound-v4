import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_242 : treeK7OK l7 242 = true := by decide +kernel

theorem n_242 : (recAt l7 242).2.2.2.length ≤ 144 := by decide +kernel

theorem v_242_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 0 16 = true := by decide +kernel

theorem v_242_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 16 16 = true := by decide +kernel

theorem v_242_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 32 16 = true := by decide +kernel

theorem v_242_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 48 16 = true := by decide +kernel

theorem v_242_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 64 16 = true := by decide +kernel

theorem v_242_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 80 16 = true := by decide +kernel

theorem v_242_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 96 16 = true := by decide +kernel

theorem v_242_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 112 16 = true := by decide +kernel

theorem v_242_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 242 128 16 = true := by decide +kernel

theorem r_242 : recsK7OK T qscale den6 d14 lamN lamD l7 242 1 = true := recK7_of (n := 144) t_242 n_242 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_242_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_242_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_242_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_242_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_242_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_242_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_242_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_242_7 (v_242_8)))))))))

theorem t_243 : treeK7OK l7 243 = true := by decide +kernel

theorem n_243 : (recAt l7 243).2.2.2.length ≤ 112 := by decide +kernel

theorem v_243_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 243 0 16 = true := by decide +kernel

theorem v_243_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 243 16 16 = true := by decide +kernel

theorem v_243_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 243 32 16 = true := by decide +kernel

theorem v_243_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 243 48 16 = true := by decide +kernel

theorem v_243_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 243 64 16 = true := by decide +kernel

theorem v_243_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 243 80 16 = true := by decide +kernel

theorem v_243_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 243 96 16 = true := by decide +kernel

theorem r_243 : recsK7OK T qscale den6 d14 lamN lamD l7 243 1 = true := recK7_of (n := 112) t_243 n_243 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_243_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_243_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_243_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_243_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_243_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_243_5 (v_243_6)))))))

theorem t_244 : treeK7OK l7 244 = true := by decide +kernel

theorem n_244 : (recAt l7 244).2.2.2.length ≤ 64 := by decide +kernel

theorem v_244_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 244 0 16 = true := by decide +kernel

theorem v_244_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 244 16 16 = true := by decide +kernel

theorem v_244_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 244 32 16 = true := by decide +kernel

theorem v_244_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 244 48 16 = true := by decide +kernel

theorem r_244 : recsK7OK T qscale den6 d14 lamN lamD l7 244 1 = true := recK7_of (n := 64) t_244 n_244 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_244_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_244_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_244_2 (v_244_3))))

theorem rs_242 : recsK7OK T qscale den6 d14 lamN lamD l7 242 3 = true := recsK7OK_succ (lo := 242) (n := 2) r_242 (recsK7OK_succ (lo := 243) (n := 1) r_243 (r_244))

end BeatAvg.K.K7
