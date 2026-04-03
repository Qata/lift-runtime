// Swift v3 compiler output
// Module: src.Init.Data.List.Sublist
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.instDecidableSublistOfDecidableEq_src
public extension List {
  func instDecidableSublistOfDecidableEq_src(_ inst_1: @escaping (A, A) -> Decidable, _ `l₂`: List<A>) -> Decidable {
    let _x_3: Bool = List_isSublist(self, `l₂`)
    if _x_3 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func List_instDecidableSublistOfDecidableEq_src<A>(_ inst_1: @escaping (A, A) -> Decidable, _ `l₁`: List<A>, _ `l₂`: List<A>) -> Decidable {
  `l₁`.instDecidableSublistOfDecidableEq_src(inst_1, `l₂`)
}

/// List.instDecidableIsSuffixOfDecidableEq_src
public extension List {
  func instDecidableIsSuffixOfDecidableEq_src(_ inst_1: @escaping (A, A) -> Decidable, _ `l₂`: List<A>) -> Decidable {
    let _x_3: Bool = List_isSuffixOf(self, `l₂`)
    if _x_3 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func List_instDecidableIsSuffixOfDecidableEq_src<A>(_ inst_1: @escaping (A, A) -> Decidable, _ `l₁`: List<A>, _ `l₂`: List<A>) -> Decidable {
  `l₁`.instDecidableIsSuffixOfDecidableEq_src(inst_1, `l₂`)
}

/// List.instDecidableIsPrefixOfDecidableEq_src
public extension List {
  func instDecidableIsPrefixOfDecidableEq_src(_ inst_1: @escaping (A, A) -> Decidable, _ `l₂`: List<A>) -> Decidable {
    let _x_3: Bool = List_isPrefixOf(self, `l₂`)
    if _x_3 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func List_instDecidableIsPrefixOfDecidableEq_src<A>(_ inst_1: @escaping (A, A) -> Decidable, _ `l₁`: List<A>, _ `l₂`: List<A>) -> Decidable {
  `l₁`.instDecidableIsPrefixOfDecidableEq_src(inst_1, `l₂`)
}

