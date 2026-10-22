import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_933 : treeK7OK l7 933 = true := by decide +kernel

theorem n_933 : (recAt l7 933).2.2.2.length ≤ 96 := by decide +kernel

theorem v_933_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 933 0 16 = true := by decide +kernel

theorem v_933_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 933 16 16 = true := by decide +kernel

theorem v_933_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 933 32 16 = true := by decide +kernel

theorem v_933_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 933 48 16 = true := by decide +kernel

theorem v_933_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 933 64 16 = true := by decide +kernel

theorem v_933_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 933 80 16 = true := by decide +kernel

theorem r_933 : recsK7OK T qscale den6 d14 lamN lamD l7 933 1 = true := recK7_of (n := 96) t_933 n_933 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_933_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_933_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_933_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_933_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_933_4 (v_933_5))))))

theorem t_934 : treeK7OK l7 934 = true := by decide +kernel

theorem n_934 : (recAt l7 934).2.2.2.length ≤ 192 := by decide +kernel

theorem v_934_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 0 16 = true := by decide +kernel

theorem v_934_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 16 16 = true := by decide +kernel

theorem v_934_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 32 16 = true := by decide +kernel

theorem v_934_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 48 16 = true := by decide +kernel

theorem v_934_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 64 16 = true := by decide +kernel

theorem v_934_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 80 16 = true := by decide +kernel

theorem v_934_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 96 16 = true := by decide +kernel

theorem v_934_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 112 16 = true := by decide +kernel

theorem v_934_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 128 16 = true := by decide +kernel

theorem v_934_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 144 16 = true := by decide +kernel

theorem v_934_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 160 16 = true := by decide +kernel

theorem v_934_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 934 176 16 = true := by decide +kernel

theorem r_934 : recsK7OK T qscale den6 d14 lamN lamD l7 934 1 = true := recK7_of (n := 192) t_934 n_934 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_934_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_934_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_934_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_934_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_934_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_934_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_934_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_934_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_934_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_934_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_934_10 (v_934_11))))))))))))

theorem t_935 : treeK7OK l7 935 = true := by decide +kernel

theorem n_935 : (recAt l7 935).2.2.2.length ≤ 128 := by decide +kernel

theorem v_935_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 0 16 = true := by decide +kernel

theorem v_935_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 16 16 = true := by decide +kernel

theorem v_935_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 32 16 = true := by decide +kernel

theorem v_935_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 48 16 = true := by decide +kernel

theorem v_935_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 64 16 = true := by decide +kernel

theorem v_935_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 80 16 = true := by decide +kernel

theorem v_935_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 96 16 = true := by decide +kernel

theorem v_935_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 935 112 16 = true := by decide +kernel

theorem r_935 : recsK7OK T qscale den6 d14 lamN lamD l7 935 1 = true := recK7_of (n := 128) t_935 n_935 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_935_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_935_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_935_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_935_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_935_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_935_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_935_6 (v_935_7))))))))

theorem rs_933 : recsK7OK T qscale den6 d14 lamN lamD l7 933 3 = true := recsK7OK_succ (lo := 933) (n := 2) r_933 (recsK7OK_succ (lo := 934) (n := 1) r_934 (r_935))

end BeatAvg.K.K7
