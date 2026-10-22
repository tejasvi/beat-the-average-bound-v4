import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_120 : treeK7OK l7 120 = true := by decide +kernel

theorem n_120 : (recAt l7 120).2.2.2.length ≤ 128 := by decide +kernel

theorem v_120_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 0 16 = true := by decide +kernel

theorem v_120_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 16 16 = true := by decide +kernel

theorem v_120_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 32 16 = true := by decide +kernel

theorem v_120_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 48 16 = true := by decide +kernel

theorem v_120_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 64 16 = true := by decide +kernel

theorem v_120_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 80 16 = true := by decide +kernel

theorem v_120_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 96 16 = true := by decide +kernel

theorem v_120_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 120 112 16 = true := by decide +kernel

theorem r_120 : recsK7OK T qscale den6 d14 lamN lamD l7 120 1 = true := recK7_of (n := 128) t_120 n_120 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_120_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_120_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_120_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_120_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_120_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_120_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_120_6 (v_120_7))))))))

theorem t_121 : treeK7OK l7 121 = true := by decide +kernel

theorem n_121 : (recAt l7 121).2.2.2.length ≤ 160 := by decide +kernel

theorem v_121_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 0 16 = true := by decide +kernel

theorem v_121_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 16 16 = true := by decide +kernel

theorem v_121_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 32 16 = true := by decide +kernel

theorem v_121_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 48 16 = true := by decide +kernel

theorem v_121_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 64 16 = true := by decide +kernel

theorem v_121_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 80 16 = true := by decide +kernel

theorem v_121_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 96 16 = true := by decide +kernel

theorem v_121_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 112 16 = true := by decide +kernel

theorem v_121_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 128 16 = true := by decide +kernel

theorem v_121_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 121 144 16 = true := by decide +kernel

theorem r_121 : recsK7OK T qscale den6 d14 lamN lamD l7 121 1 = true := recK7_of (n := 160) t_121 n_121 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_121_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_121_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_121_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_121_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_121_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_121_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_121_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_121_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_121_8 (v_121_9))))))))))

theorem t_122 : treeK7OK l7 122 = true := by decide +kernel

theorem n_122 : (recAt l7 122).2.2.2.length ≤ 32 := by decide +kernel

theorem v_122_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 122 0 16 = true := by decide +kernel

theorem v_122_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 122 16 16 = true := by decide +kernel

theorem r_122 : recsK7OK T qscale den6 d14 lamN lamD l7 122 1 = true := recK7_of (n := 32) t_122 n_122 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_122_0 (v_122_1))

theorem t_123 : treeK7OK l7 123 = true := by decide +kernel

theorem n_123 : (recAt l7 123).2.2.2.length ≤ 96 := by decide +kernel

theorem v_123_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 123 0 16 = true := by decide +kernel

theorem v_123_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 123 16 16 = true := by decide +kernel

theorem v_123_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 123 32 16 = true := by decide +kernel

theorem v_123_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 123 48 16 = true := by decide +kernel

theorem v_123_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 123 64 16 = true := by decide +kernel

theorem v_123_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 123 80 16 = true := by decide +kernel

theorem r_123 : recsK7OK T qscale den6 d14 lamN lamD l7 123 1 = true := recK7_of (n := 96) t_123 n_123 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_123_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_123_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_123_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_123_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_123_4 (v_123_5))))))

theorem rs_120 : recsK7OK T qscale den6 d14 lamN lamD l7 120 4 = true := recsK7OK_succ (lo := 120) (n := 3) r_120 (recsK7OK_succ (lo := 121) (n := 2) r_121 (recsK7OK_succ (lo := 122) (n := 1) r_122 (r_123)))

end BeatAvg.K.K7
