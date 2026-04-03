// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// sortNats
public func sortNats(_ xs: Array<Nat>) -> Array<Nat> {
  func _f_1(_ x1_2: Nat, _ x2_3: Nat) -> Bool {
    x1_2 < x2_3
  }
  let _x_6: Nat = 0
  let _x_7 = Array_size(xs)
  return Array_insertionSort_traverse(_f_1, xs, _x_6, _x_7)
}

/// findFirst
public func findFirst(_ xs: Array<Nat>, _ p: @escaping (Nat) -> Bool) -> Nat? {
  let _x_2: Nat?? = nil
  let _x_3: () = ()
  let _x_4: MProd<Nat??, ()> = MProd<Nat??, ()>(_x_2, _x_3)
  func _f_5(_ a: Nat, _ _y_7: MProd<Nat??, ()>) -> ForInStep<MProd<Nat??, ()>> {
    let _x_8 = p(a)
    if _x_8 {
      let _x_10: Nat? = Nat?.some(a)
      let _x_11: Nat?? = Nat??.some(_x_10)
      let _x_12: MProd<Nat??, ()> = MProd<Nat??, ()>(_x_11, _x_3)
      return ForInStep<MProd<Nat??, ()>>.done(_x_12)
    } else {
      return ForInStep<MProd<Nat??, ()>>.yield(_x_4)
    }
  }
  let sz = Array_usize(xs)
  let _x_14: UInt = 0
  let _x_15 = `Array_forIn'Unsafe_loop`(xs, _f_5, sz, _x_14, _x_4)
  let _x_16 = _x_15.fst
  if let val_18 = _x_16 {
    return val_18
  } else {
    return nil
  }
}

