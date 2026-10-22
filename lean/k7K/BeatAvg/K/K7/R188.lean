import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_638 : treeK7OK l7 638 = true := by decide +kernel

theorem n_638 : (recAt l7 638).2.2.2.length ≤ 96 := by decide +kernel

theorem v_638_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 638 0 16 = true := by decide +kernel

theorem v_638_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 638 16 16 = true := by decide +kernel

theorem v_638_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 638 32 16 = true := by decide +kernel

theorem v_638_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 638 48 16 = true := by decide +kernel

theorem v_638_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 638 64 16 = true := by decide +kernel

theorem v_638_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 638 80 16 = true := by decide +kernel

theorem r_638 : recsK7OK T qscale den6 d14 lamN lamD l7 638 1 = true := recK7_of (n := 96) t_638 n_638 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_638_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_638_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_638_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_638_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_638_4 (v_638_5))))))

theorem t_639 : treeK7OK l7 639 = true := by decide +kernel

theorem n_639 : (recAt l7 639).2.2.2.length ≤ 160 := by decide +kernel

theorem v_639_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 0 16 = true := by decide +kernel

theorem v_639_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 16 16 = true := by decide +kernel

theorem v_639_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 32 16 = true := by decide +kernel

theorem v_639_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 48 16 = true := by decide +kernel

theorem v_639_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 64 16 = true := by decide +kernel

theorem v_639_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 80 16 = true := by decide +kernel

theorem v_639_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 96 16 = true := by decide +kernel

theorem v_639_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 112 16 = true := by decide +kernel

theorem v_639_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 128 16 = true := by decide +kernel

theorem v_639_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 639 144 16 = true := by decide +kernel

theorem r_639 : recsK7OK T qscale den6 d14 lamN lamD l7 639 1 = true := recK7_of (n := 160) t_639 n_639 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_639_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_639_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_639_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_639_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_639_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_639_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_639_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_639_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_639_8 (v_639_9))))))))))

theorem t_640 : treeK7OK l7 640 = true := by decide +kernel

theorem n_640 : (recAt l7 640).2.2.2.length ≤ 48 := by decide +kernel

theorem v_640_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 640 0 16 = true := by decide +kernel

theorem v_640_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 640 16 16 = true := by decide +kernel

theorem v_640_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 640 32 16 = true := by decide +kernel

theorem r_640 : recsK7OK T qscale den6 d14 lamN lamD l7 640 1 = true := recK7_of (n := 48) t_640 n_640 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_640_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_640_1 (v_640_2)))

theorem rs_638 : recsK7OK T qscale den6 d14 lamN lamD l7 638 3 = true := recsK7OK_succ (lo := 638) (n := 2) r_638 (recsK7OK_succ (lo := 639) (n := 1) r_639 (r_640))

end BeatAvg.K.K7
