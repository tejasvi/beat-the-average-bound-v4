import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_626 : treeK7OK l7 626 = true := by decide +kernel

theorem n_626 : (recAt l7 626).2.2.2.length ≤ 128 := by decide +kernel

theorem v_626_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 0 16 = true := by decide +kernel

theorem v_626_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 16 16 = true := by decide +kernel

theorem v_626_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 32 16 = true := by decide +kernel

theorem v_626_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 48 16 = true := by decide +kernel

theorem v_626_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 64 16 = true := by decide +kernel

theorem v_626_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 80 16 = true := by decide +kernel

theorem v_626_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 96 16 = true := by decide +kernel

theorem v_626_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 626 112 16 = true := by decide +kernel

theorem r_626 : recsK7OK T qscale den6 d14 lamN lamD l7 626 1 = true := recK7_of (n := 128) t_626 n_626 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_626_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_626_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_626_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_626_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_626_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_626_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_626_6 (v_626_7))))))))

theorem t_627 : treeK7OK l7 627 = true := by decide +kernel

theorem n_627 : (recAt l7 627).2.2.2.length ≤ 80 := by decide +kernel

theorem v_627_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 627 0 16 = true := by decide +kernel

theorem v_627_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 627 16 16 = true := by decide +kernel

theorem v_627_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 627 32 16 = true := by decide +kernel

theorem v_627_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 627 48 16 = true := by decide +kernel

theorem v_627_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 627 64 16 = true := by decide +kernel

theorem r_627 : recsK7OK T qscale den6 d14 lamN lamD l7 627 1 = true := recK7_of (n := 80) t_627 n_627 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_627_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_627_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_627_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_627_3 (v_627_4)))))

theorem t_628 : treeK7OK l7 628 = true := by decide +kernel

theorem n_628 : (recAt l7 628).2.2.2.length ≤ 64 := by decide +kernel

theorem v_628_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 628 0 16 = true := by decide +kernel

theorem v_628_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 628 16 16 = true := by decide +kernel

theorem v_628_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 628 32 16 = true := by decide +kernel

theorem v_628_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 628 48 16 = true := by decide +kernel

theorem r_628 : recsK7OK T qscale den6 d14 lamN lamD l7 628 1 = true := recK7_of (n := 64) t_628 n_628 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_628_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_628_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_628_2 (v_628_3))))

theorem t_629 : treeK7OK l7 629 = true := by decide +kernel

theorem n_629 : (recAt l7 629).2.2.2.length ≤ 64 := by decide +kernel

theorem v_629_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 629 0 16 = true := by decide +kernel

theorem v_629_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 629 16 16 = true := by decide +kernel

theorem v_629_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 629 32 16 = true := by decide +kernel

theorem v_629_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 629 48 16 = true := by decide +kernel

theorem r_629 : recsK7OK T qscale den6 d14 lamN lamD l7 629 1 = true := recK7_of (n := 64) t_629 n_629 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_629_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_629_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_629_2 (v_629_3))))

theorem t_630 : treeK7OK l7 630 = true := by decide +kernel

theorem n_630 : (recAt l7 630).2.2.2.length ≤ 48 := by decide +kernel

theorem v_630_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 630 0 16 = true := by decide +kernel

theorem v_630_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 630 16 16 = true := by decide +kernel

theorem v_630_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 630 32 16 = true := by decide +kernel

theorem r_630 : recsK7OK T qscale den6 d14 lamN lamD l7 630 1 = true := recK7_of (n := 48) t_630 n_630 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_630_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_630_1 (v_630_2)))

theorem rs_626 : recsK7OK T qscale den6 d14 lamN lamD l7 626 5 = true := recsK7OK_succ (lo := 626) (n := 4) r_626 (recsK7OK_succ (lo := 627) (n := 3) r_627 (recsK7OK_succ (lo := 628) (n := 2) r_628 (recsK7OK_succ (lo := 629) (n := 1) r_629 (r_630))))

end BeatAvg.K.K7
