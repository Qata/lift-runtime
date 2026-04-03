// Swift v3 compiler output
// Module: src.Init.Data.List.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.intersperseTR
public extension List {
  func intersperseTR(_ sep: A) -> List<A> {
    func _f_2(_ a: A, _ r: List<A>) -> List<A> {
      let _x_3: List<A> = List<A>.cons(a, r)
      return List<A>.cons(sep, _x_3)
    }
    switch self {
    case .`nil`:
      return self
    case .cons(let head_5, let tail_6):
      switch tail_6 {
      case .`nil`:
        return self
      case .cons(let head_7, let tail_8):
        let _x_9: List<A> = List<A>.`nil`
        let _x_10 = tail_8.foldr(_f_2, _x_9)
        let _x_11: List<A> = List<A>.cons(head_7, _x_10)
        let _x_12: List<A> = List<A>.cons(sep, _x_11)
        return List<A>.cons(head_5, _x_12)
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_intersperseTR<A>(_ sep: A, _ x_1: List<A>) -> List<A> {
  x_1.intersperseTR(sep)
}

/// List.zip
public extension List {
  func zip<B>(_ ys: List<B>) -> List<Prod<A, B>> {
    func _f_1(_ fst: A, _ snd: B) -> Prod<A, B> {
      Prod<A, B>(fst, snd)
    }
    return self.zipWith(_f_1, ys)
  }
}

@inline(__always) public func List_zip<A, B>(_ xs: List<A>, _ ys: List<B>) -> List<Prod<A, B>> {
  xs.zip(ys)
}

/// List.appendTR
public extension List {
  func appendTR(_ bs: List<A>) -> List<A> {
    let _x_1 = self.reverse
    return _x_1.reverseAux(bs)
  }
}

@inline(__always) public func List_appendTR<A>(_ `as`: List<A>, _ bs: List<A>) -> List<A> {
  `as`.appendTR(bs)
}

/// List.or
public func List_or(_ bs: List<Bool>) -> Bool {
  func _f_1(_ _y_2: Bool) -> Bool {
    _y_2
  }
  return bs.any(_f_1)
}

/// List.reverse
public extension List {
  var reverse: List<A> {
    let _x_1: List<A> = List<A>.`nil`
    return self.reverseAux(_x_1)
  }
}

@inline(__always) public func List_reverse<A>(_ `as`: List<A>) -> List<A> {
  `as`.reverse
}

/// List.instDecidableRelSubsetOfDecidableEq_src
public extension List where A: Equatable {
  func instDecidableRelSubsetOfDecidableEq_src(_ inst_1: @escaping (A, A) -> Decidable, _ x_3: List<A>) -> Decidable {
    func _f_5(_ a: A) -> Decidable {
      x_3.instDecidableMemOfLawfulBEq_src(a)
    }
    return self.decidableBAll(_f_5)
  }
}

@inline(__always) public func List_instDecidableRelSubsetOfDecidableEq_src<A: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ x_2: List<A>, _ x_3: List<A>) -> Decidable {
  x_2.instDecidableRelSubsetOfDecidableEq_src(inst_1, x_3)
}

/// List.replicateTR.loop
public func List_replicateTR_loop<A>(_ a: A, _ x_1: Nat, _ x_2: List<A>) -> List<A> {
  if x_1 == 0 {
    return x_2
  } else {
    let n_3: Nat = x_1 - 1
    let _x_4: List<A> = List<A>.cons(a, x_2)
    return List_replicateTR_loop(a, n_3, _x_4)
  }
}

/// List.findIdx?.go
public func `List_findIdx?_go`<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>, _ x_2: Nat) -> Nat? {
  switch x_1 {
  case .`nil`:
    return nil
  case .cons(let head_4, let tail_5):
    let _x_6 = p(head_4)
    if _x_6 {
      return Nat?.some(x_2)
    } else {
      let _x_7: Nat = 1
      let _x_8 = x_2 + _x_7
      return `List_findIdx?_go`(p, tail_5, _x_8)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.isSuffixOf?
public extension List where A: Equatable {
  func `isSuffixOf?`(_ `l₂`: List<A>) -> List<A>? {
    let _x_2 = self.reverse
    let _x_3 = `l₂`.reverse
    let _x_4 = _x_2.`isPrefixOf?`(_x_3)
    if let val_5 = _x_4 {
      let _x_6 = val_5.reverse
      return List<A>?.some(_x_6)
    } else {
      return _x_4
    }
  }
}

@inline(__always) public func `List_isSuffixOf?`<A: Equatable>(_ `l₁`: List<A>, _ `l₂`: List<A>) -> List<A>? {
  `l₁`.`isSuffixOf?`(`l₂`)
}

/// List.filter
public extension List {
  func filter(_ p: @escaping (A) -> Bool) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      let _x_4 = p(head_2)
      if _x_4 {
        let _x_6 = tail_3.filter(p)
        return List<A>.cons(head_2, _x_6)
      } else {
        return tail_3.filter(p)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_filter<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>) -> List<A> {
  x_1.filter(p)
}

/// List.head?
public extension List {
  var `head?`: A? {
    switch self {
    case .`nil`:
      return nil
    case .cons(let head_3, _):
      return A?.some(head_3)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_head?`<A>(_ x_1: List<A>) -> A? {
  x_1.`head?`
}

/// List.insert
public extension List where A: Equatable {
  func insert(_ a: A) -> List<A> {
    let _x_2 = self.elem(a)
    if _x_2 {
      return self
    } else {
      return List<A>.cons(a, self)
    }
  }
}

@inline(__always) public func List_insert<A: Equatable>(_ a: A, _ l: List<A>) -> List<A> {
  l.insert(a)
}

/// List.range'
public func `List_range'`(_ x_1: Nat, _ x_2: Nat, _ x_3: Nat) -> List<Nat> {
  if x_2 == 0 {
    return List<Nat>.`nil`
  } else {
    let n_5: Nat = x_2 - 1
    let _x_6 = x_1 + x_3
    let _x_7 = `List_range'`(_x_6, n_5, x_3)
    return List<Nat>.cons(x_1, _x_7)
  }
}

/// List.leftpad
public extension List {
  func leftpad(_ n: Nat, _ a: A) -> List<A> {
    let _x_1 = List_length(self)
    let _x_2 = n - _x_1
    let _x_3: List<A> = List_replicate(_x_2, a)
    return _x_3.appendTR(self)
  }
}

@inline(__always) public func List_leftpad<A>(_ n: Nat, _ a: A, _ l: List<A>) -> List<A> {
  l.leftpad(n, a)
}

/// List.eraseRepsBy.loop
public func List_eraseRepsBy_loop<A: Equatable>(_ r: @escaping (A, A) -> Bool, _ x_1: A, _ x_2: List<A>, _ x_3: List<A>) -> List<A> {
  switch x_2 {
  case .`nil`:
    let _x_4: List<A> = List<A>.cons(x_1, x_3)
    return _x_4.reverse
  case .cons(let head_6, let tail_7):
    let _x_8 = r(x_1, head_6)
    if _x_8 {
      return List_eraseRepsBy_loop(r, x_1, tail_7, x_3)
    } else {
      let _x_9: List<A> = List<A>.cons(x_1, x_3)
      return List_eraseRepsBy_loop(r, head_6, tail_7, _x_9)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.isPerm
public extension List where A: Equatable {
  func isPerm(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      return x_3.isEmpty
    case .cons(let head_5, let tail_6):
      let _x_7 = x_3.elem(head_5)
      if _x_7 {
        let _x_8 = x_3.erase(head_5)
        return tail_6.isPerm(_x_8)
      } else {
        return _x_7
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_isPerm<A: Equatable>(_ x_2: List<A>, _ x_3: List<A>) -> Bool {
  x_2.isPerm(x_3)
}

/// List.decidableBEx
public extension List {
  func decidableBEx(_ inst_1: @escaping (A) -> Decidable) -> Decidable {
    switch self {
    case .`nil`:
      return Decidable.isFalse
    case .cons(let head_4, let tail_5):
      let _x_6 = inst_1(head_4)
      if Decidable_decide(_x_6) {
        return Decidable.isTrue
      } else {
        let _x_7 = tail_5.decidableBEx(inst_1)
        if Decidable_decide(_x_7) {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_decidableBEx<A>(_ inst_1: @escaping (A) -> Decidable, _ x_2: List<A>) -> Decidable {
  x_2.decidableBEx(inst_1)
}

/// List.filterTR.loop
public func List_filterTR_loop<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>, _ x_2: List<A>) -> List<A> {
  switch x_1 {
  case .`nil`:
    return x_2.reverse
  case .cons(let head_4, let tail_5):
    let _x_6 = p(head_4)
    if _x_6 {
      let _x_8: List<A> = List<A>.cons(head_4, x_2)
      return List_filterTR_loop(p, tail_5, _x_8)
    } else {
      return List_filterTR_loop(p, tail_5, x_2)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.isPrefixOf
public extension List where A: Equatable {
  func isPrefixOf(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      return true
    case .cons(let head_5, let tail_6):
      switch x_3 {
      case .`nil`:
        return false
      case .cons(let head_8, let tail_9):
        let _x_11 = head_5 == head_8
        if _x_11 {
          return tail_6.isPrefixOf(tail_9)
        } else {
          return _x_11
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_isPrefixOf<A: Equatable>(_ x_2: List<A>, _ x_3: List<A>) -> Bool {
  x_2.isPrefixOf(x_3)
}

/// List.eraseIdx
public extension List {
  func eraseIdx(_ x_2: Nat) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_3, let tail_4):
      if x_2 == 0 {
        return tail_4
      } else {
        let n_5: Nat = x_2 - 1
        let _x_6 = tail_4.eraseIdx(n_5)
        return List<A>.cons(head_3, _x_6)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_eraseIdx<A>(_ x_1: List<A>, _ x_2: Nat) -> List<A> {
  x_1.eraseIdx(x_2)
}

/// List.findIdx.go
public func List_findIdx_go<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>, _ x_2: Nat) -> Nat {
  switch x_1 {
  case .`nil`:
    return x_2
  case .cons(let head_3, let tail_4):
    let _x_5 = p(head_3)
    if _x_5 {
      return x_2
    } else {
      let _x_6: Nat = 1
      let _x_7 = x_2 + _x_6
      return List_findIdx_go(p, tail_4, _x_7)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.all
public extension List {
  func all(_ x_2: @escaping (A) -> Bool) -> Bool {
    switch self {
    case .`nil`:
      return true
    case .cons(let head_4, let tail_5):
      let _x_6 = x_2(head_4)
      if _x_6 {
        return tail_5.all(x_2)
      } else {
        return _x_6
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_all<A>(_ x_1: List<A>, _ x_2: @escaping (A) -> Bool) -> Bool {
  x_1.all(x_2)
}

/// List.head
public extension List {
  var head: A {
    switch self {
    case .`nil`:
      fatalError("unreachable")
    case .cons(let head_3, _):
      return head_3
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_head<A>(_ x_1: List<A>) -> A {
  x_1.head
}

/// List.foldr
public extension List {
  func foldr<B>(_ f: @escaping (A, B) -> B, _ `init`: B) -> B {
    switch self {
    case .`nil`:
      return `init`
    case .cons(let head_2, let tail_3):
      let _x_4 = tail_3.foldr(f, `init`)
      return f(head_2, _x_4)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_foldr<A, B>(_ f: @escaping (A, B) -> B, _ `init`: B, _ x_1: List<A>) -> B {
  x_1.foldr(f, `init`)
}

/// List.intersperse
public extension List {
  func intersperse(_ sep: A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      switch tail_3 {
      case .`nil`:
        return self
      case .cons:
        let _x_6 = tail_3.intersperse(sep)
        let _x_7: List<A> = List<A>.cons(sep, _x_6)
        return List<A>.cons(head_2, _x_7)
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_intersperse<A>(_ sep: A, _ x_1: List<A>) -> List<A> {
  x_1.intersperse(sep)
}

/// List.lex
public extension List where A: Equatable, A: Equatable {
  func lex(_ `l₂`: List<A>, _ lt: @escaping (A, A) -> Bool) -> Bool {
    switch self {
    case .`nil`:
      switch `l₂` {
      case .`nil`:
        return false
      case .cons:
        return true
      default:
        fatalError("unreachable")
      }
    case .cons(let head_6, let tail_7):
      switch `l₂` {
      case .`nil`:
        return false
      case .cons(let head_9, let tail_10):
        let _x_11 = lt(head_6, head_9)
        if _x_11 {
          return _x_11
        } else {
          let _x_13 = head_6 == head_9
          if _x_13 {
            return tail_7.lex(tail_10, lt)
          } else {
            return _x_13
          }
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_lex<A: Equatable & Equatable>(_ `l₁`: List<A>, _ `l₂`: List<A>, _ lt: @escaping (A, A) -> Bool) -> Bool {
  `l₁`.lex(`l₂`, lt)
}

/// List.intercalate
public extension List {
  func intercalate(_ xs: List<List<A>>) -> List<A> {
    let _x_1 = xs.intersperse(self)
    return List_flatten(_x_1)
  }
}

@inline(__always) public func List_intercalate<A>(_ sep: List<A>, _ xs: List<List<A>>) -> List<A> {
  sep.intercalate(xs)
}

/// List.drop
public extension List {
  func drop(_ x_1: Nat) -> List<A> {
    if x_1 == 0 {
      return self
    } else {
      let n_3: Nat = x_1 - 1
      switch self {
      case .`nil`:
        return self
      case .cons(_, let tail_5):
        return tail_5.drop(n_3)
      default:
        fatalError("unreachable")
      }
    }
  }
}

@inline(__always) public func List_drop<A>(_ x_1: Nat, _ x_2: List<A>) -> List<A> {
  x_2.drop(x_1)
}

/// List.modify
public extension List {
  func modify(_ i: Nat, _ f: @escaping (A) -> A) -> List<A> {
    func _f_1(_ _y_2: List<A>) -> List<A> {
      switch _y_2 {
      case .`nil`:
        return _y_2
      case .cons(let head_3, let tail_4):
        let _x_5 = f(head_3)
        return List<A>.cons(_x_5, tail_4)
      default:
        fatalError("unreachable")
      }
    }
    return List_modifyTailIdx_go(_f_1, i, self)
  }
}

@inline(__always) public func List_modify<A>(_ l: List<A>, _ i: Nat, _ f: @escaping (A) -> A) -> List<A> {
  l.modify(i, f)
}

/// List.findIdx
public extension List {
  func findIdx(_ p: @escaping (A) -> Bool) -> Nat {
    let _x_1: Nat = 0
    return List_findIdx_go(p, self, _x_1)
  }
}

@inline(__always) public func List_findIdx<A>(_ p: @escaping (A) -> Bool, _ l: List<A>) -> Nat {
  l.findIdx(p)
}

/// List.decidableLex
public extension List where A: Equatable, A: Equatable {
  func decidableLex(_ inst_1: @escaping (A, A) -> Decidable, _ h: @escaping (A, A) -> Decidable, _ x_3: List<A>) -> Decidable {
    switch self {
    case .`nil`:
      switch x_3 {
      case .`nil`:
        return Decidable.isFalse
      case .cons:
        return Decidable.isTrue
      default:
        fatalError("unreachable")
      }
    case .cons(let head_8, let tail_9):
      let _x_10: Decidable = Decidable.isFalse
      switch x_3 {
      case .`nil`:
        return _x_10
      case .cons(let head_11, let tail_12):
        let _x_13 = inst_1(head_8, head_11)
        let _x_14 = h(head_8, head_11)
        if Decidable_decide(_x_14) {
          return Decidable.isTrue
        } else {
          if Decidable_decide(_x_13) {
            let _x_17 = tail_9.decidableLex(inst_1, h, tail_12)
            if Decidable_decide(_x_17) {
              return Decidable.isTrue
            } else {
              return Decidable.isFalse
            }
          } else {
            return Decidable.isFalse
          }
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_decidableLex<A: Equatable & Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ h: @escaping (A, A) -> Decidable, _ x_2: List<A>, _ x_3: List<A>) -> Decidable {
  x_2.decidableLex(inst_1, h, x_3)
}

/// List.splitAt
public extension List {
  func splitAt(_ n: Nat) -> Prod<List<A>, List<A>> {
    let _x_1: List<A> = List<A>.`nil`
    return List_splitAt_go(self, self, n, _x_1)
  }
}

@inline(__always) public func List_splitAt<A>(_ n: Nat, _ l: List<A>) -> Prod<List<A>, List<A>> {
  l.splitAt(n)
}

/// List.findSomeRev?
public extension List {
  func `findSomeRev?`<B>(_ f: @escaping (A) -> B?) -> B? {
    switch self {
    case .`nil`:
      return nil
    case .cons(let head_3, let tail_4):
      let _x_5 = tail_4.`findSomeRev?`(f)
      if _x_5 != nil {
        return _x_5
      } else {
        return f(head_3)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_findSomeRev?`<A, B>(_ f: @escaping (A) -> B?, _ x_1: List<A>) -> B? {
  x_1.`findSomeRev?`(f)
}

/// List.elem
public extension List where A: Equatable {
  func elem(_ a: A) -> Bool {
    switch self {
    case .`nil`:
      return false
    case .cons(let head_4, let tail_5):
      let _x_7 = a == head_4
      if _x_7 {
        return _x_7
      } else {
        return tail_5.elem(a)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_elem<A: Equatable>(_ a: A, _ x_2: List<A>) -> Bool {
  x_2.elem(a)
}

/// List.beq
public extension List where A: Equatable {
  func beq(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      switch x_3 {
      case .`nil`:
        return true
      case .cons:
        return false
      default:
        fatalError("unreachable")
      }
    case .cons(let head_8, let tail_9):
      switch x_3 {
      case .`nil`:
        return false
      case .cons(let head_11, let tail_12):
        let _x_14 = head_8 == head_11
        if _x_14 {
          return tail_9.beq(tail_12)
        } else {
          return _x_14
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_beq<A: Equatable>(_ x_2: List<A>, _ x_3: List<A>) -> Bool {
  x_2.beq(x_3)
}

/// List.isSuffixOf
public extension List where A: Equatable {
  func isSuffixOf(_ `l₂`: List<A>) -> Bool {
    let _x_2 = self.reverse
    let _x_3 = `l₂`.reverse
    return _x_2.isPrefixOf(_x_3)
  }
}

@inline(__always) public func List_isSuffixOf<A: Equatable>(_ `l₁`: List<A>, _ `l₂`: List<A>) -> Bool {
  `l₁`.isSuffixOf(`l₂`)
}

/// List.countP.go
public func List_countP_go<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>, _ x_2: Nat) -> Nat {
  switch x_1 {
  case .`nil`:
    return x_2
  case .cons(let head_3, let tail_4):
    let _x_5 = p(head_3)
    if _x_5 {
      let _x_7: Nat = 1
      let _x_8 = x_2 + _x_7
      return List_countP_go(p, tail_4, _x_8)
    } else {
      return List_countP_go(p, tail_4, x_2)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.take
public extension List {
  func take(_ x_1: Nat) -> List<A> {
    if x_1 == 0 {
      return List<A>.`nil`
    } else {
      let n_4: Nat = x_1 - 1
      switch self {
      case .`nil`:
        return self
      case .cons(let head_5, let tail_6):
        let _x_7 = tail_6.take(n_4)
        return List<A>.cons(head_5, _x_7)
      default:
        fatalError("unreachable")
      }
    }
  }
}

@inline(__always) public func List_take<A>(_ x_1: Nat, _ x_2: List<A>) -> List<A> {
  x_2.take(x_1)
}

/// List.eraseDupsBy
public extension List where A: Equatable {
  func eraseDupsBy(_ r: @escaping (A, A) -> Bool) -> List<A> {
    let _x_1: List<A> = List<A>.`nil`
    return List_eraseDupsBy_loop(r, self, _x_1)
  }
}

@inline(__always) public func List_eraseDupsBy<A: Equatable>(_ r: @escaping (A, A) -> Bool, _ `as`: List<A>) -> List<A> {
  `as`.eraseDupsBy(r)
}

/// List.tail?
public extension List {
  var `tail?`: List<A>? {
    switch self {
    case .`nil`:
      return nil
    case .cons(_, let tail_4):
      return List<A>?.some(tail_4)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_tail?`<A>(_ x_1: List<A>) -> List<A>? {
  x_1.`tail?`
}

/// List.isSublist
public extension List where A: Equatable {
  func isSublist(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      return true
    case .cons(let head_5, let tail_6):
      switch x_3 {
      case .`nil`:
        return false
      case .cons(let head_8, let tail_9):
        let _x_11 = head_5 == head_8
        if _x_11 {
          return tail_6.isSublist(tail_9)
        } else {
          return self.isSublist(tail_9)
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_isSublist<A: Equatable>(_ x_2: List<A>, _ x_3: List<A>) -> Bool {
  x_2.isSublist(x_3)
}

/// List.erase
public extension List where A: Equatable {
  func erase(_ x_3: A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_4, let tail_5):
      let _x_7 = head_4 == x_3
      if _x_7 {
        return tail_5
      } else {
        let _x_8 = tail_5.erase(x_3)
        return List<A>.cons(head_4, _x_8)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_erase<A: Equatable>(_ x_2: List<A>, _ x_3: A) -> List<A> {
  x_2.erase(x_3)
}

/// List.isPrefixOf?
public extension List where A: Equatable {
  func `isPrefixOf?`(_ x_3: List<A>) -> List<A>? {
    switch self {
    case .`nil`:
      return List<A>?.some(x_3)
    case .cons(let head_5, let tail_6):
      switch x_3 {
      case .`nil`:
        return nil
      case .cons(let head_8, let tail_9):
        let _x_11 = head_5 == head_8
        if _x_11 {
          return tail_6.`isPrefixOf?`(tail_9)
        } else {
          return nil
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_isPrefixOf?`<A: Equatable>(_ x_2: List<A>, _ x_3: List<A>) -> List<A>? {
  x_2.`isPrefixOf?`(x_3)
}

/// List.unzip
public func List_unzip<A, B>(_ x_1: List<Prod<A, B>>) -> Prod<List<A>, List<B>> {
  switch x_1 {
  case .`nil`:
    let _x_2: List<A> = List<A>.`nil`
    let _x_3: List<B> = List<B>.`nil`
    return Prod<List<A>, List<B>>(_x_2, _x_3)
  case .cons(let head_5, let tail_6):
    let fst_7 = head_5.fst
    let snd_8 = head_5.snd
    let _x_9 = List_unzip(tail_6)
    let fst_10 = _x_9.fst
    let snd_11 = _x_9.snd
    let _x_12: List<A> = List<A>.cons(fst_7, fst_10)
    let _x_13: List<B> = List<B>.cons(snd_8, snd_11)
    return Prod<List<A>, List<B>>(_x_12, _x_13)
  default:
    fatalError("unreachable")
  }
}

/// List.span.loop
public func List_span_loop<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>, _ x_2: List<A>) -> Prod<List<A>, List<A>> {
  switch x_1 {
  case .`nil`:
    let _x_3 = x_2.reverse
    return Prod<List<A>, List<A>>(_x_3, x_1)
  case .cons(let head_5, let tail_6):
    let _x_7 = p(head_5)
    if _x_7 {
      let _x_10: List<A> = List<A>.cons(head_5, x_2)
      return List_span_loop(p, tail_6, _x_10)
    } else {
      let _x_8 = x_2.reverse
      return Prod<List<A>, List<A>>(_x_8, x_1)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.tail
public extension List {
  var tail: List<A> {
    return switch self {
    case .`nil`:
      self
    case .cons(_, let tail_3):
      tail_3
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_tail<A>(_ x_1: List<A>) -> List<A> {
  x_1.tail
}

/// List.rotateLeft
public extension List {
  func rotateLeft(_ i: Nat) -> List<A> {
    let len = List_length(self)
    let _x_1: Nat = 1
    let _x_2 = len <= _x_1
    if _x_2 {
      return self
    } else {
      let i = i % len
      let ys = self.take(i)
      let zs = self.drop(i)
      return zs.appendTR(ys)
    }
  }
}

@inline(__always) public func List_rotateLeft<A>(_ xs: List<A>, _ i: Nat) -> List<A> {
  xs.rotateLeft(i)
}

/// List.isEmpty
public extension List {
  var isEmpty: Bool {
    switch self {
    case .`nil`:
      return true
    case .cons:
      return false
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_isEmpty<A>(_ x_1: List<A>) -> Bool {
  x_1.isEmpty
}

/// List.findRev?
public extension List {
  func `findRev?`(_ p: @escaping (A) -> Bool) -> A? {
    switch self {
    case .`nil`:
      return nil
    case .cons(let head_3, let tail_4):
      let _x_5 = tail_4.`findRev?`(p)
      if _x_5 != nil {
        return _x_5
      } else {
        let _x_6 = p(head_3)
        if _x_6 {
          return A?.some(head_3)
        } else {
          return _x_5
        }
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_findRev?`<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>) -> A? {
  x_1.`findRev?`(p)
}

/// List.eraseRepsBy
public extension List where A: Equatable {
  func eraseRepsBy(_ r: @escaping (A, A) -> Bool) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      let _x_4: List<A> = List<A>.`nil`
      return List_eraseRepsBy_loop(r, head_2, tail_3, _x_4)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_eraseRepsBy<A: Equatable>(_ r: @escaping (A, A) -> Bool, _ x_1: List<A>) -> List<A> {
  x_1.eraseRepsBy(r)
}

/// List.nodupDecidable
public extension List where A: Equatable {
  func nodupDecidable(_ inst_1: @escaping (A, A) -> Decidable) -> Decidable {
    func _f_2(_ a: A, _ b: A) -> Decidable {
      let _x_3 = inst_1(a, b)
      return instDecidableNot(_x_3)
    }
    return self.instDecidablePairwise(_f_2)
  }
}

@inline(__always) public func List_nodupDecidable<A: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ l: List<A>) -> Decidable {
  l.nodupDecidable(inst_1)
}

/// List.mapTR.loop
public func List_mapTR_loop<A, B>(_ f: @escaping (A) -> B, _ x_1: List<A>, _ x_2: List<B>) -> List<B> {
  switch x_1 {
  case .`nil`:
    return x_2.reverse
  case .cons(let head_4, let tail_5):
    let _x_6 = f(head_4)
    let _x_7: List<B> = List<B>.cons(_x_6, x_2)
    return List_mapTR_loop(f, tail_5, _x_7)
  default:
    fatalError("unreachable")
  }
}

/// List.find?
public extension List {
  func `find?`(_ p: @escaping (A) -> Bool) -> A? {
    switch self {
    case .`nil`:
      return nil
    case .cons(let head_3, let tail_4):
      let _x_5 = p(head_3)
      if _x_5 {
        return A?.some(head_3)
      } else {
        return tail_4.`find?`(p)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_find?`<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>) -> A? {
  x_1.`find?`(p)
}

/// List.tailD
public extension List {
  func tailD(_ fallback: List<A>) -> List<A> {
    return switch self {
    case .`nil`:
      fallback
    case .cons(_, let tail_2):
      tail_2
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_tailD<A>(_ l: List<A>, _ fallback: List<A>) -> List<A> {
  l.tailD(fallback)
}

/// List.range'TR.go
public func `List_range'TR_go`(_ step: Nat, _ x_1: Nat, _ x_2: Nat, _ x_3: List<Nat>) -> List<Nat> {
  if x_1 == 0 {
    return x_3
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5 = x_2 - step
    let _x_6: List<Nat> = List<Nat>.cons(_x_5, x_3)
    return `List_range'TR_go`(step, n_4, _x_5, _x_6)
  }
}

/// List.eraseP
public extension List {
  func eraseP(_ p: @escaping (A) -> Bool) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      let _x_4 = p(head_2)
      if _x_4 {
        return tail_3
      } else {
        let _x_5 = tail_3.eraseP(p)
        return List<A>.cons(head_2, _x_5)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_eraseP<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>) -> List<A> {
  x_1.eraseP(p)
}

/// List.span
public extension List {
  func span(_ p: @escaping (A) -> Bool) -> Prod<List<A>, List<A>> {
    let _x_1: List<A> = List<A>.`nil`
    return List_span_loop(p, self, _x_1)
  }
}

@inline(__always) public func List_span<A>(_ p: @escaping (A) -> Bool, _ `as`: List<A>) -> Prod<List<A>, List<A>> {
  `as`.span(p)
}

/// List.getLastD
public extension List {
  func getLastD(_ x_2: A) -> A {
    switch self {
    case .`nil`:
      return x_2
    case .cons:
      return self.getLast
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_getLastD<A>(_ x_1: List<A>, _ x_2: A) -> A {
  x_1.getLastD(x_2)
}

/// List.extract
public extension List {
  func extract(_ start: Nat, _ stop: Nat) -> List<A> {
    let _x_1 = stop - start
    let _x_2 = self.drop(start)
    return _x_2.take(_x_1)
  }
}

@inline(__always) public func List_extract<A>(_ l: List<A>, _ start: Nat, _ stop: Nat) -> List<A> {
  l.extract(start, stop)
}

/// List.modifyTailIdx.go
public func List_modifyTailIdx_go<A>(_ f: @escaping (List<A>) -> List<A>, _ x_1: Nat, _ x_2: List<A>) -> List<A> {
  if x_1 == 0 {
    return f(x_2)
  } else {
    let n_4: Nat = x_1 - 1
    switch x_2 {
    case .`nil`:
      return x_2
    case .cons(let head_5, let tail_6):
      let _x_7 = List_modifyTailIdx_go(f, n_4, tail_6)
      return List<A>.cons(head_5, _x_7)
    default:
      fatalError("unreachable")
    }
  }
}

/// List.headD
public extension List {
  func headD(_ x_2: A) -> A {
    return switch self {
    case .`nil`:
      x_2
    case .cons(let head_3, _):
      head_3
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_headD<A>(_ x_1: List<A>, _ x_2: A) -> A {
  x_1.headD(x_2)
}

/// List.contains
public extension List where A: Equatable {
  func contains(_ a: A) -> Bool {
    self.elem(a)
  }
}

@inline(__always) public func List_contains<A: Equatable>(_ `as`: List<A>, _ a: A) -> Bool {
  `as`.contains(a)
}

/// List.decidableBAll
public extension List {
  func decidableBAll(_ inst_1: @escaping (A) -> Decidable) -> Decidable {
    switch self {
    case .`nil`:
      return Decidable.isTrue
    case .cons(let head_4, let tail_5):
      let _x_6 = inst_1(head_4)
      if Decidable_decide(_x_6) {
        let _x_8 = tail_5.decidableBAll(inst_1)
        if Decidable_decide(_x_8) {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      } else {
        return Decidable.isFalse
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_decidableBAll<A>(_ inst_1: @escaping (A) -> Decidable, _ x_2: List<A>) -> Decidable {
  x_2.decidableBAll(inst_1)
}

/// List.mapTR
public extension List {
  func mapTR<B>(_ f: @escaping (A) -> B) -> List<B> {
    let _x_1: List<B> = List<B>.`nil`
    return List_mapTR_loop(f, self, _x_1)
  }
}

@inline(__always) public func List_mapTR<A, B>(_ f: @escaping (A) -> B, _ `as`: List<A>) -> List<B> {
  `as`.mapTR(f)
}

/// List.filterTR
public extension List {
  func filterTR(_ p: @escaping (A) -> Bool) -> List<A> {
    let _x_1: List<A> = List<A>.`nil`
    return List_filterTR_loop(p, self, _x_1)
  }
}

@inline(__always) public func List_filterTR<A>(_ p: @escaping (A) -> Bool, _ `as`: List<A>) -> List<A> {
  `as`.filterTR(p)
}

/// List.partition.loop
public func List_partition_loop<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>, _ x_2: Prod<List<A>, List<A>>) -> Prod<List<A>, List<A>> {
  switch x_1 {
  case .`nil`:
    let fst_3 = x_2.fst
    let snd_4 = x_2.snd
    let _x_5 = fst_3.reverse
    let _x_6 = snd_4.reverse
    return Prod<List<A>, List<A>>(_x_5, _x_6)
  case .cons(let head_8, let tail_9):
    let fst_10 = x_2.fst
    let snd_11 = x_2.snd
    let _x_12 = p(head_8)
    if _x_12 {
      let _x_16: List<A> = List<A>.cons(head_8, fst_10)
      let _x_17: Prod<List<A>, List<A>> = Prod<List<A>, List<A>>(_x_16, snd_11)
      return List_partition_loop(p, tail_9, _x_17)
    } else {
      let _x_13: List<A> = List<A>.cons(head_8, snd_11)
      let _x_14: Prod<List<A>, List<A>> = Prod<List<A>, List<A>>(fst_10, _x_13)
      return List_partition_loop(p, tail_9, _x_14)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.dropLast
public extension List {
  var dropLast: List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      switch tail_3 {
      case .`nil`:
        return tail_3
      case .cons:
        let _x_6 = tail_3.dropLast
        return List<A>.cons(head_2, _x_6)
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_dropLast<A>(_ x_1: List<A>) -> List<A> {
  x_1.dropLast
}

/// List.modifyHead
public extension List {
  func modifyHead(_ f: @escaping (A) -> A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      let _x_4 = f(head_2)
      return List<A>.cons(_x_4, tail_3)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_modifyHead<A>(_ f: @escaping (A) -> A, _ x_1: List<A>) -> List<A> {
  x_1.modifyHead(f)
}

/// List.singleton
@inline(__always) public func List_singleton<A>(_ a: A) -> List<A> {
  let _x_1: List<A> = List<A>.`nil`
  return List<A>.cons(a, _x_1)
}

/// List.replace
public extension List where A: Equatable {
  func replace(_ x_3: A, _ x_4: A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_5, let tail_6):
      let _x_8 = x_3 == head_5
      if _x_8 {
        return List<A>.cons(x_4, tail_6)
      } else {
        let _x_9 = tail_6.replace(x_3, x_4)
        return List<A>.cons(head_5, _x_9)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_replace<A: Equatable>(_ x_2: List<A>, _ x_3: A, _ x_4: A) -> List<A> {
  x_2.replace(x_3, x_4)
}

/// List.unzipTR
public func List_unzipTR<A, B>(_ l: List<Prod<A, B>>) -> Prod<List<A>, List<B>> {
  func _f_1(_ x_2: Prod<A, B>, _ x_3: Prod<List<A>, List<B>>) -> Prod<List<A>, List<B>> {
    let fst_4 = x_2.fst
    let snd_5 = x_2.snd
    let fst_6 = x_3.fst
    let snd_7 = x_3.snd
    let _x_8: List<A> = List<A>.cons(fst_4, fst_6)
    let _x_9: List<B> = List<B>.cons(snd_5, snd_7)
    return Prod<List<A>, List<B>>(_x_8, _x_9)
  }
  let _x_11: List<A> = List<A>.`nil`
  let _x_12: List<B> = List<B>.`nil`
  let _x_13: Prod<List<A>, List<B>> = Prod<List<A>, List<B>>(_x_11, _x_12)
  return l.foldr(_f_1, _x_13)
}

/// List.isEqv
public extension List where A: Equatable {
  func isEqv(_ x_2: List<A>, _ x_3: @escaping (A, A) -> Bool) -> Bool {
    switch self {
    case .`nil`:
      switch x_2 {
      case .`nil`:
        return true
      case .cons:
        return false
      default:
        fatalError("unreachable")
      }
    case .cons(let head_8, let tail_9):
      switch x_2 {
      case .`nil`:
        return false
      case .cons(let head_11, let tail_12):
        let _x_13 = x_3(head_8, head_11)
        if _x_13 {
          return tail_9.isEqv(tail_12, x_3)
        } else {
          return _x_13
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_isEqv<A: Equatable>(_ x_1: List<A>, _ x_2: List<A>, _ x_3: @escaping (A, A) -> Bool) -> Bool {
  x_1.isEqv(x_2, x_3)
}

/// List.replicate
public func List_replicate<A>(_ x_1: Nat, _ x_2: A) -> List<A> {
  if x_1 == 0 {
    return List<A>.`nil`
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5: List<A> = List_replicate(n_4, x_2)
    return List<A>.cons(x_2, _x_5)
  }
}

/// List.range.loop
public func List_range_loop(_ x_1: Nat, _ x_2: List<Nat>) -> List<Nat> {
  if x_1 == 0 {
    return x_2
  } else {
    let n_3: Nat = x_1 - 1
    let _x_4: List<Nat> = List<Nat>.cons(n_3, x_2)
    return List_range_loop(n_3, _x_4)
  }
}

/// List.lookup
public func List_lookup<A: Equatable, B>(_ x_2: A, _ x_3: List<Prod<A, B>>) -> B? {
  switch x_3 {
  case .`nil`:
    return nil
  case .cons(let head_5, let tail_6):
    let fst_7 = head_5.fst
    let snd_8 = head_5.snd
    let _x_10 = x_2 == fst_7
    if _x_10 {
      return B?.some(snd_8)
    } else {
      return List_lookup(x_2, tail_6)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.splitBy.loop
public func List_splitBy_loop<A: Equatable>(_ R: @escaping (A, A) -> Bool, _ x_1: List<A>, _ x_2: A, _ x_3: List<A>, _ x_4: List<List<A>>) -> List<List<A>> {
  switch x_1 {
  case .`nil`:
    let _x_5: List<A> = List<A>.cons(x_2, x_3)
    let _x_6 = _x_5.reverse
    let _x_7: List<List<A>> = List<List<A>>.cons(_x_6, x_4)
    return _x_7.reverse
  case .cons(let head_9, let tail_10):
    let _x_11 = R(x_2, head_9)
    if _x_11 {
      let _x_17: List<A> = List<A>.cons(x_2, x_3)
      return List_splitBy_loop(R, tail_10, head_9, _x_17, x_4)
    } else {
      let _x_12: List<A> = List<A>.`nil`
      let _x_13: List<A> = List<A>.cons(x_2, x_3)
      let _x_14 = _x_13.reverse
      let _x_15: List<List<A>> = List<List<A>>.cons(_x_14, x_4)
      return List_splitBy_loop(R, tail_10, head_9, _x_12, _x_15)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.dropWhile
public extension List {
  func dropWhile(_ p: @escaping (A) -> Bool) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      let _x_4 = p(head_2)
      if _x_4 {
        return tail_3.dropWhile(p)
      } else {
        return self
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_dropWhile<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>) -> List<A> {
  x_1.dropWhile(p)
}

/// List.instDecidablePairwise
public extension List where A: Equatable {
  func instDecidablePairwise(_ inst_1: @escaping (A, A) -> Decidable) -> Decidable {
    switch self {
    case .`nil`:
      return Decidable.isTrue
    case .cons(let head_4, let tail_5):
      let _x_6 = tail_5.instDecidablePairwise(inst_1)
      if Decidable_decide(_x_6) {
        let _x_10: (A) -> Decidable = { _pa0 in inst_1(head_4, _pa0) }
        let _x_11 = tail_5.decidableBAll(_x_10)
        if Decidable_decide(_x_11) {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      } else {
        return Decidable.isFalse
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_instDecidablePairwise<A: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ x_2: List<A>) -> Decidable {
  x_2.instDecidablePairwise(inst_1)
}

/// List.replicateTR
public func List_replicateTR<A>(_ n: Nat, _ a: A) -> List<A> {
  let _x_1: List<A> = List<A>.`nil`
  return List_replicateTR_loop(a, n, _x_1)
}

/// List.getLast
public extension List {
  var getLast: A {
    switch self {
    case .`nil`:
      fatalError("unreachable")
    case .cons(let head_3, let tail_4):
      switch tail_4 {
      case .`nil`:
        return head_3
      case .cons:
        return tail_4.getLast
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_getLast<A>(_ x_1: List<A>) -> A {
  x_1.getLast
}

/// List.getLast?
public extension List {
  var `getLast?`: A? {
    switch self {
    case .`nil`:
      return nil
    case .cons:
      let _x_5 = self.getLast
      return A?.some(_x_5)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_getLast?`<A>(_ x_1: List<A>) -> A? {
  x_1.`getLast?`
}

/// List.partition
public extension List {
  func partition(_ p: @escaping (A) -> Bool) -> Prod<List<A>, List<A>> {
    let _x_1: List<A> = List<A>.`nil`
    let _x_2: Prod<List<A>, List<A>> = Prod<List<A>, List<A>>(_x_1, _x_1)
    return List_partition_loop(p, self, _x_2)
  }
}

@inline(__always) public func List_partition<A>(_ p: @escaping (A) -> Bool, _ `as`: List<A>) -> Prod<List<A>, List<A>> {
  `as`.partition(p)
}

/// List.countP
public extension List {
  func countP(_ p: @escaping (A) -> Bool) -> Nat {
    let _x_1: Nat = 0
    return List_countP_go(p, self, _x_1)
  }
}

@inline(__always) public func List_countP<A>(_ p: @escaping (A) -> Bool, _ l: List<A>) -> Nat {
  l.countP(p)
}

/// List.insertIdx
public extension List {
  func insertIdx(_ i: Nat, _ a: A) -> List<A> {
    func _f_1(_ tail: List<A>) -> List<A> {
      List<A>.cons(a, tail)
    }
    return List_modifyTailIdx_go(_f_1, i, self)
  }
}

@inline(__always) public func List_insertIdx<A>(_ xs: List<A>, _ i: Nat, _ a: A) -> List<A> {
  xs.insertIdx(i, a)
}

/// List.takeWhile
public extension List {
  func takeWhile(_ p: @escaping (A) -> Bool) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      let _x_4 = p(head_2)
      if _x_4 {
        let _x_6 = tail_3.takeWhile(p)
        return List<A>.cons(head_2, _x_6)
      } else {
        return List<A>.`nil`
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_takeWhile<A>(_ p: @escaping (A) -> Bool, _ x_1: List<A>) -> List<A> {
  x_1.takeWhile(p)
}

/// List.and
public func List_and(_ bs: List<Bool>) -> Bool {
  func _f_1(_ _y_2: Bool) -> Bool {
    _y_2
  }
  return bs.all(_f_1)
}

/// List.findSome?
public extension List {
  func `findSome?`<B>(_ f: @escaping (A) -> B?) -> B? {
    switch self {
    case .`nil`:
      return nil
    case .cons(let head_3, let tail_4):
      let _x_5 = f(head_3)
      if _x_5 != nil {
        return _x_5
      } else {
        return tail_4.`findSome?`(f)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_findSome?`<A, B>(_ f: @escaping (A) -> B?, _ x_1: List<A>) -> B? {
  x_1.`findSome?`(f)
}

/// List.reverseAux
public extension List {
  func reverseAux(_ x_2: List<A>) -> List<A> {
    switch self {
    case .`nil`:
      return x_2
    case .cons(let head_3, let tail_4):
      let _x_5: List<A> = List<A>.cons(head_3, x_2)
      return tail_4.reverseAux(_x_5)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_reverseAux<A>(_ x_1: List<A>, _ x_2: List<A>) -> List<A> {
  x_1.reverseAux(x_2)
}

/// List.splitBy
public extension List where A: Equatable {
  func splitBy(_ R: @escaping (A, A) -> Bool) -> List<List<A>> {
    switch self {
    case .`nil`:
      return List<List<A>>.`nil`
    case .cons(let head_3, let tail_4):
      let _x_5: List<A> = List<A>.`nil`
      let _x_6: List<List<A>> = List<List<A>>.`nil`
      return List_splitBy_loop(R, tail_4, head_3, _x_5, _x_6)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_splitBy<A: Equatable>(_ R: @escaping (A, A) -> Bool, _ x_1: List<A>) -> List<List<A>> {
  x_1.splitBy(R)
}

/// List.zipIdx
public extension List {
  func zipIdx(_ x_2: Nat) -> List<Prod<A, Nat>> {
    switch self {
    case .`nil`:
      return List<Prod<A, Nat>>.`nil`
    case .cons(let head_4, let tail_5):
      let _x_6: Prod<A, Nat> = Prod<A, Nat>(head_4, x_2)
      let _x_7: Nat = 1
      let _x_8 = x_2 + _x_7
      let _x_9 = tail_5.zipIdx(_x_8)
      return List<Prod<A, Nat>>.cons(_x_6, _x_9)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_zipIdx<A>(_ x_1: List<A>, _ x_2: Nat) -> List<Prod<A, Nat>> {
  x_1.zipIdx(x_2)
}

/// List.leftpadTR
public extension List {
  func leftpadTR(_ n: Nat, _ a: A) -> List<A> {
    let _x_1 = List_lengthTR(self)
    let _x_2 = n - _x_1
    return List_replicateTR_loop(a, _x_2, self)
  }
}

@inline(__always) public func List_leftpadTR<A>(_ n: Nat, _ a: A, _ l: List<A>) -> List<A> {
  l.leftpadTR(n, a)
}

/// List.zipWithAll
public extension List {
  func zipWithAll<B, C>(_ f: @escaping (A?, B?) -> C, _ x_2: List<B>) -> List<C> {
    func _f_3(_ b: B) -> C {
      let _x_4: A? = nil
      let _x_5: B? = B?.some(b)
      return f(_x_4, _x_5)
    }
    func _f_7(_ a: A) -> C {
      let _x_8: A? = A?.some(a)
      let _x_9: B? = nil
      return f(_x_8, _x_9)
    }
    switch self {
    case .`nil`:
      return List_map(_f_3, x_2)
    case .cons(let head_12, let tail_13):
      switch x_2 {
      case .`nil`:
        return List_map(_f_7, self)
      case .cons(let head_15, let tail_16):
        let _x_17: A? = A?.some(head_12)
        let _x_18: B? = B?.some(head_15)
        let _x_19 = f(_x_17, _x_18)
        let _x_20 = tail_13.zipWithAll(f, tail_16)
        return List<C>.cons(_x_19, _x_20)
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_zipWithAll<A, B, C>(_ f: @escaping (A?, B?) -> C, _ x_1: List<A>, _ x_2: List<B>) -> List<C> {
  x_1.zipWithAll(f, x_2)
}

/// List.any
public extension List {
  func any(_ x_2: @escaping (A) -> Bool) -> Bool {
    switch self {
    case .`nil`:
      return false
    case .cons(let head_4, let tail_5):
      let _x_6 = x_2(head_4)
      if _x_6 {
        return _x_6
      } else {
        return tail_5.any(x_2)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_any<A>(_ x_1: List<A>, _ x_2: @escaping (A) -> Bool) -> Bool {
  x_1.any(x_2)
}

/// List.splitAt.go
public func List_splitAt_go<A>(_ l: List<A>, _ x_1: List<A>, _ x_2: Nat, _ x_3: List<A>) -> Prod<List<A>, List<A>> {
  switch x_1 {
  case .`nil`:
    return Prod<List<A>, List<A>>(l, x_1)
  case .cons(let head_5, let tail_6):
    if x_2 == 0 {
      let _x_7 = x_3.reverse
      return Prod<List<A>, List<A>>(_x_7, x_1)
    } else {
      let n_9: Nat = x_2 - 1
      let _x_10: List<A> = List<A>.cons(head_5, x_3)
      return List_splitAt_go(l, tail_6, n_9, _x_10)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.rotateRight
public extension List {
  func rotateRight(_ i: Nat) -> List<A> {
    let len = List_length(self)
    let _x_1: Nat = 1
    let _x_2 = len <= _x_1
    if _x_2 {
      return self
    } else {
      let _x_4 = i % len
      let i = len - _x_4
      let ys = self.take(i)
      let zs = self.drop(i)
      return zs.appendTR(ys)
    }
  }
}

@inline(__always) public func List_rotateRight<A>(_ xs: List<A>, _ i: Nat) -> List<A> {
  xs.rotateRight(i)
}

/// List.eraseDupsBy.loop
public func List_eraseDupsBy_loop<A: Equatable>(_ r: @escaping (A, A) -> Bool, _ x_1: List<A>, _ x_2: List<A>) -> List<A> {
  switch x_1 {
  case .`nil`:
    return x_2.reverse
  case .cons(let head_4, let tail_5):
    let _x_6: (A) -> Bool = { _pa0 in r(head_4, _pa0) }
    let _x_7 = x_2.any(_x_6)
    if _x_7 {
      return List_eraseDupsBy_loop(r, tail_5, x_2)
    } else {
      let _x_8: List<A> = List<A>.cons(head_4, x_2)
      return List_eraseDupsBy_loop(r, tail_5, _x_8)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.zipWith
public extension List {
  func zipWith<B, C>(_ f: @escaping (A, B) -> C, _ x_2: List<B>) -> List<C> {
    switch self {
    case .`nil`:
      return List<C>.`nil`
    case .cons(let head_4, let tail_5):
      switch x_2 {
      case .`nil`:
        return List<C>.`nil`
      case .cons(let head_7, let tail_8):
        let _x_9 = f(head_4, head_7)
        let _x_10 = tail_5.zipWith(f, tail_8)
        return List<C>.cons(_x_9, _x_10)
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_zipWith<A, B, C>(_ f: @escaping (A, B) -> C, _ x_1: List<A>, _ x_2: List<B>) -> List<C> {
  x_1.zipWith(f, x_2)
}

/// List.findIdx?
public extension List {
  func `findIdx?`(_ p: @escaping (A) -> Bool) -> Nat? {
    let _x_1: Nat = 0
    return `List_findIdx?_go`(p, self, _x_1)
  }
}

@inline(__always) public func `List_findIdx?`<A>(_ p: @escaping (A) -> Bool, _ l: List<A>) -> Nat? {
  l.`findIdx?`(p)
}

/// List.rightpad
public extension List {
  func rightpad(_ n: Nat, _ a: A) -> List<A> {
    let _x_1 = List_length(self)
    let _x_2 = n - _x_1
    let _x_3: List<A> = List_replicate(_x_2, a)
    return self.appendTR(_x_3)
  }
}

@inline(__always) public func List_rightpad<A>(_ n: Nat, _ a: A, _ l: List<A>) -> List<A> {
  l.rightpad(n, a)
}

/// List.instDecidableMemOfLawfulBEq_src
public extension List where A: Equatable {
  func instDecidableMemOfLawfulBEq_src(_ a: A) -> Decidable {
    let _x_3 = self.elem(a)
    if _x_3 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func List_instDecidableMemOfLawfulBEq_src<A: Equatable>(_ a: A, _ `as`: List<A>) -> Decidable {
  `as`.instDecidableMemOfLawfulBEq_src(a)
}

/// List.range
public func List_range(_ n: Nat) -> List<Nat> {
  let _x_1: List<Nat> = List<Nat>.`nil`
  return List_range_loop(n, _x_1)
}

