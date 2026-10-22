import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_607 : treeK7OK l7 607 = true := by decide +kernel

theorem n_607 : (recAt l7 607).2.2.2.length ≤ 160 := by decide +kernel

theorem v_607_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 0 16 = true := by decide +kernel

theorem v_607_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 16 16 = true := by decide +kernel

theorem v_607_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 32 16 = true := by decide +kernel

theorem v_607_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 48 16 = true := by decide +kernel

theorem v_607_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 64 16 = true := by decide +kernel

theorem v_607_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 80 16 = true := by decide +kernel

theorem v_607_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 96 16 = true := by decide +kernel

theorem v_607_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 112 16 = true := by decide +kernel

theorem v_607_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 128 16 = true := by decide +kernel

theorem v_607_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 607 144 16 = true := by decide +kernel

theorem r_607 : recsK7OK T qscale den6 d14 lamN lamD l7 607 1 = true := recK7_of (n := 160) t_607 n_607 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_607_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_607_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_607_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_607_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_607_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_607_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_607_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_607_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_607_8 (v_607_9))))))))))

theorem t_608 : treeK7OK l7 608 = true := by decide +kernel

theorem n_608 : (recAt l7 608).2.2.2.length ≤ 32 := by decide +kernel

theorem v_608_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 608 0 16 = true := by decide +kernel

theorem v_608_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 608 16 16 = true := by decide +kernel

theorem r_608 : recsK7OK T qscale den6 d14 lamN lamD l7 608 1 = true := recK7_of (n := 32) t_608 n_608 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_608_0 (v_608_1))

theorem t_609 : treeK7OK l7 609 = true := by decide +kernel

theorem n_609 : (recAt l7 609).2.2.2.length ≤ 48 := by decide +kernel

theorem v_609_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 609 0 16 = true := by decide +kernel

theorem v_609_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 609 16 16 = true := by decide +kernel

theorem v_609_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 609 32 16 = true := by decide +kernel

theorem r_609 : recsK7OK T qscale den6 d14 lamN lamD l7 609 1 = true := recK7_of (n := 48) t_609 n_609 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_609_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_609_1 (v_609_2)))

theorem t_610 : treeK7OK l7 610 = true := by decide +kernel

theorem n_610 : (recAt l7 610).2.2.2.length ≤ 64 := by decide +kernel

theorem v_610_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 610 0 16 = true := by decide +kernel

theorem v_610_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 610 16 16 = true := by decide +kernel

theorem v_610_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 610 32 16 = true := by decide +kernel

theorem v_610_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 610 48 16 = true := by decide +kernel

theorem r_610 : recsK7OK T qscale den6 d14 lamN lamD l7 610 1 = true := recK7_of (n := 64) t_610 n_610 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_610_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_610_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_610_2 (v_610_3))))

theorem t_611 : treeK7OK l7 611 = true := by decide +kernel

theorem n_611 : (recAt l7 611).2.2.2.length ≤ 112 := by decide +kernel

theorem v_611_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 611 0 16 = true := by decide +kernel

theorem v_611_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 611 16 16 = true := by decide +kernel

theorem v_611_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 611 32 16 = true := by decide +kernel

theorem v_611_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 611 48 16 = true := by decide +kernel

theorem v_611_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 611 64 16 = true := by decide +kernel

theorem v_611_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 611 80 16 = true := by decide +kernel

theorem v_611_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 611 96 16 = true := by decide +kernel

theorem r_611 : recsK7OK T qscale den6 d14 lamN lamD l7 611 1 = true := recK7_of (n := 112) t_611 n_611 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_611_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_611_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_611_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_611_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_611_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_611_5 (v_611_6)))))))

theorem rs_607 : recsK7OK T qscale den6 d14 lamN lamD l7 607 5 = true := recsK7OK_succ (lo := 607) (n := 4) r_607 (recsK7OK_succ (lo := 608) (n := 3) r_608 (recsK7OK_succ (lo := 609) (n := 2) r_609 (recsK7OK_succ (lo := 610) (n := 1) r_610 (r_611))))

end BeatAvg.K.K7
