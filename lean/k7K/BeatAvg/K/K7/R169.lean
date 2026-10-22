import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_566 : treeK7OK l7 566 = true := by decide +kernel

theorem n_566 : (recAt l7 566).2.2.2.length ≤ 160 := by decide +kernel

theorem v_566_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 0 16 = true := by decide +kernel

theorem v_566_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 16 16 = true := by decide +kernel

theorem v_566_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 32 16 = true := by decide +kernel

theorem v_566_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 48 16 = true := by decide +kernel

theorem v_566_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 64 16 = true := by decide +kernel

theorem v_566_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 80 16 = true := by decide +kernel

theorem v_566_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 96 16 = true := by decide +kernel

theorem v_566_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 112 16 = true := by decide +kernel

theorem v_566_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 128 16 = true := by decide +kernel

theorem v_566_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 566 144 16 = true := by decide +kernel

theorem r_566 : recsK7OK T qscale den6 d14 lamN lamD l7 566 1 = true := recK7_of (n := 160) t_566 n_566 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_566_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_566_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_566_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_566_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_566_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_566_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_566_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_566_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_566_8 (v_566_9))))))))))

theorem t_567 : treeK7OK l7 567 = true := by decide +kernel

theorem n_567 : (recAt l7 567).2.2.2.length ≤ 48 := by decide +kernel

theorem v_567_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 567 0 16 = true := by decide +kernel

theorem v_567_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 567 16 16 = true := by decide +kernel

theorem v_567_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 567 32 16 = true := by decide +kernel

theorem r_567 : recsK7OK T qscale den6 d14 lamN lamD l7 567 1 = true := recK7_of (n := 48) t_567 n_567 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_567_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_567_1 (v_567_2)))

theorem t_568 : treeK7OK l7 568 = true := by decide +kernel

theorem n_568 : (recAt l7 568).2.2.2.length ≤ 80 := by decide +kernel

theorem v_568_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 568 0 16 = true := by decide +kernel

theorem v_568_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 568 16 16 = true := by decide +kernel

theorem v_568_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 568 32 16 = true := by decide +kernel

theorem v_568_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 568 48 16 = true := by decide +kernel

theorem v_568_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 568 64 16 = true := by decide +kernel

theorem r_568 : recsK7OK T qscale den6 d14 lamN lamD l7 568 1 = true := recK7_of (n := 80) t_568 n_568 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_568_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_568_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_568_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_568_3 (v_568_4)))))

theorem t_569 : treeK7OK l7 569 = true := by decide +kernel

theorem n_569 : (recAt l7 569).2.2.2.length ≤ 32 := by decide +kernel

theorem v_569_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 569 0 16 = true := by decide +kernel

theorem v_569_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 569 16 16 = true := by decide +kernel

theorem r_569 : recsK7OK T qscale den6 d14 lamN lamD l7 569 1 = true := recK7_of (n := 32) t_569 n_569 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_569_0 (v_569_1))

theorem t_570 : treeK7OK l7 570 = true := by decide +kernel

theorem n_570 : (recAt l7 570).2.2.2.length ≤ 64 := by decide +kernel

theorem v_570_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 570 0 16 = true := by decide +kernel

theorem v_570_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 570 16 16 = true := by decide +kernel

theorem v_570_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 570 32 16 = true := by decide +kernel

theorem v_570_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 570 48 16 = true := by decide +kernel

theorem r_570 : recsK7OK T qscale den6 d14 lamN lamD l7 570 1 = true := recK7_of (n := 64) t_570 n_570 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_570_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_570_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_570_2 (v_570_3))))

theorem rs_566 : recsK7OK T qscale den6 d14 lamN lamD l7 566 5 = true := recsK7OK_succ (lo := 566) (n := 4) r_566 (recsK7OK_succ (lo := 567) (n := 3) r_567 (recsK7OK_succ (lo := 568) (n := 2) r_568 (recsK7OK_succ (lo := 569) (n := 1) r_569 (r_570))))

end BeatAvg.K.K7
