import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_984 : treeK7OK l7 984 = true := by decide +kernel

theorem n_984 : (recAt l7 984).2.2.2.length ≤ 192 := by decide +kernel

theorem v_984_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 0 16 = true := by decide +kernel

theorem v_984_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 16 16 = true := by decide +kernel

theorem v_984_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 32 16 = true := by decide +kernel

theorem v_984_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 48 16 = true := by decide +kernel

theorem v_984_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 64 16 = true := by decide +kernel

theorem v_984_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 80 16 = true := by decide +kernel

theorem v_984_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 96 16 = true := by decide +kernel

theorem v_984_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 112 16 = true := by decide +kernel

theorem v_984_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 128 16 = true := by decide +kernel

theorem v_984_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 144 16 = true := by decide +kernel

theorem v_984_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 160 16 = true := by decide +kernel

theorem v_984_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 984 176 16 = true := by decide +kernel

theorem r_984 : recsK7OK T qscale den6 d14 lamN lamD l7 984 1 = true := recK7_of (n := 192) t_984 n_984 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_984_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_984_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_984_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_984_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_984_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_984_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_984_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_984_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_984_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_984_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_984_10 (v_984_11))))))))))))

theorem t_985 : treeK7OK l7 985 = true := by decide +kernel

theorem n_985 : (recAt l7 985).2.2.2.length ≤ 176 := by decide +kernel

theorem v_985_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 0 16 = true := by decide +kernel

theorem v_985_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 16 16 = true := by decide +kernel

theorem v_985_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 32 16 = true := by decide +kernel

theorem v_985_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 48 16 = true := by decide +kernel

theorem v_985_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 64 16 = true := by decide +kernel

theorem v_985_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 80 16 = true := by decide +kernel

theorem v_985_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 96 16 = true := by decide +kernel

theorem v_985_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 112 16 = true := by decide +kernel

theorem v_985_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 128 16 = true := by decide +kernel

theorem v_985_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 144 16 = true := by decide +kernel

theorem v_985_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 985 160 16 = true := by decide +kernel

theorem r_985 : recsK7OK T qscale den6 d14 lamN lamD l7 985 1 = true := recK7_of (n := 176) t_985 n_985 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_985_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_985_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_985_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_985_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_985_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_985_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_985_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_985_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_985_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_985_9 (v_985_10)))))))))))

theorem rs_984 : recsK7OK T qscale den6 d14 lamN lamD l7 984 2 = true := recsK7OK_succ (lo := 984) (n := 1) r_984 (r_985)

end BeatAvg.K.K7
