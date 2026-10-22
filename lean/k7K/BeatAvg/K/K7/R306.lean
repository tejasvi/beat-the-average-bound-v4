import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_939 : treeK7OK l7 939 = true := by decide +kernel

theorem n_939 : (recAt l7 939).2.2.2.length ≤ 80 := by decide +kernel

theorem v_939_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 939 0 16 = true := by decide +kernel

theorem v_939_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 939 16 16 = true := by decide +kernel

theorem v_939_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 939 32 16 = true := by decide +kernel

theorem v_939_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 939 48 16 = true := by decide +kernel

theorem v_939_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 939 64 16 = true := by decide +kernel

theorem r_939 : recsK7OK T qscale den6 d14 lamN lamD l7 939 1 = true := recK7_of (n := 80) t_939 n_939 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_939_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_939_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_939_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_939_3 (v_939_4)))))

theorem t_940 : treeK7OK l7 940 = true := by decide +kernel

theorem n_940 : (recAt l7 940).2.2.2.length ≤ 176 := by decide +kernel

theorem v_940_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 0 16 = true := by decide +kernel

theorem v_940_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 16 16 = true := by decide +kernel

theorem v_940_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 32 16 = true := by decide +kernel

theorem v_940_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 48 16 = true := by decide +kernel

theorem v_940_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 64 16 = true := by decide +kernel

theorem v_940_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 80 16 = true := by decide +kernel

theorem v_940_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 96 16 = true := by decide +kernel

theorem v_940_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 112 16 = true := by decide +kernel

theorem v_940_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 128 16 = true := by decide +kernel

theorem v_940_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 144 16 = true := by decide +kernel

theorem v_940_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 940 160 16 = true := by decide +kernel

theorem r_940 : recsK7OK T qscale den6 d14 lamN lamD l7 940 1 = true := recK7_of (n := 176) t_940 n_940 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_940_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_940_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_940_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_940_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_940_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_940_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_940_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_940_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_940_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_940_9 (v_940_10)))))))))))

theorem rs_939 : recsK7OK T qscale den6 d14 lamN lamD l7 939 2 = true := recsK7OK_succ (lo := 939) (n := 1) r_939 (r_940)

end BeatAvg.K.K7
