// Swift v3 compiler output
// Module: src.Init.Data.Array.Lemmas
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.instDecidableExistsAndMemOfDecidablePred_src
public func Array_instDecidableExistsAndMemOfDecidablePred_src<A>(_ xs: Array<A>, _ inst_1: @escaping (A) -> Decidable) -> Decidable {
  func _f_2(_ m: Nat) -> Decidable {
    let _x_3 = Array_getInternal(xs, m)
    return inst_1(_x_3)
  }
  let _x_5 = Array_size(xs)
  let _x_6 = `Nat_decidableExistsLT'`(_x_5, _f_2)
  if Decidable_decide(_x_6) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// Array.toListRev
@inline(__always) public func Array_toListRev<A>(_ xs: Array<A>) -> List<A> {
  func _f_1(_ x1_2: List<A>, _ x2_3: A) -> List<A> {
    List<A>.cons(x2_3, x1_2)
  }
  let _x_5: List<A> = List<A>.`nil`
  let _x_6: Nat = 0
  let _x_7 = Array_size(xs)
  let _x_9 = _x_6 < _x_7
  if _x_9 {
    let _x_12 = Array_size(xs)
    let _x_13 = _x_7 <= _x_12
    if _x_13 {
      let _x_22: UInt = 0
      let _x_23 = USize_ofNat(_x_7)
      return Array_foldlMUnsafe_fold(_f_1, xs, _x_22, _x_23, _x_5)
    } else {
      let _x_15 = _x_6 < _x_12
      if _x_15 {
        let _x_18: UInt = 0
        let _x_19 = USize_ofNat(_x_12)
        return Array_foldlMUnsafe_fold(_f_1, xs, _x_18, _x_19, _x_5)
      } else {
        return _x_5
      }
    }
  } else {
    return _x_5
  }
}

/// Array.instDecidableForallForallMemOfDecidablePred_src
public func Array_instDecidableForallForallMemOfDecidablePred_src<A>(_ xs: Array<A>, _ inst_1: @escaping (A) -> Decidable) -> Decidable {
  func _f_2(_ n: Nat) -> Decidable {
    let _x_3 = Array_getInternal(xs, n)
    return inst_1(_x_3)
  }
  let _x_5 = Array_size(xs)
  let _x_6 = Nat_decidableBallLT(_x_5, _f_2)
  if Decidable_decide(_x_6) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// Array.instDecidableMemOfLawfulBEq_src
public func Array_instDecidableMemOfLawfulBEq_src<A: Equatable>(_ a: A, _ `as`: Array<A>) -> Decidable {
  let _x_3 = Array_contains(`as`, a)
  if _x_3 {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

