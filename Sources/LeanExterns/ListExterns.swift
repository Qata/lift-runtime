// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] List.lengthTRAux
public func List_lengthTRAux<A>(_ x_1: List<A>, _ x_2: Nat) -> Nat {
  var n = x_2; var c = x_1; while case .cons(_, let t) = c { n = n + 1; c = t }; return n
}

/// @[extern] List.ctorIdx
public func List_ctorIdx<A>(_ x: List<A>) -> Nat {
  switch x { case .nil: return 0; case .cons: return 1 }
}

/// @[extern] List.lengthTR
public func List_lengthTR<A>(_ `as`: List<A>) -> Nat {
  return List_length(`as`)
}

/// @[extern] List.insertIdxTR.go
public func List_insertIdxTR_go<A>(_ a: A, _ n: Nat, _ xs: List<A>, _ acc: Array<A>) -> List<A> {
  var arr = acc; var cur = xs; var i = n
  while case .cons(let h, let t) = cur {
    if i == 0 { arr.append(a); arr.append(h); var rest = t; while case .cons(let rh, let rt) = rest { arr.append(rh); rest = rt }; return .fromArray(arr) }
    arr.append(h); cur = t; i = i - 1
  }
  arr.append(a)
  return .fromArray(arr)
}

/// @[extern] List.eraseIdxTR.go
public func List_eraseIdxTR_go<A>(_ orig: List<A>, _ xs: List<A>, _ n: Nat, _ acc: Array<A>) -> List<A> {
  var arr = acc; var cur = xs; var i = n
  while case .cons(let h, let t) = cur {
    if i == 0 { var rest = t; while case .cons(let rh, let rt) = rest { arr.append(rh); rest = rt }; return .fromArray(arr) }
    arr.append(h); cur = t; i = i - 1
  }
  return orig
}

/// @[extern] List.setTR.go
public func List_setTR_go<A>(_ orig: List<A>, _ a: A, _ xs: List<A>, _ n: Nat, _ acc: Array<A>) -> List<A> {
  var arr = acc; var cur = xs; var i = n
  while case .cons(let h, let t) = cur {
    if i == 0 { arr.append(a); var rest = t; while case .cons(let rh, let rt) = rest { arr.append(rh); rest = rt }; return .fromArray(arr) }
    arr.append(h); cur = t; i = i - 1
  }
  return orig
}

