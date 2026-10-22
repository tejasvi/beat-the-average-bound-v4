import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_941 : treeK7OK l7 941 = true := by decide +kernel

theorem n_941 : (recAt l7 941).2.2.2.length ≤ 208 := by decide +kernel

theorem v_941_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 0 16 = true := by decide +kernel

theorem v_941_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 16 16 = true := by decide +kernel

theorem v_941_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 32 16 = true := by decide +kernel

theorem v_941_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 48 16 = true := by decide +kernel

theorem v_941_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 64 16 = true := by decide +kernel

theorem v_941_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 80 16 = true := by decide +kernel

theorem v_941_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 96 16 = true := by decide +kernel

theorem v_941_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 112 16 = true := by decide +kernel

theorem v_941_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 128 16 = true := by decide +kernel

theorem v_941_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 144 16 = true := by decide +kernel

theorem v_941_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 160 16 = true := by decide +kernel

theorem v_941_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 176 16 = true := by decide +kernel

theorem v_941_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 941 192 16 = true := by decide +kernel

theorem r_941 : recsK7OK T qscale den6 d14 lamN lamD l7 941 1 = true := recK7_of (n := 208) t_941 n_941 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_941_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_941_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_941_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_941_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_941_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_941_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_941_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_941_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_941_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_941_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_941_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_941_11 (v_941_12)))))))))))))

theorem t_942 : treeK7OK l7 942 = true := by decide +kernel

theorem n_942 : (recAt l7 942).2.2.2.length ≤ 176 := by decide +kernel

theorem v_942_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 0 16 = true := by decide +kernel

theorem v_942_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 16 16 = true := by decide +kernel

theorem v_942_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 32 16 = true := by decide +kernel

theorem v_942_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 48 16 = true := by decide +kernel

theorem v_942_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 64 16 = true := by decide +kernel

theorem v_942_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 80 16 = true := by decide +kernel

theorem v_942_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 96 16 = true := by decide +kernel

theorem v_942_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 112 16 = true := by decide +kernel

theorem v_942_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 128 16 = true := by decide +kernel

theorem v_942_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 144 16 = true := by decide +kernel

theorem v_942_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 942 160 16 = true := by decide +kernel

theorem r_942 : recsK7OK T qscale den6 d14 lamN lamD l7 942 1 = true := recK7_of (n := 176) t_942 n_942 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_942_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_942_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_942_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_942_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_942_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_942_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_942_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_942_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_942_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_942_9 (v_942_10)))))))))))

theorem rs_941 : recsK7OK T qscale den6 d14 lamN lamD l7 941 2 = true := recsK7OK_succ (lo := 941) (n := 1) r_941 (r_942)

end BeatAvg.K.K7
