import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_191 : treeK7OK l7 191 = true := by decide +kernel

theorem n_191 : (recAt l7 191).2.2.2.length ≤ 48 := by decide +kernel

theorem v_191_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 191 0 16 = true := by decide +kernel

theorem v_191_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 191 16 16 = true := by decide +kernel

theorem v_191_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 191 32 16 = true := by decide +kernel

theorem r_191 : recsK7OK T qscale den6 d14 lamN lamD l7 191 1 = true := recK7_of (n := 48) t_191 n_191 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_191_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_191_1 (v_191_2)))

theorem t_192 : treeK7OK l7 192 = true := by decide +kernel

theorem n_192 : (recAt l7 192).2.2.2.length ≤ 160 := by decide +kernel

theorem v_192_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 0 16 = true := by decide +kernel

theorem v_192_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 16 16 = true := by decide +kernel

theorem v_192_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 32 16 = true := by decide +kernel

theorem v_192_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 48 16 = true := by decide +kernel

theorem v_192_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 64 16 = true := by decide +kernel

theorem v_192_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 80 16 = true := by decide +kernel

theorem v_192_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 96 16 = true := by decide +kernel

theorem v_192_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 112 16 = true := by decide +kernel

theorem v_192_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 128 16 = true := by decide +kernel

theorem v_192_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 192 144 16 = true := by decide +kernel

theorem r_192 : recsK7OK T qscale den6 d14 lamN lamD l7 192 1 = true := recK7_of (n := 160) t_192 n_192 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_192_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_192_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_192_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_192_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_192_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_192_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_192_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_192_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_192_8 (v_192_9))))))))))

theorem t_193 : treeK7OK l7 193 = true := by decide +kernel

theorem n_193 : (recAt l7 193).2.2.2.length ≤ 112 := by decide +kernel

theorem v_193_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 193 0 16 = true := by decide +kernel

theorem v_193_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 193 16 16 = true := by decide +kernel

theorem v_193_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 193 32 16 = true := by decide +kernel

theorem v_193_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 193 48 16 = true := by decide +kernel

theorem v_193_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 193 64 16 = true := by decide +kernel

theorem v_193_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 193 80 16 = true := by decide +kernel

theorem v_193_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 193 96 16 = true := by decide +kernel

theorem r_193 : recsK7OK T qscale den6 d14 lamN lamD l7 193 1 = true := recK7_of (n := 112) t_193 n_193 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_193_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_193_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_193_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_193_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_193_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_193_5 (v_193_6)))))))

theorem t_194 : treeK7OK l7 194 = true := by decide +kernel

theorem n_194 : (recAt l7 194).2.2.2.length ≤ 64 := by decide +kernel

theorem v_194_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 194 0 16 = true := by decide +kernel

theorem v_194_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 194 16 16 = true := by decide +kernel

theorem v_194_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 194 32 16 = true := by decide +kernel

theorem v_194_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 194 48 16 = true := by decide +kernel

theorem r_194 : recsK7OK T qscale den6 d14 lamN lamD l7 194 1 = true := recK7_of (n := 64) t_194 n_194 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_194_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_194_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_194_2 (v_194_3))))

theorem rs_191 : recsK7OK T qscale den6 d14 lamN lamD l7 191 4 = true := recsK7OK_succ (lo := 191) (n := 3) r_191 (recsK7OK_succ (lo := 192) (n := 2) r_192 (recsK7OK_succ (lo := 193) (n := 1) r_193 (r_194)))

end BeatAvg.K.K7
