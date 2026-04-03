// Swift v3 compiler output
// Module: src.Init.Data.UInt.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// UInt64.modn
public func UInt64_modn(_ a: UInt64, _ n: Nat) -> UInt64 {
  let _x_1: Nat = 64
  let _x_3: Nat = 18446744073709551616
  let _x_4: Fin = UInt64_toFin(a)
  let _x_5: Fin = Fin_modn(_x_3, _x_4, n)
  let _x_6: Nat = _x_5.val
  let _x_7: BitVec = Nat_cast(_x_6)
  return UInt64(_x_7)
}

/// UInt16.modn
public func UInt16_modn(_ a: UInt16, _ n: Nat) -> UInt16 {
  let _x_1: Nat = 16
  let _x_3: Nat = 65536
  let _x_4: Fin = UInt16_toFin(a)
  let _x_5: Fin = Fin_modn(_x_3, _x_4, n)
  let _x_6: Nat = _x_5.val
  let _x_7: BitVec = Nat_cast(_x_6)
  return UInt16(_x_7)
}

/// UInt8.toAsciiLower
@inline(__always) public func UInt8_toAsciiLower(_ b: UInt8) -> UInt8 {
  func _jp_1(_ _y_2: Bool) -> UInt8 {
    if _y_2 {
      let _x_3: UInt8 = 0
      return UInt8_add(b, _x_3)
    } else {
      return b
    }
  }
  let _x_5: UInt8 = 0
  let _x_7: Bool = _x_5 <= b
  if _x_7 {
    let _x_8: UInt8 = 0
    let _x_10: Bool = b <= _x_8
    return _jp_1(_x_10    )
  } else {
    return _jp_1(_x_7    )
  }
}

/// UInt8.modn
public func UInt8_modn(_ a: UInt8, _ n: Nat) -> UInt8 {
  let _x_1: Nat = 8
  let _x_3: Nat = 256
  let _x_4: Fin = UInt8_toFin(a)
  let _x_5: Fin = Fin_modn(_x_3, _x_4, n)
  let _x_6: Nat = _x_5.val
  let _x_7: BitVec = Nat_cast(_x_6)
  return UInt8(_x_7)
}

/// UInt32.modn
public func UInt32_modn(_ a: UInt32, _ n: Nat) -> UInt32 {
  let _x_1: Nat = 32
  let _x_3: Nat = 4294967296
  let _x_4: Fin = UInt32_toFin(a)
  let _x_5: Fin = Fin_modn(_x_3, _x_4, n)
  let _x_6: Nat = _x_5.val
  let _x_7: BitVec = Nat_cast(_x_6)
  return UInt32(_x_7)
}

