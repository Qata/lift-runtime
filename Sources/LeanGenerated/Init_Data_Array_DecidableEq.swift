// Swift v3 compiler output
// Module: src.Init.Data.Array.DecidableEq
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.instDecidableEmpEqImpl
@inline(__always) public func Array_instDecidableEmpEqImpl<A>(_ xs: Array<A>) -> Decidable {
  let _x_1: Bool = Array_isEmpty(xs)
  if _x_1 {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// Array.instDecidableEqEmpImpl
@inline(__always) public func Array_instDecidableEqEmpImpl<A>(_ xs: Array<A>) -> Decidable {
  let _x_1: Bool = Array_isEmpty(xs)
  if _x_1 {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// Array.instDecidableEmpEq
public func Array_instDecidableEmpEq<A>(_ ys: Array<A>) -> Decidable {
  let toList_1: List<A> = ys.toList
  switch toList_1 {
  case .`nil`:
    return Decidable.isTrue
  case .cons:
    return Decidable.isFalse
  default:
    fatalError("unreachable")
  }
}

/// Array.instDecidableEqImpl
public func Array_instDecidableEqImpl<A>(_ inst_1: @escaping (A, A) -> Decidable, _ xs: Array<A>, _ ys: Array<A>) -> Decidable {
  func _f_2(_ a: A, _ b: A) -> Bool {
    let _x_3: Decidable = inst_1(a, b)
    return Decidable_decide(_x_3)
  }
  let _x_5: Nat = Array_size(xs)
  let _x_6: Nat = Array_size(ys)
  let _x_7: Bool = _x_5 == _x_6
  if _x_7 {
    let _x_9: Bool = Array_isEqvAux(xs, ys, _f_2, _x_5)
    if _x_9 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// Array.instDecidableEqEmp
public func Array_instDecidableEqEmp<A>(_ xs: Array<A>) -> Decidable {
  let toList_1: List<A> = xs.toList
  switch toList_1 {
  case .`nil`:
    return Decidable.isTrue
  case .cons:
    return Decidable.isFalse
  default:
    fatalError("unreachable")
  }
}

/// Array.instDecidableEq
public func Array_instDecidableEq<A>(_ inst_1: @escaping (A, A) -> Decidable, _ xs: Array<A>, _ ys: Array<A>) -> Decidable {
  let toList_2: List<A> = xs.toList
  switch toList_2 {
  case .`nil`:
    let toList_3: List<A> = ys.toList
    switch toList_3 {
    case .`nil`:
      return Decidable.isTrue
    case .cons:
      return Decidable.isFalse
    default:
      fatalError("unreachable")
    }
  case .cons:
    let toList_10: List<A> = ys.toList
    switch toList_10 {
    case .`nil`:
      return Decidable.isFalse
    case .cons:
      return Array_instDecidableEqImpl(inst_1, xs, ys)
    default:
      fatalError("unreachable")
    }
  default:
    fatalError("unreachable")
  }
}

