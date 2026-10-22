import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_937 : treeK7OK l7 937 = true := by decide +kernel

theorem n_937 : (recAt l7 937).2.2.2.length ≤ 224 := by decide +kernel

theorem v_937_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 0 16 = true := by decide +kernel

theorem v_937_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 16 16 = true := by decide +kernel

theorem v_937_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 32 16 = true := by decide +kernel

theorem v_937_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 48 16 = true := by decide +kernel

theorem v_937_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 64 16 = true := by decide +kernel

theorem v_937_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 80 16 = true := by decide +kernel

theorem v_937_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 96 16 = true := by decide +kernel

theorem v_937_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 112 16 = true := by decide +kernel

theorem v_937_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 128 16 = true := by decide +kernel

theorem v_937_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 144 16 = true := by decide +kernel

theorem v_937_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 160 16 = true := by decide +kernel

theorem v_937_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 176 16 = true := by decide +kernel

theorem v_937_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 192 16 = true := by decide +kernel

theorem v_937_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 937 208 16 = true := by decide +kernel

theorem r_937 : recsK7OK T qscale den6 d14 lamN lamD l7 937 1 = true := recK7_of (n := 224) t_937 n_937 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_937_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_937_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_937_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_937_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_937_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_937_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_937_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_937_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_937_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_937_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_937_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_937_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_937_12 (v_937_13))))))))))))))

theorem t_938 : treeK7OK l7 938 = true := by decide +kernel

theorem n_938 : (recAt l7 938).2.2.2.length ≤ 160 := by decide +kernel

theorem v_938_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 0 16 = true := by decide +kernel

theorem v_938_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 16 16 = true := by decide +kernel

theorem v_938_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 32 16 = true := by decide +kernel

theorem v_938_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 48 16 = true := by decide +kernel

theorem v_938_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 64 16 = true := by decide +kernel

theorem v_938_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 80 16 = true := by decide +kernel

theorem v_938_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 96 16 = true := by decide +kernel

theorem v_938_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 112 16 = true := by decide +kernel

theorem v_938_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 128 16 = true := by decide +kernel

theorem v_938_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 938 144 16 = true := by decide +kernel

theorem r_938 : recsK7OK T qscale den6 d14 lamN lamD l7 938 1 = true := recK7_of (n := 160) t_938 n_938 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_938_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_938_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_938_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_938_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_938_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_938_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_938_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_938_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_938_8 (v_938_9))))))))))

theorem rs_937 : recsK7OK T qscale den6 d14 lamN lamD l7 937 2 = true := recsK7OK_succ (lo := 937) (n := 1) r_937 (r_938)

end BeatAvg.K.K7
