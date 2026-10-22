import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_117 : treeK7OK l7 117 = true := by decide +kernel

theorem n_117 : (recAt l7 117).2.2.2.length ≤ 160 := by decide +kernel

theorem v_117_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 0 16 = true := by decide +kernel

theorem v_117_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 16 16 = true := by decide +kernel

theorem v_117_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 32 16 = true := by decide +kernel

theorem v_117_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 48 16 = true := by decide +kernel

theorem v_117_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 64 16 = true := by decide +kernel

theorem v_117_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 80 16 = true := by decide +kernel

theorem v_117_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 96 16 = true := by decide +kernel

theorem v_117_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 112 16 = true := by decide +kernel

theorem v_117_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 128 16 = true := by decide +kernel

theorem v_117_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 117 144 16 = true := by decide +kernel

theorem r_117 : recsK7OK T qscale den6 d14 lamN lamD l7 117 1 = true := recK7_of (n := 160) t_117 n_117 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_117_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_117_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_117_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_117_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_117_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_117_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_117_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_117_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_117_8 (v_117_9))))))))))

theorem t_118 : treeK7OK l7 118 = true := by decide +kernel

theorem n_118 : (recAt l7 118).2.2.2.length ≤ 96 := by decide +kernel

theorem v_118_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 118 0 16 = true := by decide +kernel

theorem v_118_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 118 16 16 = true := by decide +kernel

theorem v_118_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 118 32 16 = true := by decide +kernel

theorem v_118_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 118 48 16 = true := by decide +kernel

theorem v_118_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 118 64 16 = true := by decide +kernel

theorem v_118_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 118 80 16 = true := by decide +kernel

theorem r_118 : recsK7OK T qscale den6 d14 lamN lamD l7 118 1 = true := recK7_of (n := 96) t_118 n_118 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_118_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_118_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_118_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_118_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_118_4 (v_118_5))))))

theorem t_119 : treeK7OK l7 119 = true := by decide +kernel

theorem n_119 : (recAt l7 119).2.2.2.length ≤ 112 := by decide +kernel

theorem v_119_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 119 0 16 = true := by decide +kernel

theorem v_119_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 119 16 16 = true := by decide +kernel

theorem v_119_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 119 32 16 = true := by decide +kernel

theorem v_119_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 119 48 16 = true := by decide +kernel

theorem v_119_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 119 64 16 = true := by decide +kernel

theorem v_119_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 119 80 16 = true := by decide +kernel

theorem v_119_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 119 96 16 = true := by decide +kernel

theorem r_119 : recsK7OK T qscale den6 d14 lamN lamD l7 119 1 = true := recK7_of (n := 112) t_119 n_119 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_119_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_119_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_119_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_119_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_119_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_119_5 (v_119_6)))))))

theorem rs_117 : recsK7OK T qscale den6 d14 lamN lamD l7 117 3 = true := recsK7OK_succ (lo := 117) (n := 2) r_117 (recsK7OK_succ (lo := 118) (n := 1) r_118 (r_119))

end BeatAvg.K.K7
