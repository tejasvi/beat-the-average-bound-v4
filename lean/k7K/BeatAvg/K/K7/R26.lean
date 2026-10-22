import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_92 : treeK7OK l7 92 = true := by decide +kernel

theorem n_92 : (recAt l7 92).2.2.2.length ≤ 80 := by decide +kernel

theorem v_92_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 92 0 16 = true := by decide +kernel

theorem v_92_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 92 16 16 = true := by decide +kernel

theorem v_92_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 92 32 16 = true := by decide +kernel

theorem v_92_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 92 48 16 = true := by decide +kernel

theorem v_92_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 92 64 16 = true := by decide +kernel

theorem r_92 : recsK7OK T qscale den6 d14 lamN lamD l7 92 1 = true := recK7_of (n := 80) t_92 n_92 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_92_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_92_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_92_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_92_3 (v_92_4)))))

theorem t_93 : treeK7OK l7 93 = true := by decide +kernel

theorem n_93 : (recAt l7 93).2.2.2.length ≤ 112 := by decide +kernel

theorem v_93_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 93 0 16 = true := by decide +kernel

theorem v_93_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 93 16 16 = true := by decide +kernel

theorem v_93_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 93 32 16 = true := by decide +kernel

theorem v_93_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 93 48 16 = true := by decide +kernel

theorem v_93_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 93 64 16 = true := by decide +kernel

theorem v_93_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 93 80 16 = true := by decide +kernel

theorem v_93_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 93 96 16 = true := by decide +kernel

theorem r_93 : recsK7OK T qscale den6 d14 lamN lamD l7 93 1 = true := recK7_of (n := 112) t_93 n_93 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_93_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_93_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_93_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_93_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_93_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_93_5 (v_93_6)))))))

theorem t_94 : treeK7OK l7 94 = true := by decide +kernel

theorem n_94 : (recAt l7 94).2.2.2.length ≤ 128 := by decide +kernel

theorem v_94_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 0 16 = true := by decide +kernel

theorem v_94_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 16 16 = true := by decide +kernel

theorem v_94_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 32 16 = true := by decide +kernel

theorem v_94_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 48 16 = true := by decide +kernel

theorem v_94_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 64 16 = true := by decide +kernel

theorem v_94_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 80 16 = true := by decide +kernel

theorem v_94_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 96 16 = true := by decide +kernel

theorem v_94_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 94 112 16 = true := by decide +kernel

theorem r_94 : recsK7OK T qscale den6 d14 lamN lamD l7 94 1 = true := recK7_of (n := 128) t_94 n_94 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_94_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_94_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_94_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_94_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_94_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_94_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_94_6 (v_94_7))))))))

theorem t_95 : treeK7OK l7 95 = true := by decide +kernel

theorem n_95 : (recAt l7 95).2.2.2.length ≤ 80 := by decide +kernel

theorem v_95_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 95 0 16 = true := by decide +kernel

theorem v_95_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 95 16 16 = true := by decide +kernel

theorem v_95_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 95 32 16 = true := by decide +kernel

theorem v_95_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 95 48 16 = true := by decide +kernel

theorem v_95_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 95 64 16 = true := by decide +kernel

theorem r_95 : recsK7OK T qscale den6 d14 lamN lamD l7 95 1 = true := recK7_of (n := 80) t_95 n_95 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_95_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_95_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_95_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_95_3 (v_95_4)))))

theorem rs_92 : recsK7OK T qscale den6 d14 lamN lamD l7 92 4 = true := recsK7OK_succ (lo := 92) (n := 3) r_92 (recsK7OK_succ (lo := 93) (n := 2) r_93 (recsK7OK_succ (lo := 94) (n := 1) r_94 (r_95)))

end BeatAvg.K.K7
