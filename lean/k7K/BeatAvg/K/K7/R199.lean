import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_680 : treeK7OK l7 680 = true := by decide +kernel

theorem n_680 : (recAt l7 680).2.2.2.length ≤ 80 := by decide +kernel

theorem v_680_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 680 0 16 = true := by decide +kernel

theorem v_680_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 680 16 16 = true := by decide +kernel

theorem v_680_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 680 32 16 = true := by decide +kernel

theorem v_680_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 680 48 16 = true := by decide +kernel

theorem v_680_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 680 64 16 = true := by decide +kernel

theorem r_680 : recsK7OK T qscale den6 d14 lamN lamD l7 680 1 = true := recK7_of (n := 80) t_680 n_680 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_680_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_680_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_680_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_680_3 (v_680_4)))))

theorem t_681 : treeK7OK l7 681 = true := by decide +kernel

theorem n_681 : (recAt l7 681).2.2.2.length ≤ 144 := by decide +kernel

theorem v_681_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 0 16 = true := by decide +kernel

theorem v_681_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 16 16 = true := by decide +kernel

theorem v_681_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 32 16 = true := by decide +kernel

theorem v_681_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 48 16 = true := by decide +kernel

theorem v_681_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 64 16 = true := by decide +kernel

theorem v_681_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 80 16 = true := by decide +kernel

theorem v_681_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 96 16 = true := by decide +kernel

theorem v_681_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 112 16 = true := by decide +kernel

theorem v_681_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 681 128 16 = true := by decide +kernel

theorem r_681 : recsK7OK T qscale den6 d14 lamN lamD l7 681 1 = true := recK7_of (n := 144) t_681 n_681 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_681_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_681_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_681_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_681_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_681_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_681_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_681_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_681_7 (v_681_8)))))))))

theorem t_682 : treeK7OK l7 682 = true := by decide +kernel

theorem n_682 : (recAt l7 682).2.2.2.length ≤ 128 := by decide +kernel

theorem v_682_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 0 16 = true := by decide +kernel

theorem v_682_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 16 16 = true := by decide +kernel

theorem v_682_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 32 16 = true := by decide +kernel

theorem v_682_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 48 16 = true := by decide +kernel

theorem v_682_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 64 16 = true := by decide +kernel

theorem v_682_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 80 16 = true := by decide +kernel

theorem v_682_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 96 16 = true := by decide +kernel

theorem v_682_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 682 112 16 = true := by decide +kernel

theorem r_682 : recsK7OK T qscale den6 d14 lamN lamD l7 682 1 = true := recK7_of (n := 128) t_682 n_682 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_682_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_682_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_682_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_682_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_682_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_682_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_682_6 (v_682_7))))))))

theorem rs_680 : recsK7OK T qscale den6 d14 lamN lamD l7 680 3 = true := recsK7OK_succ (lo := 680) (n := 2) r_680 (recsK7OK_succ (lo := 681) (n := 1) r_681 (r_682))

end BeatAvg.K.K7
