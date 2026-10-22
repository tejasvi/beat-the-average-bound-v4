import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_405 : treeK7OK l7 405 = true := by decide +kernel

theorem n_405 : (recAt l7 405).2.2.2.length ≤ 32 := by decide +kernel

theorem v_405_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 405 0 16 = true := by decide +kernel

theorem v_405_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 405 16 16 = true := by decide +kernel

theorem r_405 : recsK7OK T qscale den6 d14 lamN lamD l7 405 1 = true := recK7_of (n := 32) t_405 n_405 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_405_0 (v_405_1))

theorem t_406 : treeK7OK l7 406 = true := by decide +kernel

theorem n_406 : (recAt l7 406).2.2.2.length ≤ 64 := by decide +kernel

theorem v_406_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 406 0 16 = true := by decide +kernel

theorem v_406_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 406 16 16 = true := by decide +kernel

theorem v_406_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 406 32 16 = true := by decide +kernel

theorem v_406_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 406 48 16 = true := by decide +kernel

theorem r_406 : recsK7OK T qscale den6 d14 lamN lamD l7 406 1 = true := recK7_of (n := 64) t_406 n_406 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_406_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_406_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_406_2 (v_406_3))))

theorem t_407 : treeK7OK l7 407 = true := by decide +kernel

theorem n_407 : (recAt l7 407).2.2.2.length ≤ 48 := by decide +kernel

theorem v_407_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 407 0 16 = true := by decide +kernel

theorem v_407_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 407 16 16 = true := by decide +kernel

theorem v_407_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 407 32 16 = true := by decide +kernel

theorem r_407 : recsK7OK T qscale den6 d14 lamN lamD l7 407 1 = true := recK7_of (n := 48) t_407 n_407 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_407_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_407_1 (v_407_2)))

theorem t_408 : treeK7OK l7 408 = true := by decide +kernel

theorem n_408 : (recAt l7 408).2.2.2.length ≤ 192 := by decide +kernel

theorem v_408_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 0 16 = true := by decide +kernel

theorem v_408_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 16 16 = true := by decide +kernel

theorem v_408_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 32 16 = true := by decide +kernel

theorem v_408_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 48 16 = true := by decide +kernel

theorem v_408_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 64 16 = true := by decide +kernel

theorem v_408_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 80 16 = true := by decide +kernel

theorem v_408_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 96 16 = true := by decide +kernel

theorem v_408_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 112 16 = true := by decide +kernel

theorem v_408_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 128 16 = true := by decide +kernel

theorem v_408_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 144 16 = true := by decide +kernel

theorem v_408_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 160 16 = true := by decide +kernel

theorem v_408_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 408 176 16 = true := by decide +kernel

theorem r_408 : recsK7OK T qscale den6 d14 lamN lamD l7 408 1 = true := recK7_of (n := 192) t_408 n_408 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_408_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_408_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_408_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_408_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_408_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_408_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_408_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_408_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_408_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_408_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_408_10 (v_408_11))))))))))))

theorem rs_405 : recsK7OK T qscale den6 d14 lamN lamD l7 405 4 = true := recsK7OK_succ (lo := 405) (n := 3) r_405 (recsK7OK_succ (lo := 406) (n := 2) r_406 (recsK7OK_succ (lo := 407) (n := 1) r_407 (r_408)))

end BeatAvg.K.K7
