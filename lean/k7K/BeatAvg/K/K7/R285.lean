import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_889 : treeK7OK l7 889 = true := by decide +kernel

theorem n_889 : (recAt l7 889).2.2.2.length ≤ 128 := by decide +kernel

theorem v_889_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 0 16 = true := by decide +kernel

theorem v_889_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 16 16 = true := by decide +kernel

theorem v_889_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 32 16 = true := by decide +kernel

theorem v_889_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 48 16 = true := by decide +kernel

theorem v_889_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 64 16 = true := by decide +kernel

theorem v_889_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 80 16 = true := by decide +kernel

theorem v_889_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 96 16 = true := by decide +kernel

theorem v_889_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 889 112 16 = true := by decide +kernel

theorem r_889 : recsK7OK T qscale den6 d14 lamN lamD l7 889 1 = true := recK7_of (n := 128) t_889 n_889 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_889_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_889_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_889_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_889_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_889_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_889_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_889_6 (v_889_7))))))))

theorem t_890 : treeK7OK l7 890 = true := by decide +kernel

theorem n_890 : (recAt l7 890).2.2.2.length ≤ 96 := by decide +kernel

theorem v_890_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 890 0 16 = true := by decide +kernel

theorem v_890_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 890 16 16 = true := by decide +kernel

theorem v_890_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 890 32 16 = true := by decide +kernel

theorem v_890_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 890 48 16 = true := by decide +kernel

theorem v_890_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 890 64 16 = true := by decide +kernel

theorem v_890_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 890 80 16 = true := by decide +kernel

theorem r_890 : recsK7OK T qscale den6 d14 lamN lamD l7 890 1 = true := recK7_of (n := 96) t_890 n_890 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_890_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_890_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_890_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_890_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_890_4 (v_890_5))))))

theorem t_891 : treeK7OK l7 891 = true := by decide +kernel

theorem n_891 : (recAt l7 891).2.2.2.length ≤ 64 := by decide +kernel

theorem v_891_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 891 0 16 = true := by decide +kernel

theorem v_891_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 891 16 16 = true := by decide +kernel

theorem v_891_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 891 32 16 = true := by decide +kernel

theorem v_891_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 891 48 16 = true := by decide +kernel

theorem r_891 : recsK7OK T qscale den6 d14 lamN lamD l7 891 1 = true := recK7_of (n := 64) t_891 n_891 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_891_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_891_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_891_2 (v_891_3))))

theorem rs_889 : recsK7OK T qscale den6 d14 lamN lamD l7 889 3 = true := recsK7OK_succ (lo := 889) (n := 2) r_889 (recsK7OK_succ (lo := 890) (n := 1) r_890 (r_891))

end BeatAvg.K.K7
