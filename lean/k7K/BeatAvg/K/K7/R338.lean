import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1007 : treeK7OK l7 1007 = true := by decide +kernel

theorem n_1007 : (recAt l7 1007).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1007_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1007 0 16 = true := by decide +kernel

theorem v_1007_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1007 16 16 = true := by decide +kernel

theorem v_1007_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1007 32 16 = true := by decide +kernel

theorem r_1007 : recsK7OK T qscale den6 d14 lamN lamD l7 1007 1 = true := recK7_of (n := 48) t_1007 n_1007 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1007_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1007_1 (v_1007_2)))

theorem t_1008 : treeK7OK l7 1008 = true := by decide +kernel

theorem n_1008 : (recAt l7 1008).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1008_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1008 0 16 = true := by decide +kernel

theorem v_1008_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1008 16 16 = true := by decide +kernel

theorem r_1008 : recsK7OK T qscale den6 d14 lamN lamD l7 1008 1 = true := recK7_of (n := 32) t_1008 n_1008 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1008_0 (v_1008_1))

theorem t_1009 : treeK7OK l7 1009 = true := by decide +kernel

theorem n_1009 : (recAt l7 1009).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1009_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1009 0 16 = true := by decide +kernel

theorem v_1009_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1009 16 16 = true := by decide +kernel

theorem v_1009_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1009 32 16 = true := by decide +kernel

theorem v_1009_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1009 48 16 = true := by decide +kernel

theorem r_1009 : recsK7OK T qscale den6 d14 lamN lamD l7 1009 1 = true := recK7_of (n := 64) t_1009 n_1009 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1009_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1009_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1009_2 (v_1009_3))))

theorem t_1010 : treeK7OK l7 1010 = true := by decide +kernel

theorem n_1010 : (recAt l7 1010).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1010_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1010 0 16 = true := by decide +kernel

theorem v_1010_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1010 16 16 = true := by decide +kernel

theorem r_1010 : recsK7OK T qscale den6 d14 lamN lamD l7 1010 1 = true := recK7_of (n := 32) t_1010 n_1010 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1010_0 (v_1010_1))

theorem t_1011 : treeK7OK l7 1011 = true := by decide +kernel

theorem n_1011 : (recAt l7 1011).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1011_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1011 0 16 = true := by decide +kernel

theorem v_1011_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1011 16 16 = true := by decide +kernel

theorem v_1011_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1011 32 16 = true := by decide +kernel

theorem v_1011_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1011 48 16 = true := by decide +kernel

theorem r_1011 : recsK7OK T qscale den6 d14 lamN lamD l7 1011 1 = true := recK7_of (n := 64) t_1011 n_1011 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1011_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1011_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1011_2 (v_1011_3))))

theorem t_1012 : treeK7OK l7 1012 = true := by decide +kernel

theorem n_1012 : (recAt l7 1012).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1012_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1012 0 16 = true := by decide +kernel

theorem v_1012_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1012 16 16 = true := by decide +kernel

theorem v_1012_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1012 32 16 = true := by decide +kernel

theorem v_1012_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1012 48 16 = true := by decide +kernel

theorem v_1012_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1012 64 16 = true := by decide +kernel

theorem v_1012_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1012 80 16 = true := by decide +kernel

theorem v_1012_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1012 96 16 = true := by decide +kernel

theorem r_1012 : recsK7OK T qscale den6 d14 lamN lamD l7 1012 1 = true := recK7_of (n := 112) t_1012 n_1012 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1012_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1012_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1012_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1012_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1012_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1012_5 (v_1012_6)))))))

theorem t_1013 : treeK7OK l7 1013 = true := by decide +kernel

theorem n_1013 : (recAt l7 1013).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1013_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1013 0 16 = true := by decide +kernel

theorem v_1013_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1013 16 16 = true := by decide +kernel

theorem v_1013_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1013 32 16 = true := by decide +kernel

theorem v_1013_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1013 48 16 = true := by decide +kernel

theorem v_1013_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1013 64 16 = true := by decide +kernel

theorem v_1013_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1013 80 16 = true := by decide +kernel

theorem r_1013 : recsK7OK T qscale den6 d14 lamN lamD l7 1013 1 = true := recK7_of (n := 96) t_1013 n_1013 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1013_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1013_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1013_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1013_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1013_4 (v_1013_5))))))

theorem rs_1007 : recsK7OK T qscale den6 d14 lamN lamD l7 1007 7 = true := recsK7OK_succ (lo := 1007) (n := 6) r_1007 (recsK7OK_succ (lo := 1008) (n := 5) r_1008 (recsK7OK_succ (lo := 1009) (n := 4) r_1009 (recsK7OK_succ (lo := 1010) (n := 3) r_1010 (recsK7OK_succ (lo := 1011) (n := 2) r_1011 (recsK7OK_succ (lo := 1012) (n := 1) r_1012 (r_1013))))))

end BeatAvg.K.K7
