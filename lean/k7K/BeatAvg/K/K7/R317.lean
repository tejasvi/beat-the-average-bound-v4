import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_963 : treeK7OK l7 963 = true := by decide +kernel

theorem n_963 : (recAt l7 963).2.2.2.length ≤ 112 := by decide +kernel

theorem v_963_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 963 0 16 = true := by decide +kernel

theorem v_963_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 963 16 16 = true := by decide +kernel

theorem v_963_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 963 32 16 = true := by decide +kernel

theorem v_963_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 963 48 16 = true := by decide +kernel

theorem v_963_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 963 64 16 = true := by decide +kernel

theorem v_963_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 963 80 16 = true := by decide +kernel

theorem v_963_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 963 96 16 = true := by decide +kernel

theorem r_963 : recsK7OK T qscale den6 d14 lamN lamD l7 963 1 = true := recK7_of (n := 112) t_963 n_963 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_963_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_963_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_963_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_963_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_963_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_963_5 (v_963_6)))))))

theorem t_964 : treeK7OK l7 964 = true := by decide +kernel

theorem n_964 : (recAt l7 964).2.2.2.length ≤ 48 := by decide +kernel

theorem v_964_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 964 0 16 = true := by decide +kernel

theorem v_964_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 964 16 16 = true := by decide +kernel

theorem v_964_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 964 32 16 = true := by decide +kernel

theorem r_964 : recsK7OK T qscale den6 d14 lamN lamD l7 964 1 = true := recK7_of (n := 48) t_964 n_964 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_964_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_964_1 (v_964_2)))

theorem t_965 : treeK7OK l7 965 = true := by decide +kernel

theorem n_965 : (recAt l7 965).2.2.2.length ≤ 96 := by decide +kernel

theorem v_965_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 965 0 16 = true := by decide +kernel

theorem v_965_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 965 16 16 = true := by decide +kernel

theorem v_965_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 965 32 16 = true := by decide +kernel

theorem v_965_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 965 48 16 = true := by decide +kernel

theorem v_965_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 965 64 16 = true := by decide +kernel

theorem v_965_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 965 80 16 = true := by decide +kernel

theorem r_965 : recsK7OK T qscale den6 d14 lamN lamD l7 965 1 = true := recK7_of (n := 96) t_965 n_965 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_965_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_965_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_965_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_965_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_965_4 (v_965_5))))))

theorem t_966 : treeK7OK l7 966 = true := by decide +kernel

theorem n_966 : (recAt l7 966).2.2.2.length ≤ 96 := by decide +kernel

theorem v_966_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 966 0 16 = true := by decide +kernel

theorem v_966_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 966 16 16 = true := by decide +kernel

theorem v_966_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 966 32 16 = true := by decide +kernel

theorem v_966_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 966 48 16 = true := by decide +kernel

theorem v_966_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 966 64 16 = true := by decide +kernel

theorem v_966_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 966 80 16 = true := by decide +kernel

theorem r_966 : recsK7OK T qscale den6 d14 lamN lamD l7 966 1 = true := recK7_of (n := 96) t_966 n_966 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_966_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_966_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_966_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_966_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_966_4 (v_966_5))))))

theorem t_967 : treeK7OK l7 967 = true := by decide +kernel

theorem n_967 : (recAt l7 967).2.2.2.length ≤ 32 := by decide +kernel

theorem v_967_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 967 0 16 = true := by decide +kernel

theorem v_967_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 967 16 16 = true := by decide +kernel

theorem r_967 : recsK7OK T qscale den6 d14 lamN lamD l7 967 1 = true := recK7_of (n := 32) t_967 n_967 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_967_0 (v_967_1))

theorem rs_963 : recsK7OK T qscale den6 d14 lamN lamD l7 963 5 = true := recsK7OK_succ (lo := 963) (n := 4) r_963 (recsK7OK_succ (lo := 964) (n := 3) r_964 (recsK7OK_succ (lo := 965) (n := 2) r_965 (recsK7OK_succ (lo := 966) (n := 1) r_966 (r_967))))

end BeatAvg.K.K7
