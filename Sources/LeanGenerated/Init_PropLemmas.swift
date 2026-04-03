// Swift v3 compiler output
// Module: src.Init.PropLemmas
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// exists_prop_decidable
@inline(__always) public func exists_prop_decidable(_ inst_1: Decidable, _ inst_2: Decidable) -> Decidable {
  if Decidable_decide(inst_1) {
    let _x_4 = inst_2
    if Decidable_decide(_x_4) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// decidable_of_iff'
@inline(__always) public func `decidable_of_iff'`(_ inst_1: Decidable) -> Decidable {
  if Decidable_decide(inst_1) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// forall_prop_decidable
@inline(__always) public func forall_prop_decidable(_ inst_1: Decidable, _ inst_2: Decidable) -> Decidable {
  if Decidable_decide(inst_1) {
    let _x_4 = inst_2
    if Decidable_decide(_x_4) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isTrue
  }
}

/// instDecidablePredComp_src._aux_1
public func instDecidablePredComp__aux_1<A, B>(_ f: @escaping (B) -> A, _ inst_3: @escaping (A) -> Decidable, _ x: B) -> Decidable {
  let _x_4 = f(x)
  return inst_3(_x_4)
}

/// decidable_of_iff
@inline(__always) public func decidable_of_iff(_ inst_1: Decidable) -> Decidable {
  if Decidable_decide(inst_1) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// decidable_of_bool
public func decidable_of_bool(_ x_1: Bool) -> Decidable {
  if x_1 {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

