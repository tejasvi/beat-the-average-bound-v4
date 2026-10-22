import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1000 : treeK7OK l7 1000 = true := by decide +kernel

theorem n_1000 : (recAt l7 1000).2.2.2.length ≤ 176 := by decide +kernel

theorem v_1000_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 0 16 = true := by decide +kernel

theorem v_1000_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 16 16 = true := by decide +kernel

theorem v_1000_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 32 16 = true := by decide +kernel

theorem v_1000_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 48 16 = true := by decide +kernel

theorem v_1000_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 64 16 = true := by decide +kernel

theorem v_1000_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 80 16 = true := by decide +kernel

theorem v_1000_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 96 16 = true := by decide +kernel

theorem v_1000_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 112 16 = true := by decide +kernel

theorem v_1000_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 128 16 = true := by decide +kernel

theorem v_1000_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 144 16 = true := by decide +kernel

theorem v_1000_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1000 160 16 = true := by decide +kernel

theorem r_1000 : recsK7OK T qscale den6 d14 lamN lamD l7 1000 1 = true := recK7_of (n := 176) t_1000 n_1000 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_1000_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_1000_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_1000_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_1000_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_1000_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_1000_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_1000_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_1000_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_1000_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_1000_9 (v_1000_10)))))))))))

theorem t_1001 : treeK7OK l7 1001 = true := by decide +kernel

theorem n_1001 : (recAt l7 1001).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1001_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 0 16 = true := by decide +kernel

theorem v_1001_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 16 16 = true := by decide +kernel

theorem v_1001_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 32 16 = true := by decide +kernel

theorem v_1001_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 48 16 = true := by decide +kernel

theorem v_1001_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 64 16 = true := by decide +kernel

theorem v_1001_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 80 16 = true := by decide +kernel

theorem v_1001_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 96 16 = true := by decide +kernel

theorem v_1001_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 112 16 = true := by decide +kernel

theorem v_1001_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1001 128 16 = true := by decide +kernel

theorem r_1001 : recsK7OK T qscale den6 d14 lamN lamD l7 1001 1 = true := recK7_of (n := 144) t_1001 n_1001 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1001_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1001_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1001_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1001_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1001_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1001_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1001_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1001_7 (v_1001_8)))))))))

theorem t_1002 : treeK7OK l7 1002 = true := by decide +kernel

theorem n_1002 : (recAt l7 1002).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1002_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1002 0 16 = true := by decide +kernel

theorem v_1002_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1002 16 16 = true := by decide +kernel

theorem v_1002_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1002 32 16 = true := by decide +kernel

theorem v_1002_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1002 48 16 = true := by decide +kernel

theorem v_1002_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1002 64 16 = true := by decide +kernel

theorem r_1002 : recsK7OK T qscale den6 d14 lamN lamD l7 1002 1 = true := recK7_of (n := 80) t_1002 n_1002 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1002_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1002_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1002_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1002_3 (v_1002_4)))))

theorem rs_1000 : recsK7OK T qscale den6 d14 lamN lamD l7 1000 3 = true := recsK7OK_succ (lo := 1000) (n := 2) r_1000 (recsK7OK_succ (lo := 1001) (n := 1) r_1001 (r_1002))

end BeatAvg.K.K7
