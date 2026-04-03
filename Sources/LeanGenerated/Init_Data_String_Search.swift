// Swift v3 compiler output
// Module: src.Init.Data.String.Search
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// String.toNat?
@inline(__always) public func `String_toNat?`(_ s: String) -> Nat? {
  let _x_1: Nat = 0
  let _x_2: Nat = _x_1
  let _x_3: Nat = _x_2
  let _x_4: Nat = String_utf8ByteSize(s)
  let _x_5: Nat = _x_4
  let _x_6: Nat = _x_5
  let _x_7: String_Slice = String_Slice(s, _x_3, _x_6)
  return `String_Slice_toNat?`(_x_7)
}

/// String.toInt?
@inline(__always) public func `String_toInt?`(_ s: String) -> SignedNat? {
  let _x_1: Nat = 0
  let _x_2: Nat = _x_1
  let _x_3: Nat = _x_2
  let _x_4: Nat = String_utf8ByteSize(s)
  let _x_5: Nat = _x_4
  let _x_6: Nat = _x_5
  let _x_7: String_Slice = String_Slice(s, _x_3, _x_6)
  return `String_Slice_toInt?`(_x_7)
}

/// String.toInt!
@inline(__always) public func `String_toInt!`(_ s: String) -> SignedNat {
  let _x_1: Nat = 0
  let _x_2: Nat = _x_1
  let _x_3: Nat = _x_2
  let _x_4: Nat = String_utf8ByteSize(s)
  let _x_5: Nat = _x_4
  let _x_6: Nat = _x_5
  let _x_7: String_Slice = String_Slice(s, _x_3, _x_6)
  let _x_9: SignedNat? = `String_Slice_toInt?`(_x_7)
  if let val_12 = _x_9 {
    return val_12
  } else {
    let _x_10: String = "Int expected"
    return panic(_x_10)
  }
}

/// String.isInt
@inline(__always) public func String_isInt(_ s: String) -> Bool {
  let _x_1: Nat = 0
  let _x_2: Nat = _x_1
  let _x_3: Nat = _x_2
  let _x_4: Nat = String_utf8ByteSize(s)
  let _x_5: Nat = _x_4
  let _x_6: Nat = _x_5
  let _x_7: String_Slice = String_Slice(s, _x_3, _x_6)
  return String_Slice_isInt(_x_7)
}

/// String.toNat!
@inline(__always) public func `String_toNat!`(_ s: String) -> Nat {
  let _x_1: Nat = 0
  let _x_2: Nat = _x_1
  let _x_3: Nat = _x_2
  let _x_4: Nat = String_utf8ByteSize(s)
  let _x_5: Nat = _x_4
  let _x_6: Nat = _x_5
  let _x_7: String_Slice = String_Slice(s, _x_3, _x_6)
  return `String_Slice_toNat!`(_x_7)
}

