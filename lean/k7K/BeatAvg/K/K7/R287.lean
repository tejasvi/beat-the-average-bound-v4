import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_893 : treeK7OK l7 893 = true := by decide +kernel

theorem n_893 : (recAt l7 893).2.2.2.length ≤ 208 := by decide +kernel

theorem v_893_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 0 16 = true := by decide +kernel

theorem v_893_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 16 16 = true := by decide +kernel

theorem v_893_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 32 16 = true := by decide +kernel

theorem v_893_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 48 16 = true := by decide +kernel

theorem v_893_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 64 16 = true := by decide +kernel

theorem v_893_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 80 16 = true := by decide +kernel

theorem v_893_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 96 16 = true := by decide +kernel

theorem v_893_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 112 16 = true := by decide +kernel

theorem v_893_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 128 16 = true := by decide +kernel

theorem v_893_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 144 16 = true := by decide +kernel

theorem v_893_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 160 16 = true := by decide +kernel

theorem v_893_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 176 16 = true := by decide +kernel

theorem v_893_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 893 192 16 = true := by decide +kernel

theorem r_893 : recsK7OK T qscale den6 d14 lamN lamD l7 893 1 = true := recK7_of (n := 208) t_893 n_893 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_893_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_893_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_893_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_893_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_893_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_893_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_893_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_893_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_893_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_893_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_893_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_893_11 (v_893_12)))))))))))))

theorem t_894 : treeK7OK l7 894 = true := by decide +kernel

theorem n_894 : (recAt l7 894).2.2.2.length ≤ 160 := by decide +kernel

theorem v_894_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 0 16 = true := by decide +kernel

theorem v_894_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 16 16 = true := by decide +kernel

theorem v_894_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 32 16 = true := by decide +kernel

theorem v_894_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 48 16 = true := by decide +kernel

theorem v_894_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 64 16 = true := by decide +kernel

theorem v_894_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 80 16 = true := by decide +kernel

theorem v_894_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 96 16 = true := by decide +kernel

theorem v_894_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 112 16 = true := by decide +kernel

theorem v_894_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 128 16 = true := by decide +kernel

theorem v_894_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 894 144 16 = true := by decide +kernel

theorem r_894 : recsK7OK T qscale den6 d14 lamN lamD l7 894 1 = true := recK7_of (n := 160) t_894 n_894 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_894_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_894_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_894_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_894_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_894_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_894_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_894_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_894_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_894_8 (v_894_9))))))))))

theorem rs_893 : recsK7OK T qscale den6 d14 lamN lamD l7 893 2 = true := recsK7OK_succ (lo := 893) (n := 1) r_893 (r_894)

end BeatAvg.K.K7
