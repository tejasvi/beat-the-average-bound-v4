import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_376 : treeK7OK l7 376 = true := by decide +kernel

theorem n_376 : (recAt l7 376).2.2.2.length ≤ 96 := by decide +kernel

theorem v_376_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 376 0 16 = true := by decide +kernel

theorem v_376_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 376 16 16 = true := by decide +kernel

theorem v_376_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 376 32 16 = true := by decide +kernel

theorem v_376_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 376 48 16 = true := by decide +kernel

theorem v_376_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 376 64 16 = true := by decide +kernel

theorem v_376_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 376 80 16 = true := by decide +kernel

theorem r_376 : recsK7OK T qscale den6 d14 lamN lamD l7 376 1 = true := recK7_of (n := 96) t_376 n_376 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_376_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_376_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_376_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_376_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_376_4 (v_376_5))))))

theorem t_377 : treeK7OK l7 377 = true := by decide +kernel

theorem n_377 : (recAt l7 377).2.2.2.length ≤ 96 := by decide +kernel

theorem v_377_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 377 0 16 = true := by decide +kernel

theorem v_377_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 377 16 16 = true := by decide +kernel

theorem v_377_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 377 32 16 = true := by decide +kernel

theorem v_377_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 377 48 16 = true := by decide +kernel

theorem v_377_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 377 64 16 = true := by decide +kernel

theorem v_377_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 377 80 16 = true := by decide +kernel

theorem r_377 : recsK7OK T qscale den6 d14 lamN lamD l7 377 1 = true := recK7_of (n := 96) t_377 n_377 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_377_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_377_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_377_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_377_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_377_4 (v_377_5))))))

theorem t_378 : treeK7OK l7 378 = true := by decide +kernel

theorem n_378 : (recAt l7 378).2.2.2.length ≤ 48 := by decide +kernel

theorem v_378_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 378 0 16 = true := by decide +kernel

theorem v_378_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 378 16 16 = true := by decide +kernel

theorem v_378_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 378 32 16 = true := by decide +kernel

theorem r_378 : recsK7OK T qscale den6 d14 lamN lamD l7 378 1 = true := recK7_of (n := 48) t_378 n_378 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_378_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_378_1 (v_378_2)))

theorem rs_376 : recsK7OK T qscale den6 d14 lamN lamD l7 376 3 = true := recsK7OK_succ (lo := 376) (n := 2) r_376 (recsK7OK_succ (lo := 377) (n := 1) r_377 (r_378))

end BeatAvg.K.K7
