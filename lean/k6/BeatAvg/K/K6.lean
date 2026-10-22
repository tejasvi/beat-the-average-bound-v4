import BeatAvg.Check.Assembly
import BeatAvg.Prob.NonVacuity
import BeatAvg.K.K6.Pre
import BeatAvg.K.K6.C0
import BeatAvg.K.K6.C1
import BeatAvg.K.K6.C2
import BeatAvg.K.K6.C3
import BeatAvg.K.K6.C4
import BeatAvg.K.K6.C5
import BeatAvg.K.K6.C6
import BeatAvg.K.K6.C7
import BeatAvg.K.K6.C8
import BeatAvg.K.K6.C9
import BeatAvg.K.K6.C10
import BeatAvg.K.K6.C11
import BeatAvg.K.K6.C12
import BeatAvg.K.K6.C13
import BeatAvg.K.K6.C14
import BeatAvg.K.K6.C15
import BeatAvg.K.K6.C16
import BeatAvg.K.K6.C17
import BeatAvg.K.K6.C18
import BeatAvg.K.K6.C19
import BeatAvg.K.K6.C20
import BeatAvg.K.K6.C21
import BeatAvg.K.K6.C22
import BeatAvg.K.K6.C23
import BeatAvg.K.K6.C24
import BeatAvg.K.K6.C25
import BeatAvg.K.K6.C26
import BeatAvg.K.K6.C27
import BeatAvg.K.K6.C28
import BeatAvg.K.K6.C29
import BeatAvg.K.K6.C30
import BeatAvg.K.K6.C31
import BeatAvg.K.K6.C32
import BeatAvg.K.K6.C33
import BeatAvg.K.K6.C34
import BeatAvg.K.K6.C35
import BeatAvg.K.K6.C36
import BeatAvg.K.K6.C37
import BeatAvg.K.K6.C38
import BeatAvg.K.K6.C39
import BeatAvg.K.K6.C40
import BeatAvg.K.K6.C41
import BeatAvg.K.K6.C42
import BeatAvg.K.K6.C43
import BeatAvg.K.K6.C44
import BeatAvg.K.K6.C45
import BeatAvg.K.K6.C46
import BeatAvg.K.K6.C47
import BeatAvg.K.K6.C48
import BeatAvg.K.K6.C49
import BeatAvg.K.K6.C50
import BeatAvg.K.K6.C51
import BeatAvg.K.K6.C52
import BeatAvg.K.K6.C53
import BeatAvg.K.K6.C54
import BeatAvg.K.K6.C55
import BeatAvg.K.K6.C56
import BeatAvg.K.K6.C57
import BeatAvg.K.K6.C58
import BeatAvg.K.K6.C59
import BeatAvg.K.K6.C60
import BeatAvg.K.K6.C61
import BeatAvg.K.K6.C62
import BeatAvg.K.K6.C63
import BeatAvg.K.K6.C64

/-! Kernel-checked bound from the certificate `K6` (shards in BeatAvg/K/K6/). -/

open BeatAvg.Check

namespace BeatAvg.K.K6

theorem all_chunks : ∀ i < 65, directChunk 6 BeatAvg.Data.K6.blocks BeatAvg.Data.K6.lamN BeatAvg.Data.K6.lamD BeatAvg.Data.K6.den BeatAvg.Data.K6.qscale (BeatAvg.Check.chainList [0] BeatAvg.Data.K6.levels) (i * 20) 20 = true := by
  intro i hi
  interval_cases i
  exacts [chunk_0, chunk_1, chunk_2, chunk_3, chunk_4, chunk_5, chunk_6, chunk_7, chunk_8, chunk_9, chunk_10, chunk_11, chunk_12, chunk_13, chunk_14, chunk_15, chunk_16, chunk_17, chunk_18, chunk_19, chunk_20, chunk_21, chunk_22, chunk_23, chunk_24, chunk_25, chunk_26, chunk_27, chunk_28, chunk_29, chunk_30, chunk_31, chunk_32, chunk_33, chunk_34, chunk_35, chunk_36, chunk_37, chunk_38, chunk_39, chunk_40, chunk_41, chunk_42, chunk_43, chunk_44, chunk_45, chunk_46, chunk_47, chunk_48, chunk_49, chunk_50, chunk_51, chunk_52, chunk_53, chunk_54, chunk_55, chunk_56, chunk_57, chunk_58, chunk_59, chunk_60, chunk_61, chunk_62, chunk_63, chunk_64]

theorem check_ok : (chainOK 3 [0] BeatAvg.Data.K6.levels &&
    directOKT 6 BeatAvg.Data.K6.blocks BeatAvg.Data.K6.lamN BeatAvg.Data.K6.lamD BeatAvg.Data.K6.den BeatAvg.Data.K6.qscale (BeatAvg.Check.chainList [0] BeatAvg.Data.K6.levels)) = true := by
  rw [Bool.and_eq_true]
  exact ⟨chain_ok, directOKT_of_chunks pre_ok 20 65 len_ok all_chunks⟩

end BeatAvg.K.K6

namespace BeatAvg.K

theorem upperBound_k6 : UpperBound (201273 / 500000) := by
  have hb := upperBound_of_direct 6 BeatAvg.Data.K6.levels rfl BeatAvg.Data.K6.blocks BeatAvg.Data.K6.lamN BeatAvg.Data.K6.lamD BeatAvg.Data.K6.den BeatAvg.Data.K6.qscale
    BeatAvg.K.K6.check_ok (flagMethodSound (by norm_num))
  simpa [BeatAvg.Data.K6.lamN, BeatAvg.Data.K6.lamD] using hb

theorem upperBoundRV_k6 : UpperBoundRV (201273 / 500000) := upperBoundRV_of_upperBound upperBound_k6

theorem C639_le_k6 : C639 ≤ 201273 / 500000 := C639_le_of_upperBound upperBound_k6

end BeatAvg.K
