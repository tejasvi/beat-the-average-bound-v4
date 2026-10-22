import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_425 : treeK7OK l7 425 = true := by decide +kernel

theorem n_425 : (recAt l7 425).2.2.2.length ≤ 176 := by decide +kernel

theorem v_425_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 0 16 = true := by decide +kernel

theorem v_425_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 16 16 = true := by decide +kernel

theorem v_425_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 32 16 = true := by decide +kernel

theorem v_425_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 48 16 = true := by decide +kernel

theorem v_425_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 64 16 = true := by decide +kernel

theorem v_425_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 80 16 = true := by decide +kernel

theorem v_425_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 96 16 = true := by decide +kernel

theorem v_425_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 112 16 = true := by decide +kernel

theorem v_425_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 128 16 = true := by decide +kernel

theorem v_425_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 144 16 = true := by decide +kernel

theorem v_425_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 425 160 16 = true := by decide +kernel

theorem r_425 : recsK7OK T qscale den6 d14 lamN lamD l7 425 1 = true := recK7_of (n := 176) t_425 n_425 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_425_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_425_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_425_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_425_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_425_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_425_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_425_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_425_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_425_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_425_9 (v_425_10)))))))))))

theorem t_426 : treeK7OK l7 426 = true := by decide +kernel

theorem n_426 : (recAt l7 426).2.2.2.length ≤ 112 := by decide +kernel

theorem v_426_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 426 0 16 = true := by decide +kernel

theorem v_426_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 426 16 16 = true := by decide +kernel

theorem v_426_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 426 32 16 = true := by decide +kernel

theorem v_426_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 426 48 16 = true := by decide +kernel

theorem v_426_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 426 64 16 = true := by decide +kernel

theorem v_426_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 426 80 16 = true := by decide +kernel

theorem v_426_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 426 96 16 = true := by decide +kernel

theorem r_426 : recsK7OK T qscale den6 d14 lamN lamD l7 426 1 = true := recK7_of (n := 112) t_426 n_426 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_426_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_426_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_426_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_426_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_426_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_426_5 (v_426_6)))))))

theorem t_427 : treeK7OK l7 427 = true := by decide +kernel

theorem n_427 : (recAt l7 427).2.2.2.length ≤ 112 := by decide +kernel

theorem v_427_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 427 0 16 = true := by decide +kernel

theorem v_427_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 427 16 16 = true := by decide +kernel

theorem v_427_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 427 32 16 = true := by decide +kernel

theorem v_427_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 427 48 16 = true := by decide +kernel

theorem v_427_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 427 64 16 = true := by decide +kernel

theorem v_427_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 427 80 16 = true := by decide +kernel

theorem v_427_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 427 96 16 = true := by decide +kernel

theorem r_427 : recsK7OK T qscale den6 d14 lamN lamD l7 427 1 = true := recK7_of (n := 112) t_427 n_427 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_427_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_427_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_427_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_427_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_427_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_427_5 (v_427_6)))))))

theorem rs_425 : recsK7OK T qscale den6 d14 lamN lamD l7 425 3 = true := recsK7OK_succ (lo := 425) (n := 2) r_425 (recsK7OK_succ (lo := 426) (n := 1) r_426 (r_427))

end BeatAvg.K.K7
