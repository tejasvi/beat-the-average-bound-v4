import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_880 : treeK7OK l7 880 = true := by decide +kernel

theorem n_880 : (recAt l7 880).2.2.2.length ≤ 80 := by decide +kernel

theorem v_880_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 880 0 16 = true := by decide +kernel

theorem v_880_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 880 16 16 = true := by decide +kernel

theorem v_880_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 880 32 16 = true := by decide +kernel

theorem v_880_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 880 48 16 = true := by decide +kernel

theorem v_880_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 880 64 16 = true := by decide +kernel

theorem r_880 : recsK7OK T qscale den6 d14 lamN lamD l7 880 1 = true := recK7_of (n := 80) t_880 n_880 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_880_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_880_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_880_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_880_3 (v_880_4)))))

theorem t_881 : treeK7OK l7 881 = true := by decide +kernel

theorem n_881 : (recAt l7 881).2.2.2.length ≤ 80 := by decide +kernel

theorem v_881_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 881 0 16 = true := by decide +kernel

theorem v_881_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 881 16 16 = true := by decide +kernel

theorem v_881_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 881 32 16 = true := by decide +kernel

theorem v_881_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 881 48 16 = true := by decide +kernel

theorem v_881_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 881 64 16 = true := by decide +kernel

theorem r_881 : recsK7OK T qscale den6 d14 lamN lamD l7 881 1 = true := recK7_of (n := 80) t_881 n_881 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_881_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_881_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_881_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_881_3 (v_881_4)))))

theorem t_882 : treeK7OK l7 882 = true := by decide +kernel

theorem n_882 : (recAt l7 882).2.2.2.length ≤ 96 := by decide +kernel

theorem v_882_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 882 0 16 = true := by decide +kernel

theorem v_882_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 882 16 16 = true := by decide +kernel

theorem v_882_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 882 32 16 = true := by decide +kernel

theorem v_882_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 882 48 16 = true := by decide +kernel

theorem v_882_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 882 64 16 = true := by decide +kernel

theorem v_882_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 882 80 16 = true := by decide +kernel

theorem r_882 : recsK7OK T qscale den6 d14 lamN lamD l7 882 1 = true := recK7_of (n := 96) t_882 n_882 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_882_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_882_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_882_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_882_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_882_4 (v_882_5))))))

theorem t_883 : treeK7OK l7 883 = true := by decide +kernel

theorem n_883 : (recAt l7 883).2.2.2.length ≤ 64 := by decide +kernel

theorem v_883_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 883 0 16 = true := by decide +kernel

theorem v_883_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 883 16 16 = true := by decide +kernel

theorem v_883_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 883 32 16 = true := by decide +kernel

theorem v_883_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 883 48 16 = true := by decide +kernel

theorem r_883 : recsK7OK T qscale den6 d14 lamN lamD l7 883 1 = true := recK7_of (n := 64) t_883 n_883 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_883_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_883_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_883_2 (v_883_3))))

theorem rs_880 : recsK7OK T qscale den6 d14 lamN lamD l7 880 4 = true := recsK7OK_succ (lo := 880) (n := 3) r_880 (recsK7OK_succ (lo := 881) (n := 2) r_881 (recsK7OK_succ (lo := 882) (n := 1) r_882 (r_883)))

end BeatAvg.K.K7
