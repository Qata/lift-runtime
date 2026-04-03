// Swift v3 compiler output
// Module: src.Init.Data.List.Impl
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.replaceTR
public extension List where A: Equatable {
  func replaceTR(_ b: A, _ c: A) -> List<A> {
    let _x_2: Nat = 0
    let _x_3: Array<A> = Array_mkEmpty(_x_2)
    return List_replaceTR_go(self, b, c, self, _x_3)
  }
}

@inline(__always) public func List_replaceTR<A>(_ l: List<A>, _ b: A, _ c: A) -> List<A> {
  l.replaceTR(b, c)
}

/// _private.src.Init.Data.List.Impl.0.List.setTR.go
public func List_setTR_go<A>(_ l: List<A>, _ a: A, _ x_1: List<A>, _ x_2: Nat, _ x_3: Array<A>) -> List<A> {
  func _f_4(_ x1_5: Any, _ x2_6: List<A>) -> List<A> {
    List<A>.cons(x1_5, x2_6)
  }
  switch x_1 {
  case .`nil`:
    return l
  case .cons(let head_8, let tail_9):
    if x_2 == 0 {
      let _x_10: List<A> = .cons(a, tail_9)
      let _x_11: Nat = Array_size(x_3)
      let _x_12: Nat = 0
      let _x_14: Bool = _x_12 < _x_11
      if _x_14 {
        let _x_17: UInt = USize_ofNat(_x_11)
        let _x_18: UInt = 0
        return Array_foldrMUnsafe_fold(_f_4, x_3, _x_17, _x_18, _x_10)
      } else {
        return _x_10
      }
    } else {
      let n_20: Nat = x_2 - 1
      let _x_21: Array<A> = Array_push(x_3, head_8)
      return List_setTR_go(l, a, tail_9, n_20, _x_21)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.findSomeRev?TR
public extension List {
  func `findSomeRev?TR`<B>(_ f: @escaping (A) -> B?) -> B? {
    let _x_1: List<B> = List_reverse(self)
    return `List_findSome?`(f, _x_1)
  }
}

@inline(__always) public func `List_findSomeRev?TR`<A, B>(_ f: @escaping (A) -> B?, _ l: List<A>) -> B? {
  l.`findSomeRev?TR`(f)
}

/// _private.src.Init.Data.List.Impl.0.List.replaceTR.go
public func List_replaceTR_go<A: Equatable>(_ l: List<A>, _ b: A, _ c: A, _ x_2: List<A>, _ x_3: Array<A>) -> List<A> {
  func _f_4(_ x1_5: Any, _ x2_6: List<A>) -> List<A> {
    List<A>.cons(x1_5, x2_6)
  }
  switch x_2 {
  case .`nil`:
    return l
  case .cons(let head_8, let tail_9):
    let _x_11: Bool = b == head_8
    if _x_11 {
      let _x_14: List<A> = .cons(c, tail_9)
      let _x_15: Nat = Array_size(x_3)
      let _x_16: Nat = 0
      let _x_18: Bool = _x_16 < _x_15
      if _x_18 {
        let _x_21: UInt = USize_ofNat(_x_15)
        let _x_22: UInt = 0
        return Array_foldrMUnsafe_fold(_f_4, x_3, _x_21, _x_22, _x_14)
      } else {
        return _x_14
      }
    } else {
      let _x_12: Array<A> = Array_push(x_3, head_8)
      return List_replaceTR_go(l, b, c, tail_9, _x_12)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.eraseTR
public extension List where A: Equatable {
  func eraseTR(_ a: A) -> List<A> {
    let _x_2: Nat = 0
    let _x_3: Array<A> = Array_mkEmpty(_x_2)
    return List_eraseTR_go(self, a, self, _x_3)
  }
}

@inline(__always) public func List_eraseTR<A>(_ l: List<A>, _ a: A) -> List<A> {
  l.eraseTR(a)
}

/// List.eraseIdxTR
public extension List {
  func eraseIdxTR(_ n: Nat) -> List<A> {
    let _x_1: Nat = 0
    let _x_2: Array<A> = Array_mkEmpty(_x_1)
    return List_eraseIdxTR_go(self, self, n, _x_2)
  }
}

@inline(__always) public func List_eraseIdxTR<A>(_ l: List<A>, _ n: Nat) -> List<A> {
  l.eraseIdxTR(n)
}

/// List.erasePTR
public extension List {
  func erasePTR(_ p: @escaping (A) -> Bool) -> List<A> {
    let _x_1: Nat = 0
    let _x_2: Array<A> = Array_mkEmpty(_x_1)
    return List_erasePTR_go(p, self, self, _x_2)
  }
}

@inline(__always) public func List_erasePTR<A>(_ p: @escaping (A) -> Bool, _ l: List<A>) -> List<A> {
  l.erasePTR(p)
}

/// _private.src.Init.Data.List.Impl.0.List.intercalateTR.go
public func List_intercalateTR_go<A>(_ sep: Array<A>, _ x_1: List<A>, _ x_2: List<List<A>>, _ x_3: Array<A>) -> List<A> {
  func _f_4(_ x1_5: Any, _ x2_6: List<A>) -> List<A> {
    List<A>.cons(x1_5, x2_6)
  }
  switch x_2 {
  case .`nil`:
    let _x_8: Nat = Array_size(x_3)
    let _x_9: Nat = 0
    let _x_11: Bool = _x_9 < _x_8
    if _x_11 {
      let _x_14: UInt = USize_ofNat(_x_8)
      let _x_15: UInt = 0
      return Array_foldrMUnsafe_fold(_f_4, x_3, _x_14, _x_15, x_1)
    } else {
      return x_1
    }
  case .cons(let head_17, let tail_18):
    let _x_19: Array<A> = Array_appendList(x_3, x_1)
    let _x_20: Array<A> = Array_append(_x_19, sep)
    return List_intercalateTR_go(sep, head_17, tail_18, _x_20)
  default:
    fatalError("unreachable")
  }
}

/// List.findRev?TR
public extension List {
  func `findRev?TR`(_ p: @escaping (A) -> Bool) -> A? {
    let _x_1: List<A> = List_reverse(self)
    return `List_find?`(p, _x_1)
  }
}

@inline(__always) public func `List_findRev?TR`<A>(_ p: @escaping (A) -> Bool, _ l: List<A>) -> A? {
  l.`findRev?TR`(p)
}

/// List.setTR
public extension List {
  func setTR(_ n: Nat, _ a: A) -> List<A> {
    let _x_1: Nat = 0
    let _x_2: Array<A> = Array_mkEmpty(_x_1)
    return List_setTR_go(self, a, self, n, _x_2)
  }
}

@inline(__always) public func List_setTR<A>(_ l: List<A>, _ n: Nat, _ a: A) -> List<A> {
  l.setTR(n, a)
}

/// _private.src.Init.Data.List.Impl.0.List.erasePTR.go
public func List_erasePTR_go<A>(_ p: @escaping (A) -> Bool, _ l: List<A>, _ x_1: List<A>, _ x_2: Array<A>) -> List<A> {
  func _f_3(_ x1_4: Any, _ x2_5: List<A>) -> List<A> {
    List<A>.cons(x1_4, x2_5)
  }
  switch x_1 {
  case .`nil`:
    return l
  case .cons(let head_7, let tail_8):
    let _x_9: Bool = p(head_7)
    if _x_9 {
      let _x_12: Nat = Array_size(x_2)
      let _x_13: Nat = 0
      let _x_15: Bool = _x_13 < _x_12
      if _x_15 {
        let _x_18: UInt = USize_ofNat(_x_12)
        let _x_19: UInt = 0
        return Array_foldrMUnsafe_fold(_f_3, x_2, _x_18, _x_19, tail_8)
      } else {
        return tail_8
      }
    } else {
      let _x_10: Array<A> = Array_push(x_2, head_7)
      return List_erasePTR_go(p, l, tail_8, _x_10)
    }
  default:
    fatalError("unreachable")
  }
}

/// _private.src.Init.Data.List.Impl.0.List.eraseIdxTR.go
public func List_eraseIdxTR_go<A>(_ l: List<A>, _ x_1: List<A>, _ x_2: Nat, _ x_3: Array<A>) -> List<A> {
  func _f_4(_ x1_5: Any, _ x2_6: List<A>) -> List<A> {
    List<A>.cons(x1_5, x2_6)
  }
  switch x_1 {
  case .`nil`:
    return l
  case .cons(let head_8, let tail_9):
    if x_2 == 0 {
      let _x_10: Nat = Array_size(x_3)
      let _x_11: Nat = 0
      let _x_13: Bool = _x_11 < _x_10
      if _x_13 {
        let _x_16: UInt = USize_ofNat(_x_10)
        let _x_17: UInt = 0
        return Array_foldrMUnsafe_fold(_f_4, x_3, _x_16, _x_17, tail_9)
      } else {
        return tail_9
      }
    } else {
      let n_19: Nat = x_2 - 1
      let _x_20: Array<A> = Array_push(x_3, head_8)
      return List_eraseIdxTR_go(l, tail_9, n_19, _x_20)
    }
  default:
    fatalError("unreachable")
  }
}

/// _private.src.Init.Data.List.Impl.0.List.eraseTR.go
public func List_eraseTR_go<A: Equatable>(_ l: List<A>, _ a: A, _ x_2: List<A>, _ x_3: Array<A>) -> List<A> {
  func _f_4(_ x1_5: Any, _ x2_6: List<A>) -> List<A> {
    List<A>.cons(x1_5, x2_6)
  }
  switch x_2 {
  case .`nil`:
    return l
  case .cons(let head_8, let tail_9):
    let _x_11: Bool = head_8 == a
    if _x_11 {
      let _x_14: Nat = Array_size(x_3)
      let _x_15: Nat = 0
      let _x_17: Bool = _x_15 < _x_14
      if _x_17 {
        let _x_20: UInt = USize_ofNat(_x_14)
        let _x_21: UInt = 0
        return Array_foldrMUnsafe_fold(_f_4, x_3, _x_20, _x_21, tail_9)
      } else {
        return tail_9
      }
    } else {
      let _x_12: Array<A> = Array_push(x_3, head_8)
      return List_eraseTR_go(l, a, tail_9, _x_12)
    }
  default:
    fatalError("unreachable")
  }
}

