// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] Int32.land
public func Int32_land(_ a: Int32, _ b: Int32) -> Int32 {
  return a & b
}

/// @[extern] Int64.complement
public func Int64_complement(_ a: Int64) -> Int64 {
  return ~a
}

/// @[extern] Int16.shiftLeft
public func Int16_shiftLeft(_ a: Int16, _ b: Int16) -> Int16 {
  return a << b
}

/// @[extern] Int32.ofNat
public func Int32_ofNat(_ n: Nat) -> Int32 {
  return Int32(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] ISize.ofIntTruncate
public func ISize_ofIntTruncate(_ i: SignedNat) -> Int {
  return i.toInt
}

/// @[extern] Int8.ofIntTruncate
public func Int8_ofIntTruncate(_ i: SignedNat) -> Int8 {
  return Int8(truncatingIfNeeded: i.toInt)
}

/// @[extern] Int16.ofIntTruncate
public func Int16_ofIntTruncate(_ i: SignedNat) -> Int16 {
  return Int16(truncatingIfNeeded: i.toInt)
}

/// @[extern] Int16.toInt8
public func Int16_toInt8(_ a: Int16) -> Int8 {
  return Int8(truncatingIfNeeded: a)
}

/// @[extern] Int16.div
public func Int16_div(_ a: Int16, _ b: Int16) -> Int16 {
  return b == 0 ? 0 : a / b
}

/// @[extern] ISize.shiftRight
public func ISize_shiftRight(_ a: Int, _ b: Int) -> Int {
  return a >> b
}

/// @[extern] Int64.toInt
public func Int64_toInt(_ i: Int64) -> SignedNat {
  return SignedNat(Int(truncatingIfNeeded: i))
}

/// @[extern] Int64.div
public func Int64_div(_ a: Int64, _ b: Int64) -> Int64 {
  return b == 0 ? 0 : a / b
}

/// @[extern] Int32.toInt8
public func Int32_toInt8(_ a: Int32) -> Int8 {
  return Int8(truncatingIfNeeded: a)
}

/// @[extern] ISize.ofInt
public func ISize_ofInt(_ i: SignedNat) -> Int {
  return i.toInt
}

/// @[extern] Int16.lor
public func Int16_lor(_ a: Int16, _ b: Int16) -> Int16 {
  return a | b
}

/// @[extern] Int64.mod
public func Int64_mod(_ a: Int64, _ b: Int64) -> Int64 {
  return b == 0 ? 0 : a % b
}

/// @[extern] Int8.toISize
public func Int8_toISize(_ a: Int8) -> Int {
  return Int(a)
}

/// @[extern] Int64.toInt8
public func Int64_toInt8(_ a: Int64) -> Int8 {
  return Int8(truncatingIfNeeded: a)
}

/// @[extern] Int16.ofInt
public func Int16_ofInt(_ i: SignedNat) -> Int16 {
  return Int16(truncatingIfNeeded: i.toInt)
}

/// @[extern] Int8.toInt16
public func Int8_toInt16(_ a: Int8) -> Int16 {
  return Int16(a)
}

/// @[extern] Int8.shiftLeft
public func Int8_shiftLeft(_ a: Int8, _ b: Int8) -> Int8 {
  return a << b
}

/// @[extern] Int16.land
public func Int16_land(_ a: Int16, _ b: Int16) -> Int16 {
  return a & b
}

/// @[extern] Int8.toInt64
public func Int8_toInt64(_ a: Int8) -> Int64 {
  return Int64(a)
}

/// @[extern] ISize.mod
public func ISize_mod(_ a: Int, _ b: Int) -> Int {
  return b == 0 ? 0 : a % b
}

/// @[extern] ISize.ofNat
public func ISize_ofNat(_ n: Nat) -> Int {
  return Int(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] Int64.ofIntTruncate
public func Int64_ofIntTruncate(_ i: SignedNat) -> Int64 {
  return Int64(truncatingIfNeeded: i.toInt)
}

/// @[extern] ISize.xor
public func ISize_xor(_ a: Int, _ b: Int) -> Int {
  return a ^ b
}

/// @[extern] Int32.xor
public func Int32_xor(_ a: Int32, _ b: Int32) -> Int32 {
  return a ^ b
}

/// @[extern] Int8.toInt
public func Int8_toInt(_ i: Int8) -> SignedNat {
  return SignedNat(Int(i))
}

/// @[extern] Int16.mod
public func Int16_mod(_ a: Int16, _ b: Int16) -> Int16 {
  return b == 0 ? 0 : a % b
}

/// @[extern] Int64.land
public func Int64_land(_ a: Int64, _ b: Int64) -> Int64 {
  return a & b
}

/// @[extern] Int8.mul
public func Int8_mul(_ a: Int8, _ b: Int8) -> Int8 {
  return a &* b
}

/// @[extern] Int8.complement
public func Int8_complement(_ a: Int8) -> Int8 {
  return ~a
}

/// @[extern] Int8.div
public func Int8_div(_ a: Int8, _ b: Int8) -> Int8 {
  return b == 0 ? 0 : a / b
}

/// @[extern] Int8.mod
public func Int8_mod(_ a: Int8, _ b: Int8) -> Int8 {
  return b == 0 ? 0 : a % b
}

/// @[extern] Int8.lor
public func Int8_lor(_ a: Int8, _ b: Int8) -> Int8 {
  return a | b
}

/// @[extern] Int64.toInt32
public func Int64_toInt32(_ a: Int64) -> Int32 {
  return Int32(truncatingIfNeeded: a)
}

/// @[extern] Int8.neg
public func Int8_neg(_ i: Int8) -> Int8 {
  return 0 &- i
}

/// @[extern] Int16.add
public func Int16_add(_ a: Int16, _ b: Int16) -> Int16 {
  return a &+ b
}

/// @[extern] Int64.neg
public func Int64_neg(_ i: Int64) -> Int64 {
  return 0 &- i
}

/// @[extern] Int64.shiftLeft
public func Int64_shiftLeft(_ a: Int64, _ b: Int64) -> Int64 {
  return a << b
}

/// @[extern] ISize.mul
public func ISize_mul(_ a: Int, _ b: Int) -> Int {
  return a &* b
}

/// @[extern] Int32.toInt
public func Int32_toInt(_ i: Int32) -> SignedNat {
  return SignedNat(Int(i))
}

/// @[extern] Int16.complement
public func Int16_complement(_ a: Int16) -> Int16 {
  return ~a
}

/// @[extern] Int32.shiftLeft
public func Int32_shiftLeft(_ a: Int32, _ b: Int32) -> Int32 {
  return a << b
}

/// @[extern] Int16.xor
public func Int16_xor(_ a: Int16, _ b: Int16) -> Int16 {
  return a ^ b
}

/// @[extern] Int32.abs
public func Int32_abs(_ a: Int32) -> Int32 {
  return abs(a)
}

/// @[extern] Int32.ofIntTruncate
public func Int32_ofIntTruncate(_ i: SignedNat) -> Int32 {
  return Int32(truncatingIfNeeded: i.toInt)
}

/// @[extern] Int8.shiftRight
public func Int8_shiftRight(_ a: Int8, _ b: Int8) -> Int8 {
  return a >> b
}

/// @[extern] ISize.shiftLeft
public func ISize_shiftLeft(_ a: Int, _ b: Int) -> Int {
  return a << b
}

/// @[extern] Int16.ofNat
public func Int16_ofNat(_ n: Nat) -> Int16 {
  return Int16(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] ISize.toInt32
public func ISize_toInt32(_ a: Int) -> Int32 {
  return Int32(truncatingIfNeeded: a)
}

/// @[extern] Int32.shiftRight
public func Int32_shiftRight(_ a: Int32, _ b: Int32) -> Int32 {
  return a >> b
}

/// @[extern] Int64.mul
public func Int64_mul(_ a: Int64, _ b: Int64) -> Int64 {
  return a &* b
}

/// @[extern] Int64.add
public func Int64_add(_ a: Int64, _ b: Int64) -> Int64 {
  return a &+ b
}

/// @[extern] Int8.sub
public func Int8_sub(_ a: Int8, _ b: Int8) -> Int8 {
  return a &- b
}

/// @[extern] ISize.abs
public func ISize_abs(_ a: Int) -> Int {
  return abs(a)
}

/// @[extern] ISize.add
public func ISize_add(_ a: Int, _ b: Int) -> Int {
  return a &+ b
}

/// @[extern] Int32.mod
public func Int32_mod(_ a: Int32, _ b: Int32) -> Int32 {
  return b == 0 ? 0 : a % b
}

/// @[extern] Int32.add
public func Int32_add(_ a: Int32, _ b: Int32) -> Int32 {
  return a &+ b
}

/// @[extern] Int32.toInt16
public func Int32_toInt16(_ a: Int32) -> Int16 {
  return Int16(truncatingIfNeeded: a)
}

/// @[extern] Int8.toInt32
public func Int8_toInt32(_ a: Int8) -> Int32 {
  return Int32(a)
}

/// @[extern] ISize.sub
public func ISize_sub(_ a: Int, _ b: Int) -> Int {
  return a &- b
}

/// @[extern] Int8.add
public func Int8_add(_ a: Int8, _ b: Int8) -> Int8 {
  return a &+ b
}

/// @[extern] ISize.neg
public func ISize_neg(_ i: Int) -> Int {
  return 0 &- i
}

/// @[extern] Int32.toISize
public func Int32_toISize(_ a: Int32) -> Int {
  return Int(a)
}

/// @[extern] Int32.mul
public func Int32_mul(_ a: Int32, _ b: Int32) -> Int32 {
  return a &* b
}

/// @[extern] Int64.abs
public func Int64_abs(_ a: Int64) -> Int64 {
  return abs(a)
}

/// @[extern] Int64.sub
public func Int64_sub(_ a: Int64, _ b: Int64) -> Int64 {
  return a &- b
}

/// @[extern] Int16.toInt
public func Int16_toInt(_ i: Int16) -> SignedNat {
  return SignedNat(Int(i))
}

/// @[extern] ISize.div
public func ISize_div(_ a: Int, _ b: Int) -> Int {
  return b == 0 ? 0 : a / b
}

/// @[extern] Int8.abs
public func Int8_abs(_ a: Int8) -> Int8 {
  return abs(a)
}

/// @[extern] Int16.toISize
public func Int16_toISize(_ a: Int16) -> Int {
  return Int(a)
}

/// @[extern] Int16.abs
public func Int16_abs(_ a: Int16) -> Int16 {
  return abs(a)
}

/// @[extern] Int16.shiftRight
public func Int16_shiftRight(_ a: Int16, _ b: Int16) -> Int16 {
  return a >> b
}

/// @[extern] Int32.lor
public func Int32_lor(_ a: Int32, _ b: Int32) -> Int32 {
  return a | b
}

/// @[extern] Int32.neg
public func Int32_neg(_ i: Int32) -> Int32 {
  return 0 &- i
}

/// @[extern] Int64.lor
public func Int64_lor(_ a: Int64, _ b: Int64) -> Int64 {
  return a | b
}

/// @[extern] Int32.sub
public func Int32_sub(_ a: Int32, _ b: Int32) -> Int32 {
  return a &- b
}

/// @[extern] Int8.ofNat
public func Int8_ofNat(_ n: Nat) -> Int8 {
  return Int8(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] ISize.toInt8
public func ISize_toInt8(_ a: Int) -> Int8 {
  return Int8(truncatingIfNeeded: a)
}

/// @[extern] Int16.toInt64
public func Int16_toInt64(_ a: Int16) -> Int64 {
  return Int64(a)
}

/// @[extern] Int32.toInt64
public func Int32_toInt64(_ a: Int32) -> Int64 {
  return Int64(a)
}

/// @[extern] Int64.ofNat
public func Int64_ofNat(_ n: Nat) -> Int64 {
  return Int64(truncatingIfNeeded: UInt.of(n))
}

/// @[extern] Int64.ofInt
public func Int64_ofInt(_ i: SignedNat) -> Int64 {
  return Int64(truncatingIfNeeded: i.toInt)
}

/// @[extern] Int8.ofInt
public func Int8_ofInt(_ i: SignedNat) -> Int8 {
  return Int8(truncatingIfNeeded: i.toInt)
}

/// @[extern] Int64.shiftRight
public func Int64_shiftRight(_ a: Int64, _ b: Int64) -> Int64 {
  return a >> b
}

/// @[extern] Int32.div
public func Int32_div(_ a: Int32, _ b: Int32) -> Int32 {
  return b == 0 ? 0 : a / b
}

/// @[extern] Int16.sub
public func Int16_sub(_ a: Int16, _ b: Int16) -> Int16 {
  return a &- b
}

/// @[extern] ISize.toInt64
public func ISize_toInt64(_ a: Int) -> Int64 {
  return Int64(a)
}

/// @[extern] Int16.mul
public func Int16_mul(_ a: Int16, _ b: Int16) -> Int16 {
  return a &* b
}

/// @[extern] Int16.neg
public func Int16_neg(_ i: Int16) -> Int16 {
  return 0 &- i
}

/// @[extern] Int8.xor
public func Int8_xor(_ a: Int8, _ b: Int8) -> Int8 {
  return a ^ b
}

/// @[extern] ISize.toInt16
public func ISize_toInt16(_ a: Int) -> Int16 {
  return Int16(truncatingIfNeeded: a)
}

/// @[extern] Int64.xor
public func Int64_xor(_ a: Int64, _ b: Int64) -> Int64 {
  return a ^ b
}

/// @[extern] Int64.toISize
public func Int64_toISize(_ a: Int64) -> Int {
  return Int(truncatingIfNeeded: a)
}

/// @[extern] Int16.toInt32
public func Int16_toInt32(_ a: Int16) -> Int32 {
  return Int32(a)
}

/// @[extern] Int32.complement
public func Int32_complement(_ a: Int32) -> Int32 {
  return ~a
}

/// @[extern] Int32.ofInt
public func Int32_ofInt(_ i: SignedNat) -> Int32 {
  return Int32(truncatingIfNeeded: i.toInt)
}

/// @[extern] ISize.toInt
public func ISize_toInt(_ i: Int) -> SignedNat {
  return SignedNat(i)
}

/// @[extern] ISize.land
public func ISize_land(_ a: Int, _ b: Int) -> Int {
  return a & b
}

/// @[extern] Int8.land
public func Int8_land(_ a: Int8, _ b: Int8) -> Int8 {
  return a & b
}

/// @[extern] Int64.toInt16
public func Int64_toInt16(_ a: Int64) -> Int16 {
  return Int16(truncatingIfNeeded: a)
}

/// @[extern] ISize.lor
public func ISize_lor(_ a: Int, _ b: Int) -> Int {
  return a | b
}

/// @[extern] ISize.complement
public func ISize_complement(_ a: Int) -> Int {
  return ~a
}

/// @[extern] Int64.toFloat
public func Int64_toFloat(_ n: Int64) -> Double {
  return Double(n)
}

/// @[extern] ISize.toFloat
public func ISize_toFloat(_ n: Int) -> Double {
  return Double(n)
}

/// @[extern] Int16.toFloat
public func Int16_toFloat(_ n: Int16) -> Double {
  return Double(n)
}

/// @[extern] Int32.toFloat
public func Int32_toFloat(_ n: Int32) -> Double {
  return Double(n)
}

/// @[extern] Int8.toFloat
public func Int8_toFloat(_ n: Int8) -> Double {
  return Double(n)
}

/// @[extern] Int16.toFloat32
public func Int16_toFloat32(_ n: Int16) -> Float {
  return Float(n)
}

/// @[extern] Int64.toFloat32
public func Int64_toFloat32(_ n: Int64) -> Float {
  return Float(n)
}

/// @[extern] ISize.toFloat32
public func ISize_toFloat32(_ n: Int) -> Float {
  return Float(n)
}

/// @[extern] Int32.toFloat32
public func Int32_toFloat32(_ n: Int32) -> Float {
  return Float(n)
}

/// @[extern] Int8.toFloat32
public func Int8_toFloat32(_ n: Int8) -> Float {
  return Float(n)
}

