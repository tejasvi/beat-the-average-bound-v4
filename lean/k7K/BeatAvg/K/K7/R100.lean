import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_356 : treeK7OK l7 356 = true := by decide +kernel

theorem n_356 : (recAt l7 356).2.2.2.length ≤ 192 := by decide +kernel

theorem v_356_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 0 16 = true := by decide +kernel

theorem v_356_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 16 16 = true := by decide +kernel

theorem v_356_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 32 16 = true := by decide +kernel

theorem v_356_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 48 16 = true := by decide +kernel

theorem v_356_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 64 16 = true := by decide +kernel

theorem v_356_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 80 16 = true := by decide +kernel

theorem v_356_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 96 16 = true := by decide +kernel

theorem v_356_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 112 16 = true := by decide +kernel

theorem v_356_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 128 16 = true := by decide +kernel

theorem v_356_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 144 16 = true := by decide +kernel

theorem v_356_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 160 16 = true := by decide +kernel

theorem v_356_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 356 176 16 = true := by decide +kernel

theorem r_356 : recsK7OK T qscale den6 d14 lamN lamD l7 356 1 = true := recK7_of (n := 192) t_356 n_356 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_356_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_356_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_356_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_356_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_356_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_356_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_356_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_356_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_356_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_356_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_356_10 (v_356_11))))))))))))

theorem t_357 : treeK7OK l7 357 = true := by decide +kernel

theorem n_357 : (recAt l7 357).2.2.2.length ≤ 96 := by decide +kernel

theorem v_357_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 357 0 16 = true := by decide +kernel

theorem v_357_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 357 16 16 = true := by decide +kernel

theorem v_357_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 357 32 16 = true := by decide +kernel

theorem v_357_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 357 48 16 = true := by decide +kernel

theorem v_357_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 357 64 16 = true := by decide +kernel

theorem v_357_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 357 80 16 = true := by decide +kernel

theorem r_357 : recsK7OK T qscale den6 d14 lamN lamD l7 357 1 = true := recK7_of (n := 96) t_357 n_357 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_357_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_357_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_357_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_357_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_357_4 (v_357_5))))))

theorem t_358 : treeK7OK l7 358 = true := by decide +kernel

theorem n_358 : (recAt l7 358).2.2.2.length ≤ 48 := by decide +kernel

theorem v_358_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 358 0 16 = true := by decide +kernel

theorem v_358_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 358 16 16 = true := by decide +kernel

theorem v_358_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 358 32 16 = true := by decide +kernel

theorem r_358 : recsK7OK T qscale den6 d14 lamN lamD l7 358 1 = true := recK7_of (n := 48) t_358 n_358 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_358_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_358_1 (v_358_2)))

theorem rs_356 : recsK7OK T qscale den6 d14 lamN lamD l7 356 3 = true := recsK7OK_succ (lo := 356) (n := 2) r_356 (recsK7OK_succ (lo := 357) (n := 1) r_357 (r_358))

end BeatAvg.K.K7
