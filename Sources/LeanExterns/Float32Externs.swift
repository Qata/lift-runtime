// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] Float32.sqrt
public func Float32_sqrt(_ a___u64___internal__hyg_1: Float) -> Float {
  return a___u64___internal__hyg_1.squareRoot()
}

/// @[extern] Float32.exp
public func Float32_exp(_ a___u64___internal__hyg_1: Float) -> Float {
  return expf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.log
public func Float32_log(_ a___u64___internal__hyg_1: Float) -> Float {
  return logf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.exp2
public func Float32_exp2(_ a___u64___internal__hyg_1: Float) -> Float {
  return exp2f(a___u64___internal__hyg_1)
}

/// @[extern] Float32.atan2
public func Float32_atan2(_ a___u64___internal__hyg_1: Float, _ a___u64___internal__hyg_2: Float) -> Float {
  return atan2f(a___u64___internal__hyg_1, a___u64___internal__hyg_2)
}

/// @[extern] Float32.sinh
public func Float32_sinh(_ a___u64___internal__hyg_1: Float) -> Float {
  return sinhf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.neg
public func Float32_neg(_ a___u64___internal__hyg_1: Float) -> Float {
  return -a___u64___internal__hyg_1
}

/// @[extern] Float32.atanh
public func Float32_atanh(_ a___u64___internal__hyg_1: Float) -> Float {
  return atanhf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.acos
public func Float32_acos(_ a___u64___internal__hyg_1: Float) -> Float {
  return acosf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.beq
public func Float32_beq(_ a: Float, _ b: Float) -> Bool {
  return a == b
}

/// @[extern] Float32.floor
public func Float32_floor(_ a___u64___internal__hyg_1: Float) -> Float {
  return a___u64___internal__hyg_1.rounded(.down)
}

/// @[extern] Float32.cosh
public func Float32_cosh(_ a___u64___internal__hyg_1: Float) -> Float {
  return coshf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.acosh
public func Float32_acosh(_ a___u64___internal__hyg_1: Float) -> Float {
  return acoshf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.isNaN
public func Float32_isNaN(_ a___u64___internal__hyg_1: Float) -> Bool {
  return a___u64___internal__hyg_1.isNaN
}

/// @[extern] Float32.sin
public func Float32_sin(_ a___u64___internal__hyg_1: Float) -> Float {
  return sinf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.log10
public func Float32_log10(_ a___u64___internal__hyg_1: Float) -> Float {
  return log10f(a___u64___internal__hyg_1)
}

/// @[extern] Float32.toBits
public func Float32_toBits(_ a___u64___internal__hyg_1: Float) -> UInt32 {
  return a___u64___internal__hyg_1.bitPattern
}

/// @[extern] Float32.round
public func Float32_round(_ a___u64___internal__hyg_1: Float) -> Float {
  return a___u64___internal__hyg_1.rounded()
}

/// @[extern] Float32.add
public func Float32_add(_ a___u64___internal__hyg_1: Float, _ a___u64___internal__hyg_2: Float) -> Float {
  return a___u64___internal__hyg_1 + a___u64___internal__hyg_2
}

/// @[extern] Float32.mul
public func Float32_mul(_ a___u64___internal__hyg_1: Float, _ a___u64___internal__hyg_2: Float) -> Float {
  return a___u64___internal__hyg_1 * a___u64___internal__hyg_2
}

/// @[extern] Float32.toUInt64
public func Float32_toUInt64(_ a___u64___internal__hyg_1: Float) -> UInt64 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt64(max(0, Double(a___u64___internal__hyg_1)))
}

/// @[extern] Float32.abs
public func Float32_abs(_ a___u64___internal__hyg_1: Float) -> Float {
  return abs(a___u64___internal__hyg_1)
}

/// @[extern] Float32.ofBits
public func Float32_ofBits(_ a___u64___internal__hyg_1: UInt32) -> Float {
  return Float(bitPattern: a___u64___internal__hyg_1)
}

/// @[extern] Float32.toUInt16
public func Float32_toUInt16(_ a___u64___internal__hyg_1: Float) -> UInt16 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt16(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float32.toUInt8
public func Float32_toUInt8(_ a___u64___internal__hyg_1: Float) -> UInt8 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt8(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float32.sub
public func Float32_sub(_ a___u64___internal__hyg_1: Float, _ a___u64___internal__hyg_2: Float) -> Float {
  return a___u64___internal__hyg_1 - a___u64___internal__hyg_2
}

/// @[extern] Float32.log2
public func Float32_log2(_ a___u64___internal__hyg_1: Float) -> Float {
  return log2f(a___u64___internal__hyg_1)
}

/// @[extern] Float32.tanh
public func Float32_tanh(_ a___u64___internal__hyg_1: Float) -> Float {
  return tanhf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.cos
public func Float32_cos(_ a___u64___internal__hyg_1: Float) -> Float {
  return cosf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.toUSize
public func Float32_toUSize(_ a___u64___internal__hyg_1: Float) -> UInt {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt(max(0, Double(a___u64___internal__hyg_1)))
}

/// @[extern] Float32.scaleB
public func Float32_scaleB(_ x: Float, _ i: SignedNat) -> Float {
  return scalbnf(x, Int32(i.toInt))
}

/// @[extern] Float32.toString
public func Float32_toString(_ a___u64___internal__hyg_1: Float) -> String {
  return String(a___u64___internal__hyg_1)
}

/// @[extern] Float32.tan
public func Float32_tan(_ a___u64___internal__hyg_1: Float) -> Float {
  return tanf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.isInf
public func Float32_isInf(_ a___u64___internal__hyg_1: Float) -> Bool {
  return a___u64___internal__hyg_1.isInfinite
}

/// @[extern] Float32.atan
public func Float32_atan(_ a___u64___internal__hyg_1: Float) -> Float {
  return atanf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.div
public func Float32_div(_ a___u64___internal__hyg_1: Float, _ a___u64___internal__hyg_2: Float) -> Float {
  return a___u64___internal__hyg_1 / a___u64___internal__hyg_2
}

/// @[extern] Float32.asin
public func Float32_asin(_ a___u64___internal__hyg_1: Float) -> Float {
  return asinf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.cbrt
public func Float32_cbrt(_ a___u64___internal__hyg_1: Float) -> Float {
  return cbrtf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.toFloat
public func Float32_toFloat(_ a___u64___internal__hyg_1: Float) -> Double {
  return Double(a___u64___internal__hyg_1)
}

/// @[extern] Float32.toUInt32
public func Float32_toUInt32(_ a___u64___internal__hyg_1: Float) -> UInt32 {
  return a___u64___internal__hyg_1.isNaN ? 0 : UInt32(clamping: Int64(a___u64___internal__hyg_1))
}

/// @[extern] Float32.asinh
public func Float32_asinh(_ a___u64___internal__hyg_1: Float) -> Float {
  return asinhf(a___u64___internal__hyg_1)
}

/// @[extern] Float32.isFinite
public func Float32_isFinite(_ a___u64___internal__hyg_1: Float) -> Bool {
  return a___u64___internal__hyg_1.isFinite
}

/// @[extern] Float32.ceil
public func Float32_ceil(_ a___u64___internal__hyg_1: Float) -> Float {
  return a___u64___internal__hyg_1.rounded(.up)
}

/// @[extern] Float32.toInt64
public func Float32_toInt64(_ a___u64___internal__hyg_1: Float) -> Int64 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int64(a___u64___internal__hyg_1)
}

/// @[extern] Float32.toISize
public func Float32_toISize(_ a___u64___internal__hyg_1: Float) -> Int {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int(a___u64___internal__hyg_1)
}

/// @[extern] Float32.toInt8
public func Float32_toInt8(_ a___u64___internal__hyg_1: Float) -> Int8 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int8(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float32.toInt16
public func Float32_toInt16(_ a___u64___internal__hyg_1: Float) -> Int16 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int16(clamping: Int(a___u64___internal__hyg_1))
}

/// @[extern] Float32.toInt32
public func Float32_toInt32(_ a___u64___internal__hyg_1: Float) -> Int32 {
  return a___u64___internal__hyg_1.isNaN ? 0 : Int32(a___u64___internal__hyg_1)
}

/// @[extern] Float32.ofNat
public func Float32_ofNat(_ n: Nat) -> Float {
  return Float(UInt.of(n))
}

/// @[extern] Float32.ofInt
public func Float32_ofInt(_ x_1: SignedNat) -> Float {
  return Float(x_1.toInt)
}

