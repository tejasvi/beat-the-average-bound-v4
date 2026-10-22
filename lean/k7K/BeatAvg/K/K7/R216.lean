import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_741 : treeK7OK l7 741 = true := by decide +kernel

theorem n_741 : (recAt l7 741).2.2.2.length ≤ 224 := by decide +kernel

theorem v_741_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 0 16 = true := by decide +kernel

theorem v_741_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 16 16 = true := by decide +kernel

theorem v_741_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 32 16 = true := by decide +kernel

theorem v_741_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 48 16 = true := by decide +kernel

theorem v_741_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 64 16 = true := by decide +kernel

theorem v_741_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 80 16 = true := by decide +kernel

theorem v_741_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 96 16 = true := by decide +kernel

theorem v_741_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 112 16 = true := by decide +kernel

theorem v_741_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 128 16 = true := by decide +kernel

theorem v_741_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 144 16 = true := by decide +kernel

theorem v_741_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 160 16 = true := by decide +kernel

theorem v_741_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 176 16 = true := by decide +kernel

theorem v_741_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 192 16 = true := by decide +kernel

theorem v_741_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 741 208 16 = true := by decide +kernel

theorem r_741 : recsK7OK T qscale den6 d14 lamN lamD l7 741 1 = true := recK7_of (n := 224) t_741 n_741 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_741_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_741_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_741_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_741_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_741_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_741_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_741_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_741_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_741_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_741_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_741_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_741_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_741_12 (v_741_13))))))))))))))

theorem t_742 : treeK7OK l7 742 = true := by decide +kernel

theorem n_742 : (recAt l7 742).2.2.2.length ≤ 128 := by decide +kernel

theorem v_742_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 0 16 = true := by decide +kernel

theorem v_742_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 16 16 = true := by decide +kernel

theorem v_742_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 32 16 = true := by decide +kernel

theorem v_742_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 48 16 = true := by decide +kernel

theorem v_742_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 64 16 = true := by decide +kernel

theorem v_742_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 80 16 = true := by decide +kernel

theorem v_742_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 96 16 = true := by decide +kernel

theorem v_742_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 742 112 16 = true := by decide +kernel

theorem r_742 : recsK7OK T qscale den6 d14 lamN lamD l7 742 1 = true := recK7_of (n := 128) t_742 n_742 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_742_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_742_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_742_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_742_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_742_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_742_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_742_6 (v_742_7))))))))

theorem t_743 : treeK7OK l7 743 = true := by decide +kernel

theorem n_743 : (recAt l7 743).2.2.2.length ≤ 64 := by decide +kernel

theorem v_743_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 743 0 16 = true := by decide +kernel

theorem v_743_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 743 16 16 = true := by decide +kernel

theorem v_743_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 743 32 16 = true := by decide +kernel

theorem v_743_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 743 48 16 = true := by decide +kernel

theorem r_743 : recsK7OK T qscale den6 d14 lamN lamD l7 743 1 = true := recK7_of (n := 64) t_743 n_743 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_743_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_743_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_743_2 (v_743_3))))

theorem rs_741 : recsK7OK T qscale den6 d14 lamN lamD l7 741 3 = true := recsK7OK_succ (lo := 741) (n := 2) r_741 (recsK7OK_succ (lo := 742) (n := 1) r_742 (r_743))

end BeatAvg.K.K7
