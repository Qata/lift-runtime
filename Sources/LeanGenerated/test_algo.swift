// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// isPalindrome
public func isPalindrome(_ xs: List<Nat>) -> Bool {
  let _x_1: (Nat, Nat) -> Decidable = { _pa0, _pa1 in instDecidableEqNat(_pa0, _pa1) }
  let _x_3 = List_reverse(xs)
  return List_beq(xs, _x_3)
}

/// fibonacci
public func fibonacci(_ x_1: Nat) -> Nat {
  if x_1 == 0 {
    return 0
  } else {
    let n_3: Nat = x_1 - 1
    if n_3 == 0 {
      return 1
    } else {
      let n_5: Nat = n_3 - 1
      let _x_6 = fibonacci(n_5)
      let _x_7: Nat = 1
      let _x_8 = n_5 + _x_7
      let _x_9 = fibonacci(_x_8)
      return _x_6 + _x_9
    }
  }
}

/// quicksort
public func quicksort(_ xs: List<Nat>) -> List<Nat> {
  switch xs {
  case .`nil`:
    return xs
  case .cons(let head_1, let tail_2):
    func _f_3(_ x_4: Nat) -> Bool {
      return head_1 <= x_4
    }
    func _f_7(_ x_8: Nat) -> Bool {
      return x_8 < head_1
    }
    let _x_11: List<Nat> = List<Nat>.`nil`
    let lo = List_filterTR_loop(_f_7, tail_2, _x_11)
    let _x_12: List<Nat> = List<Nat>.`nil`
    let hi = List_filterTR_loop(_f_3, tail_2, _x_12)
    let _x_13 = quicksort(lo)
    let _x_14: List<Nat> = List<Nat>.`nil`
    let _x_15: List<Nat> = List<Nat>.cons(head_1, _x_14)
    let _x_16 = List_appendTR(_x_13, _x_15)
    let _x_17 = quicksort(hi)
    return List_appendTR(_x_16, _x_17)
  default:
    fatalError("unreachable")
  }
}

