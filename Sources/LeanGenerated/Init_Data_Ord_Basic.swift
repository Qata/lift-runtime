// Swift v3 compiler output
// Module: src.Init.Data.Ord.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Ordering.instDecidableForallOfDecidablePred
public func Ordering_instDecidableForallOfDecidablePred(_ inst_1: @escaping (Ordering) -> Decidable) -> Decidable {
  let _x_2: Ordering = Ordering.lt
  let _x_3 = inst_1(_x_2)
  if Decidable_decide(_x_3) {
    let _x_7: Ordering = Ordering.eq
    let _x_8 = inst_1(_x_7)
    if Decidable_decide(_x_8) {
      let _x_12: Ordering = Ordering.gt
      let _x_13 = inst_1(_x_12)
      if Decidable_decide(_x_13) {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// Ordering.isGE
public extension Ordering {
  var isGE: Bool {
    switch self {
    case .lt:
      return false
    default:
      return true
    }
  }
}

@inline(__always) public func Ordering_isGE(_ x_1: Ordering) -> Bool {
  x_1.isGE
}

/// Ordering.swap
public extension Ordering {
  var swap: Ordering {
    switch self {
    case .lt:
      return Ordering.gt
    case .eq:
      return self
    case .gt:
      return Ordering.lt
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Ordering_swap(_ x_1: Ordering) -> Ordering {
  x_1.swap
}

/// Ordering.instDecidableExistsOfDecidablePred
public func Ordering_instDecidableExistsOfDecidablePred(_ inst_1: @escaping (Ordering) -> Decidable) -> Decidable {
  let _x_2: Ordering = Ordering.lt
  let _x_3 = inst_1(_x_2)
  if Decidable_decide(_x_3) {
    return Decidable.isTrue
  } else {
    let _x_5: Ordering = Ordering.eq
    let _x_6 = inst_1(_x_5)
    if Decidable_decide(_x_6) {
      return Decidable.isTrue
    } else {
      let _x_8: Ordering = Ordering.gt
      let _x_9 = inst_1(_x_8)
      if Decidable_decide(_x_9) {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    }
  }
}

/// Ordering.ctorIdx
public extension Ordering {
  var ctorIdx: Nat {
    switch self {
    case .lt:
      return 0
    case .eq:
      return 1
    case .gt:
      return 2
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Ordering_ctorIdx(_ x: Ordering) -> Nat {
  x.ctorIdx
}

/// Ordering.isLE
public extension Ordering {
  var isLE: Bool {
    switch self {
    case .gt:
      return false
    default:
      return true
    }
  }
}

@inline(__always) public func Ordering_isLE(_ x_1: Ordering) -> Bool {
  x_1.isLE
}

/// Ordering.isLT
public extension Ordering {
  var isLT: Bool {
    switch self {
    case .lt:
      return true
    default:
      return false
    }
  }
}

@inline(__always) public func Ordering_isLT(_ x_1: Ordering) -> Bool {
  x_1.isLT
}

/// Ordering.toCtorIdx
public extension Ordering {
  var toCtorIdx: Nat {
    self.ctorIdx
  }
}

@inline(__always) public func Ordering_toCtorIdx(_ x_1: Ordering) -> Nat {
  x_1.toCtorIdx
}

/// Ordering.ofNat
public func Ordering_ofNat(_ n: Nat) -> Ordering {
  let _x_1: Nat = 0
  let _x_2 = n <= _x_1
  if _x_2 {
    return Ordering.lt
  } else {
    let _x_3: Nat = 1
    let _x_4 = n <= _x_3
    if _x_4 {
      return Ordering.eq
    } else {
      return Ordering.gt
    }
  }
}

/// instDecidableEqOrdering
public func instDecidableEqOrdering(_ x_1: Ordering, _ y_2: Ordering) -> Decidable {
  let _x_3 = x_1.ctorIdx
  let _x_4 = y_2.ctorIdx
  let _x_5 = _x_3 == _x_4
  if _x_5 {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// Ordering.isEq
public extension Ordering {
  var isEq: Bool {
    switch self {
    case .eq:
      return true
    default:
      return false
    }
  }
}

@inline(__always) public func Ordering_isEq(_ x_1: Ordering) -> Bool {
  x_1.isEq
}

/// Ordering.isNe
public extension Ordering {
  var isNe: Bool {
    switch self {
    case .eq:
      return false
    default:
      return true
    }
  }
}

@inline(__always) public func Ordering_isNe(_ x_1: Ordering) -> Bool {
  x_1.isNe
}

/// compareLex
@inline(__always) public func compareLex<A, B>(_ `cmp₁`: @escaping (A, B) -> Ordering, _ `cmp₂`: @escaping (A, B) -> Ordering, _ a: A, _ b: B) -> Ordering {
  let _x_1 = `cmp₁`(a, b)
  switch _x_1 {
  case .eq:
    return `cmp₂`(a, b)
  default:
    return _x_1
  }
}

/// Ordering.isGT
public extension Ordering {
  var isGT: Bool {
    switch self {
    case .gt:
      return true
    default:
      return false
    }
  }
}

@inline(__always) public func Ordering_isGT(_ x_1: Ordering) -> Bool {
  x_1.isGT
}

/// List.compareLex
public extension List {
  func compareLex(_ cmp: @escaping (A, A) -> Ordering, _ x_2: List<A>) -> Ordering {
    switch self {
    case .`nil`:
      switch x_2 {
      case .`nil`:
        return Ordering.eq
      default:
        return Ordering.lt
      }
    case .cons(let head_5, let tail_6):
      switch x_2 {
      case .`nil`:
        return Ordering.gt
      case .cons(let head_8, let tail_9):
        let _x_10 = cmp(head_5, head_8)
        switch _x_10 {
        case .eq:
          return tail_6.compareLex(cmp, tail_9)
        default:
          return _x_10
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_compareLex<A>(_ cmp: @escaping (A, A) -> Ordering, _ x_1: List<A>, _ x_2: List<A>) -> Ordering {
  x_1.compareLex(cmp, x_2)
}

public let instInhabitedOrdering_default: Ordering = {
  Ordering.lt
}()

/// instDecidableRelLt_src
@inline(__always) public func instDecidableRelLt_src<A: Comparable>(_ a: A, _ b: A) -> Decidable {
  let _x_3 = Ord_compare(a, b)
  switch _x_3 {
  case .lt:
    let _x_4: Bool = true
    return decidable_of_bool(_x_4)
  default:
    let _x_6: Bool = false
    return decidable_of_bool(_x_6)
  }
}

/// instDecidableRelLe_src
@inline(__always) public func instDecidableRelLe_src<A: Comparable>(_ x_2: A, _ x_3: A) -> Decidable {
  let _x_5 = Ord_compare(x_2, x_3)
  switch _x_5 {
  case .gt:
    return Decidable.isFalse
  default:
    return Decidable.isTrue
  }
}

