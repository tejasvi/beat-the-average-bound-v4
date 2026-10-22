import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_716 : treeK7OK l7 716 = true := by decide +kernel

theorem n_716 : (recAt l7 716).2.2.2.length ≤ 48 := by decide +kernel

theorem v_716_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 716 0 16 = true := by decide +kernel

theorem v_716_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 716 16 16 = true := by decide +kernel

theorem v_716_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 716 32 16 = true := by decide +kernel

theorem r_716 : recsK7OK T qscale den6 d14 lamN lamD l7 716 1 = true := recK7_of (n := 48) t_716 n_716 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_716_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_716_1 (v_716_2)))

theorem t_717 : treeK7OK l7 717 = true := by decide +kernel

theorem n_717 : (recAt l7 717).2.2.2.length ≤ 32 := by decide +kernel

theorem v_717_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 717 0 16 = true := by decide +kernel

theorem v_717_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 717 16 16 = true := by decide +kernel

theorem r_717 : recsK7OK T qscale den6 d14 lamN lamD l7 717 1 = true := recK7_of (n := 32) t_717 n_717 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_717_0 (v_717_1))

theorem t_718 : treeK7OK l7 718 = true := by decide +kernel

theorem n_718 : (recAt l7 718).2.2.2.length ≤ 48 := by decide +kernel

theorem v_718_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 718 0 16 = true := by decide +kernel

theorem v_718_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 718 16 16 = true := by decide +kernel

theorem v_718_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 718 32 16 = true := by decide +kernel

theorem r_718 : recsK7OK T qscale den6 d14 lamN lamD l7 718 1 = true := recK7_of (n := 48) t_718 n_718 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_718_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_718_1 (v_718_2)))

theorem t_719 : treeK7OK l7 719 = true := by decide +kernel

theorem n_719 : (recAt l7 719).2.2.2.length ≤ 32 := by decide +kernel

theorem v_719_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 719 0 16 = true := by decide +kernel

theorem v_719_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 719 16 16 = true := by decide +kernel

theorem r_719 : recsK7OK T qscale den6 d14 lamN lamD l7 719 1 = true := recK7_of (n := 32) t_719 n_719 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_719_0 (v_719_1))

theorem t_720 : treeK7OK l7 720 = true := by decide +kernel

theorem n_720 : (recAt l7 720).2.2.2.length ≤ 80 := by decide +kernel

theorem v_720_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 720 0 16 = true := by decide +kernel

theorem v_720_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 720 16 16 = true := by decide +kernel

theorem v_720_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 720 32 16 = true := by decide +kernel

theorem v_720_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 720 48 16 = true := by decide +kernel

theorem v_720_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 720 64 16 = true := by decide +kernel

theorem r_720 : recsK7OK T qscale den6 d14 lamN lamD l7 720 1 = true := recK7_of (n := 80) t_720 n_720 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_720_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_720_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_720_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_720_3 (v_720_4)))))

theorem t_721 : treeK7OK l7 721 = true := by decide +kernel

theorem n_721 : (recAt l7 721).2.2.2.length ≤ 80 := by decide +kernel

theorem v_721_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 721 0 16 = true := by decide +kernel

theorem v_721_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 721 16 16 = true := by decide +kernel

theorem v_721_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 721 32 16 = true := by decide +kernel

theorem v_721_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 721 48 16 = true := by decide +kernel

theorem v_721_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 721 64 16 = true := by decide +kernel

theorem r_721 : recsK7OK T qscale den6 d14 lamN lamD l7 721 1 = true := recK7_of (n := 80) t_721 n_721 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_721_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_721_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_721_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_721_3 (v_721_4)))))

theorem t_722 : treeK7OK l7 722 = true := by decide +kernel

theorem n_722 : (recAt l7 722).2.2.2.length ≤ 64 := by decide +kernel

theorem v_722_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 722 0 16 = true := by decide +kernel

theorem v_722_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 722 16 16 = true := by decide +kernel

theorem v_722_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 722 32 16 = true := by decide +kernel

theorem v_722_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 722 48 16 = true := by decide +kernel

theorem r_722 : recsK7OK T qscale den6 d14 lamN lamD l7 722 1 = true := recK7_of (n := 64) t_722 n_722 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_722_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_722_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_722_2 (v_722_3))))

theorem t_723 : treeK7OK l7 723 = true := by decide +kernel

theorem n_723 : (recAt l7 723).2.2.2.length ≤ 48 := by decide +kernel

theorem v_723_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 723 0 16 = true := by decide +kernel

theorem v_723_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 723 16 16 = true := by decide +kernel

theorem v_723_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 723 32 16 = true := by decide +kernel

theorem r_723 : recsK7OK T qscale den6 d14 lamN lamD l7 723 1 = true := recK7_of (n := 48) t_723 n_723 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_723_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_723_1 (v_723_2)))

theorem rs_716 : recsK7OK T qscale den6 d14 lamN lamD l7 716 8 = true := recsK7OK_succ (lo := 716) (n := 7) r_716 (recsK7OK_succ (lo := 717) (n := 6) r_717 (recsK7OK_succ (lo := 718) (n := 5) r_718 (recsK7OK_succ (lo := 719) (n := 4) r_719 (recsK7OK_succ (lo := 720) (n := 3) r_720 (recsK7OK_succ (lo := 721) (n := 2) r_721 (recsK7OK_succ (lo := 722) (n := 1) r_722 (r_723)))))))

end BeatAvg.K.K7
