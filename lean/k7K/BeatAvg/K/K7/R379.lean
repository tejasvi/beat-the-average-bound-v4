import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1154 : treeK7OK l7 1154 = true := by decide +kernel

theorem n_1154 : (recAt l7 1154).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1154_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1154 0 16 = true := by decide +kernel

theorem v_1154_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1154 16 16 = true := by decide +kernel

theorem v_1154_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1154 32 16 = true := by decide +kernel

theorem v_1154_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1154 48 16 = true := by decide +kernel

theorem v_1154_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1154 64 16 = true := by decide +kernel

theorem v_1154_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1154 80 16 = true := by decide +kernel

theorem r_1154 : recsK7OK T qscale den6 d14 lamN lamD l7 1154 1 = true := recK7_of (n := 96) t_1154 n_1154 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1154_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1154_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1154_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1154_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1154_4 (v_1154_5))))))

theorem t_1155 : treeK7OK l7 1155 = true := by decide +kernel

theorem n_1155 : (recAt l7 1155).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1155_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1155 0 16 = true := by decide +kernel

theorem v_1155_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1155 16 16 = true := by decide +kernel

theorem v_1155_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1155 32 16 = true := by decide +kernel

theorem v_1155_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1155 48 16 = true := by decide +kernel

theorem v_1155_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1155 64 16 = true := by decide +kernel

theorem v_1155_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1155 80 16 = true := by decide +kernel

theorem r_1155 : recsK7OK T qscale den6 d14 lamN lamD l7 1155 1 = true := recK7_of (n := 96) t_1155 n_1155 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1155_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1155_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1155_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1155_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1155_4 (v_1155_5))))))

theorem t_1156 : treeK7OK l7 1156 = true := by decide +kernel

theorem n_1156 : (recAt l7 1156).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1156_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1156 0 16 = true := by decide +kernel

theorem v_1156_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1156 16 16 = true := by decide +kernel

theorem v_1156_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1156 32 16 = true := by decide +kernel

theorem v_1156_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1156 48 16 = true := by decide +kernel

theorem v_1156_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1156 64 16 = true := by decide +kernel

theorem r_1156 : recsK7OK T qscale den6 d14 lamN lamD l7 1156 1 = true := recK7_of (n := 80) t_1156 n_1156 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1156_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1156_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1156_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1156_3 (v_1156_4)))))

theorem t_1157 : treeK7OK l7 1157 = true := by decide +kernel

theorem n_1157 : (recAt l7 1157).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1157_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1157 0 16 = true := by decide +kernel

theorem v_1157_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1157 16 16 = true := by decide +kernel

theorem v_1157_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1157 32 16 = true := by decide +kernel

theorem v_1157_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1157 48 16 = true := by decide +kernel

theorem v_1157_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1157 64 16 = true := by decide +kernel

theorem v_1157_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1157 80 16 = true := by decide +kernel

theorem v_1157_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1157 96 16 = true := by decide +kernel

theorem r_1157 : recsK7OK T qscale den6 d14 lamN lamD l7 1157 1 = true := recK7_of (n := 112) t_1157 n_1157 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1157_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1157_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1157_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1157_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1157_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1157_5 (v_1157_6)))))))

theorem rs_1154 : recsK7OK T qscale den6 d14 lamN lamD l7 1154 4 = true := recsK7OK_succ (lo := 1154) (n := 3) r_1154 (recsK7OK_succ (lo := 1155) (n := 2) r_1155 (recsK7OK_succ (lo := 1156) (n := 1) r_1156 (r_1157)))

end BeatAvg.K.K7
