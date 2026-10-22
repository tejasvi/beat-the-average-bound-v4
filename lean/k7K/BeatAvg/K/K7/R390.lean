import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1184 : treeK7OK l7 1184 = true := by decide +kernel

theorem n_1184 : (recAt l7 1184).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1184_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1184 0 16 = true := by decide +kernel

theorem v_1184_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1184 16 16 = true := by decide +kernel

theorem v_1184_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1184 32 16 = true := by decide +kernel

theorem v_1184_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1184 48 16 = true := by decide +kernel

theorem v_1184_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1184 64 16 = true := by decide +kernel

theorem v_1184_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1184 80 16 = true := by decide +kernel

theorem v_1184_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1184 96 16 = true := by decide +kernel

theorem r_1184 : recsK7OK T qscale den6 d14 lamN lamD l7 1184 1 = true := recK7_of (n := 112) t_1184 n_1184 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1184_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1184_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1184_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1184_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1184_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1184_5 (v_1184_6)))))))

theorem t_1185 : treeK7OK l7 1185 = true := by decide +kernel

theorem n_1185 : (recAt l7 1185).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1185_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1185 0 16 = true := by decide +kernel

theorem v_1185_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1185 16 16 = true := by decide +kernel

theorem v_1185_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1185 32 16 = true := by decide +kernel

theorem v_1185_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1185 48 16 = true := by decide +kernel

theorem v_1185_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1185 64 16 = true := by decide +kernel

theorem v_1185_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1185 80 16 = true := by decide +kernel

theorem v_1185_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1185 96 16 = true := by decide +kernel

theorem r_1185 : recsK7OK T qscale den6 d14 lamN lamD l7 1185 1 = true := recK7_of (n := 112) t_1185 n_1185 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1185_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1185_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1185_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1185_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1185_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1185_5 (v_1185_6)))))))

theorem t_1186 : treeK7OK l7 1186 = true := by decide +kernel

theorem n_1186 : (recAt l7 1186).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1186_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 0 16 = true := by decide +kernel

theorem v_1186_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 16 16 = true := by decide +kernel

theorem v_1186_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 32 16 = true := by decide +kernel

theorem v_1186_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 48 16 = true := by decide +kernel

theorem v_1186_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 64 16 = true := by decide +kernel

theorem v_1186_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 80 16 = true := by decide +kernel

theorem v_1186_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 96 16 = true := by decide +kernel

theorem v_1186_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 112 16 = true := by decide +kernel

theorem v_1186_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 128 16 = true := by decide +kernel

theorem v_1186_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1186 144 16 = true := by decide +kernel

theorem r_1186 : recsK7OK T qscale den6 d14 lamN lamD l7 1186 1 = true := recK7_of (n := 160) t_1186 n_1186 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1186_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1186_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1186_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1186_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1186_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1186_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1186_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1186_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1186_8 (v_1186_9))))))))))

theorem rs_1184 : recsK7OK T qscale den6 d14 lamN lamD l7 1184 3 = true := recsK7OK_succ (lo := 1184) (n := 2) r_1184 (recsK7OK_succ (lo := 1185) (n := 1) r_1185 (r_1186))

end BeatAvg.K.K7
