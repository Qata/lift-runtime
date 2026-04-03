// Swift v3 compiler output
// Module: src.Init.Data.SInt.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Int8.toNatClampNeg
@inline(__always) public func Int8_toNatClampNeg(_ i: Int8) -> Nat {
  let _x_1 = Int8_toInt(i)
  return Int_toNat(_x_1)
}

public let Int8_minValue: Int8 = {
  -128
}()

public let Int64_size: Nat = {
  18446744073709551616
}()

/// ISize.toNatClampNeg
@inline(__always) public func ISize_toNatClampNeg(_ i: Int) -> Nat {
  let _x_1 = ISize_toInt(i)
  return Int_toNat(_x_1)
}

public let Int64_maxValue: Int64 = {
  9223372036854775807
}()

public let Int8_size: Nat = {
  256
}()

public let Int32_maxValue: Int32 = {
  2147483647
}()

/// USize.toISize
@inline(__always) public func USize_toISize(_ i: UInt) -> Int {
  Int(i)
}

public let Int16_size: Nat = {
  65536
}()

public let Int8_maxValue: Int8 = {
  127
}()

public let Int32_size: Nat = {
  4294967296
}()

/// UInt8.toInt8
@inline(__always) public func UInt8_toInt8(_ i: UInt8) -> Int8 {
  Int8(i)
}

/// UInt64.toInt64
@inline(__always) public func UInt64_toInt64(_ i: UInt64) -> Int64 {
  Int64(i)
}

public let Int16_maxValue: Int16 = {
  32767
}()

/// Int32.toNatClampNeg
@inline(__always) public func Int32_toNatClampNeg(_ i: Int32) -> Nat {
  let _x_1 = Int32_toInt(i)
  return Int_toNat(_x_1)
}

public let Int16_minValue: Int16 = {
  -32768
}()

/// Int64.toNatClampNeg
@inline(__always) public func Int64_toNatClampNeg(_ i: Int64) -> Nat {
  let _x_1 = Int64_toInt(i)
  return Int_toNat(_x_1)
}

public let Int32_minValue: Int32 = {
  -2147483648
}()

/// Int16.toNatClampNeg
@inline(__always) public func Int16_toNatClampNeg(_ i: Int16) -> Nat {
  let _x_1 = Int16_toInt(i)
  return Int_toNat(_x_1)
}

public let Int64_minValue: Int64 = {
  -9223372036854775808
}()

/// UInt32.toInt32
@inline(__always) public func UInt32_toInt32(_ i: UInt32) -> Int32 {
  Int32(i)
}

/// UInt16.toInt16
@inline(__always) public func UInt16_toInt16(_ i: UInt16) -> Int16 {
  Int16(i)
}

