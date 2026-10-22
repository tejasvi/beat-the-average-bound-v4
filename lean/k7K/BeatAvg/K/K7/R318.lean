import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_968 : treeK7OK l7 968 = true := by decide +kernel

theorem n_968 : (recAt l7 968).2.2.2.length ≤ 160 := by decide +kernel

theorem v_968_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 0 16 = true := by decide +kernel

theorem v_968_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 16 16 = true := by decide +kernel

theorem v_968_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 32 16 = true := by decide +kernel

theorem v_968_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 48 16 = true := by decide +kernel

theorem v_968_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 64 16 = true := by decide +kernel

theorem v_968_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 80 16 = true := by decide +kernel

theorem v_968_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 96 16 = true := by decide +kernel

theorem v_968_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 112 16 = true := by decide +kernel

theorem v_968_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 128 16 = true := by decide +kernel

theorem v_968_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 968 144 16 = true := by decide +kernel

theorem r_968 : recsK7OK T qscale den6 d14 lamN lamD l7 968 1 = true := recK7_of (n := 160) t_968 n_968 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_968_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_968_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_968_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_968_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_968_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_968_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_968_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_968_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_968_8 (v_968_9))))))))))

theorem t_969 : treeK7OK l7 969 = true := by decide +kernel

theorem n_969 : (recAt l7 969).2.2.2.length ≤ 96 := by decide +kernel

theorem v_969_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 969 0 16 = true := by decide +kernel

theorem v_969_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 969 16 16 = true := by decide +kernel

theorem v_969_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 969 32 16 = true := by decide +kernel

theorem v_969_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 969 48 16 = true := by decide +kernel

theorem v_969_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 969 64 16 = true := by decide +kernel

theorem v_969_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 969 80 16 = true := by decide +kernel

theorem r_969 : recsK7OK T qscale den6 d14 lamN lamD l7 969 1 = true := recK7_of (n := 96) t_969 n_969 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_969_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_969_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_969_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_969_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_969_4 (v_969_5))))))

theorem t_970 : treeK7OK l7 970 = true := by decide +kernel

theorem n_970 : (recAt l7 970).2.2.2.length ≤ 112 := by decide +kernel

theorem v_970_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 970 0 16 = true := by decide +kernel

theorem v_970_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 970 16 16 = true := by decide +kernel

theorem v_970_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 970 32 16 = true := by decide +kernel

theorem v_970_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 970 48 16 = true := by decide +kernel

theorem v_970_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 970 64 16 = true := by decide +kernel

theorem v_970_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 970 80 16 = true := by decide +kernel

theorem v_970_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 970 96 16 = true := by decide +kernel

theorem r_970 : recsK7OK T qscale den6 d14 lamN lamD l7 970 1 = true := recK7_of (n := 112) t_970 n_970 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_970_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_970_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_970_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_970_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_970_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_970_5 (v_970_6)))))))

theorem t_971 : treeK7OK l7 971 = true := by decide +kernel

theorem n_971 : (recAt l7 971).2.2.2.length ≤ 64 := by decide +kernel

theorem v_971_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 971 0 16 = true := by decide +kernel

theorem v_971_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 971 16 16 = true := by decide +kernel

theorem v_971_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 971 32 16 = true := by decide +kernel

theorem v_971_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 971 48 16 = true := by decide +kernel

theorem r_971 : recsK7OK T qscale den6 d14 lamN lamD l7 971 1 = true := recK7_of (n := 64) t_971 n_971 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_971_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_971_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_971_2 (v_971_3))))

theorem rs_968 : recsK7OK T qscale den6 d14 lamN lamD l7 968 4 = true := recsK7OK_succ (lo := 968) (n := 3) r_968 (recsK7OK_succ (lo := 969) (n := 2) r_969 (recsK7OK_succ (lo := 970) (n := 1) r_970 (r_971)))

end BeatAvg.K.K7
