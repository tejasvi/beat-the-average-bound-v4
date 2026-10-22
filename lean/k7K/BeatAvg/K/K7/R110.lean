import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_383 : treeK7OK l7 383 = true := by decide +kernel

theorem n_383 : (recAt l7 383).2.2.2.length ≤ 144 := by decide +kernel

theorem v_383_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 0 16 = true := by decide +kernel

theorem v_383_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 16 16 = true := by decide +kernel

theorem v_383_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 32 16 = true := by decide +kernel

theorem v_383_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 48 16 = true := by decide +kernel

theorem v_383_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 64 16 = true := by decide +kernel

theorem v_383_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 80 16 = true := by decide +kernel

theorem v_383_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 96 16 = true := by decide +kernel

theorem v_383_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 112 16 = true := by decide +kernel

theorem v_383_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 383 128 16 = true := by decide +kernel

theorem r_383 : recsK7OK T qscale den6 d14 lamN lamD l7 383 1 = true := recK7_of (n := 144) t_383 n_383 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_383_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_383_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_383_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_383_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_383_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_383_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_383_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_383_7 (v_383_8)))))))))

theorem t_384 : treeK7OK l7 384 = true := by decide +kernel

theorem n_384 : (recAt l7 384).2.2.2.length ≤ 48 := by decide +kernel

theorem v_384_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 384 0 16 = true := by decide +kernel

theorem v_384_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 384 16 16 = true := by decide +kernel

theorem v_384_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 384 32 16 = true := by decide +kernel

theorem r_384 : recsK7OK T qscale den6 d14 lamN lamD l7 384 1 = true := recK7_of (n := 48) t_384 n_384 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_384_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_384_1 (v_384_2)))

theorem t_385 : treeK7OK l7 385 = true := by decide +kernel

theorem n_385 : (recAt l7 385).2.2.2.length ≤ 96 := by decide +kernel

theorem v_385_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 385 0 16 = true := by decide +kernel

theorem v_385_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 385 16 16 = true := by decide +kernel

theorem v_385_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 385 32 16 = true := by decide +kernel

theorem v_385_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 385 48 16 = true := by decide +kernel

theorem v_385_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 385 64 16 = true := by decide +kernel

theorem v_385_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 385 80 16 = true := by decide +kernel

theorem r_385 : recsK7OK T qscale den6 d14 lamN lamD l7 385 1 = true := recK7_of (n := 96) t_385 n_385 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_385_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_385_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_385_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_385_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_385_4 (v_385_5))))))

theorem t_386 : treeK7OK l7 386 = true := by decide +kernel

theorem n_386 : (recAt l7 386).2.2.2.length ≤ 48 := by decide +kernel

theorem v_386_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 386 0 16 = true := by decide +kernel

theorem v_386_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 386 16 16 = true := by decide +kernel

theorem v_386_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 386 32 16 = true := by decide +kernel

theorem r_386 : recsK7OK T qscale den6 d14 lamN lamD l7 386 1 = true := recK7_of (n := 48) t_386 n_386 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_386_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_386_1 (v_386_2)))

theorem rs_383 : recsK7OK T qscale den6 d14 lamN lamD l7 383 4 = true := recsK7OK_succ (lo := 383) (n := 3) r_383 (recsK7OK_succ (lo := 384) (n := 2) r_384 (recsK7OK_succ (lo := 385) (n := 1) r_385 (r_386)))

end BeatAvg.K.K7
