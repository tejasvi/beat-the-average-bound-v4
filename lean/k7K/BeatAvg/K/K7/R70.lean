import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_263 : treeK7OK l7 263 = true := by decide +kernel

theorem n_263 : (recAt l7 263).2.2.2.length ≤ 192 := by decide +kernel

theorem v_263_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 0 16 = true := by decide +kernel

theorem v_263_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 16 16 = true := by decide +kernel

theorem v_263_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 32 16 = true := by decide +kernel

theorem v_263_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 48 16 = true := by decide +kernel

theorem v_263_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 64 16 = true := by decide +kernel

theorem v_263_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 80 16 = true := by decide +kernel

theorem v_263_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 96 16 = true := by decide +kernel

theorem v_263_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 112 16 = true := by decide +kernel

theorem v_263_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 128 16 = true := by decide +kernel

theorem v_263_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 144 16 = true := by decide +kernel

theorem v_263_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 160 16 = true := by decide +kernel

theorem v_263_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 263 176 16 = true := by decide +kernel

theorem r_263 : recsK7OK T qscale den6 d14 lamN lamD l7 263 1 = true := recK7_of (n := 192) t_263 n_263 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_263_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_263_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_263_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_263_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_263_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_263_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_263_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_263_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_263_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_263_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_263_10 (v_263_11))))))))))))

theorem t_264 : treeK7OK l7 264 = true := by decide +kernel

theorem n_264 : (recAt l7 264).2.2.2.length ≤ 176 := by decide +kernel

theorem v_264_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 0 16 = true := by decide +kernel

theorem v_264_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 16 16 = true := by decide +kernel

theorem v_264_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 32 16 = true := by decide +kernel

theorem v_264_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 48 16 = true := by decide +kernel

theorem v_264_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 64 16 = true := by decide +kernel

theorem v_264_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 80 16 = true := by decide +kernel

theorem v_264_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 96 16 = true := by decide +kernel

theorem v_264_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 112 16 = true := by decide +kernel

theorem v_264_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 128 16 = true := by decide +kernel

theorem v_264_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 144 16 = true := by decide +kernel

theorem v_264_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 264 160 16 = true := by decide +kernel

theorem r_264 : recsK7OK T qscale den6 d14 lamN lamD l7 264 1 = true := recK7_of (n := 176) t_264 n_264 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_264_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_264_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_264_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_264_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_264_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_264_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_264_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_264_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_264_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_264_9 (v_264_10)))))))))))

theorem rs_263 : recsK7OK T qscale den6 d14 lamN lamD l7 263 2 = true := recsK7OK_succ (lo := 263) (n := 1) r_263 (r_264)

end BeatAvg.K.K7
