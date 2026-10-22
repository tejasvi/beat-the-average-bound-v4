import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_921 : treeK7OK l7 921 = true := by decide +kernel

theorem n_921 : (recAt l7 921).2.2.2.length ≤ 128 := by decide +kernel

theorem v_921_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 0 16 = true := by decide +kernel

theorem v_921_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 16 16 = true := by decide +kernel

theorem v_921_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 32 16 = true := by decide +kernel

theorem v_921_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 48 16 = true := by decide +kernel

theorem v_921_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 64 16 = true := by decide +kernel

theorem v_921_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 80 16 = true := by decide +kernel

theorem v_921_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 96 16 = true := by decide +kernel

theorem v_921_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 921 112 16 = true := by decide +kernel

theorem r_921 : recsK7OK T qscale den6 d14 lamN lamD l7 921 1 = true := recK7_of (n := 128) t_921 n_921 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_921_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_921_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_921_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_921_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_921_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_921_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_921_6 (v_921_7))))))))

theorem t_922 : treeK7OK l7 922 = true := by decide +kernel

theorem n_922 : (recAt l7 922).2.2.2.length ≤ 192 := by decide +kernel

theorem v_922_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 0 16 = true := by decide +kernel

theorem v_922_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 16 16 = true := by decide +kernel

theorem v_922_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 32 16 = true := by decide +kernel

theorem v_922_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 48 16 = true := by decide +kernel

theorem v_922_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 64 16 = true := by decide +kernel

theorem v_922_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 80 16 = true := by decide +kernel

theorem v_922_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 96 16 = true := by decide +kernel

theorem v_922_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 112 16 = true := by decide +kernel

theorem v_922_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 128 16 = true := by decide +kernel

theorem v_922_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 144 16 = true := by decide +kernel

theorem v_922_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 160 16 = true := by decide +kernel

theorem v_922_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 922 176 16 = true := by decide +kernel

theorem r_922 : recsK7OK T qscale den6 d14 lamN lamD l7 922 1 = true := recK7_of (n := 192) t_922 n_922 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_922_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_922_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_922_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_922_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_922_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_922_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_922_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_922_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_922_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_922_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_922_10 (v_922_11))))))))))))

theorem t_923 : treeK7OK l7 923 = true := by decide +kernel

theorem n_923 : (recAt l7 923).2.2.2.length ≤ 48 := by decide +kernel

theorem v_923_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 923 0 16 = true := by decide +kernel

theorem v_923_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 923 16 16 = true := by decide +kernel

theorem v_923_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 923 32 16 = true := by decide +kernel

theorem r_923 : recsK7OK T qscale den6 d14 lamN lamD l7 923 1 = true := recK7_of (n := 48) t_923 n_923 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_923_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_923_1 (v_923_2)))

theorem rs_921 : recsK7OK T qscale den6 d14 lamN lamD l7 921 3 = true := recsK7OK_succ (lo := 921) (n := 2) r_921 (recsK7OK_succ (lo := 922) (n := 1) r_922 (r_923))

end BeatAvg.K.K7
