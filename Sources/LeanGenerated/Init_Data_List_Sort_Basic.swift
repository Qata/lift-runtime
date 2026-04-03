// Swift v3 compiler output
// Module: src.Init.Data.List.Sort.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.MergeSort.Internal.splitInTwo
public func List_MergeSort_Internal_splitInTwo<A>(_ n: Nat, _ l: List<A>) -> Prod<List<A>, List<A>> {
  let _x_1: Nat = 1
  let _x_2 = n + _x_1
  let _x_3: Nat = 1
  let _x_4 = Nat_shiftRight(_x_2, _x_3)
  let _x_5 = l
  let r = List_splitAt(_x_4, _x_5)
  let _x_6 = r.fst
  let _x_7 = _x_6
  let _x_8 = r.snd
  let _x_9 = _x_8
  return Prod<List<A>, List<A>>(_x_7, _x_9)
}

/// List.zipIdxLE
public func List_zipIdxLE<A: Equatable>(_ le: @escaping (A, A) -> Bool, _ a: Prod<A, Nat>, _ b: Prod<A, Nat>) -> Bool {
  let _x_1 = a.fst
  let _x_2 = b.fst
  let _x_3 = le(_x_1, _x_2)
  if _x_3 {
    let _x_4 = le(_x_2, _x_1)
    if _x_4 {
      let _x_5 = a.snd
      let _x_6 = b.snd
      return _x_5 <= _x_6
    } else {
      return _x_3
    }
  } else {
    return _x_3
  }
}

/// List.mergeSort
public extension List where A: Equatable {
  func mergeSort(_ x_2: @escaping (A, A) -> Bool) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(_, let tail_4):
      switch tail_4 {
      case .`nil`:
        return self
      case .cons:
        let _x_7 = List_lengthTR(self)
        let _x_8 = self
        let lr = List_MergeSort_Internal_splitInTwo(_x_7, _x_8)
        let _x_9 = lr.fst
        let _x_10 = _x_9
        let _x_11 = _x_10.mergeSort(x_2)
        let _x_12 = lr.snd
        let _x_13 = _x_12
        let _x_14 = _x_13.mergeSort(x_2)
        return _x_11.merge(_x_14, x_2)
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_mergeSort<A: Equatable>(_ x_1: List<A>, _ x_2: @escaping (A, A) -> Bool) -> List<A> {
  x_1.mergeSort(x_2)
}

/// List.merge
public extension List where A: Equatable {
  func merge(_ ys: List<A>, _ le: @escaping (A, A) -> Bool) -> List<A> {
    switch self {
    case .`nil`:
      return ys
    case .cons(let head_1, let tail_2):
      switch ys {
      case .`nil`:
        return self
      case .cons(let head_3, let tail_4):
        let _x_5 = le(head_1, head_3)
        if _x_5 {
          let _x_8 = tail_2.merge(ys, le)
          return List<A>.cons(head_1, _x_8)
        } else {
          let _x_6 = self.merge(tail_4, le)
          return List<A>.cons(head_3, _x_6)
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_merge<A: Equatable>(_ xs: List<A>, _ ys: List<A>, _ le: @escaping (A, A) -> Bool) -> List<A> {
  xs.merge(ys, le)
}

