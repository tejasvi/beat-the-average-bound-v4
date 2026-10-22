import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_857 : treeK7OK l7 857 = true := by decide +kernel

theorem n_857 : (recAt l7 857).2.2.2.length ≤ 128 := by decide +kernel

theorem v_857_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 0 16 = true := by decide +kernel

theorem v_857_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 16 16 = true := by decide +kernel

theorem v_857_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 32 16 = true := by decide +kernel

theorem v_857_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 48 16 = true := by decide +kernel

theorem v_857_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 64 16 = true := by decide +kernel

theorem v_857_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 80 16 = true := by decide +kernel

theorem v_857_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 96 16 = true := by decide +kernel

theorem v_857_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 857 112 16 = true := by decide +kernel

theorem r_857 : recsK7OK T qscale den6 d14 lamN lamD l7 857 1 = true := recK7_of (n := 128) t_857 n_857 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_857_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_857_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_857_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_857_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_857_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_857_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_857_6 (v_857_7))))))))

theorem t_858 : treeK7OK l7 858 = true := by decide +kernel

theorem n_858 : (recAt l7 858).2.2.2.length ≤ 64 := by decide +kernel

theorem v_858_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 858 0 16 = true := by decide +kernel

theorem v_858_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 858 16 16 = true := by decide +kernel

theorem v_858_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 858 32 16 = true := by decide +kernel

theorem v_858_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 858 48 16 = true := by decide +kernel

theorem r_858 : recsK7OK T qscale den6 d14 lamN lamD l7 858 1 = true := recK7_of (n := 64) t_858 n_858 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_858_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_858_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_858_2 (v_858_3))))

theorem t_859 : treeK7OK l7 859 = true := by decide +kernel

theorem n_859 : (recAt l7 859).2.2.2.length ≤ 96 := by decide +kernel

theorem v_859_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 859 0 16 = true := by decide +kernel

theorem v_859_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 859 16 16 = true := by decide +kernel

theorem v_859_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 859 32 16 = true := by decide +kernel

theorem v_859_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 859 48 16 = true := by decide +kernel

theorem v_859_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 859 64 16 = true := by decide +kernel

theorem v_859_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 859 80 16 = true := by decide +kernel

theorem r_859 : recsK7OK T qscale den6 d14 lamN lamD l7 859 1 = true := recK7_of (n := 96) t_859 n_859 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_859_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_859_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_859_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_859_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_859_4 (v_859_5))))))

theorem t_860 : treeK7OK l7 860 = true := by decide +kernel

theorem n_860 : (recAt l7 860).2.2.2.length ≤ 128 := by decide +kernel

theorem v_860_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 0 16 = true := by decide +kernel

theorem v_860_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 16 16 = true := by decide +kernel

theorem v_860_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 32 16 = true := by decide +kernel

theorem v_860_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 48 16 = true := by decide +kernel

theorem v_860_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 64 16 = true := by decide +kernel

theorem v_860_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 80 16 = true := by decide +kernel

theorem v_860_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 96 16 = true := by decide +kernel

theorem v_860_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 860 112 16 = true := by decide +kernel

theorem r_860 : recsK7OK T qscale den6 d14 lamN lamD l7 860 1 = true := recK7_of (n := 128) t_860 n_860 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_860_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_860_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_860_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_860_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_860_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_860_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_860_6 (v_860_7))))))))

theorem rs_857 : recsK7OK T qscale den6 d14 lamN lamD l7 857 4 = true := recsK7OK_succ (lo := 857) (n := 3) r_857 (recsK7OK_succ (lo := 858) (n := 2) r_858 (recsK7OK_succ (lo := 859) (n := 1) r_859 (r_860)))

end BeatAvg.K.K7
