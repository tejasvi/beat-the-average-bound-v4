import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_557 : treeK7OK l7 557 = true := by decide +kernel

theorem n_557 : (recAt l7 557).2.2.2.length ≤ 80 := by decide +kernel

theorem v_557_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 557 0 16 = true := by decide +kernel

theorem v_557_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 557 16 16 = true := by decide +kernel

theorem v_557_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 557 32 16 = true := by decide +kernel

theorem v_557_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 557 48 16 = true := by decide +kernel

theorem v_557_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 557 64 16 = true := by decide +kernel

theorem r_557 : recsK7OK T qscale den6 d14 lamN lamD l7 557 1 = true := recK7_of (n := 80) t_557 n_557 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_557_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_557_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_557_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_557_3 (v_557_4)))))

theorem t_558 : treeK7OK l7 558 = true := by decide +kernel

theorem n_558 : (recAt l7 558).2.2.2.length ≤ 160 := by decide +kernel

theorem v_558_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 0 16 = true := by decide +kernel

theorem v_558_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 16 16 = true := by decide +kernel

theorem v_558_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 32 16 = true := by decide +kernel

theorem v_558_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 48 16 = true := by decide +kernel

theorem v_558_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 64 16 = true := by decide +kernel

theorem v_558_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 80 16 = true := by decide +kernel

theorem v_558_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 96 16 = true := by decide +kernel

theorem v_558_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 112 16 = true := by decide +kernel

theorem v_558_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 128 16 = true := by decide +kernel

theorem v_558_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 558 144 16 = true := by decide +kernel

theorem r_558 : recsK7OK T qscale den6 d14 lamN lamD l7 558 1 = true := recK7_of (n := 160) t_558 n_558 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_558_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_558_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_558_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_558_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_558_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_558_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_558_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_558_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_558_8 (v_558_9))))))))))

theorem t_559 : treeK7OK l7 559 = true := by decide +kernel

theorem n_559 : (recAt l7 559).2.2.2.length ≤ 48 := by decide +kernel

theorem v_559_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 559 0 16 = true := by decide +kernel

theorem v_559_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 559 16 16 = true := by decide +kernel

theorem v_559_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 559 32 16 = true := by decide +kernel

theorem r_559 : recsK7OK T qscale den6 d14 lamN lamD l7 559 1 = true := recK7_of (n := 48) t_559 n_559 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_559_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_559_1 (v_559_2)))

theorem t_560 : treeK7OK l7 560 = true := by decide +kernel

theorem n_560 : (recAt l7 560).2.2.2.length ≤ 64 := by decide +kernel

theorem v_560_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 560 0 16 = true := by decide +kernel

theorem v_560_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 560 16 16 = true := by decide +kernel

theorem v_560_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 560 32 16 = true := by decide +kernel

theorem v_560_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 560 48 16 = true := by decide +kernel

theorem r_560 : recsK7OK T qscale den6 d14 lamN lamD l7 560 1 = true := recK7_of (n := 64) t_560 n_560 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_560_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_560_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_560_2 (v_560_3))))

theorem rs_557 : recsK7OK T qscale den6 d14 lamN lamD l7 557 4 = true := recsK7OK_succ (lo := 557) (n := 3) r_557 (recsK7OK_succ (lo := 558) (n := 2) r_558 (recsK7OK_succ (lo := 559) (n := 1) r_559 (r_560)))

end BeatAvg.K.K7
