// Swift v3 compiler output
// Module: src.Init.Data.Nat.Fold
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.all
public extension Nat {
  func all(_ x_2: @escaping (Nat) -> Bool) -> Bool {
    func _f_3(_ i: Nat) -> Bool {
      x_2(i)
    }
    if self == 0 {
      return true
    } else {
      let n_6: Nat = self - 1
      let _x_7: Bool = n_6.all(_f_3)
      if _x_7 {
        return x_2(n_6)
      } else {
        return _x_7
      }
    }
  }
}

@inline(__always) public func Nat_all(_ x_1: Nat, _ x_2: @escaping (Nat) -> Bool) -> Bool {
  x_1.all(x_2)
}

/// _private.src.Init.Data.Nat.Fold.0.Nat.foldTR.loop
public func Nat_foldTR_loop<A>(_ n: Nat, _ f: @escaping (Nat, A) -> A, _ x_1: Nat, _ x_3: A) -> A {
  if x_1 == 0 {
    return x_3
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5: Nat = n - x_1
    let _x_6 = f(_x_5, x_3)
    return Nat_foldTR_loop(n, f, n_4, _x_6)
  }
}

/// _private.src.Init.Data.Nat.Fold.0.Nat.dfoldCast
public func Nat_dfoldCast(_ n: Nat, _ i: Nat, _ j: Nat) -> () {
}

/// Nat.any
public extension Nat {
  func any(_ x_2: @escaping (Nat) -> Bool) -> Bool {
    func _f_3(_ i: Nat) -> Bool {
      x_2(i)
    }
    if self == 0 {
      return false
    } else {
      let n_6: Nat = self - 1
      let _x_7: Bool = n_6.any(_f_3)
      if _x_7 {
        return _x_7
      } else {
        return x_2(n_6)
      }
    }
  }
}

@inline(__always) public func Nat_any(_ x_1: Nat, _ x_2: @escaping (Nat) -> Bool) -> Bool {
  x_1.any(x_2)
}

/// _private.src.Init.Data.Nat.Fold.0.Nat.allTR.loop
public func Nat_allTR_loop(_ n: Nat, _ f: @escaping (Nat) -> Bool, _ x_1: Nat) -> Bool {
  if x_1 == 0 {
    return true
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5: Nat = n - x_1
    let _x_6: Bool = f(_x_5)
    if _x_6 {
      return Nat_allTR_loop(n, f, n_4)
    } else {
      return _x_6
    }
  }
}

/// _private.src.Init.Data.Nat.Fold.0.Nat.anyTR.loop
public func Nat_anyTR_loop(_ n: Nat, _ f: @escaping (Nat) -> Bool, _ x_1: Nat) -> Bool {
  if x_1 == 0 {
    return false
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5: Nat = n - x_1
    let _x_6: Bool = f(_x_5)
    if _x_6 {
      return _x_6
    } else {
      return Nat_anyTR_loop(n, f, n_4)
    }
  }
}

