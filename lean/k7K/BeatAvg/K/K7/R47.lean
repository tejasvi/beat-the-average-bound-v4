import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_168 : treeK7OK l7 168 = true := by decide +kernel

theorem n_168 : (recAt l7 168).2.2.2.length ≤ 80 := by decide +kernel

theorem v_168_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 168 0 16 = true := by decide +kernel

theorem v_168_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 168 16 16 = true := by decide +kernel

theorem v_168_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 168 32 16 = true := by decide +kernel

theorem v_168_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 168 48 16 = true := by decide +kernel

theorem v_168_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 168 64 16 = true := by decide +kernel

theorem r_168 : recsK7OK T qscale den6 d14 lamN lamD l7 168 1 = true := recK7_of (n := 80) t_168 n_168 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_168_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_168_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_168_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_168_3 (v_168_4)))))

theorem t_169 : treeK7OK l7 169 = true := by decide +kernel

theorem n_169 : (recAt l7 169).2.2.2.length ≤ 80 := by decide +kernel

theorem v_169_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 169 0 16 = true := by decide +kernel

theorem v_169_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 169 16 16 = true := by decide +kernel

theorem v_169_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 169 32 16 = true := by decide +kernel

theorem v_169_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 169 48 16 = true := by decide +kernel

theorem v_169_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 169 64 16 = true := by decide +kernel

theorem r_169 : recsK7OK T qscale den6 d14 lamN lamD l7 169 1 = true := recK7_of (n := 80) t_169 n_169 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_169_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_169_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_169_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_169_3 (v_169_4)))))

theorem t_170 : treeK7OK l7 170 = true := by decide +kernel

theorem n_170 : (recAt l7 170).2.2.2.length ≤ 48 := by decide +kernel

theorem v_170_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 170 0 16 = true := by decide +kernel

theorem v_170_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 170 16 16 = true := by decide +kernel

theorem v_170_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 170 32 16 = true := by decide +kernel

theorem r_170 : recsK7OK T qscale den6 d14 lamN lamD l7 170 1 = true := recK7_of (n := 48) t_170 n_170 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_170_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_170_1 (v_170_2)))

theorem t_171 : treeK7OK l7 171 = true := by decide +kernel

theorem n_171 : (recAt l7 171).2.2.2.length ≤ 80 := by decide +kernel

theorem v_171_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 171 0 16 = true := by decide +kernel

theorem v_171_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 171 16 16 = true := by decide +kernel

theorem v_171_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 171 32 16 = true := by decide +kernel

theorem v_171_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 171 48 16 = true := by decide +kernel

theorem v_171_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 171 64 16 = true := by decide +kernel

theorem r_171 : recsK7OK T qscale den6 d14 lamN lamD l7 171 1 = true := recK7_of (n := 80) t_171 n_171 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_171_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_171_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_171_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_171_3 (v_171_4)))))

theorem t_172 : treeK7OK l7 172 = true := by decide +kernel

theorem n_172 : (recAt l7 172).2.2.2.length ≤ 64 := by decide +kernel

theorem v_172_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 172 0 16 = true := by decide +kernel

theorem v_172_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 172 16 16 = true := by decide +kernel

theorem v_172_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 172 32 16 = true := by decide +kernel

theorem v_172_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 172 48 16 = true := by decide +kernel

theorem r_172 : recsK7OK T qscale den6 d14 lamN lamD l7 172 1 = true := recK7_of (n := 64) t_172 n_172 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_172_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_172_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_172_2 (v_172_3))))

theorem t_173 : treeK7OK l7 173 = true := by decide +kernel

theorem n_173 : (recAt l7 173).2.2.2.length ≤ 48 := by decide +kernel

theorem v_173_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 173 0 16 = true := by decide +kernel

theorem v_173_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 173 16 16 = true := by decide +kernel

theorem v_173_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 173 32 16 = true := by decide +kernel

theorem r_173 : recsK7OK T qscale den6 d14 lamN lamD l7 173 1 = true := recK7_of (n := 48) t_173 n_173 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_173_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_173_1 (v_173_2)))

theorem t_174 : treeK7OK l7 174 = true := by decide +kernel

theorem n_174 : (recAt l7 174).2.2.2.length ≤ 32 := by decide +kernel

theorem v_174_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 174 0 16 = true := by decide +kernel

theorem v_174_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 174 16 16 = true := by decide +kernel

theorem r_174 : recsK7OK T qscale den6 d14 lamN lamD l7 174 1 = true := recK7_of (n := 32) t_174 n_174 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_174_0 (v_174_1))

theorem rs_168 : recsK7OK T qscale den6 d14 lamN lamD l7 168 7 = true := recsK7OK_succ (lo := 168) (n := 6) r_168 (recsK7OK_succ (lo := 169) (n := 5) r_169 (recsK7OK_succ (lo := 170) (n := 4) r_170 (recsK7OK_succ (lo := 171) (n := 3) r_171 (recsK7OK_succ (lo := 172) (n := 2) r_172 (recsK7OK_succ (lo := 173) (n := 1) r_173 (r_174))))))

end BeatAvg.K.K7
