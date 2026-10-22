import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_529 : treeK7OK l7 529 = true := by decide +kernel

theorem n_529 : (recAt l7 529).2.2.2.length ≤ 48 := by decide +kernel

theorem v_529_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 529 0 16 = true := by decide +kernel

theorem v_529_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 529 16 16 = true := by decide +kernel

theorem v_529_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 529 32 16 = true := by decide +kernel

theorem r_529 : recsK7OK T qscale den6 d14 lamN lamD l7 529 1 = true := recK7_of (n := 48) t_529 n_529 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_529_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_529_1 (v_529_2)))

theorem t_530 : treeK7OK l7 530 = true := by decide +kernel

theorem n_530 : (recAt l7 530).2.2.2.length ≤ 160 := by decide +kernel

theorem v_530_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 0 16 = true := by decide +kernel

theorem v_530_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 16 16 = true := by decide +kernel

theorem v_530_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 32 16 = true := by decide +kernel

theorem v_530_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 48 16 = true := by decide +kernel

theorem v_530_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 64 16 = true := by decide +kernel

theorem v_530_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 80 16 = true := by decide +kernel

theorem v_530_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 96 16 = true := by decide +kernel

theorem v_530_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 112 16 = true := by decide +kernel

theorem v_530_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 128 16 = true := by decide +kernel

theorem v_530_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 530 144 16 = true := by decide +kernel

theorem r_530 : recsK7OK T qscale den6 d14 lamN lamD l7 530 1 = true := recK7_of (n := 160) t_530 n_530 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_530_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_530_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_530_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_530_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_530_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_530_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_530_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_530_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_530_8 (v_530_9))))))))))

theorem t_531 : treeK7OK l7 531 = true := by decide +kernel

theorem n_531 : (recAt l7 531).2.2.2.length ≤ 96 := by decide +kernel

theorem v_531_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 531 0 16 = true := by decide +kernel

theorem v_531_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 531 16 16 = true := by decide +kernel

theorem v_531_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 531 32 16 = true := by decide +kernel

theorem v_531_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 531 48 16 = true := by decide +kernel

theorem v_531_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 531 64 16 = true := by decide +kernel

theorem v_531_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 531 80 16 = true := by decide +kernel

theorem r_531 : recsK7OK T qscale den6 d14 lamN lamD l7 531 1 = true := recK7_of (n := 96) t_531 n_531 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_531_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_531_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_531_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_531_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_531_4 (v_531_5))))))

theorem t_532 : treeK7OK l7 532 = true := by decide +kernel

theorem n_532 : (recAt l7 532).2.2.2.length ≤ 48 := by decide +kernel

theorem v_532_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 532 0 16 = true := by decide +kernel

theorem v_532_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 532 16 16 = true := by decide +kernel

theorem v_532_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 532 32 16 = true := by decide +kernel

theorem r_532 : recsK7OK T qscale den6 d14 lamN lamD l7 532 1 = true := recK7_of (n := 48) t_532 n_532 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_532_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_532_1 (v_532_2)))

theorem rs_529 : recsK7OK T qscale den6 d14 lamN lamD l7 529 4 = true := recsK7OK_succ (lo := 529) (n := 3) r_529 (recsK7OK_succ (lo := 530) (n := 2) r_530 (recsK7OK_succ (lo := 531) (n := 1) r_531 (r_532)))

end BeatAvg.K.K7
