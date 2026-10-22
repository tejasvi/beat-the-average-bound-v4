import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1017 : treeK7OK l7 1017 = true := by decide +kernel

theorem n_1017 : (recAt l7 1017).2.2.2.length ≤ 176 := by decide +kernel

theorem v_1017_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 0 16 = true := by decide +kernel

theorem v_1017_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 16 16 = true := by decide +kernel

theorem v_1017_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 32 16 = true := by decide +kernel

theorem v_1017_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 48 16 = true := by decide +kernel

theorem v_1017_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 64 16 = true := by decide +kernel

theorem v_1017_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 80 16 = true := by decide +kernel

theorem v_1017_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 96 16 = true := by decide +kernel

theorem v_1017_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 112 16 = true := by decide +kernel

theorem v_1017_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 128 16 = true := by decide +kernel

theorem v_1017_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 144 16 = true := by decide +kernel

theorem v_1017_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1017 160 16 = true := by decide +kernel

theorem r_1017 : recsK7OK T qscale den6 d14 lamN lamD l7 1017 1 = true := recK7_of (n := 176) t_1017 n_1017 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_1017_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_1017_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_1017_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_1017_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_1017_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_1017_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_1017_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_1017_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_1017_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_1017_9 (v_1017_10)))))))))))

theorem t_1018 : treeK7OK l7 1018 = true := by decide +kernel

theorem n_1018 : (recAt l7 1018).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1018_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1018 0 16 = true := by decide +kernel

theorem v_1018_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1018 16 16 = true := by decide +kernel

theorem v_1018_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1018 32 16 = true := by decide +kernel

theorem r_1018 : recsK7OK T qscale den6 d14 lamN lamD l7 1018 1 = true := recK7_of (n := 48) t_1018 n_1018 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1018_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1018_1 (v_1018_2)))

theorem t_1019 : treeK7OK l7 1019 = true := by decide +kernel

theorem n_1019 : (recAt l7 1019).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1019_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1019 0 16 = true := by decide +kernel

theorem v_1019_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1019 16 16 = true := by decide +kernel

theorem v_1019_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1019 32 16 = true := by decide +kernel

theorem v_1019_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1019 48 16 = true := by decide +kernel

theorem v_1019_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1019 64 16 = true := by decide +kernel

theorem r_1019 : recsK7OK T qscale den6 d14 lamN lamD l7 1019 1 = true := recK7_of (n := 80) t_1019 n_1019 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1019_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1019_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1019_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1019_3 (v_1019_4)))))

theorem rs_1017 : recsK7OK T qscale den6 d14 lamN lamD l7 1017 3 = true := recsK7OK_succ (lo := 1017) (n := 2) r_1017 (recsK7OK_succ (lo := 1018) (n := 1) r_1018 (r_1019))

end BeatAvg.K.K7
