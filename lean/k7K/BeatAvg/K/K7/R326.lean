import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_981 : treeK7OK l7 981 = true := by decide +kernel

theorem n_981 : (recAt l7 981).2.2.2.length ≤ 192 := by decide +kernel

theorem v_981_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 0 16 = true := by decide +kernel

theorem v_981_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 16 16 = true := by decide +kernel

theorem v_981_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 32 16 = true := by decide +kernel

theorem v_981_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 48 16 = true := by decide +kernel

theorem v_981_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 64 16 = true := by decide +kernel

theorem v_981_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 80 16 = true := by decide +kernel

theorem v_981_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 96 16 = true := by decide +kernel

theorem v_981_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 112 16 = true := by decide +kernel

theorem v_981_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 128 16 = true := by decide +kernel

theorem v_981_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 144 16 = true := by decide +kernel

theorem v_981_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 160 16 = true := by decide +kernel

theorem v_981_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 981 176 16 = true := by decide +kernel

theorem r_981 : recsK7OK T qscale den6 d14 lamN lamD l7 981 1 = true := recK7_of (n := 192) t_981 n_981 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_981_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_981_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_981_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_981_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_981_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_981_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_981_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_981_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_981_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_981_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_981_10 (v_981_11))))))))))))

theorem t_982 : treeK7OK l7 982 = true := by decide +kernel

theorem n_982 : (recAt l7 982).2.2.2.length ≤ 112 := by decide +kernel

theorem v_982_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 982 0 16 = true := by decide +kernel

theorem v_982_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 982 16 16 = true := by decide +kernel

theorem v_982_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 982 32 16 = true := by decide +kernel

theorem v_982_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 982 48 16 = true := by decide +kernel

theorem v_982_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 982 64 16 = true := by decide +kernel

theorem v_982_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 982 80 16 = true := by decide +kernel

theorem v_982_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 982 96 16 = true := by decide +kernel

theorem r_982 : recsK7OK T qscale den6 d14 lamN lamD l7 982 1 = true := recK7_of (n := 112) t_982 n_982 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_982_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_982_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_982_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_982_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_982_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_982_5 (v_982_6)))))))

theorem rs_981 : recsK7OK T qscale den6 d14 lamN lamD l7 981 2 = true := recsK7OK_succ (lo := 981) (n := 1) r_981 (r_982)

end BeatAvg.K.K7
