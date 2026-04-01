// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] ByteArray.emptyWithCapacity
public func ByteArray_emptyWithCapacity(_ c: Nat) -> Array<UInt8> {
  return []
}

/// @[extern] ByteArray.push
public func ByteArray_push(_ a___u64___internal__hyg_1: Array<UInt8>, _ a___u64___internal__hyg_2: UInt8) -> Array<UInt8> {
  var a = a___u64___internal__hyg_1; a.append(a___u64___internal__hyg_2); return a
}

/// @[extern] ByteArray.empty
public func ByteArray_empty() -> Array<UInt8> {
  return []
}

/// @[extern] ByteArray.size
public func ByteArray_size(_ a___u64___internal__hyg_1: Array<UInt8>) -> Nat {
  return Nat(UInt(a___u64___internal__hyg_1.count))
}

/// @[extern] ByteArray.append
public func ByteArray_append(_ a: Array<UInt8>, _ b: Array<UInt8>) -> Array<UInt8> {
  return a + b
}

/// @[extern] ByteArray.copySlice
public func ByteArray_copySlice(_ src: Array<UInt8>, _ srcOff: Nat, _ dest: Array<UInt8>, _ destOff: Nat, _ len: Nat, _ exact: Bool) -> Array<UInt8> {
  var d = dest; let si = Int(UInt.of(srcOff)); let di = Int(UInt.of(destOff)); let n = min(Int(UInt.of(len)), src.count - si); for k in 0..<n { d[di+k] = src[si+k] }; return d
}

/// @[extern] ByteArray.get
public func ByteArray_get(_ a: Array<UInt8>, _ i: Nat) -> UInt8 {
  return a[Int(UInt.of(i))]
}

/// @[extern] ByteArray.set
public func ByteArray_set(_ a: Array<UInt8>, _ i: Nat, _ a___u64___internal__hyg_1: UInt8) -> Array<UInt8> {
  var a = a; a[Int(UInt.of(i))] = a___u64___internal__hyg_1; return a
}

/// @[extern] ByteArray.mkIterator
public func ByteArray_mkIterator(_ arr: Array<UInt8>) -> ByteArray_Iterator {
  return ByteArray_Iterator(arr, 0)
}

/// @[extern] ByteArray.hash
public func ByteArray_hash(_ a: Array<UInt8>) -> UInt64 {
  return UInt64(bitPattern: Int64(a.hashValue))
}

/// @[extern] ByteArray.isEmpty
public func ByteArray_isEmpty(_ s: Array<UInt8>) -> Bool {
  return s.isEmpty
}

/// @[extern] ByteArray.extract
public func ByteArray_extract(_ a: Array<UInt8>, _ b: Nat, _ e: Nat) -> Array<UInt8> {
  return Array(a[Int(UInt.of(b))..<min(Int(UInt.of(e)), a.count)])
}

/// @[extern] ByteArray.set!
public func `ByteArray_set!`(_ a___u64___internal__hyg_1: Array<UInt8>, _ a___u64___internal__hyg_2: Nat, _ a___u64___internal__hyg_3: UInt8) -> Array<UInt8> {
  var a = a___u64___internal__hyg_1; a[Int(UInt.of(a___u64___internal__hyg_2))] = a___u64___internal__hyg_3; return a
}

/// @[extern] ByteArray.usize
public func ByteArray_usize(_ a: Array<UInt8>) -> UInt {
  return UInt(a.count)
}

/// @[extern] ByteArray.uget
public func ByteArray_uget(_ a: Array<UInt8>, _ i: UInt) -> UInt8 {
  return a[Int(i)]
}

/// @[extern] ByteArray.uset
public func ByteArray_uset(_ a: Array<UInt8>, _ i: UInt, _ a___u64___internal__hyg_1: UInt8) -> Array<UInt8> {
  var a = a; a[Int(i)] = a___u64___internal__hyg_1; return a
}

/// @[extern] ByteArray.get!
public func `ByteArray_get!`(_ a___u64___internal__hyg_1: Array<UInt8>, _ a___u64___internal__hyg_2: Nat) -> UInt8 {
  return a___u64___internal__hyg_1[Int(UInt.of(a___u64___internal__hyg_2))]
}

/// @[extern] ByteArray.validateUTF8
public func ByteArray_validateUTF8(_ b: Array<UInt8>) -> Bool {
  return String(bytes: b, encoding: .utf8) != nil
}

