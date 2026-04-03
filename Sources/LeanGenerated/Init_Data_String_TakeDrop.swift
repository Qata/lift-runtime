// Swift v3 compiler output
// Module: src.Init.Data.String.TakeDrop
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// String.takeRight
public func String_takeRight(_ s: String, _ n: Nat) -> String {
  let _x_1: Nat = 0
  let _x_2: Nat = _x_1
  let _x_3: Nat = _x_2
  let _x_4: Nat = String_utf8ByteSize(s)
  let _x_5: Nat = _x_4
  let _x_6: Nat = _x_5
  let _x_7: String_Slice = String_Slice(s, _x_3, _x_6)
  let _x_8: String_Slice_Pos = String_Slice_Pos(_x_7, _x_5)
  let _x_9: String_Slice_Pos = String_Slice_Pos_prevn(_x_7, _x_8, n)
  let _x_10: Nat = _x_9.offset
  let _x_11: Nat = _x_10
  let _x_12: Nat = _x_11
  let _x_13: Nat = _x_12
  let _x_14: String_Slice = String_Slice(s, _x_13, _x_6)
  return String_Slice_toString(_x_14)
}

