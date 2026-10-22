import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_267 : treeK7OK l7 267 = true := by decide +kernel

theorem n_267 : (recAt l7 267).2.2.2.length ≤ 144 := by decide +kernel

theorem v_267_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 0 16 = true := by decide +kernel

theorem v_267_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 16 16 = true := by decide +kernel

theorem v_267_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 32 16 = true := by decide +kernel

theorem v_267_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 48 16 = true := by decide +kernel

theorem v_267_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 64 16 = true := by decide +kernel

theorem v_267_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 80 16 = true := by decide +kernel

theorem v_267_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 96 16 = true := by decide +kernel

theorem v_267_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 112 16 = true := by decide +kernel

theorem v_267_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 267 128 16 = true := by decide +kernel

theorem r_267 : recsK7OK T qscale den6 d14 lamN lamD l7 267 1 = true := recK7_of (n := 144) t_267 n_267 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_267_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_267_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_267_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_267_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_267_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_267_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_267_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_267_7 (v_267_8)))))))))

theorem t_268 : treeK7OK l7 268 = true := by decide +kernel

theorem n_268 : (recAt l7 268).2.2.2.length ≤ 64 := by decide +kernel

theorem v_268_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 268 0 16 = true := by decide +kernel

theorem v_268_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 268 16 16 = true := by decide +kernel

theorem v_268_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 268 32 16 = true := by decide +kernel

theorem v_268_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 268 48 16 = true := by decide +kernel

theorem r_268 : recsK7OK T qscale den6 d14 lamN lamD l7 268 1 = true := recK7_of (n := 64) t_268 n_268 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_268_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_268_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_268_2 (v_268_3))))

theorem t_269 : treeK7OK l7 269 = true := by decide +kernel

theorem n_269 : (recAt l7 269).2.2.2.length ≤ 64 := by decide +kernel

theorem v_269_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 269 0 16 = true := by decide +kernel

theorem v_269_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 269 16 16 = true := by decide +kernel

theorem v_269_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 269 32 16 = true := by decide +kernel

theorem v_269_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 269 48 16 = true := by decide +kernel

theorem r_269 : recsK7OK T qscale den6 d14 lamN lamD l7 269 1 = true := recK7_of (n := 64) t_269 n_269 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_269_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_269_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_269_2 (v_269_3))))

theorem t_270 : treeK7OK l7 270 = true := by decide +kernel

theorem n_270 : (recAt l7 270).2.2.2.length ≤ 112 := by decide +kernel

theorem v_270_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 270 0 16 = true := by decide +kernel

theorem v_270_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 270 16 16 = true := by decide +kernel

theorem v_270_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 270 32 16 = true := by decide +kernel

theorem v_270_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 270 48 16 = true := by decide +kernel

theorem v_270_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 270 64 16 = true := by decide +kernel

theorem v_270_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 270 80 16 = true := by decide +kernel

theorem v_270_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 270 96 16 = true := by decide +kernel

theorem r_270 : recsK7OK T qscale den6 d14 lamN lamD l7 270 1 = true := recK7_of (n := 112) t_270 n_270 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_270_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_270_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_270_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_270_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_270_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_270_5 (v_270_6)))))))

theorem rs_267 : recsK7OK T qscale den6 d14 lamN lamD l7 267 4 = true := recsK7OK_succ (lo := 267) (n := 3) r_267 (recsK7OK_succ (lo := 268) (n := 2) r_268 (recsK7OK_succ (lo := 269) (n := 1) r_269 (r_270)))

end BeatAvg.K.K7
