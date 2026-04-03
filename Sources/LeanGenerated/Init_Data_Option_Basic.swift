// Swift v3 compiler output
// Module: src.Init.Data.Option.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Option.get
@inline(__always) public func Option_get<A>(_ x_1: A?) -> A {
  if let val_3 = x_1 {
    return val_3
  } else {
    fatalError("unreachable")
  }
}

/// Option.decidableEqNone
public func Option_decidableEqNone<A>(_ o: A?) -> Decidable {
  if o != nil {
    return Decidable.isFalse
  } else {
    return Decidable.isTrue
  }
}

/// Option.instDecidableRelLt
public func Option_instDecidableRelLt<A, B>(_ s: @escaping (A, B) -> Decidable, _ x_1: A?, _ x_2: B?) -> Decidable {
  if let val_6 = x_1 {
    let _x_7: Decidable = Decidable.isFalse
    if let val_8 = x_2 {
      return s(val_6, val_8)
    } else {
      return _x_7
    }
  } else {
    if x_2 != nil {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

/// Option.merge
public func Option_merge<A>(_ fn: @escaping (A, A) -> A, _ x_1: A?, _ x_2: A?) -> A? {
  if let val_3 = x_1 {
    if let val_4 = x_2 {
      let _x_5 = fn(val_3, val_4)
      return A?.some(_x_5)
    } else {
      return x_1
    }
  } else {
    return x_2
  }
}

/// Option.decidableNoneEq
public func Option_decidableNoneEq<A>(_ o: A?) -> Decidable {
  if o != nil {
    return Decidable.isFalse
  } else {
    return Decidable.isTrue
  }
}

/// Option.join
@inline(__always) public func Option_join<A>(_ x: A??) -> A? {
  if let val_2 = x {
    return val_2
  } else {
    return nil
  }
}

/// Option.tryCatch
@inline(__always) public func Option_tryCatch<A>(_ x: A?, _ handle: @escaping (()) -> A?) -> A? {
  if x != nil {
    return x
  } else {
    let _x_1: () = ()
    return handle(_x_1)
  }
}

/// Option.filter
@inline(__always) public func Option_filter<A>(_ p: @escaping (A) -> Bool, _ x_1: A?) -> A? {
  if let val_2 = x_1 {
    let _x_3 = p(val_2)
    if _x_3 {
      return x_1
    } else {
      return nil
    }
  } else {
    return x_1
  }
}

/// Option.instBEq_src.beq
public func Option_instBEq_beq<A: Equatable>(_ x_3: A?, _ x_4: A?) -> Bool {
  if let val_8 = x_3 {
    if let val_10 = x_4 {
      return val_8 == val_10
    } else {
      return false
    }
  } else {
    if x_4 != nil {
      return false
    } else {
      return true
    }
  }
}

/// Option.instDecidableEq
public func Option_instDecidableEq<A: Equatable>(_ inst: @escaping (A, A) -> Decidable, _ a: A?, _ b: A?) -> Decidable {
  if let val_4 = a {
    if let val_6 = b {
      let _x_7 = inst(val_4, val_6)
      if Decidable_decide(_x_7) {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    } else {
      return Decidable.isFalse
    }
  } else {
    if b != nil {
      return Decidable.isFalse
    } else {
      return Decidable.isTrue
    }
  }
}

/// Option.all
@inline(__always) public func Option_all<A>(_ p: @escaping (A) -> Bool, _ x_1: A?) -> Bool {
  if let val_3 = x_1 {
    return p(val_3)
  } else {
    return true
  }
}

/// Option.isSome
@inline(__always) public func Option_isSome<A>(_ x_1: A?) -> Bool {
  if x_1 != nil {
    return true
  } else {
    return false
  }
}

