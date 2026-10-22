import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_997 : treeK7OK l7 997 = true := by decide +kernel

theorem n_997 : (recAt l7 997).2.2.2.length ≤ 128 := by decide +kernel

theorem v_997_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 0 16 = true := by decide +kernel

theorem v_997_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 16 16 = true := by decide +kernel

theorem v_997_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 32 16 = true := by decide +kernel

theorem v_997_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 48 16 = true := by decide +kernel

theorem v_997_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 64 16 = true := by decide +kernel

theorem v_997_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 80 16 = true := by decide +kernel

theorem v_997_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 96 16 = true := by decide +kernel

theorem v_997_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 997 112 16 = true := by decide +kernel

theorem r_997 : recsK7OK T qscale den6 d14 lamN lamD l7 997 1 = true := recK7_of (n := 128) t_997 n_997 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_997_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_997_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_997_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_997_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_997_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_997_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_997_6 (v_997_7))))))))

theorem t_998 : treeK7OK l7 998 = true := by decide +kernel

theorem n_998 : (recAt l7 998).2.2.2.length ≤ 48 := by decide +kernel

theorem v_998_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 998 0 16 = true := by decide +kernel

theorem v_998_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 998 16 16 = true := by decide +kernel

theorem v_998_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 998 32 16 = true := by decide +kernel

theorem r_998 : recsK7OK T qscale den6 d14 lamN lamD l7 998 1 = true := recK7_of (n := 48) t_998 n_998 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_998_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_998_1 (v_998_2)))

theorem t_999 : treeK7OK l7 999 = true := by decide +kernel

theorem n_999 : (recAt l7 999).2.2.2.length ≤ 208 := by decide +kernel

theorem v_999_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 0 16 = true := by decide +kernel

theorem v_999_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 16 16 = true := by decide +kernel

theorem v_999_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 32 16 = true := by decide +kernel

theorem v_999_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 48 16 = true := by decide +kernel

theorem v_999_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 64 16 = true := by decide +kernel

theorem v_999_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 80 16 = true := by decide +kernel

theorem v_999_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 96 16 = true := by decide +kernel

theorem v_999_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 112 16 = true := by decide +kernel

theorem v_999_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 128 16 = true := by decide +kernel

theorem v_999_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 144 16 = true := by decide +kernel

theorem v_999_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 160 16 = true := by decide +kernel

theorem v_999_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 176 16 = true := by decide +kernel

theorem v_999_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 999 192 16 = true := by decide +kernel

theorem r_999 : recsK7OK T qscale den6 d14 lamN lamD l7 999 1 = true := recK7_of (n := 208) t_999 n_999 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_999_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_999_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_999_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_999_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_999_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_999_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_999_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_999_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_999_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_999_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_999_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_999_11 (v_999_12)))))))))))))

theorem rs_997 : recsK7OK T qscale den6 d14 lamN lamD l7 997 3 = true := recsK7OK_succ (lo := 997) (n := 2) r_997 (recsK7OK_succ (lo := 998) (n := 1) r_998 (r_999))

end BeatAvg.K.K7
