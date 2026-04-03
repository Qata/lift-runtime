// Swift v3 compiler output
// Module: src.Init.Data.Ord.Array
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.compareLex
public func Array_compareLex<A>(_ cmp: @escaping (A, A) -> Ordering, _ `a₁`: Array<A>, _ `a₂`: Array<A>) -> Ordering {
  let _x_1: Nat = 0
  return Array_compareLex_go(cmp, `a₁`, `a₂`, _x_1)
}

/// _private.src.Init.Data.Ord.Array.0.Array.compareLex.go
public func Array_compareLex_go<A>(_ cmp: @escaping (A, A) -> Ordering, _ `a₁`: Array<A>, _ `a₂`: Array<A>, _ i: Nat) -> Ordering {
  let _x_1 = Array_size(`a₁`)
  let _x_2 = _x_1 <= i
  if _x_2 {
    let _x_12 = Array_size(`a₂`)
    let _x_13 = _x_12 <= i
    if _x_13 {
      return Ordering.eq
    } else {
      return Ordering.lt
    }
  } else {
    let _x_3 = Array_size(`a₂`)
    let _x_4 = _x_3 <= i
    if _x_4 {
      return Ordering.gt
    } else {
      let _x_5 = Array_getInternal(`a₁`, i)
      let _x_6 = Array_getInternal(`a₂`, i)
      let _x_7 = cmp(_x_5, _x_6)
      switch _x_7 {
      case .eq:
        let _x_8: Nat = 1
        let _x_9 = i + _x_8
        return Array_compareLex_go(cmp, `a₁`, `a₂`, _x_9)
      default:
        return _x_7
      }
    }
  }
}

