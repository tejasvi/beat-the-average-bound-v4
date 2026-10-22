import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_828 : treeK7OK l7 828 = true := by decide +kernel

theorem n_828 : (recAt l7 828).2.2.2.length ≤ 224 := by decide +kernel

theorem v_828_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 0 16 = true := by decide +kernel

theorem v_828_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 16 16 = true := by decide +kernel

theorem v_828_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 32 16 = true := by decide +kernel

theorem v_828_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 48 16 = true := by decide +kernel

theorem v_828_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 64 16 = true := by decide +kernel

theorem v_828_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 80 16 = true := by decide +kernel

theorem v_828_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 96 16 = true := by decide +kernel

theorem v_828_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 112 16 = true := by decide +kernel

theorem v_828_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 128 16 = true := by decide +kernel

theorem v_828_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 144 16 = true := by decide +kernel

theorem v_828_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 160 16 = true := by decide +kernel

theorem v_828_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 176 16 = true := by decide +kernel

theorem v_828_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 192 16 = true := by decide +kernel

theorem v_828_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 828 208 16 = true := by decide +kernel

theorem r_828 : recsK7OK T qscale den6 d14 lamN lamD l7 828 1 = true := recK7_of (n := 224) t_828 n_828 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_828_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_828_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_828_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_828_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_828_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_828_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_828_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_828_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_828_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_828_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_828_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_828_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_828_12 (v_828_13))))))))))))))

theorem t_829 : treeK7OK l7 829 = true := by decide +kernel

theorem n_829 : (recAt l7 829).2.2.2.length ≤ 144 := by decide +kernel

theorem v_829_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 0 16 = true := by decide +kernel

theorem v_829_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 16 16 = true := by decide +kernel

theorem v_829_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 32 16 = true := by decide +kernel

theorem v_829_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 48 16 = true := by decide +kernel

theorem v_829_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 64 16 = true := by decide +kernel

theorem v_829_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 80 16 = true := by decide +kernel

theorem v_829_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 96 16 = true := by decide +kernel

theorem v_829_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 112 16 = true := by decide +kernel

theorem v_829_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 829 128 16 = true := by decide +kernel

theorem r_829 : recsK7OK T qscale den6 d14 lamN lamD l7 829 1 = true := recK7_of (n := 144) t_829 n_829 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_829_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_829_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_829_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_829_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_829_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_829_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_829_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_829_7 (v_829_8)))))))))

theorem rs_828 : recsK7OK T qscale den6 d14 lamN lamD l7 828 2 = true := recsK7OK_succ (lo := 828) (n := 1) r_828 (r_829)

end BeatAvg.K.K7
