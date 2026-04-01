// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] Float.toBits
public func Float_toBits(_ a___u64___internal__hyg_1: Double) -> UInt64 {
  return a___u64___internal__hyg_1.bitPattern
}

/// @[extern] Float.isInf
public func Float_isInf(_ a___u64___internal__hyg_1: Double) -> Bool {
  return a___u64___internal__hyg_1.isInfinite
}

/// @[extern] Float.exp2
public func Float_exp2(_ x: Double) -> Double {
  return exp2(x)
}

/// @[extern] Float.scaleB
public func Float_scaleB(_ x: Double, _ i: SignedNat) -> Double {
  return scalbn(x, i.toInt)
}

/// @[extern] Float.exp
public func Float_exp(_ x: Double) -> Double {
  return exp(x)
}

/// @[extern] Float.mul
public func Float_mul(_ a___u64___internal__hyg_1: Double, _ a___u64___internal__hyg_2: Double) -> Double {
  return a___u64___internal__hyg_1 * a___u64___internal__hyg_2
}

/// @[extern] Float.div
public func Float_div(_ a___u64___internal__hyg_1: Double, _ a___u64___internal__hyg_2: Double) -> Double {
  return a___u64___internal__hyg_1 / a___u64___internal__hyg_2
}

/// @[extern] Float.ceil
public func Float_ceil(_ a___u64___internal__hyg_1: Double) -> Double {
  return a___u64___internal__hyg_1.rounded(.up)
}

/// @[extern] Float.acos
public func Float_acos(_ a___u64___internal__hyg_1: Double) -> Double {
  return acos(a___u64___internal__hyg_1)
}

/// @[extern] Float.toUSize
public func Float_toUSize(_ a___u64___internal__hyg_1: Double) -> UInt {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt(max(0, a___u64___internal__hyg_1))
}

/// @[extern] Float.cos
public func Float_cos(_ a___u64___internal__hyg_1: Double) -> Double {
  return cos(a___u64___internal__hyg_1)
}

/// @[extern] Float.neg
public func Float_neg(_ a___u64___internal__hyg_1: Double) -> Double {
  return -a___u64___internal__hyg_1
}

/// @[extern] Float.toUInt8
public func Float_toUInt8(_ a___u64___internal__hyg_1: Double) -> UInt8 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt8(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float.sin
public func Float_sin(_ a___u64___internal__hyg_1: Double) -> Double {
  return sin(a___u64___internal__hyg_1)
}

/// @[extern] Float.atanh
public func Float_atanh(_ a___u64___internal__hyg_1: Double) -> Double {
  return atanh(a___u64___internal__hyg_1)
}

/// @[extern] Float.sinh
public func Float_sinh(_ a___u64___internal__hyg_1: Double) -> Double {
  return sinh(a___u64___internal__hyg_1)
}

/// @[extern] Float.sqrt
public func Float_sqrt(_ a___u64___internal__hyg_1: Double) -> Double {
  return a___u64___internal__hyg_1.squareRoot()
}

/// @[extern] Float.add
public func Float_add(_ a___u64___internal__hyg_1: Double, _ a___u64___internal__hyg_2: Double) -> Double {
  return a___u64___internal__hyg_1 + a___u64___internal__hyg_2
}

/// @[extern] Float.atan
public func Float_atan(_ a___u64___internal__hyg_1: Double) -> Double {
  return atan(a___u64___internal__hyg_1)
}

/// @[extern] Float.cbrt
public func Float_cbrt(_ a___u64___internal__hyg_1: Double) -> Double {
  return cbrt(a___u64___internal__hyg_1)
}

/// @[extern] Float.log
public func Float_log(_ x: Double) -> Double {
  return log(x)
}

/// @[extern] Float.ofBits
public func Float_ofBits(_ a___u64___internal__hyg_1: UInt64) -> Double {
  return Double(bitPattern: a___u64___internal__hyg_1)
}

/// @[extern] Float.asinh
public func Float_asinh(_ a___u64___internal__hyg_1: Double) -> Double {
  return asinh(a___u64___internal__hyg_1)
}

/// @[extern] Float.atan2
public func Float_atan2(_ y: Double, _ x: Double) -> Double {
  return atan2(y, x)
}

/// @[extern] Float.isNaN
public func Float_isNaN(_ a___u64___internal__hyg_1: Double) -> Bool {
  return a___u64___internal__hyg_1.isNaN
}

/// @[extern] Float.tanh
public func Float_tanh(_ a___u64___internal__hyg_1: Double) -> Double {
  return tanh(a___u64___internal__hyg_1)
}

/// @[extern] Float.tan
public func Float_tan(_ a___u64___internal__hyg_1: Double) -> Double {
  return tan(a___u64___internal__hyg_1)
}

/// @[extern] Float.toUInt16
public func Float_toUInt16(_ a___u64___internal__hyg_1: Double) -> UInt16 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt16(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float.toUInt32
public func Float_toUInt32(_ a___u64___internal__hyg_1: Double) -> UInt32 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt32(clamping: Int64(a___u64___internal__hyg_1))
}

/// @[extern] Float.acosh
public func Float_acosh(_ a___u64___internal__hyg_1: Double) -> Double {
  return acosh(a___u64___internal__hyg_1)
}

/// @[extern] Float.log2
public func Float_log2(_ a___u64___internal__hyg_1: Double) -> Double {
  return log2(a___u64___internal__hyg_1)
}

/// @[extern] Float.cosh
public func Float_cosh(_ a___u64___internal__hyg_1: Double) -> Double {
  return cosh(a___u64___internal__hyg_1)
}

/// @[extern] Float.toString
public func Float_toString(_ a___u64___internal__hyg_1: Double) -> String {
  return String(a___u64___internal__hyg_1)
}

/// @[extern] Float.asin
public func Float_asin(_ a___u64___internal__hyg_1: Double) -> Double {
  return asin(a___u64___internal__hyg_1)
}

/// @[extern] Float.beq
public func Float_beq(_ a: Double, _ b: Double) -> Bool {
  return a == b
}

/// @[extern] Float.toUInt64
public func Float_toUInt64(_ a___u64___internal__hyg_1: Double) -> UInt64 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt64(max(0, a___u64___internal__hyg_1))
}

/// @[extern] Float.log10
public func Float_log10(_ a___u64___internal__hyg_1: Double) -> Double {
  return log10(a___u64___internal__hyg_1)
}

/// @[extern] Float.floor
public func Float_floor(_ a___u64___internal__hyg_1: Double) -> Double {
  return a___u64___internal__hyg_1.rounded(.down)
}

/// @[extern] Float.round
public func Float_round(_ a___u64___internal__hyg_1: Double) -> Double {
  return a___u64___internal__hyg_1.rounded()
}

/// @[extern] Float.abs
public func Float_abs(_ a___u64___internal__hyg_1: Double) -> Double {
  return abs(a___u64___internal__hyg_1)
}

/// @[extern] Float.isFinite
public func Float_isFinite(_ a___u64___internal__hyg_1: Double) -> Bool {
  return a___u64___internal__hyg_1.isFinite
}

/// @[extern] Float.sub
public func Float_sub(_ a___u64___internal__hyg_1: Double, _ a___u64___internal__hyg_2: Double) -> Double {
  return a___u64___internal__hyg_1 - a___u64___internal__hyg_2
}

/// @[extern] Float.toISize
public func Float_toISize(_ a___u64___internal__hyg_1: Double) -> Int {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int(a___u64___internal__hyg_1)
}

/// @[extern] Float.toInt32
public func Float_toInt32(_ a___u64___internal__hyg_1: Double) -> Int32 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int32(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float.toInt8
public func Float_toInt8(_ a___u64___internal__hyg_1: Double) -> Int8 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int8(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float.toInt64
public func Float_toInt64(_ a___u64___internal__hyg_1: Double) -> Int64 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int64(a___u64___internal__hyg_1)
}

/// @[extern] Float.toInt16
public func Float_toInt16(_ a___u64___internal__hyg_1: Double) -> Int16 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int16(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float.toFloat32
public func Float_toFloat32(_ a___u64___internal__hyg_1: Double) -> Float {
  return Float(a___u64___internal__hyg_1)
}

/// @[extern] Float.ofNat
public func Float_ofNat(_ n: Nat) -> Double {
  return Double(UInt.of(n))
}

/// @[extern] Float.ofInt
public func Float_ofInt(_ x_1: SignedNat) -> Double {
  return Double(x_1.toInt)
}

