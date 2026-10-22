import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1014 : treeK7OK l7 1014 = true := by decide +kernel

theorem n_1014 : (recAt l7 1014).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1014_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 0 16 = true := by decide +kernel

theorem v_1014_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 16 16 = true := by decide +kernel

theorem v_1014_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 32 16 = true := by decide +kernel

theorem v_1014_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 48 16 = true := by decide +kernel

theorem v_1014_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 64 16 = true := by decide +kernel

theorem v_1014_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 80 16 = true := by decide +kernel

theorem v_1014_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 96 16 = true := by decide +kernel

theorem v_1014_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 112 16 = true := by decide +kernel

theorem v_1014_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 128 16 = true := by decide +kernel

theorem v_1014_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1014 144 16 = true := by decide +kernel

theorem r_1014 : recsK7OK T qscale den6 d14 lamN lamD l7 1014 1 = true := recK7_of (n := 160) t_1014 n_1014 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1014_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1014_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1014_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1014_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1014_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1014_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1014_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1014_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1014_8 (v_1014_9))))))))))

theorem t_1015 : treeK7OK l7 1015 = true := by decide +kernel

theorem n_1015 : (recAt l7 1015).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1015_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 0 16 = true := by decide +kernel

theorem v_1015_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 16 16 = true := by decide +kernel

theorem v_1015_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 32 16 = true := by decide +kernel

theorem v_1015_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 48 16 = true := by decide +kernel

theorem v_1015_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 64 16 = true := by decide +kernel

theorem v_1015_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 80 16 = true := by decide +kernel

theorem v_1015_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 96 16 = true := by decide +kernel

theorem v_1015_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 112 16 = true := by decide +kernel

theorem v_1015_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1015 128 16 = true := by decide +kernel

theorem r_1015 : recsK7OK T qscale den6 d14 lamN lamD l7 1015 1 = true := recK7_of (n := 144) t_1015 n_1015 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1015_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1015_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1015_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1015_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1015_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1015_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1015_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1015_7 (v_1015_8)))))))))

theorem t_1016 : treeK7OK l7 1016 = true := by decide +kernel

theorem n_1016 : (recAt l7 1016).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1016_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1016 0 16 = true := by decide +kernel

theorem v_1016_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1016 16 16 = true := by decide +kernel

theorem v_1016_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1016 32 16 = true := by decide +kernel

theorem v_1016_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1016 48 16 = true := by decide +kernel

theorem r_1016 : recsK7OK T qscale den6 d14 lamN lamD l7 1016 1 = true := recK7_of (n := 64) t_1016 n_1016 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1016_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1016_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1016_2 (v_1016_3))))

theorem rs_1014 : recsK7OK T qscale den6 d14 lamN lamD l7 1014 3 = true := recsK7OK_succ (lo := 1014) (n := 2) r_1014 (recsK7OK_succ (lo := 1015) (n := 1) r_1015 (r_1016))

end BeatAvg.K.K7
