import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_107 : treeK7OK l7 107 = true := by decide +kernel

theorem n_107 : (recAt l7 107).2.2.2.length ≤ 144 := by decide +kernel

theorem v_107_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 0 16 = true := by decide +kernel

theorem v_107_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 16 16 = true := by decide +kernel

theorem v_107_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 32 16 = true := by decide +kernel

theorem v_107_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 48 16 = true := by decide +kernel

theorem v_107_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 64 16 = true := by decide +kernel

theorem v_107_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 80 16 = true := by decide +kernel

theorem v_107_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 96 16 = true := by decide +kernel

theorem v_107_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 112 16 = true := by decide +kernel

theorem v_107_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 107 128 16 = true := by decide +kernel

theorem r_107 : recsK7OK T qscale den6 d14 lamN lamD l7 107 1 = true := recK7_of (n := 144) t_107 n_107 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_107_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_107_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_107_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_107_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_107_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_107_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_107_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_107_7 (v_107_8)))))))))

theorem t_108 : treeK7OK l7 108 = true := by decide +kernel

theorem n_108 : (recAt l7 108).2.2.2.length ≤ 160 := by decide +kernel

theorem v_108_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 0 16 = true := by decide +kernel

theorem v_108_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 16 16 = true := by decide +kernel

theorem v_108_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 32 16 = true := by decide +kernel

theorem v_108_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 48 16 = true := by decide +kernel

theorem v_108_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 64 16 = true := by decide +kernel

theorem v_108_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 80 16 = true := by decide +kernel

theorem v_108_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 96 16 = true := by decide +kernel

theorem v_108_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 112 16 = true := by decide +kernel

theorem v_108_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 128 16 = true := by decide +kernel

theorem v_108_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 108 144 16 = true := by decide +kernel

theorem r_108 : recsK7OK T qscale den6 d14 lamN lamD l7 108 1 = true := recK7_of (n := 160) t_108 n_108 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_108_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_108_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_108_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_108_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_108_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_108_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_108_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_108_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_108_8 (v_108_9))))))))))

theorem t_109 : treeK7OK l7 109 = true := by decide +kernel

theorem n_109 : (recAt l7 109).2.2.2.length ≤ 80 := by decide +kernel

theorem v_109_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 109 0 16 = true := by decide +kernel

theorem v_109_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 109 16 16 = true := by decide +kernel

theorem v_109_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 109 32 16 = true := by decide +kernel

theorem v_109_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 109 48 16 = true := by decide +kernel

theorem v_109_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 109 64 16 = true := by decide +kernel

theorem r_109 : recsK7OK T qscale den6 d14 lamN lamD l7 109 1 = true := recK7_of (n := 80) t_109 n_109 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_109_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_109_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_109_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_109_3 (v_109_4)))))

theorem t_110 : treeK7OK l7 110 = true := by decide +kernel

theorem n_110 : (recAt l7 110).2.2.2.length ≤ 32 := by decide +kernel

theorem v_110_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 110 0 16 = true := by decide +kernel

theorem v_110_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 110 16 16 = true := by decide +kernel

theorem r_110 : recsK7OK T qscale den6 d14 lamN lamD l7 110 1 = true := recK7_of (n := 32) t_110 n_110 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_110_0 (v_110_1))

theorem rs_107 : recsK7OK T qscale den6 d14 lamN lamD l7 107 4 = true := recsK7OK_succ (lo := 107) (n := 3) r_107 (recsK7OK_succ (lo := 108) (n := 2) r_108 (recsK7OK_succ (lo := 109) (n := 1) r_109 (r_110)))

end BeatAvg.K.K7
