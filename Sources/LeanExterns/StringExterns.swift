// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] String.hash
public func String_hash(_ s: String) -> UInt64 {
  return UInt64(bitPattern: Int64(s.hashValue))
}

/// @[extern] String.utf8ByteSize
public func String_utf8ByteSize(_ s: String) -> Nat {
  return Nat(UInt(s.utf8.count))
}

/// @[extern] String.quote
public func String_quote(_ s: String) -> String {
  return "\"" + s + "\""
}

/// @[extern] String.toUTF8
public func String_toUTF8(_ a: String) -> Array<UInt8> {
  return Array(a.utf8)
}

/// @[extern] String.intercalate
public func String_intercalate(_ s: String, _ x_1: List<String>) -> String {
  return x_1.toArray().joined(separator: s)
}

/// @[extern] String.append
public func String_append(_ s: String, _ t: String) -> String {
  return s + t
}

/// @[extern] String.length
public func String_length(_ b: String) -> Nat {
  return Nat(UInt(b.count))
}

/// @[extern] String.removeLeadingSpaces
public func String_removeLeadingSpaces(_ s: String) -> String {
  var s = s; while s.first == " " { s.removeFirst() }; return s
}

/// @[extern] String.crlfToLf
public func String_crlfToLf(_ text: String) -> String {
  return text.replacingOccurrences(of: "\r\n", with: "\n")
}

/// @[extern] String.stripSuffix
public func String_stripSuffix(_ s: String, _ suff: String) -> String {
  return s.hasSuffix(suff) ? String(s.dropLast(suff.count)) : s
}

/// @[extern] String.trim
public func String_trim(_ s: String) -> String {
  return s.trimmingCharacters(in: .whitespaces)
}

/// @[extern] String.stripPrefix
public func String_stripPrefix(_ s: String, _ pre: String) -> String {
  return s.hasPrefix(pre) ? String(s.dropFirst(pre.count)) : s
}

/// @[extern] String.dropRight
public func String_dropRight(_ s: String, _ n: Nat) -> String {
  let n = Int(UInt.of(n)); return n >= s.count ? "" : String(s.dropLast(n))
}

/// @[extern] String.takeRight
public func String_takeRight(_ s: String, _ n: Nat) -> String {
  let n = Int(UInt.of(n)); return n >= s.count ? s : String(s.suffix(n))
}

/// @[extern] String.trimRight
public func String_trimRight(_ s: String) -> String {
  var s = s; while s.last?.isWhitespace == true { s.removeLast() }; return s
}

/// @[extern] String.trimLeft
public func String_trimLeft(_ s: String) -> String {
  var s = s; while s.first?.isWhitespace == true { s.removeFirst() }; return s
}

