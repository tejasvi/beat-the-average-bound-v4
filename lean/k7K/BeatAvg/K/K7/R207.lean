import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_724 : treeK7OK l7 724 = true := by decide +kernel

theorem n_724 : (recAt l7 724).2.2.2.length ≤ 80 := by decide +kernel

theorem v_724_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 724 0 16 = true := by decide +kernel

theorem v_724_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 724 16 16 = true := by decide +kernel

theorem v_724_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 724 32 16 = true := by decide +kernel

theorem v_724_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 724 48 16 = true := by decide +kernel

theorem v_724_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 724 64 16 = true := by decide +kernel

theorem r_724 : recsK7OK T qscale den6 d14 lamN lamD l7 724 1 = true := recK7_of (n := 80) t_724 n_724 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_724_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_724_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_724_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_724_3 (v_724_4)))))

theorem t_725 : treeK7OK l7 725 = true := by decide +kernel

theorem n_725 : (recAt l7 725).2.2.2.length ≤ 48 := by decide +kernel

theorem v_725_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 725 0 16 = true := by decide +kernel

theorem v_725_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 725 16 16 = true := by decide +kernel

theorem v_725_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 725 32 16 = true := by decide +kernel

theorem r_725 : recsK7OK T qscale den6 d14 lamN lamD l7 725 1 = true := recK7_of (n := 48) t_725 n_725 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_725_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_725_1 (v_725_2)))

theorem t_726 : treeK7OK l7 726 = true := by decide +kernel

theorem n_726 : (recAt l7 726).2.2.2.length ≤ 112 := by decide +kernel

theorem v_726_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 726 0 16 = true := by decide +kernel

theorem v_726_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 726 16 16 = true := by decide +kernel

theorem v_726_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 726 32 16 = true := by decide +kernel

theorem v_726_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 726 48 16 = true := by decide +kernel

theorem v_726_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 726 64 16 = true := by decide +kernel

theorem v_726_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 726 80 16 = true := by decide +kernel

theorem v_726_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 726 96 16 = true := by decide +kernel

theorem r_726 : recsK7OK T qscale den6 d14 lamN lamD l7 726 1 = true := recK7_of (n := 112) t_726 n_726 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_726_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_726_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_726_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_726_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_726_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_726_5 (v_726_6)))))))

theorem t_727 : treeK7OK l7 727 = true := by decide +kernel

theorem n_727 : (recAt l7 727).2.2.2.length ≤ 64 := by decide +kernel

theorem v_727_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 727 0 16 = true := by decide +kernel

theorem v_727_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 727 16 16 = true := by decide +kernel

theorem v_727_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 727 32 16 = true := by decide +kernel

theorem v_727_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 727 48 16 = true := by decide +kernel

theorem r_727 : recsK7OK T qscale den6 d14 lamN lamD l7 727 1 = true := recK7_of (n := 64) t_727 n_727 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_727_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_727_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_727_2 (v_727_3))))

theorem rs_724 : recsK7OK T qscale den6 d14 lamN lamD l7 724 4 = true := recsK7OK_succ (lo := 724) (n := 3) r_724 (recsK7OK_succ (lo := 725) (n := 2) r_725 (recsK7OK_succ (lo := 726) (n := 1) r_726 (r_727)))

end BeatAvg.K.K7
