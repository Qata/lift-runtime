// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// array_sum
public func array_sum(_ xs: Array<Nat>) -> Nat {
  func _f_1(_ x1_2: Nat, _ x2_3: Nat) -> Nat {
    x1_2 + x2_3
  }
  let _x_5: Nat = 0
  let _x_6 = Array_size(xs)
  let _x_8 = _x_5 < _x_6
  if _x_8 {
    let _x_11 = Array_size(xs)
    let _x_12 = _x_6 <= _x_11
    if _x_12 {
      let _x_21: UInt = 0
      let _x_22 = USize_ofNat(_x_6)
      return Array_foldlMUnsafe_fold(_f_1, xs, _x_21, _x_22, _x_5)
    } else {
      let _x_14 = _x_5 < _x_11
      if _x_14 {
        let _x_17: UInt = 0
        let _x_18 = USize_ofNat(_x_11)
        return Array_foldlMUnsafe_fold(_f_1, xs, _x_17, _x_18, _x_5)
      } else {
        return _x_5
      }
    }
  } else {
    return _x_5
  }
}

/// factorial
public func factorial(_ x_1: Nat) -> Nat {
  if x_1 == 0 {
    return 1
  } else {
    let n_3: Nat = x_1 - 1
    let _x_4: Nat = 1
    let _x_5 = n_3 + _x_4
    let _x_6 = factorial(n_3)
    return _x_5 * _x_6
  }
}

/// sum_list
public func sum_list(_ xs: List<Nat>) -> Nat {
  func _f_1(_ x1_2: Nat, _ x2_3: Nat) -> Nat {
    x1_2 + x2_3
  }
  let _x_5: Nat = 0
  return List_foldl(_f_1, _x_5, xs)
}

/// contains_nat
public func contains_nat(_ xs: Array<Nat>, _ n: Nat) -> Bool {
  func _f_1(_ x_2: Nat) -> Bool {
    x_2 == n
  }
  let _x_5: Nat = 0
  let _x_6 = Array_size(xs)
  func _jp_8(_ _y_9: Nat) -> Bool {
    let _x_10 = _x_5 < _y_9
    if _x_10 {
      let _x_14: UInt = 0
      let _x_15 = USize_ofNat(_y_9)
      return Array_anyMUnsafe_any(_f_1, xs, _x_14, _x_15)
    } else {
      return false
    }
  }
  let _x_17 = _x_5 < _x_6
  if _x_17 {
    let _x_21 = Array_size(xs)
    let _x_22 = _x_6 <= _x_21
    if _x_22 {
      return _jp_8(_x_6      )
    } else {
      return _jp_8(_x_21      )
    }
  } else {
    return false
  }
}

/// double
public func double(_ n: Nat) -> Nat {
  let _x_1: Nat = 2
  return n * _x_1
}

/// filter_even
public func filter_even(_ xs: List<Nat>) -> List<Nat> {
  func _f_1(_ x_2: Nat) -> Bool {
    let _x_3: Nat = 2
    let _x_4 = x_2 % _x_3
    let _x_5: Nat = 0
    return _x_4 == _x_5
  }
  let _x_8: List<Nat> = List<Nat>.`nil`
  return List_filterTR_loop(_f_1, xs, _x_8)
}

/// map_double
public func map_double(_ xs: List<Nat>) -> List<Nat> {
  let _x_1: (Nat) -> Nat = { _pa0 in double(_pa0) }
  let _x_2: List<Nat> = List<Nat>.`nil`
  return List_mapTR_loop(_x_1, xs, _x_2)
}

