import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_773 : treeK7OK l7 773 = true := by decide +kernel

theorem n_773 : (recAt l7 773).2.2.2.length ≤ 80 := by decide +kernel

theorem v_773_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 773 0 16 = true := by decide +kernel

theorem v_773_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 773 16 16 = true := by decide +kernel

theorem v_773_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 773 32 16 = true := by decide +kernel

theorem v_773_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 773 48 16 = true := by decide +kernel

theorem v_773_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 773 64 16 = true := by decide +kernel

theorem r_773 : recsK7OK T qscale den6 d14 lamN lamD l7 773 1 = true := recK7_of (n := 80) t_773 n_773 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_773_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_773_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_773_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_773_3 (v_773_4)))))

theorem t_774 : treeK7OK l7 774 = true := by decide +kernel

theorem n_774 : (recAt l7 774).2.2.2.length ≤ 64 := by decide +kernel

theorem v_774_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 774 0 16 = true := by decide +kernel

theorem v_774_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 774 16 16 = true := by decide +kernel

theorem v_774_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 774 32 16 = true := by decide +kernel

theorem v_774_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 774 48 16 = true := by decide +kernel

theorem r_774 : recsK7OK T qscale den6 d14 lamN lamD l7 774 1 = true := recK7_of (n := 64) t_774 n_774 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_774_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_774_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_774_2 (v_774_3))))

theorem t_775 : treeK7OK l7 775 = true := by decide +kernel

theorem n_775 : (recAt l7 775).2.2.2.length ≤ 48 := by decide +kernel

theorem v_775_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 775 0 16 = true := by decide +kernel

theorem v_775_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 775 16 16 = true := by decide +kernel

theorem v_775_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 775 32 16 = true := by decide +kernel

theorem r_775 : recsK7OK T qscale den6 d14 lamN lamD l7 775 1 = true := recK7_of (n := 48) t_775 n_775 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_775_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_775_1 (v_775_2)))

theorem t_776 : treeK7OK l7 776 = true := by decide +kernel

theorem n_776 : (recAt l7 776).2.2.2.length ≤ 32 := by decide +kernel

theorem v_776_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 776 0 16 = true := by decide +kernel

theorem v_776_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 776 16 16 = true := by decide +kernel

theorem r_776 : recsK7OK T qscale den6 d14 lamN lamD l7 776 1 = true := recK7_of (n := 32) t_776 n_776 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_776_0 (v_776_1))

theorem t_777 : treeK7OK l7 777 = true := by decide +kernel

theorem n_777 : (recAt l7 777).2.2.2.length ≤ 32 := by decide +kernel

theorem v_777_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 777 0 16 = true := by decide +kernel

theorem v_777_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 777 16 16 = true := by decide +kernel

theorem r_777 : recsK7OK T qscale den6 d14 lamN lamD l7 777 1 = true := recK7_of (n := 32) t_777 n_777 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_777_0 (v_777_1))

theorem rs_773 : recsK7OK T qscale den6 d14 lamN lamD l7 773 5 = true := recsK7OK_succ (lo := 773) (n := 4) r_773 (recsK7OK_succ (lo := 774) (n := 3) r_774 (recsK7OK_succ (lo := 775) (n := 2) r_775 (recsK7OK_succ (lo := 776) (n := 1) r_776 (r_777))))

end BeatAvg.K.K7
