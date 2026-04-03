// Swift v3 compiler output
// Module: src.Init.Data.List.Perm
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.decidablePerm
public extension List {
  func decidablePerm(_ inst_1: @escaping (A, A) -> Decidable, _ `l₂`: List<A>) -> Decidable {
    let _x_3: Bool = List_isPerm(self, `l₂`)
    if _x_3 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func List_decidablePerm<A>(_ inst_1: @escaping (A, A) -> Decidable, _ `l₁`: List<A>, _ `l₂`: List<A>) -> Decidable {
  `l₁`.decidablePerm(inst_1, `l₂`)
}

