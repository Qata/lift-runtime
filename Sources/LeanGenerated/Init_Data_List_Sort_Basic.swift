// Swift v3 compiler output
// Module: src.Init.Data.List.Sort.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

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
        let _x_5: Bool = le(head_1, head_3)
        if _x_5 {
          let _x_8: List<A> = tail_2.merge(ys, le)
          return List<A>.cons(head_1, _x_8)
        } else {
          let _x_6: List<A> = self.merge(tail_4, le)
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

