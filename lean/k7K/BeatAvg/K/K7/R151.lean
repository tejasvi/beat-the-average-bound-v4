import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_504 : treeK7OK l7 504 = true := by decide +kernel

theorem n_504 : (recAt l7 504).2.2.2.length ≤ 160 := by decide +kernel

theorem v_504_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 0 16 = true := by decide +kernel

theorem v_504_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 16 16 = true := by decide +kernel

theorem v_504_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 32 16 = true := by decide +kernel

theorem v_504_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 48 16 = true := by decide +kernel

theorem v_504_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 64 16 = true := by decide +kernel

theorem v_504_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 80 16 = true := by decide +kernel

theorem v_504_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 96 16 = true := by decide +kernel

theorem v_504_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 112 16 = true := by decide +kernel

theorem v_504_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 128 16 = true := by decide +kernel

theorem v_504_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 504 144 16 = true := by decide +kernel

theorem r_504 : recsK7OK T qscale den6 d14 lamN lamD l7 504 1 = true := recK7_of (n := 160) t_504 n_504 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_504_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_504_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_504_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_504_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_504_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_504_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_504_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_504_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_504_8 (v_504_9))))))))))

theorem t_505 : treeK7OK l7 505 = true := by decide +kernel

theorem n_505 : (recAt l7 505).2.2.2.length ≤ 80 := by decide +kernel

theorem v_505_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 505 0 16 = true := by decide +kernel

theorem v_505_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 505 16 16 = true := by decide +kernel

theorem v_505_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 505 32 16 = true := by decide +kernel

theorem v_505_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 505 48 16 = true := by decide +kernel

theorem v_505_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 505 64 16 = true := by decide +kernel

theorem r_505 : recsK7OK T qscale den6 d14 lamN lamD l7 505 1 = true := recK7_of (n := 80) t_505 n_505 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_505_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_505_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_505_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_505_3 (v_505_4)))))

theorem t_506 : treeK7OK l7 506 = true := by decide +kernel

theorem n_506 : (recAt l7 506).2.2.2.length ≤ 48 := by decide +kernel

theorem v_506_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 506 0 16 = true := by decide +kernel

theorem v_506_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 506 16 16 = true := by decide +kernel

theorem v_506_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 506 32 16 = true := by decide +kernel

theorem r_506 : recsK7OK T qscale den6 d14 lamN lamD l7 506 1 = true := recK7_of (n := 48) t_506 n_506 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_506_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_506_1 (v_506_2)))

theorem t_507 : treeK7OK l7 507 = true := by decide +kernel

theorem n_507 : (recAt l7 507).2.2.2.length ≤ 128 := by decide +kernel

theorem v_507_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 0 16 = true := by decide +kernel

theorem v_507_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 16 16 = true := by decide +kernel

theorem v_507_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 32 16 = true := by decide +kernel

theorem v_507_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 48 16 = true := by decide +kernel

theorem v_507_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 64 16 = true := by decide +kernel

theorem v_507_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 80 16 = true := by decide +kernel

theorem v_507_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 96 16 = true := by decide +kernel

theorem v_507_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 507 112 16 = true := by decide +kernel

theorem r_507 : recsK7OK T qscale den6 d14 lamN lamD l7 507 1 = true := recK7_of (n := 128) t_507 n_507 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_507_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_507_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_507_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_507_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_507_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_507_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_507_6 (v_507_7))))))))

theorem rs_504 : recsK7OK T qscale den6 d14 lamN lamD l7 504 4 = true := recsK7OK_succ (lo := 504) (n := 3) r_504 (recsK7OK_succ (lo := 505) (n := 2) r_505 (recsK7OK_succ (lo := 506) (n := 1) r_506 (r_507)))

end BeatAvg.K.K7
