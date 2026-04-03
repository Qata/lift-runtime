// Swift v3 compiler output
// Module: src.Init.Data.List.Sort.Impl
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.MergeSort.Internal.mergeTR
public func List_MergeSort_Internal_mergeTR<A: Equatable>(_ `l₁`: List<A>, _ `l₂`: List<A>, _ le: @escaping (A, A) -> Bool) -> List<A> {
  let _x_1: List<A> = .`nil`
  return List_MergeSort_Internal_mergeTR_go(le, `l₁`, `l₂`, _x_1)
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
      let _x_10: Bool = le(head_5, head_8)
      if _x_10 {
        let _x_13: List<A> = .cons(head_5, x_3)
        return List_MergeSort_Internal_mergeTR_go(le, tail_6, x_2, _x_13)
      } else {
        let _x_11: List<A> = .cons(head_8, x_3)
        return List_MergeSort_Internal_mergeTR_go(le, x_1, tail_9, _x_11)
      }
    default:
      fatalError("unreachable")
    }
  default:
    fatalError("unreachable")
  }
}

