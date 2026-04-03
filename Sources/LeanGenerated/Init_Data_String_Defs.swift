// Swift v3 compiler output
// Module: src.Init.Data.String.Defs
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// String.join
@inline(__always) public func String_join(_ l: List<String>) -> String {
  func _f_1(_ r: String, _ s: String) -> String {
    r + s
  }
  let _x_3: String = ""
  return List_foldl(_f_1, _x_3, l)
}

/// String.intercalate
public func String_intercalate(_ s: String, _ x_1: List<String>) -> String {
  switch x_1 {
  case .`nil`:
    return ""
  case .cons(let head_3, let tail_4):
    return String_intercalate_go(head_3, s, tail_4)
  default:
    fatalError("unreachable")
  }
}

/// _private.src.Init.Data.String.Defs.0.String.intercalate.go
public func String_intercalate_go(_ acc: String, _ s: String, _ x_1: List<String>) -> String {
  switch x_1 {
  case .`nil`:
    return acc
  case .cons(let head_2, let tail_3):
    let _x_4: String = acc + s
    let _x_5: String = _x_4 + head_2
    return String_intercalate_go(_x_5, s, tail_3)
  default:
    fatalError("unreachable")
  }
}

/// String.isEmpty
@inline(__always) public func String_isEmpty(_ s: String) -> Bool {
  let _x_1: Nat = String_utf8ByteSize(s)
  let _x_2: Nat = 0
  return _x_1 == _x_2
}

