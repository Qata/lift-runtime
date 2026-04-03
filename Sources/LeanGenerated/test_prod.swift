// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// sumAndProduct
public func sumAndProduct(_ xs: List<Nat>) -> Prod<Nat, Nat> {
  func _f_1(_ acc: Prod<Nat, Nat>, _ x: Nat) -> Prod<Nat, Nat> {
    let _x_2 = acc.fst
    let _x_3 = _x_2 + x
    let _x_4 = acc.snd
    let _x_5 = _x_4 * x
    return Prod<Nat, Nat>(_x_3, _x_5)
  }
  let _x_7: Nat = 0
  let _x_8: Nat = 1
  let _x_9: Prod<Nat, Nat> = Prod<Nat, Nat>(_x_7, _x_8)
  return List_foldl(_f_1, _x_9, xs)
}

/// swap
public func swap(_ p: Prod<Nat, Nat>) -> Prod<Nat, Nat> {
  let _x_1 = p.snd
  let _x_2 = p.fst
  return Prod<Nat, Nat>(_x_1, _x_2)
}

