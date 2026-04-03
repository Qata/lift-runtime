// Swift v3 compiler output
// Module: src.Init.Util
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// withPtrEqUnsafe
@inline(__always) public func withPtrEqUnsafe<A>(_ a: A, _ b: A, _ k: @escaping (()) -> Bool) -> Bool {
  let _x_1: UInt = ptrAddrUnsafe(a)
  let _x_2: UInt = ptrAddrUnsafe(b)
  let _x_4: Bool = _x_1 == _x_2
  if _x_4 {
    return _x_4
  } else {
    let _x_5: () = ()
    return k(_x_5)
  }
}

/// withPtrEqDecEq
@inline(__always) public func withPtrEqDecEq<A>(_ a: A, _ b: A, _ k: @escaping (()) -> Decidable) -> Decidable {
  func _jp_1(_ _y_2: Bool) -> Decidable {
    if _y_2 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
  let _x_5: UInt = ptrAddrUnsafe(a)
  let _x_6: UInt = ptrAddrUnsafe(b)
  let _x_8: Bool = _x_5 == _x_6
  if _x_8 {
    return _jp_1(_x_8    )
  } else {
    let _x_9: () = ()
    let _x_10: Decidable = k(_x_9)
    let _x_11: Bool = Decidable_decide(_x_10)
    return _jp_1(_x_11    )
  }
}

/// ptrEq
@inline(__always) public func ptrEq<A>(_ a: A, _ b: A) -> Bool {
  let _x_1: UInt = ptrAddrUnsafe(a)
  let _x_2: UInt = ptrAddrUnsafe(b)
  return _x_1 == _x_2
}

/// ptrEqList
public func ptrEqList<A>(_ x_1: List<A>, _ x_2: List<A>) -> Bool {
  switch x_1 {
  case .`nil`:
    switch x_2 {
    case .`nil`:
      return true
    default:
      return false
    }
  case .cons(let head_5, let tail_6):
    switch x_2 {
    case .cons(let head_7, let tail_8):
      let _x_9: UInt = ptrAddrUnsafe(head_5)
      let _x_10: UInt = ptrAddrUnsafe(head_7)
      let _x_12: Bool = _x_9 == _x_10
      if _x_12 {
        return ptrEqList(tail_6, tail_8)
      } else {
        return _x_12
      }
    default:
      return false
    }
  default:
    fatalError("unreachable")
  }
}

/// dbgStackTraceIf
public func dbgStackTraceIf<A>(_ cond: Bool, _ f: @escaping (()) -> A) -> A {
  if cond {
    return dbgStackTrace(f)
  } else {
    let _x_1: () = ()
    return f(_x_1)
  }
}

/// withPtrAddrUnsafe
@inline(__always) public func withPtrAddrUnsafe<A, B>(_ a: A, _ k: @escaping (UInt) -> B) -> B {
  let _x_1: UInt = ptrAddrUnsafe(a)
  return k(_x_1)
}

