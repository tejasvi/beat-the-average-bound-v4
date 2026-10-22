import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_861 : treeK7OK l7 861 = true := by decide +kernel

theorem n_861 : (recAt l7 861).2.2.2.length ≤ 80 := by decide +kernel

theorem v_861_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 861 0 16 = true := by decide +kernel

theorem v_861_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 861 16 16 = true := by decide +kernel

theorem v_861_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 861 32 16 = true := by decide +kernel

theorem v_861_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 861 48 16 = true := by decide +kernel

theorem v_861_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 861 64 16 = true := by decide +kernel

theorem r_861 : recsK7OK T qscale den6 d14 lamN lamD l7 861 1 = true := recK7_of (n := 80) t_861 n_861 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_861_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_861_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_861_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_861_3 (v_861_4)))))

theorem t_862 : treeK7OK l7 862 = true := by decide +kernel

theorem n_862 : (recAt l7 862).2.2.2.length ≤ 48 := by decide +kernel

theorem v_862_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 862 0 16 = true := by decide +kernel

theorem v_862_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 862 16 16 = true := by decide +kernel

theorem v_862_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 862 32 16 = true := by decide +kernel

theorem r_862 : recsK7OK T qscale den6 d14 lamN lamD l7 862 1 = true := recK7_of (n := 48) t_862 n_862 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_862_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_862_1 (v_862_2)))

theorem t_863 : treeK7OK l7 863 = true := by decide +kernel

theorem n_863 : (recAt l7 863).2.2.2.length ≤ 96 := by decide +kernel

theorem v_863_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 863 0 16 = true := by decide +kernel

theorem v_863_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 863 16 16 = true := by decide +kernel

theorem v_863_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 863 32 16 = true := by decide +kernel

theorem v_863_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 863 48 16 = true := by decide +kernel

theorem v_863_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 863 64 16 = true := by decide +kernel

theorem v_863_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 863 80 16 = true := by decide +kernel

theorem r_863 : recsK7OK T qscale den6 d14 lamN lamD l7 863 1 = true := recK7_of (n := 96) t_863 n_863 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_863_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_863_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_863_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_863_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_863_4 (v_863_5))))))

theorem t_864 : treeK7OK l7 864 = true := by decide +kernel

theorem n_864 : (recAt l7 864).2.2.2.length ≤ 64 := by decide +kernel

theorem v_864_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 864 0 16 = true := by decide +kernel

theorem v_864_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 864 16 16 = true := by decide +kernel

theorem v_864_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 864 32 16 = true := by decide +kernel

theorem v_864_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 864 48 16 = true := by decide +kernel

theorem r_864 : recsK7OK T qscale den6 d14 lamN lamD l7 864 1 = true := recK7_of (n := 64) t_864 n_864 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_864_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_864_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_864_2 (v_864_3))))

theorem rs_861 : recsK7OK T qscale den6 d14 lamN lamD l7 861 4 = true := recsK7OK_succ (lo := 861) (n := 3) r_861 (recsK7OK_succ (lo := 862) (n := 2) r_862 (recsK7OK_succ (lo := 863) (n := 1) r_863 (r_864)))

end BeatAvg.K.K7
