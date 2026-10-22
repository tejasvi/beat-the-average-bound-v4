import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_544 : treeK7OK l7 544 = true := by decide +kernel

theorem n_544 : (recAt l7 544).2.2.2.length ≤ 160 := by decide +kernel

theorem v_544_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 0 16 = true := by decide +kernel

theorem v_544_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 16 16 = true := by decide +kernel

theorem v_544_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 32 16 = true := by decide +kernel

theorem v_544_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 48 16 = true := by decide +kernel

theorem v_544_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 64 16 = true := by decide +kernel

theorem v_544_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 80 16 = true := by decide +kernel

theorem v_544_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 96 16 = true := by decide +kernel

theorem v_544_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 112 16 = true := by decide +kernel

theorem v_544_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 128 16 = true := by decide +kernel

theorem v_544_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 544 144 16 = true := by decide +kernel

theorem r_544 : recsK7OK T qscale den6 d14 lamN lamD l7 544 1 = true := recK7_of (n := 160) t_544 n_544 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_544_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_544_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_544_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_544_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_544_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_544_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_544_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_544_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_544_8 (v_544_9))))))))))

theorem t_545 : treeK7OK l7 545 = true := by decide +kernel

theorem n_545 : (recAt l7 545).2.2.2.length ≤ 128 := by decide +kernel

theorem v_545_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 0 16 = true := by decide +kernel

theorem v_545_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 16 16 = true := by decide +kernel

theorem v_545_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 32 16 = true := by decide +kernel

theorem v_545_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 48 16 = true := by decide +kernel

theorem v_545_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 64 16 = true := by decide +kernel

theorem v_545_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 80 16 = true := by decide +kernel

theorem v_545_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 96 16 = true := by decide +kernel

theorem v_545_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 545 112 16 = true := by decide +kernel

theorem r_545 : recsK7OK T qscale den6 d14 lamN lamD l7 545 1 = true := recK7_of (n := 128) t_545 n_545 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_545_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_545_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_545_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_545_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_545_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_545_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_545_6 (v_545_7))))))))

theorem t_546 : treeK7OK l7 546 = true := by decide +kernel

theorem n_546 : (recAt l7 546).2.2.2.length ≤ 80 := by decide +kernel

theorem v_546_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 546 0 16 = true := by decide +kernel

theorem v_546_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 546 16 16 = true := by decide +kernel

theorem v_546_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 546 32 16 = true := by decide +kernel

theorem v_546_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 546 48 16 = true := by decide +kernel

theorem v_546_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 546 64 16 = true := by decide +kernel

theorem r_546 : recsK7OK T qscale den6 d14 lamN lamD l7 546 1 = true := recK7_of (n := 80) t_546 n_546 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_546_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_546_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_546_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_546_3 (v_546_4)))))

theorem rs_544 : recsK7OK T qscale den6 d14 lamN lamD l7 544 3 = true := recsK7OK_succ (lo := 544) (n := 2) r_544 (recsK7OK_succ (lo := 545) (n := 1) r_545 (r_546))

end BeatAvg.K.K7
