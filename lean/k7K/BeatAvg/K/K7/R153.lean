import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_511 : treeK7OK l7 511 = true := by decide +kernel

theorem n_511 : (recAt l7 511).2.2.2.length ≤ 64 := by decide +kernel

theorem v_511_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 511 0 16 = true := by decide +kernel

theorem v_511_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 511 16 16 = true := by decide +kernel

theorem v_511_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 511 32 16 = true := by decide +kernel

theorem v_511_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 511 48 16 = true := by decide +kernel

theorem r_511 : recsK7OK T qscale den6 d14 lamN lamD l7 511 1 = true := recK7_of (n := 64) t_511 n_511 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_511_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_511_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_511_2 (v_511_3))))

theorem t_512 : treeK7OK l7 512 = true := by decide +kernel

theorem n_512 : (recAt l7 512).2.2.2.length ≤ 80 := by decide +kernel

theorem v_512_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 512 0 16 = true := by decide +kernel

theorem v_512_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 512 16 16 = true := by decide +kernel

theorem v_512_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 512 32 16 = true := by decide +kernel

theorem v_512_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 512 48 16 = true := by decide +kernel

theorem v_512_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 512 64 16 = true := by decide +kernel

theorem r_512 : recsK7OK T qscale den6 d14 lamN lamD l7 512 1 = true := recK7_of (n := 80) t_512 n_512 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_512_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_512_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_512_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_512_3 (v_512_4)))))

theorem t_513 : treeK7OK l7 513 = true := by decide +kernel

theorem n_513 : (recAt l7 513).2.2.2.length ≤ 48 := by decide +kernel

theorem v_513_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 513 0 16 = true := by decide +kernel

theorem v_513_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 513 16 16 = true := by decide +kernel

theorem v_513_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 513 32 16 = true := by decide +kernel

theorem r_513 : recsK7OK T qscale den6 d14 lamN lamD l7 513 1 = true := recK7_of (n := 48) t_513 n_513 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_513_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_513_1 (v_513_2)))

theorem t_514 : treeK7OK l7 514 = true := by decide +kernel

theorem n_514 : (recAt l7 514).2.2.2.length ≤ 112 := by decide +kernel

theorem v_514_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 514 0 16 = true := by decide +kernel

theorem v_514_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 514 16 16 = true := by decide +kernel

theorem v_514_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 514 32 16 = true := by decide +kernel

theorem v_514_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 514 48 16 = true := by decide +kernel

theorem v_514_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 514 64 16 = true := by decide +kernel

theorem v_514_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 514 80 16 = true := by decide +kernel

theorem v_514_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 514 96 16 = true := by decide +kernel

theorem r_514 : recsK7OK T qscale den6 d14 lamN lamD l7 514 1 = true := recK7_of (n := 112) t_514 n_514 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_514_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_514_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_514_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_514_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_514_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_514_5 (v_514_6)))))))

theorem t_515 : treeK7OK l7 515 = true := by decide +kernel

theorem n_515 : (recAt l7 515).2.2.2.length ≤ 64 := by decide +kernel

theorem v_515_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 515 0 16 = true := by decide +kernel

theorem v_515_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 515 16 16 = true := by decide +kernel

theorem v_515_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 515 32 16 = true := by decide +kernel

theorem v_515_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 515 48 16 = true := by decide +kernel

theorem r_515 : recsK7OK T qscale den6 d14 lamN lamD l7 515 1 = true := recK7_of (n := 64) t_515 n_515 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_515_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_515_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_515_2 (v_515_3))))

theorem rs_511 : recsK7OK T qscale den6 d14 lamN lamD l7 511 5 = true := recsK7OK_succ (lo := 511) (n := 4) r_511 (recsK7OK_succ (lo := 512) (n := 3) r_512 (recsK7OK_succ (lo := 513) (n := 2) r_513 (recsK7OK_succ (lo := 514) (n := 1) r_514 (r_515))))

end BeatAvg.K.K7
