import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_571 : treeK7OK l7 571 = true := by decide +kernel

theorem n_571 : (recAt l7 571).2.2.2.length ≤ 80 := by decide +kernel

theorem v_571_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 571 0 16 = true := by decide +kernel

theorem v_571_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 571 16 16 = true := by decide +kernel

theorem v_571_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 571 32 16 = true := by decide +kernel

theorem v_571_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 571 48 16 = true := by decide +kernel

theorem v_571_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 571 64 16 = true := by decide +kernel

theorem r_571 : recsK7OK T qscale den6 d14 lamN lamD l7 571 1 = true := recK7_of (n := 80) t_571 n_571 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_571_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_571_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_571_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_571_3 (v_571_4)))))

theorem t_572 : treeK7OK l7 572 = true := by decide +kernel

theorem n_572 : (recAt l7 572).2.2.2.length ≤ 112 := by decide +kernel

theorem v_572_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 572 0 16 = true := by decide +kernel

theorem v_572_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 572 16 16 = true := by decide +kernel

theorem v_572_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 572 32 16 = true := by decide +kernel

theorem v_572_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 572 48 16 = true := by decide +kernel

theorem v_572_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 572 64 16 = true := by decide +kernel

theorem v_572_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 572 80 16 = true := by decide +kernel

theorem v_572_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 572 96 16 = true := by decide +kernel

theorem r_572 : recsK7OK T qscale den6 d14 lamN lamD l7 572 1 = true := recK7_of (n := 112) t_572 n_572 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_572_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_572_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_572_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_572_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_572_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_572_5 (v_572_6)))))))

theorem t_573 : treeK7OK l7 573 = true := by decide +kernel

theorem n_573 : (recAt l7 573).2.2.2.length ≤ 32 := by decide +kernel

theorem v_573_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 573 0 16 = true := by decide +kernel

theorem v_573_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 573 16 16 = true := by decide +kernel

theorem r_573 : recsK7OK T qscale den6 d14 lamN lamD l7 573 1 = true := recK7_of (n := 32) t_573 n_573 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_573_0 (v_573_1))

theorem t_574 : treeK7OK l7 574 = true := by decide +kernel

theorem n_574 : (recAt l7 574).2.2.2.length ≤ 176 := by decide +kernel

theorem v_574_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 0 16 = true := by decide +kernel

theorem v_574_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 16 16 = true := by decide +kernel

theorem v_574_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 32 16 = true := by decide +kernel

theorem v_574_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 48 16 = true := by decide +kernel

theorem v_574_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 64 16 = true := by decide +kernel

theorem v_574_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 80 16 = true := by decide +kernel

theorem v_574_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 96 16 = true := by decide +kernel

theorem v_574_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 112 16 = true := by decide +kernel

theorem v_574_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 128 16 = true := by decide +kernel

theorem v_574_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 144 16 = true := by decide +kernel

theorem v_574_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 574 160 16 = true := by decide +kernel

theorem r_574 : recsK7OK T qscale den6 d14 lamN lamD l7 574 1 = true := recK7_of (n := 176) t_574 n_574 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_574_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_574_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_574_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_574_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_574_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_574_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_574_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_574_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_574_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_574_9 (v_574_10)))))))))))

theorem rs_571 : recsK7OK T qscale den6 d14 lamN lamD l7 571 4 = true := recsK7OK_succ (lo := 571) (n := 3) r_571 (recsK7OK_succ (lo := 572) (n := 2) r_572 (recsK7OK_succ (lo := 573) (n := 1) r_573 (r_574)))

end BeatAvg.K.K7
