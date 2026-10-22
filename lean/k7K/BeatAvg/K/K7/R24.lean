import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_82 : treeK7OK l7 82 = true := by decide +kernel

theorem n_82 : (recAt l7 82).2.2.2.length ≤ 96 := by decide +kernel

theorem v_82_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 82 0 16 = true := by decide +kernel

theorem v_82_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 82 16 16 = true := by decide +kernel

theorem v_82_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 82 32 16 = true := by decide +kernel

theorem v_82_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 82 48 16 = true := by decide +kernel

theorem v_82_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 82 64 16 = true := by decide +kernel

theorem v_82_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 82 80 16 = true := by decide +kernel

theorem r_82 : recsK7OK T qscale den6 d14 lamN lamD l7 82 1 = true := recK7_of (n := 96) t_82 n_82 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_82_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_82_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_82_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_82_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_82_4 (v_82_5))))))

theorem t_83 : treeK7OK l7 83 = true := by decide +kernel

theorem n_83 : (recAt l7 83).2.2.2.length ≤ 128 := by decide +kernel

theorem v_83_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 0 16 = true := by decide +kernel

theorem v_83_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 16 16 = true := by decide +kernel

theorem v_83_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 32 16 = true := by decide +kernel

theorem v_83_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 48 16 = true := by decide +kernel

theorem v_83_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 64 16 = true := by decide +kernel

theorem v_83_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 80 16 = true := by decide +kernel

theorem v_83_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 96 16 = true := by decide +kernel

theorem v_83_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 83 112 16 = true := by decide +kernel

theorem r_83 : recsK7OK T qscale den6 d14 lamN lamD l7 83 1 = true := recK7_of (n := 128) t_83 n_83 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_83_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_83_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_83_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_83_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_83_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_83_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_83_6 (v_83_7))))))))

theorem t_84 : treeK7OK l7 84 = true := by decide +kernel

theorem n_84 : (recAt l7 84).2.2.2.length ≤ 32 := by decide +kernel

theorem v_84_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 84 0 16 = true := by decide +kernel

theorem v_84_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 84 16 16 = true := by decide +kernel

theorem r_84 : recsK7OK T qscale den6 d14 lamN lamD l7 84 1 = true := recK7_of (n := 32) t_84 n_84 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_84_0 (v_84_1))

theorem t_85 : treeK7OK l7 85 = true := by decide +kernel

theorem n_85 : (recAt l7 85).2.2.2.length ≤ 80 := by decide +kernel

theorem v_85_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 85 0 16 = true := by decide +kernel

theorem v_85_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 85 16 16 = true := by decide +kernel

theorem v_85_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 85 32 16 = true := by decide +kernel

theorem v_85_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 85 48 16 = true := by decide +kernel

theorem v_85_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 85 64 16 = true := by decide +kernel

theorem r_85 : recsK7OK T qscale den6 d14 lamN lamD l7 85 1 = true := recK7_of (n := 80) t_85 n_85 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_85_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_85_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_85_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_85_3 (v_85_4)))))

theorem t_86 : treeK7OK l7 86 = true := by decide +kernel

theorem n_86 : (recAt l7 86).2.2.2.length ≤ 32 := by decide +kernel

theorem v_86_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 86 0 16 = true := by decide +kernel

theorem v_86_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 86 16 16 = true := by decide +kernel

theorem r_86 : recsK7OK T qscale den6 d14 lamN lamD l7 86 1 = true := recK7_of (n := 32) t_86 n_86 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_86_0 (v_86_1))

theorem rs_82 : recsK7OK T qscale den6 d14 lamN lamD l7 82 5 = true := recsK7OK_succ (lo := 82) (n := 4) r_82 (recsK7OK_succ (lo := 83) (n := 3) r_83 (recsK7OK_succ (lo := 84) (n := 2) r_84 (recsK7OK_succ (lo := 85) (n := 1) r_85 (r_86))))

end BeatAvg.K.K7
