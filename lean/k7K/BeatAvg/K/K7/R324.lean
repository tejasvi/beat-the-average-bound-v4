import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_979 : treeK7OK l7 979 = true := by decide +kernel

theorem n_979 : (recAt l7 979).2.2.2.length ≤ 224 := by decide +kernel

theorem v_979_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 0 16 = true := by decide +kernel

theorem v_979_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 16 16 = true := by decide +kernel

theorem v_979_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 32 16 = true := by decide +kernel

theorem v_979_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 48 16 = true := by decide +kernel

theorem v_979_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 64 16 = true := by decide +kernel

theorem v_979_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 80 16 = true := by decide +kernel

theorem v_979_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 96 16 = true := by decide +kernel

theorem v_979_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 112 16 = true := by decide +kernel

theorem v_979_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 128 16 = true := by decide +kernel

theorem v_979_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 144 16 = true := by decide +kernel

theorem v_979_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 160 16 = true := by decide +kernel

theorem v_979_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 176 16 = true := by decide +kernel

theorem v_979_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 192 16 = true := by decide +kernel

theorem v_979_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 979 208 16 = true := by decide +kernel

theorem r_979 : recsK7OK T qscale den6 d14 lamN lamD l7 979 1 = true := recK7_of (n := 224) t_979 n_979 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_979_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_979_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_979_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_979_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_979_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_979_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_979_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_979_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_979_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_979_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_979_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_979_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_979_12 (v_979_13))))))))))))))

theorem rs_979 : recsK7OK T qscale den6 d14 lamN lamD l7 979 1 = true := r_979

end BeatAvg.K.K7
