// Swift v3 compiler output
// Module: src.Init.Data.Array.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.Array.Basic.0.Array.shrink.loop
public func Array_shrink_loop<A>(_ x_1: Nat, _ x_2: Array<A>) -> Array<A> {
  if x_1 == 0 {
    return x_2
  } else {
    let n_3: Nat = x_1 - 1
    let _x_4: Array<A> = Array_pop(x_2)
    return Array_shrink_loop(n_3, _x_4)
  }
}

/// Array.take
@inline(__always) public func Array_take<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  let _x_1: Nat = 0
  return Array_extract(xs, _x_1, i)
}

/// Array.singleton
@inline(__always) public func Array_singleton<A>(_ v: A) -> Array<A> {
  let _x_1: Nat = 1
  let _x_2: Array<A> = Array_mkEmpty(_x_1)
  return Array_push(_x_2, v)
}

/// Array.findIdx?.loop
public func `Array_findIdx?_loop`<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>, _ j: Nat) -> Nat? {
  let _x_1: Nat = Array_size(`as`)
  let _x_2: Bool = j < _x_1
  if _x_2 {
    let _x_4 = Array_getInternal(`as`, j)
    let _x_5: Bool = p(_x_4)
    if _x_5 {
      return Nat?.some(j)
    } else {
      let _x_6: Nat = 1
      let _x_7: Nat = j + _x_6
      return `Array_findIdx?_loop`(p, `as`, _x_7)
    }
  } else {
    return nil
  }
}

/// _private.src.Init.Data.Array.Basic.0.Array.allDiffAux
public func Array_allDiffAux<A: Equatable>(_ `as`: Array<A>, _ i: Nat) -> Bool {
  let _x_2: Nat = Array_size(`as`)
  let _x_3: Bool = i < _x_2
  if _x_3 {
    let _x_5 = Array_getInternal(`as`, i)
    let _x_6: Bool = Array_allDiffAuxAux(`as`, _x_5, i)
    if _x_6 {
      let _x_7: Nat = 1
      let _x_8: Nat = i + _x_7
      return Array_allDiffAux(`as`, _x_8)
    } else {
      return _x_6
    }
  } else {
    return true
  }
}

/// Array.modifyOp
@inline(__always) public func Array_modifyOp<A>(_ xs: Array<A>, _ idx: Nat, _ f: @escaping (A) -> A) -> Array<A> {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Bool = idx < _x_1
  if _x_2 {
    let v = Array_getInternal(xs, idx)
    let _x_3: () = ()
    let `xs'`: Array<A> = Array_set(xs, idx, _x_3)
    let _x_4 = f(v)
    return Array_set(`xs'`, idx, _x_4)
  } else {
    return xs
  }
}

/// Array.isEmpty
public func Array_isEmpty<A>(_ xs: Array<A>) -> Bool {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Nat = 0
  return _x_1 == _x_2
}

/// Array.takeWhile
public func Array_takeWhile<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Array<A> {
  let _x_1: Nat = 0
  let _x_2: Nat = 0
  let _x_3: Array<A> = Array_mkEmpty(_x_2)
  return Array_takeWhile_go(p, `as`, _x_1, _x_3)
}

/// Array.eraseIdxIfInBounds
public func Array_eraseIdxIfInBounds<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Bool = i < _x_1
  if _x_2 {
    return Array_eraseIdx(xs, i)
  } else {
    return xs
  }
}

/// Array.isEqv
@inline(__always) public func Array_isEqv<A>(_ xs: Array<A>, _ ys: Array<A>, _ p: @escaping (A, A) -> Bool) -> Bool {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Nat = Array_size(ys)
  let _x_3: Bool = _x_1 == _x_2
  if _x_3 {
    return Array_isEqvAux(xs, ys, p, _x_1)
  } else {
    return false
  }
}

/// Array.isPrefixOfAux
public func Array_isPrefixOfAux<A: Equatable>(_ `as`: Array<A>, _ bs: Array<A>, _ i: Nat) -> Bool {
  let _x_2: Nat = Array_size(`as`)
  let _x_3: Bool = i < _x_2
  if _x_3 {
    let a = Array_getInternal(`as`, i)
    let b = Array_getInternal(bs, i)
    let _x_6: Bool = a == b
    if _x_6 {
      let _x_7: Nat = 1
      let _x_8: Nat = i + _x_7
      return Array_isPrefixOfAux(`as`, bs, _x_8)
    } else {
      return _x_6
    }
  } else {
    return true
  }
}

/// Array.popWhile
public func Array_popWhile<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Array<A> {
  let _x_1: Nat = 0
  let _x_2: Nat = Array_size(`as`)
  let _x_3: Bool = _x_1 < _x_2
  if _x_3 {
    let _x_4: Nat = 1
    let _x_5: Nat = _x_2 - _x_4
    let _x_6 = Array_getInternal(`as`, _x_5)
    let _x_7: Bool = p(_x_6)
    if _x_7 {
      let _x_8: Array<A> = Array_pop(`as`)
      return Array_popWhile(p, _x_8)
    } else {
      return `as`
    }
  } else {
    return `as`
  }
}

/// _private.src.Init.Data.Array.Basic.0.Array.allDiffAuxAux
public func Array_allDiffAuxAux<A: Equatable>(_ `as`: Array<A>, _ a: A, _ x_2: Nat) -> Bool {
  if x_2 == 0 {
    return true
  } else {
    let n_5: Nat = x_2 - 1
    let _x_6 = Array_getInternal(`as`, n_5)
    let _x_8: Bool = a == _x_6
    if _x_8 {
      return false
    } else {
      return Array_allDiffAuxAux(`as`, a, n_5)
    }
  }
}

/// Array.zipWithAll
public func Array_zipWithAll<A, B, C>(_ f: @escaping (A?, B?) -> C, _ `as`: Array<A>, _ bs: Array<B>) -> Array<C> {
  let _x_1: Nat = 0
  let _x_2: Nat = 0
  let _x_3: Array<C> = Array_mkEmpty(_x_2)
  return Array_zipWithAll_go(f, `as`, bs, _x_1, _x_3)
}

/// Array.back
public func Array_back<A>(_ xs: Array<A>) -> A {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Nat = 1
  let _x_3: Nat = _x_1 - _x_2
  return Array_getInternal(xs, _x_3)
}

/// Array.shrink
public func Array_shrink<A>(_ xs: Array<A>, _ n: Nat) -> Array<A> {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Nat = _x_1 - n
  return Array_shrink_loop(_x_2, xs)
}

/// Array.eraseIdx
public func Array_eraseIdx<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  let _x_1: Nat = 1
  let _x_2: Nat = i + _x_1
  let _x_3: Nat = Array_size(xs)
  let _x_4: Bool = _x_2 < _x_3
  if _x_4 {
    let `xs'`: Array<A> = Array_swap(xs, _x_2, i)
    return Array_eraseIdx(`xs'`, _x_2)
  } else {
    return Array_pop(xs)
  }
}

/// Array.isPrefixOf
public func Array_isPrefixOf<A: Equatable>(_ `as`: Array<A>, _ bs: Array<A>) -> Bool {
  let _x_2: Nat = Array_size(`as`)
  let _x_3: Nat = Array_size(bs)
  let _x_4: Bool = _x_2 <= _x_3
  if _x_4 {
    let _x_6: Nat = 0
    return Array_isPrefixOfAux(`as`, bs, _x_6)
  } else {
    return false
  }
}

/// Array.findIdx?
@inline(__always) public func `Array_findIdx?`<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Nat? {
  let _x_1: Nat = 0
  return `Array_findIdx?_loop`(p, `as`, _x_1)
}

/// Array.allDiff
public func Array_allDiff<A: Equatable>(_ `as`: Array<A>) -> Bool {
  let _x_2: Nat = 0
  return Array_allDiffAux(`as`, _x_2)
}

/// Array.appendList
public func Array_appendList<A>(_ `as`: Array<A>, _ bs: List<A>) -> Array<A> {
  func _f_1(_ xs: Array<A>, _ v: Any) -> Array<A> {
    Array_push(xs, v)
  }
  return List_foldl(_f_1, `as`, bs)
}

/// Array.isEqvAux
public func Array_isEqvAux<A>(_ xs: Array<A>, _ ys: Array<A>, _ p: @escaping (A, A) -> Bool, _ x_1: Nat) -> Bool {
  if x_1 == 0 {
    return true
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5 = Array_getInternal(xs, n_4)
    let _x_6 = Array_getInternal(ys, n_4)
    let _x_7: Bool = p(_x_5, _x_6)
    if _x_7 {
      return Array_isEqvAux(xs, ys, p, n_4)
    } else {
      return _x_7
    }
  }
}

/// _private.src.Init.Data.Array.Basic.0.Array.zipWithAll.go
public func Array_zipWithAll_go<A, B, C>(_ f: @escaping (A?, B?) -> C, _ `as`: Array<A>, _ bs: Array<B>, _ i: Nat, _ cs: Array<C>) -> Array<C> {
  func _jp_1(_ _y_2: C?) -> Array<C> {
    func _jp_3(_ _y_4: C?) -> Array<C> {
      let _x_5: Nat = 1
      let _x_6: Nat = i + _x_5
      let _x_7 = f(_y_2, _y_4)
      let _x_8: Array<C> = Array_push(cs, _x_7)
      return Array_zipWithAll_go(f, `as`, bs, _x_6, _x_8)
    }
    let _x_10: Nat = Array_size(bs)
    let _x_11: Bool = i < _x_10
    if _x_11 {
      let _x_13 = Array_getInternal(bs, i)
      let _x_14: C? = .some(_x_13)
      return _jp_3(_x_14      )
    } else {
      let _x_12: C? = nil
      return _jp_3(_x_12      )
    }
  }
  func _jp_15(_ _y_16: Nat) -> Array<C> {
    let _x_17: Bool = i < _y_16
    if _x_17 {
      let _x_20: Nat = Array_size(`as`)
      let _x_21: Bool = i < _x_20
      if _x_21 {
        let _x_23 = Array_getInternal(`as`, i)
        let _x_24: C? = .some(_x_23)
        return _jp_1(_x_24        )
      } else {
        let _x_22: C? = nil
        return _jp_1(_x_22        )
      }
    } else {
      return cs
    }
  }
  let _x_25: Nat = Array_size(`as`)
  let _x_26: Nat = Array_size(bs)
  let _x_27: Bool = _x_25 <= _x_26
  if _x_27 {
    return _jp_15(_x_26    )
  } else {
    return _jp_15(_x_25    )
  }
}

/// Array.back?
public func `Array_back?`<A>(_ xs: Array<A>) -> A? {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Nat = 1
  let _x_3: Nat = _x_1 - _x_2
  let _x_4: Nat = Array_size(xs)
  let _x_5: Bool = _x_3 < _x_4
  if _x_5 {
    let _x_7 = Array_getInternal(xs, _x_3)
    return A?.some(_x_7)
  } else {
    return nil
  }
}

/// Array.modify
@inline(__always) public func Array_modify<A>(_ xs: Array<A>, _ i: Nat, _ f: @escaping (A) -> A) -> Array<A> {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Bool = i < _x_1
  if _x_2 {
    let v = Array_getInternal(xs, i)
    let _x_3: () = ()
    let `xs'`: Array<A> = Array_set(xs, i, _x_3)
    let _x_4 = f(v)
    return Array_set(`xs'`, i, _x_4)
  } else {
    return xs
  }
}

/// Array.findIdx
@inline(__always) public func Array_findIdx<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Nat {
  let _x_1: Nat = 0
  let _x_2: Nat? = `Array_findIdx?_loop`(p, `as`, _x_1)
  if let val_4 = _x_2 {
    return val_4
  } else {
    return Array_size(`as`)
  }
}

/// _private.src.Init.Data.Array.Basic.0.Array.takeWhile.go
public func Array_takeWhile_go<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>, _ i: Nat, _ acc: Array<A>) -> Array<A> {
  let _x_1: Nat = Array_size(`as`)
  let _x_2: Bool = i < _x_1
  if _x_2 {
    let a = Array_getInternal(`as`, i)
    let _x_3: Bool = p(a)
    if _x_3 {
      let _x_4: Nat = 1
      let _x_5: Nat = i + _x_4
      let _x_6: Array<A> = Array_push(acc, a)
      return Array_takeWhile_go(p, `as`, _x_5, _x_6)
    } else {
      return acc
    }
  } else {
    return acc
  }
}

/// Array.drop
@inline(__always) public func Array_drop<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  let _x_1: Nat = Array_size(xs)
  return Array_extract(xs, i, _x_1)
}

