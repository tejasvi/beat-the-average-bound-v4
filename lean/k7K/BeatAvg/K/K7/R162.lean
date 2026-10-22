import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_540 : treeK7OK l7 540 = true := by decide +kernel

theorem n_540 : (recAt l7 540).2.2.2.length ≤ 112 := by decide +kernel

theorem v_540_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 540 0 16 = true := by decide +kernel

theorem v_540_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 540 16 16 = true := by decide +kernel

theorem v_540_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 540 32 16 = true := by decide +kernel

theorem v_540_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 540 48 16 = true := by decide +kernel

theorem v_540_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 540 64 16 = true := by decide +kernel

theorem v_540_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 540 80 16 = true := by decide +kernel

theorem v_540_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 540 96 16 = true := by decide +kernel

theorem r_540 : recsK7OK T qscale den6 d14 lamN lamD l7 540 1 = true := recK7_of (n := 112) t_540 n_540 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_540_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_540_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_540_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_540_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_540_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_540_5 (v_540_6)))))))

theorem t_541 : treeK7OK l7 541 = true := by decide +kernel

theorem n_541 : (recAt l7 541).2.2.2.length ≤ 80 := by decide +kernel

theorem v_541_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 541 0 16 = true := by decide +kernel

theorem v_541_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 541 16 16 = true := by decide +kernel

theorem v_541_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 541 32 16 = true := by decide +kernel

theorem v_541_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 541 48 16 = true := by decide +kernel

theorem v_541_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 541 64 16 = true := by decide +kernel

theorem r_541 : recsK7OK T qscale den6 d14 lamN lamD l7 541 1 = true := recK7_of (n := 80) t_541 n_541 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_541_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_541_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_541_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_541_3 (v_541_4)))))

theorem t_542 : treeK7OK l7 542 = true := by decide +kernel

theorem n_542 : (recAt l7 542).2.2.2.length ≤ 32 := by decide +kernel

theorem v_542_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 542 0 16 = true := by decide +kernel

theorem v_542_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 542 16 16 = true := by decide +kernel

theorem r_542 : recsK7OK T qscale den6 d14 lamN lamD l7 542 1 = true := recK7_of (n := 32) t_542 n_542 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_542_0 (v_542_1))

theorem t_543 : treeK7OK l7 543 = true := by decide +kernel

theorem n_543 : (recAt l7 543).2.2.2.length ≤ 208 := by decide +kernel

theorem v_543_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 0 16 = true := by decide +kernel

theorem v_543_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 16 16 = true := by decide +kernel

theorem v_543_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 32 16 = true := by decide +kernel

theorem v_543_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 48 16 = true := by decide +kernel

theorem v_543_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 64 16 = true := by decide +kernel

theorem v_543_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 80 16 = true := by decide +kernel

theorem v_543_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 96 16 = true := by decide +kernel

theorem v_543_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 112 16 = true := by decide +kernel

theorem v_543_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 128 16 = true := by decide +kernel

theorem v_543_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 144 16 = true := by decide +kernel

theorem v_543_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 160 16 = true := by decide +kernel

theorem v_543_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 176 16 = true := by decide +kernel

theorem v_543_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 543 192 16 = true := by decide +kernel

theorem r_543 : recsK7OK T qscale den6 d14 lamN lamD l7 543 1 = true := recK7_of (n := 208) t_543 n_543 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_543_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_543_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_543_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_543_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_543_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_543_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_543_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_543_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_543_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_543_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_543_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_543_11 (v_543_12)))))))))))))

theorem rs_540 : recsK7OK T qscale den6 d14 lamN lamD l7 540 4 = true := recsK7OK_succ (lo := 540) (n := 3) r_540 (recsK7OK_succ (lo := 541) (n := 2) r_541 (recsK7OK_succ (lo := 542) (n := 1) r_542 (r_543)))

end BeatAvg.K.K7
