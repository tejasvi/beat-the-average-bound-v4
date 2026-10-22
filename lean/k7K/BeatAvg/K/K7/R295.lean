import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_917 : treeK7OK l7 917 = true := by decide +kernel

theorem n_917 : (recAt l7 917).2.2.2.length ≤ 112 := by decide +kernel

theorem v_917_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 917 0 16 = true := by decide +kernel

theorem v_917_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 917 16 16 = true := by decide +kernel

theorem v_917_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 917 32 16 = true := by decide +kernel

theorem v_917_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 917 48 16 = true := by decide +kernel

theorem v_917_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 917 64 16 = true := by decide +kernel

theorem v_917_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 917 80 16 = true := by decide +kernel

theorem v_917_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 917 96 16 = true := by decide +kernel

theorem r_917 : recsK7OK T qscale den6 d14 lamN lamD l7 917 1 = true := recK7_of (n := 112) t_917 n_917 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_917_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_917_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_917_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_917_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_917_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_917_5 (v_917_6)))))))

theorem t_918 : treeK7OK l7 918 = true := by decide +kernel

theorem n_918 : (recAt l7 918).2.2.2.length ≤ 192 := by decide +kernel

theorem v_918_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 0 16 = true := by decide +kernel

theorem v_918_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 16 16 = true := by decide +kernel

theorem v_918_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 32 16 = true := by decide +kernel

theorem v_918_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 48 16 = true := by decide +kernel

theorem v_918_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 64 16 = true := by decide +kernel

theorem v_918_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 80 16 = true := by decide +kernel

theorem v_918_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 96 16 = true := by decide +kernel

theorem v_918_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 112 16 = true := by decide +kernel

theorem v_918_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 128 16 = true := by decide +kernel

theorem v_918_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 144 16 = true := by decide +kernel

theorem v_918_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 160 16 = true := by decide +kernel

theorem v_918_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 918 176 16 = true := by decide +kernel

theorem r_918 : recsK7OK T qscale den6 d14 lamN lamD l7 918 1 = true := recK7_of (n := 192) t_918 n_918 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_918_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_918_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_918_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_918_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_918_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_918_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_918_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_918_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_918_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_918_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_918_10 (v_918_11))))))))))))

theorem rs_917 : recsK7OK T qscale den6 d14 lamN lamD l7 917 2 = true := recsK7OK_succ (lo := 917) (n := 1) r_917 (r_918)

end BeatAvg.K.K7
