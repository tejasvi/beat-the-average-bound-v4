import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_389 : treeK7OK l7 389 = true := by decide +kernel

theorem n_389 : (recAt l7 389).2.2.2.length ≤ 112 := by decide +kernel

theorem v_389_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 389 0 16 = true := by decide +kernel

theorem v_389_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 389 16 16 = true := by decide +kernel

theorem v_389_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 389 32 16 = true := by decide +kernel

theorem v_389_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 389 48 16 = true := by decide +kernel

theorem v_389_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 389 64 16 = true := by decide +kernel

theorem v_389_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 389 80 16 = true := by decide +kernel

theorem v_389_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 389 96 16 = true := by decide +kernel

theorem r_389 : recsK7OK T qscale den6 d14 lamN lamD l7 389 1 = true := recK7_of (n := 112) t_389 n_389 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_389_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_389_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_389_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_389_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_389_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_389_5 (v_389_6)))))))

theorem t_390 : treeK7OK l7 390 = true := by decide +kernel

theorem n_390 : (recAt l7 390).2.2.2.length ≤ 48 := by decide +kernel

theorem v_390_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 390 0 16 = true := by decide +kernel

theorem v_390_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 390 16 16 = true := by decide +kernel

theorem v_390_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 390 32 16 = true := by decide +kernel

theorem r_390 : recsK7OK T qscale den6 d14 lamN lamD l7 390 1 = true := recK7_of (n := 48) t_390 n_390 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_390_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_390_1 (v_390_2)))

theorem t_391 : treeK7OK l7 391 = true := by decide +kernel

theorem n_391 : (recAt l7 391).2.2.2.length ≤ 80 := by decide +kernel

theorem v_391_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 391 0 16 = true := by decide +kernel

theorem v_391_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 391 16 16 = true := by decide +kernel

theorem v_391_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 391 32 16 = true := by decide +kernel

theorem v_391_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 391 48 16 = true := by decide +kernel

theorem v_391_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 391 64 16 = true := by decide +kernel

theorem r_391 : recsK7OK T qscale den6 d14 lamN lamD l7 391 1 = true := recK7_of (n := 80) t_391 n_391 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_391_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_391_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_391_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_391_3 (v_391_4)))))

theorem t_392 : treeK7OK l7 392 = true := by decide +kernel

theorem n_392 : (recAt l7 392).2.2.2.length ≤ 48 := by decide +kernel

theorem v_392_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 392 0 16 = true := by decide +kernel

theorem v_392_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 392 16 16 = true := by decide +kernel

theorem v_392_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 392 32 16 = true := by decide +kernel

theorem r_392 : recsK7OK T qscale den6 d14 lamN lamD l7 392 1 = true := recK7_of (n := 48) t_392 n_392 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_392_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_392_1 (v_392_2)))

theorem t_393 : treeK7OK l7 393 = true := by decide +kernel

theorem n_393 : (recAt l7 393).2.2.2.length ≤ 128 := by decide +kernel

theorem v_393_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 0 16 = true := by decide +kernel

theorem v_393_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 16 16 = true := by decide +kernel

theorem v_393_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 32 16 = true := by decide +kernel

theorem v_393_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 48 16 = true := by decide +kernel

theorem v_393_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 64 16 = true := by decide +kernel

theorem v_393_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 80 16 = true := by decide +kernel

theorem v_393_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 96 16 = true := by decide +kernel

theorem v_393_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 393 112 16 = true := by decide +kernel

theorem r_393 : recsK7OK T qscale den6 d14 lamN lamD l7 393 1 = true := recK7_of (n := 128) t_393 n_393 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_393_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_393_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_393_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_393_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_393_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_393_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_393_6 (v_393_7))))))))

theorem rs_389 : recsK7OK T qscale den6 d14 lamN lamD l7 389 5 = true := recsK7OK_succ (lo := 389) (n := 4) r_389 (recsK7OK_succ (lo := 390) (n := 3) r_390 (recsK7OK_succ (lo := 391) (n := 2) r_391 (recsK7OK_succ (lo := 392) (n := 1) r_392 (r_393))))

end BeatAvg.K.K7
