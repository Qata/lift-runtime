// Swift v3 compiler output
// Module: src.Init.Data.List.Sort.Impl
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.List.Sort.Impl.0.List.MergeSort.Internal.splitRevAt.go
public func List_MergeSort_Internal_splitRevAt_go<A>(_ x_1: List<A>, _ x_2: Nat, _ x_3: List<A>) -> Prod<List<A>, List<A>> {
  switch x_1 {
  case .cons(let head_4, let tail_5):
    if x_2 == 0 {
      return Prod<List<A>, List<A>>(x_3, x_1)
    } else {
      let n_6: Nat = x_2 - 1
      let _x_7: List<A> = List<A>.cons(head_4, x_3)
      return List_MergeSort_Internal_splitRevAt_go(tail_5, n_6, _x_7)
    }
  default:
    return Prod<List<A>, List<A>>(x_3, x_1)
  }
}

/// _private.src.Init.Data.List.Sort.Impl.0.List.MergeSort.Internal.mergeSortTR.run
public func List_MergeSort_Internal_mergeSortTR_run<A: Equatable>(_ le: @escaping (A, A) -> Bool, _ x_1: Nat, _ x_2: List<A>) -> List<A> {
  if x_1 == 0 {
    switch x_2 {
    case .`nil`:
      return x_2
    case .cons:
      fatalError("unreachable")
    default:
      fatalError("unreachable")
    }
  } else {
    let n_7: Nat = x_1 - 1
    if n_7 == 0 {
      switch x_2 {
      case .`nil`:
        fatalError("unreachable")
      case .cons(_, let tail_11):
        switch tail_11 {
        case .`nil`:
          return x_2
        case .cons:
          fatalError("unreachable")
        default:
          fatalError("unreachable")
        }
      default:
        fatalError("unreachable")
      }
    } else {
      let n_14: Nat = n_7 - 1
      let _x_15: Nat = 2
      let _x_16 = n_14 + _x_15
      let _x_17 = List_MergeSort_Internal_splitInTwo(_x_16, x_2)
      let fst_18 = _x_17.fst
      let snd_19 = _x_17.snd
      let _x_20: Nat = 2
      let _x_21 = n_14 + _x_20
      let _x_22: Nat = 1
      let _x_23 = _x_21 + _x_22
      let _x_24: Nat = 1
      let _x_25 = Nat_shiftRight(_x_23, _x_24)
      let _x_26 = List_MergeSort_Internal_mergeSortTR_run(le, _x_25, fst_18)
      let _x_27: Nat = 1
      let _x_28 = Nat_shiftRight(_x_21, _x_27)
      let _x_29 = List_MergeSort_Internal_mergeSortTR_run(le, _x_28, snd_19)
      return List_MergeSort_Internal_mergeTR(_x_26, _x_29, le)
    }
  }
}

/// List.MergeSort.Internal.mergeSortTR₂
public func `List_MergeSort_Internal_mergeSortTR₂`<A: Equatable>(_ l: List<A>, _ le: @escaping (A, A) -> Bool) -> List<A> {
  let _x_1 = List_lengthTR(l)
  let _x_2 = l
  return `List_MergeSort_Internal_mergeSortTR₂_run`(le, _x_1, _x_2)
}

/// List.MergeSort.Internal.mergeSortTR
public func List_MergeSort_Internal_mergeSortTR<A: Equatable>(_ l: List<A>, _ le: @escaping (A, A) -> Bool) -> List<A> {
  let _x_1 = List_lengthTR(l)
  let _x_2 = l
  return List_MergeSort_Internal_mergeSortTR_run(le, _x_1, _x_2)
}

/// _private.src.Init.Data.List.Sort.Impl.0.List.MergeSort.Internal.mergeSortTR₂.run
public func `List_MergeSort_Internal_mergeSortTR₂_run`<A: Equatable>(_ le: @escaping (A, A) -> Bool, _ x_1: Nat, _ x_2: List<A>) -> List<A> {
  if x_1 == 0 {
    switch x_2 {
    case .`nil`:
      return x_2
    case .cons:
      fatalError("unreachable")
    default:
      fatalError("unreachable")
    }
  } else {
    let n_7: Nat = x_1 - 1
    if n_7 == 0 {
      switch x_2 {
      case .`nil`:
        fatalError("unreachable")
      case .cons(_, let tail_11):
        switch tail_11 {
        case .`nil`:
          return x_2
        case .cons:
          fatalError("unreachable")
        default:
          fatalError("unreachable")
        }
      default:
        fatalError("unreachable")
      }
    } else {
      let n_14: Nat = n_7 - 1
      let _x_15: Nat = 2
      let _x_16 = n_14 + _x_15
      let _x_17 = List_MergeSort_Internal_splitRevInTwo(_x_16, x_2)
      let fst_18 = _x_17.fst
      let snd_19 = _x_17.snd
      let _x_20: Nat = 2
      let _x_21 = n_14 + _x_20
      let _x_22: Nat = 1
      let _x_23 = _x_21 + _x_22
      let _x_24: Nat = 1
      let _x_25 = Nat_shiftRight(_x_23, _x_24)
      let _x_26 = `List_MergeSort_Internal_mergeSortTR₂_run'`(le, _x_25, fst_18)
      let _x_27: Nat = 1
      let _x_28 = Nat_shiftRight(_x_21, _x_27)
      let _x_29 = `List_MergeSort_Internal_mergeSortTR₂_run`(le, _x_28, snd_19)
      return List_MergeSort_Internal_mergeTR(_x_26, _x_29, le)
    }
  }
}

/// _private.src.Init.Data.List.Sort.Impl.0.List.MergeSort.Internal.mergeSortTR₂.run'
public func `List_MergeSort_Internal_mergeSortTR₂_run'`<A: Equatable>(_ le: @escaping (A, A) -> Bool, _ x_1: Nat, _ x_2: List<A>) -> List<A> {
  if x_1 == 0 {
    switch x_2 {
    case .`nil`:
      return x_2
    case .cons:
      fatalError("unreachable")
    default:
      fatalError("unreachable")
    }
  } else {
    let n_7: Nat = x_1 - 1
    if n_7 == 0 {
      switch x_2 {
      case .`nil`:
        fatalError("unreachable")
      case .cons(_, let tail_11):
        switch tail_11 {
        case .`nil`:
          return x_2
        case .cons:
          fatalError("unreachable")
        default:
          fatalError("unreachable")
        }
      default:
        fatalError("unreachable")
      }
    } else {
      let n_14: Nat = n_7 - 1
      let _x_15: Nat = 2
      let _x_16 = n_14 + _x_15
      let _x_17 = `List_MergeSort_Internal_splitRevInTwo'`(_x_16, x_2)
      let fst_18 = _x_17.fst
      let snd_19 = _x_17.snd
      let _x_20: Nat = 2
      let _x_21 = n_14 + _x_20
      let _x_22: Nat = 1
      let _x_23 = _x_21 + _x_22
      let _x_24: Nat = 1
      let _x_25 = Nat_shiftRight(_x_23, _x_24)
      let _x_26 = `List_MergeSort_Internal_mergeSortTR₂_run'`(le, _x_25, snd_19)
      let _x_27: Nat = 1
      let _x_28 = Nat_shiftRight(_x_21, _x_27)
      let _x_29 = `List_MergeSort_Internal_mergeSortTR₂_run`(le, _x_28, fst_18)
      return List_MergeSort_Internal_mergeTR(_x_26, _x_29, le)
    }
  }
}

/// List.MergeSort.Internal.mergeTR
public func List_MergeSort_Internal_mergeTR<A: Equatable>(_ `l₁`: List<A>, _ `l₂`: List<A>, _ le: @escaping (A, A) -> Bool) -> List<A> {
  let _x_1: List<A> = List<A>.`nil`
  return List_MergeSort_Internal_mergeTR_go(le, `l₁`, `l₂`, _x_1)
}

/// List.MergeSort.Internal.splitRevInTwo
public func List_MergeSort_Internal_splitRevInTwo<A>(_ n: Nat, _ l: List<A>) -> Prod<List<A>, List<A>> {
  let _x_1: Nat = 1
  let _x_2 = n + _x_1
  let _x_3: Nat = 1
  let _x_4 = Nat_shiftRight(_x_2, _x_3)
  let _x_5 = l
  let r = List_MergeSort_Internal_splitRevAt(_x_4, _x_5)
  let _x_6 = r.fst
  let _x_7 = _x_6
  let _x_8 = r.snd
  let _x_9 = _x_8
  return Prod<List<A>, List<A>>(_x_7, _x_9)
}

/// _private.src.Init.Data.List.Sort.Impl.0.List.MergeSort.Internal.mergeTR.go
public func List_MergeSort_Internal_mergeTR_go<A: Equatable>(_ le: @escaping (A, A) -> Bool, _ x_1: List<A>, _ x_2: List<A>, _ x_3: List<A>) -> List<A> {
  switch x_1 {
  case .`nil`:
    return List_reverseAux(x_3, x_2)
  case .cons(let head_5, let tail_6):
    switch x_2 {
    case .`nil`:
      return List_reverseAux(x_3, x_1)
    case .cons(let head_8, let tail_9):
      let _x_10 = le(head_5, head_8)
      if _x_10 {
        let _x_13: List<A> = List<A>.cons(head_5, x_3)
        return List_MergeSort_Internal_mergeTR_go(le, tail_6, x_2, _x_13)
      } else {
        let _x_11: List<A> = List<A>.cons(head_8, x_3)
        return List_MergeSort_Internal_mergeTR_go(le, x_1, tail_9, _x_11)
      }
    default:
      fatalError("unreachable")
    }
  default:
    fatalError("unreachable")
  }
}

/// List.MergeSort.Internal.splitRevInTwo'
public func `List_MergeSort_Internal_splitRevInTwo'`<A>(_ n: Nat, _ l: List<A>) -> Prod<List<A>, List<A>> {
  let _x_1: Nat = 1
  let _x_2 = Nat_shiftRight(n, _x_1)
  let _x_3 = l
  let r = List_MergeSort_Internal_splitRevAt(_x_2, _x_3)
  let _x_4 = r.fst
  let _x_5 = _x_4
  let _x_6 = r.snd
  let _x_7 = _x_6
  return Prod<List<A>, List<A>>(_x_5, _x_7)
}

/// List.MergeSort.Internal.splitRevAt
public func List_MergeSort_Internal_splitRevAt<A>(_ n: Nat, _ l: List<A>) -> Prod<List<A>, List<A>> {
  let _x_1: List<A> = List<A>.`nil`
  return List_MergeSort_Internal_splitRevAt_go(l, n, _x_1)
}

