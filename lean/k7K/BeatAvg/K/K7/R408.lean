import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1263 : treeK7OK l7 1263 = true := by decide +kernel

theorem n_1263 : (recAt l7 1263).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1263_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1263 0 16 = true := by decide +kernel

theorem v_1263_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1263 16 16 = true := by decide +kernel

theorem v_1263_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1263 32 16 = true := by decide +kernel

theorem v_1263_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1263 48 16 = true := by decide +kernel

theorem v_1263_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1263 64 16 = true := by decide +kernel

theorem v_1263_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1263 80 16 = true := by decide +kernel

theorem v_1263_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1263 96 16 = true := by decide +kernel

theorem r_1263 : recsK7OK T qscale den6 d14 lamN lamD l7 1263 1 = true := recK7_of (n := 112) t_1263 n_1263 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1263_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1263_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1263_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1263_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1263_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1263_5 (v_1263_6)))))))

theorem t_1264 : treeK7OK l7 1264 = true := by decide +kernel

theorem n_1264 : (recAt l7 1264).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1264_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1264 0 16 = true := by decide +kernel

theorem v_1264_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1264 16 16 = true := by decide +kernel

theorem v_1264_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1264 32 16 = true := by decide +kernel

theorem v_1264_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1264 48 16 = true := by decide +kernel

theorem v_1264_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1264 64 16 = true := by decide +kernel

theorem r_1264 : recsK7OK T qscale den6 d14 lamN lamD l7 1264 1 = true := recK7_of (n := 80) t_1264 n_1264 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1264_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1264_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1264_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1264_3 (v_1264_4)))))

theorem t_1265 : treeK7OK l7 1265 = true := by decide +kernel

theorem n_1265 : (recAt l7 1265).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1265_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1265 0 16 = true := by decide +kernel

theorem v_1265_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1265 16 16 = true := by decide +kernel

theorem v_1265_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1265 32 16 = true := by decide +kernel

theorem v_1265_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1265 48 16 = true := by decide +kernel

theorem v_1265_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1265 64 16 = true := by decide +kernel

theorem v_1265_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1265 80 16 = true := by decide +kernel

theorem v_1265_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1265 96 16 = true := by decide +kernel

theorem r_1265 : recsK7OK T qscale den6 d14 lamN lamD l7 1265 1 = true := recK7_of (n := 112) t_1265 n_1265 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1265_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1265_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1265_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1265_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1265_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1265_5 (v_1265_6)))))))

theorem t_1266 : treeK7OK l7 1266 = true := by decide +kernel

theorem n_1266 : (recAt l7 1266).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1266_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1266 0 16 = true := by decide +kernel

theorem v_1266_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1266 16 16 = true := by decide +kernel

theorem v_1266_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1266 32 16 = true := by decide +kernel

theorem v_1266_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1266 48 16 = true := by decide +kernel

theorem v_1266_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1266 64 16 = true := by decide +kernel

theorem r_1266 : recsK7OK T qscale den6 d14 lamN lamD l7 1266 1 = true := recK7_of (n := 80) t_1266 n_1266 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1266_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1266_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1266_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1266_3 (v_1266_4)))))

theorem rs_1263 : recsK7OK T qscale den6 d14 lamN lamD l7 1263 4 = true := recsK7OK_succ (lo := 1263) (n := 3) r_1263 (recsK7OK_succ (lo := 1264) (n := 2) r_1264 (recsK7OK_succ (lo := 1265) (n := 1) r_1265 (r_1266)))

end BeatAvg.K.K7
