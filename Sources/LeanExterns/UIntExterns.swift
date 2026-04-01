// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] UInt32.toNat
public func UInt32_toNat(_ n: UInt32) -> Nat {
  return Nat(UInt(n))
}

/// @[extern] UInt16.ofNatLT
public func UInt16_ofNatLT(_ n: Nat) -> UInt16 {
  return UInt16(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt32.ofNatLT
public func UInt32_ofNatLT(_ n: Nat) -> UInt32 {
  return UInt32(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt64.ofNatLT
public func UInt64_ofNatLT(_ n: Nat) -> UInt64 {
  return UInt64(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] USize.ofNatLT
public func USize_ofNatLT(_ n: Nat) -> UInt {
  return UInt(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt8.ofNat
public func UInt8_ofNat(_ n: Nat) -> UInt8 {
  return UInt8(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt8.ofNatLT
public func UInt8_ofNatLT(_ n: Nat) -> UInt8 {
  return UInt8(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt32.toUInt8
public func UInt32_toUInt8(_ a: UInt32) -> UInt8 {
  return UInt8(truncatingIfNeeded: a)
}

/// @[extern] UInt64.toUInt16
public func UInt64_toUInt16(_ a: UInt64) -> UInt16 {
  return UInt16(truncatingIfNeeded: a)
}

/// @[extern] UInt32.ofNatTruncate
public func UInt32_ofNatTruncate(_ n: Nat) -> UInt32 {
  return UInt32(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt64.ofNat
public func UInt64_ofNat(_ n: Nat) -> UInt64 {
  return UInt64(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt8.toUInt32
public func UInt8_toUInt32(_ a: UInt8) -> UInt32 {
  return UInt32(a)
}

/// @[extern] USize.ofNatTruncate
public func USize_ofNatTruncate(_ n: Nat) -> UInt {
  return UInt(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] USize.ofNat
public func USize_ofNat(_ n: Nat) -> UInt {
  return UInt(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt64.ofNatTruncate
public func UInt64_ofNatTruncate(_ n: Nat) -> UInt64 {
  return UInt64(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt32.ofNat
public func UInt32_ofNat(_ n: Nat) -> UInt32 {
  return UInt32(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt16.ofNatTruncate
public func UInt16_ofNatTruncate(_ n: Nat) -> UInt16 {
  return UInt16(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt8.toUInt64
public func UInt8_toUInt64(_ a: UInt8) -> UInt64 {
  return UInt64(a)
}

/// @[extern] UInt64.toNat
public func UInt64_toNat(_ n: UInt64) -> Nat {
  return Nat(UInt(n))
}

/// @[extern] UInt32.toUInt16
public func UInt32_toUInt16(_ a: UInt32) -> UInt16 {
  return UInt16(truncatingIfNeeded: a)
}

/// @[extern] UInt8.toUInt16
public func UInt8_toUInt16(_ a: UInt8) -> UInt16 {
  return UInt16(a)
}

/// @[extern] UInt8.ofNatTruncate
public func UInt8_ofNatTruncate(_ n: Nat) -> UInt8 {
  return UInt8(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt64.toUInt8
public func UInt64_toUInt8(_ a: UInt64) -> UInt8 {
  return UInt8(truncatingIfNeeded: a)
}

/// @[extern] UInt16.ofNat
public func UInt16_ofNat(_ n: Nat) -> UInt16 {
  return UInt16(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] UInt64.toUInt32
public func UInt64_toUInt32(_ a: UInt64) -> UInt32 {
  return UInt32(truncatingIfNeeded: a)
}

/// @[extern] UInt32.toUInt64
public func UInt32_toUInt64(_ a: UInt32) -> UInt64 {
  return UInt64(a)
}

/// @[extern] UInt16.toUInt8
public func UInt16_toUInt8(_ a: UInt16) -> UInt8 {
  return UInt8(truncatingIfNeeded: a)
}

/// @[extern] USize.toNat
public func USize_toNat(_ n: UInt) -> Nat {
  return Nat(n)
}

/// @[extern] UInt32.sub
public func UInt32_sub(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a &- b
}

/// @[extern] UInt16.toUInt64
public func UInt16_toUInt64(_ a: UInt16) -> UInt64 {
  return UInt64(a)
}

/// @[extern] UInt16.toNat
public func UInt16_toNat(_ n: UInt16) -> Nat {
  return Nat(UInt(n))
}

/// @[extern] USize.sub
public func USize_sub(_ a: UInt, _ b: UInt) -> UInt {
  return a &- b
}

/// @[extern] UInt8.toNat
public func UInt8_toNat(_ n: UInt8) -> Nat {
  return Nat(UInt(n))
}

/// @[extern] USize.add
public func USize_add(_ a: UInt, _ b: UInt) -> UInt {
  return a &+ b
}

/// @[extern] UInt32.add
public func UInt32_add(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a &+ b
}

/// @[extern] UInt16.toUInt32
public func UInt16_toUInt32(_ a: UInt16) -> UInt32 {
  return UInt32(a)
}

/// @[extern] USize.repr
public func USize_repr(_ n: UInt) -> String {
  return n.description
}

/// @[extern] UInt8.sub
public func UInt8_sub(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a &- b
}

/// @[extern] USize.shiftRight
public func USize_shiftRight(_ a: UInt, _ b: UInt) -> UInt {
  return a >> b
}

/// @[extern] UInt8.lor
public func UInt8_lor(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a | b
}

/// @[extern] UInt32.mod
public func UInt32_mod(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return b == 0 ? 0 : a % b
}

/// @[extern] UInt64.mod
public func UInt64_mod(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return b == 0 ? 0 : a % b
}

/// @[extern] UInt16.ofInt
public func UInt16_ofInt(_ x: SignedNat) -> UInt16 {
  return UInt16(truncatingIfNeeded: x.toInt)
}

/// @[extern] UInt16.mod
public func UInt16_mod(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return b == 0 ? 0 : a % b
}

/// @[extern] UInt64.ofInt
public func UInt64_ofInt(_ x: SignedNat) -> UInt64 {
  return UInt64(truncatingIfNeeded: x.toInt)
}

/// @[extern] UInt64.toUSize
public func UInt64_toUSize(_ a: UInt64) -> UInt {
  return UInt(truncatingIfNeeded: a)
}

/// @[extern] UInt64.lor
public func UInt64_lor(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a | b
}

/// @[extern] USize.toUInt8
public func USize_toUInt8(_ a: UInt) -> UInt8 {
  return UInt8(truncatingIfNeeded: a)
}

/// @[extern] UInt32.complement
public func UInt32_complement(_ a: UInt32) -> UInt32 {
  return ~a
}

/// @[extern] USize.mul
public func USize_mul(_ a: UInt, _ b: UInt) -> UInt {
  return a &* b
}

/// @[extern] UInt32.shiftRight
public func UInt32_shiftRight(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a >> b
}

/// @[extern] UInt8.toUSize
public func UInt8_toUSize(_ a: UInt8) -> UInt {
  return UInt(a)
}

/// @[extern] UInt32.ofInt
public func UInt32_ofInt(_ x: SignedNat) -> UInt32 {
  return UInt32(truncatingIfNeeded: x.toInt)
}

/// @[extern] UInt16.complement
public func UInt16_complement(_ a: UInt16) -> UInt16 {
  return ~a
}

/// @[extern] UInt8.land
public func UInt8_land(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a & b
}

/// @[extern] UInt8.add
public func UInt8_add(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a &+ b
}

/// @[extern] USize.complement
public func USize_complement(_ a: UInt) -> UInt {
  return ~a
}

/// @[extern] USize.toUInt16
public func USize_toUInt16(_ a: UInt) -> UInt16 {
  return UInt16(truncatingIfNeeded: a)
}

/// @[extern] UInt64.land
public func UInt64_land(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a & b
}

/// @[extern] UInt8.shiftLeft
public func UInt8_shiftLeft(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a << b
}

/// @[extern] USize.neg
public func USize_neg(_ a: UInt) -> UInt {
  return 0 &- a
}

/// @[extern] UInt32.mul
public func UInt32_mul(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a &* b
}

/// @[extern] USize.modn
public func USize_modn(_ a: UInt, _ n: Nat) -> UInt {
  let n = UInt(truncatingIfNeeded: UInt.of(n)); return n == 0 ? 0 : a % n
}

/// @[extern] USize.lor
public func USize_lor(_ a: UInt, _ b: UInt) -> UInt {
  return a | b
}

/// @[extern] UInt64.shiftRight
public func UInt64_shiftRight(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a >> b
}

/// @[extern] USize.toUInt64
public func USize_toUInt64(_ a: UInt) -> UInt64 {
  return UInt64(a)
}

/// @[extern] UInt64.complement
public func UInt64_complement(_ a: UInt64) -> UInt64 {
  return ~a
}

/// @[extern] UInt16.xor
public func UInt16_xor(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a ^ b
}

/// @[extern] USize.ofInt
public func USize_ofInt(_ x: SignedNat) -> UInt {
  return UInt(truncatingIfNeeded: x.toInt)
}

/// @[extern] UInt8.mod
public func UInt8_mod(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return b == 0 ? 0 : a % b
}

/// @[extern] UInt32.div
public func UInt32_div(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return b == 0 ? 0 : a / b
}

/// @[extern] UInt16.div
public func UInt16_div(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return b == 0 ? 0 : a / b
}

/// @[extern] UInt8.ofInt
public func UInt8_ofInt(_ x: SignedNat) -> UInt8 {
  return UInt8(truncatingIfNeeded: x.toInt)
}

/// @[extern] UInt16.shiftRight
public func UInt16_shiftRight(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a >> b
}

/// @[extern] UInt64.add
public func UInt64_add(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a &+ b
}

/// @[extern] UInt64.div
public func UInt64_div(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return b == 0 ? 0 : a / b
}

/// @[extern] UInt16.toUSize
public func UInt16_toUSize(_ a: UInt16) -> UInt {
  return UInt(a)
}

/// @[extern] UInt8.mul
public func UInt8_mul(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a &* b
}

/// @[extern] UInt32.toUSize
public func UInt32_toUSize(_ a: UInt32) -> UInt {
  return UInt(a)
}

/// @[extern] UInt64.mul
public func UInt64_mul(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a &* b
}

/// @[extern] UInt32.xor
public func UInt32_xor(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a ^ b
}

/// @[extern] UInt8.div
public func UInt8_div(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return b == 0 ? 0 : a / b
}

/// @[extern] UInt16.sub
public func UInt16_sub(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a &- b
}

/// @[extern] USize.toUInt32
public func USize_toUInt32(_ a: UInt) -> UInt32 {
  return UInt32(truncatingIfNeeded: a)
}

/// @[extern] USize.mod
public func USize_mod(_ a: UInt, _ b: UInt) -> UInt {
  return b == 0 ? 0 : a % b
}

/// @[extern] UInt16.land
public func UInt16_land(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a & b
}

/// @[extern] UInt64.sub
public func UInt64_sub(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a &- b
}

/// @[extern] UInt8.complement
public func UInt8_complement(_ a: UInt8) -> UInt8 {
  return ~a
}

/// @[extern] UInt32.modn
public func UInt32_modn(_ a: UInt32, _ n: Nat) -> UInt32 {
  let n = UInt32(truncatingIfNeeded: UInt.of(n)); return n == 0 ? 0 : a % n
}

/// @[extern] USize.ofNat32
public func USize_ofNat32(_ n: Nat) -> UInt {
  return UInt(UInt32(truncatingIfNeeded: UInt.of(n)))
}

/// @[extern] UInt16.lor
public func UInt16_lor(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a | b
}

/// @[extern] UInt16.add
public func UInt16_add(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a &+ b
}

/// @[extern] UInt8.neg
public func UInt8_neg(_ a: UInt8) -> UInt8 {
  return 0 &- a
}

/// @[extern] UInt8.xor
public func UInt8_xor(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a ^ b
}

/// @[extern] UInt8.modn
public func UInt8_modn(_ a: UInt8, _ n: Nat) -> UInt8 {
  let n = UInt8(truncatingIfNeeded: UInt.of(n)); return n == 0 ? 0 : a % n
}

/// @[extern] UInt64.xor
public func UInt64_xor(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a ^ b
}

/// @[extern] UInt32.lor
public func UInt32_lor(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a | b
}

/// @[extern] UInt64.neg
public func UInt64_neg(_ a: UInt64) -> UInt64 {
  return 0 &- a
}

/// @[extern] UInt32.shiftLeft
public func UInt32_shiftLeft(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a << b
}

/// @[extern] UInt64.shiftLeft
public func UInt64_shiftLeft(_ a: UInt64, _ b: UInt64) -> UInt64 {
  return a << b
}

/// @[extern] UInt8.shiftRight
public func UInt8_shiftRight(_ a: UInt8, _ b: UInt8) -> UInt8 {
  return a >> b
}

/// @[extern] UInt16.modn
public func UInt16_modn(_ a: UInt16, _ n: Nat) -> UInt16 {
  let n = UInt16(truncatingIfNeeded: UInt.of(n)); return n == 0 ? 0 : a % n
}

/// @[extern] UInt32.land
public func UInt32_land(_ a: UInt32, _ b: UInt32) -> UInt32 {
  return a & b
}

/// @[extern] UInt16.neg
public func UInt16_neg(_ a: UInt16) -> UInt16 {
  return 0 &- a
}

/// @[extern] USize.xor
public func USize_xor(_ a: UInt, _ b: UInt) -> UInt {
  return a ^ b
}

/// @[extern] USize.shiftLeft
public func USize_shiftLeft(_ a: UInt, _ b: UInt) -> UInt {
  return a << b
}

/// @[extern] UInt64.modn
public func UInt64_modn(_ a: UInt64, _ n: Nat) -> UInt64 {
  let n = UInt64(truncatingIfNeeded: UInt.of(n)); return n == 0 ? 0 : a % n
}

/// @[extern] UInt16.mul
public func UInt16_mul(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a &* b
}

/// @[extern] UInt16.shiftLeft
public func UInt16_shiftLeft(_ a: UInt16, _ b: UInt16) -> UInt16 {
  return a << b
}

/// @[extern] UInt32.neg
public func UInt32_neg(_ a: UInt32) -> UInt32 {
  return 0 &- a
}

/// @[extern] USize.land
public func USize_land(_ a: UInt, _ b: UInt) -> UInt {
  return a & b
}

/// @[extern] USize.div
public func USize_div(_ a: UInt, _ b: UInt) -> UInt {
  return b == 0 ? 0 : a / b
}

/// @[extern] UInt32.toFloat
public func UInt32_toFloat(_ n: UInt32) -> Double {
  return Double(n)
}

/// @[extern] UInt8.toFloat
public func UInt8_toFloat(_ n: UInt8) -> Double {
  return Double(n)
}

/// @[extern] UInt64.toFloat
public func UInt64_toFloat(_ n: UInt64) -> Double {
  return Double(n)
}

/// @[extern] USize.toFloat
public func USize_toFloat(_ n: UInt) -> Double {
  return Double(n)
}

/// @[extern] UInt16.toFloat
public func UInt16_toFloat(_ n: UInt16) -> Double {
  return Double(n)
}

/// @[extern] UInt16.log2
public func UInt16_log2(_ a: UInt16) -> UInt16 {
  return UInt16(a.leadingZeroBitCount == 16 ? 0 : 15 - a.leadingZeroBitCount)
}

/// @[extern] UInt32.log2
public func UInt32_log2(_ a: UInt32) -> UInt32 {
  return UInt32(a.leadingZeroBitCount == 32 ? 0 : 31 - a.leadingZeroBitCount)
}

/// @[extern] UInt8.log2
public func UInt8_log2(_ a: UInt8) -> UInt8 {
  return UInt8(a.leadingZeroBitCount == 8 ? 0 : 7 - a.leadingZeroBitCount)
}

/// @[extern] UInt64.log2
public func UInt64_log2(_ a: UInt64) -> UInt64 {
  return UInt64(a.leadingZeroBitCount == 64 ? 0 : 63 - a.leadingZeroBitCount)
}

/// @[extern] USize.log2
public func USize_log2(_ a: UInt) -> UInt {
  return UInt(a.leadingZeroBitCount == UInt.bitWidth ? 0 : UInt.bitWidth - 1 - a.leadingZeroBitCount)
}

/// @[extern] UInt16.toFloat32
public func UInt16_toFloat32(_ n: UInt16) -> Float {
  return Float(n)
}

/// @[extern] UInt8.toFloat32
public func UInt8_toFloat32(_ n: UInt8) -> Float {
  return Float(n)
}

/// @[extern] UInt64.toFloat32
public func UInt64_toFloat32(_ n: UInt64) -> Float {
  return Float(n)
}

/// @[extern] UInt32.toFloat32
public func UInt32_toFloat32(_ n: UInt32) -> Float {
  return Float(n)
}

/// @[extern] USize.toFloat32
public func USize_toFloat32(_ n: UInt) -> Float {
  return Float(n)
}

