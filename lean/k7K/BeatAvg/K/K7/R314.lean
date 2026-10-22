import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_956 : treeK7OK l7 956 = true := by decide +kernel

theorem n_956 : (recAt l7 956).2.2.2.length ≤ 208 := by decide +kernel

theorem v_956_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 0 16 = true := by decide +kernel

theorem v_956_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 16 16 = true := by decide +kernel

theorem v_956_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 32 16 = true := by decide +kernel

theorem v_956_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 48 16 = true := by decide +kernel

theorem v_956_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 64 16 = true := by decide +kernel

theorem v_956_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 80 16 = true := by decide +kernel

theorem v_956_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 96 16 = true := by decide +kernel

theorem v_956_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 112 16 = true := by decide +kernel

theorem v_956_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 128 16 = true := by decide +kernel

theorem v_956_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 144 16 = true := by decide +kernel

theorem v_956_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 160 16 = true := by decide +kernel

theorem v_956_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 176 16 = true := by decide +kernel

theorem v_956_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 956 192 16 = true := by decide +kernel

theorem r_956 : recsK7OK T qscale den6 d14 lamN lamD l7 956 1 = true := recK7_of (n := 208) t_956 n_956 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_956_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_956_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_956_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_956_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_956_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_956_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_956_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_956_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_956_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_956_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_956_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_956_11 (v_956_12)))))))))))))

theorem t_957 : treeK7OK l7 957 = true := by decide +kernel

theorem n_957 : (recAt l7 957).2.2.2.length ≤ 144 := by decide +kernel

theorem v_957_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 0 16 = true := by decide +kernel

theorem v_957_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 16 16 = true := by decide +kernel

theorem v_957_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 32 16 = true := by decide +kernel

theorem v_957_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 48 16 = true := by decide +kernel

theorem v_957_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 64 16 = true := by decide +kernel

theorem v_957_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 80 16 = true := by decide +kernel

theorem v_957_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 96 16 = true := by decide +kernel

theorem v_957_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 112 16 = true := by decide +kernel

theorem v_957_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 957 128 16 = true := by decide +kernel

theorem r_957 : recsK7OK T qscale den6 d14 lamN lamD l7 957 1 = true := recK7_of (n := 144) t_957 n_957 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_957_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_957_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_957_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_957_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_957_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_957_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_957_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_957_7 (v_957_8)))))))))

theorem rs_956 : recsK7OK T qscale den6 d14 lamN lamD l7 956 2 = true := recsK7OK_succ (lo := 956) (n := 1) r_956 (r_957)

end BeatAvg.K.K7
