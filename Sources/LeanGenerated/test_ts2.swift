// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// list_to_string
public func list_to_string(_ xs: List<Nat>) -> String {
  func _f_1(_ n: Nat) -> String {
    Nat_reprFast(n)
  }
  let _x_3: List<String> = List<String>.`nil`
  let strs = List_mapTR_loop(_f_1, xs, _x_3)
  let _x_4: String = ", "
  return String_intercalate(_x_4, strs)
}

/// describe_nat
public func describe_nat(_ n: Nat) -> String {
  let _x_1: Nat = 0
  let _x_3 = n == _x_1
  if _x_3 {
    return "zero"
  } else {
    let _x_4: Nat = 10
    let _x_5 = n < _x_4
    if _x_5 {
      let _x_11: String = "small: "
      let _x_12 = Nat_reprFast(n)
      return _x_11 + _x_12
    } else {
      let _x_7: String = "big: "
      let _x_8 = Nat_reprFast(n)
      return _x_7 + _x_8
    }
  }
}

