// Swift v3 compiler output
// Module: src.Init.Data.Option.Instances
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Option.decidableForallMem
public func Option_decidableForallMem<A>(_ inst_1: @escaping (A) -> Decidable, _ x_2: A?) -> Decidable {
  if let val_4 = x_2 {
    let _x_5 = inst_1(val_4)
    if Decidable_decide(_x_5) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isTrue
  }
}

/// Option.pmap
@inline(__always) public func Option_pmap<A, B>(_ f: @escaping (A) -> B, _ x_1: A?) -> B? {
  if let val_4 = x_1 {
    let _x_5 = f(val_4)
    return B?.some(_x_5)
  } else {
    return nil
  }
}

/// Option.instDecidableMemOfDecidableEq_src
public func Option_instDecidableMemOfDecidableEq_src<A: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ j: A, _ o: A?) -> Decidable {
  if let val_3 = o {
    let _x_4 = inst_1(val_3, j)
    if Decidable_decide(_x_4) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// Option.pbind
@inline(__always) public func Option_pbind<A, B>(_ x_1: A?, _ x_2: @escaping (A) -> B?) -> B? {
  if let val_4 = x_1 {
    return x_2(val_4)
  } else {
    return nil
  }
}

/// Option.decidableExistsMem
public func Option_decidableExistsMem<A>(_ inst_1: @escaping (A) -> Decidable, _ x_2: A?) -> Decidable {
  if let val_4 = x_2 {
    let _x_5 = inst_1(val_4)
    if Decidable_decide(_x_5) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// Option.pfilter
@inline(__always) public func Option_pfilter<A>(_ o: A?, _ p: @escaping (A) -> Bool) -> A? {
  if let val_1 = o {
    let _x_2 = p(val_1)
    if _x_2 {
      return o
    } else {
      return nil
    }
  } else {
    return o
  }
}

/// Option.pelim
@inline(__always) public func Option_pelim<A, B>(_ o: A?, _ b: B, _ f: @escaping (A) -> B) -> B {
  if let val_1 = o {
    return f(val_1)
  } else {
    return b
  }
}

