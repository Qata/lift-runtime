// Swift v3 compiler output
// Module: src.Init.Data.String.Lemmas.Pattern.String.ForwardSearcher
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.String.Lemmas.Pattern.String.ForwardSearcher.0.String.Slice.Pattern.Model.ForwardSliceSearcher.prefixFunction.go
public func String_Slice_Pattern_Model_ForwardSliceSearcher_prefixFunction_go(_ pat: Array<UInt8>, _ stackPos: Nat, _ k: Nat) -> Nat {
  let _x_1: Nat = 1
  let _x_2 = stackPos + _x_1
  let _x_3 = String_Slice_Pattern_Model_ForwardSliceSearcher_instDecidablePartialMatch(pat, pat, k, _x_2)
  if Decidable_decide(_x_3) {
    return k
  } else {
    let _x_4 = k - _x_1
    return String_Slice_Pattern_Model_ForwardSliceSearcher_prefixFunction_go(pat, stackPos, _x_4)
  }
}

/// _private.src.Init.Data.String.Lemmas.Pattern.String.ForwardSearcher.0.String.Slice.Pattern.Model.ForwardSliceSearcher.prefixFunctionRecurrence
public func String_Slice_Pattern_Model_ForwardSliceSearcher_prefixFunctionRecurrence(_ pat: Array<UInt8>, _ stackPos: Nat, _ guess: Nat) -> Nat {
  let _x_1 = ByteArray_get(pat, guess)
  let _x_2 = ByteArray_get(pat, stackPos)
  let _x_3 = _x_1 == _x_2
  if _x_3 {
    let _x_12: Nat = 1
    return guess + _x_12
  } else {
    let _x_5: Nat = 0
    let _x_6 = guess == _x_5
    if _x_6 {
      return _x_5
    } else {
      let _x_7: Nat = 1
      let _x_8 = guess - _x_7
      let _x_9 = String_Slice_Pattern_Model_ForwardSliceSearcher_prefixFunction_go(pat, _x_8, _x_8)
      return String_Slice_Pattern_Model_ForwardSliceSearcher_prefixFunctionRecurrence(pat, stackPos, _x_9)
    }
  }
}

/// _private.src.Init.Data.String.Lemmas.Pattern.String.ForwardSearcher.0.String.Slice.Pattern.Model.ForwardSliceSearcher.instDecidablePartialMatch
public func String_Slice_Pattern_Model_ForwardSliceSearcher_instDecidablePartialMatch(_ pat: Array<UInt8>, _ s: Array<UInt8>, _ needlePos: Nat, _ stackPos: Nat) -> Decidable {
  func _f_1(_ n: Nat) -> Decidable {
    let _x_2 = ByteArray_get(pat, n)
    let _x_3 = stackPos - needlePos
    let _x_4 = _x_3 + n
    let _x_5 = ByteArray_get(s, _x_4)
    return instDecidableEqUInt8(_x_2, _x_5)
  }
  func _f_7() -> Decidable {
    return Nat_decidableBallLT(needlePos, _f_1)
  }
  let _x_9 = ByteArray_size(s)
  let _x_10 = Nat_decLe(stackPos, _x_9)
  let _x_11 = Nat_decLe(needlePos, stackPos)
  func _f_12() -> Decidable {
    return exists_prop_decidable(_x_11, _f_7)
  }
  func _f_14() -> Decidable {
    let _x_15 = ByteArray_size(pat)
    let _x_16 = Nat_decLe(needlePos, _x_15)
    return exists_prop_decidable(_x_16, _f_12)
  }
  let _x_18 = exists_prop_decidable(_x_10, _f_14)
  if Decidable_decide(_x_18) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

