// Swift v3 compiler output
// Module: src.Init.Data.Nat.Lemmas
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.decidableBallLE
public extension Nat {
  func decidableBallLE(_ inst_1: @escaping (Nat) -> Decidable) -> Decidable {
    func _f_2(_ n: Nat) -> Decidable {
      inst_1(self)
    }
    let _x_4: Nat = self + 1
    let _x_5 = _x_4.decidableBallLT(_f_2)
    if Decidable_decide(_x_5) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func Nat_decidableBallLE(_ n: Nat, _ inst_1: @escaping (Nat) -> Decidable) -> Decidable {
  n.decidableBallLE(inst_1)
}

/// Nat.decidableExistsLT
public extension Nat {
  func decidableExistsLT(_ h: @escaping (Nat) -> Decidable) -> Decidable {
    if self == 0 {
      return Decidable.isFalse
    } else {
      let n_3: Nat = self - 1
      let _x_4 = h(n_3)
      let _x_5 = n_3.decidableExistsLT(h)
      if Decidable_decide(_x_5) {
        return Decidable.isTrue
      } else {
        if Decidable_decide(_x_4) {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      }
    }
  }
}

@inline(__always) public func Nat_decidableExistsLT(_ h: @escaping (Nat) -> Decidable, _ x_1: Nat) -> Decidable {
  x_1.decidableExistsLT(h)
}

/// Nat.decidableExistsLT'
public extension Nat {
  func `decidableExistsLT'`(_ I: @escaping (Nat) -> Decidable) -> Decidable {
    func _f_1(_ m: Nat) -> Decidable {
      I(m)
    }
    if self == 0 {
      return Decidable.isFalse
    } else {
      let n_4: Nat = self - 1
      let _x_5 = n_4.`decidableExistsLT'`(_f_1)
      if Decidable_decide(_x_5) {
        return Decidable.isTrue
      } else {
        let _x_7 = I(n_4)
        if Decidable_decide(_x_7) {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      }
    }
  }
}

@inline(__always) public func `Nat_decidableExistsLT'`(_ k: Nat, _ I: @escaping (Nat) -> Decidable) -> Decidable {
  k.`decidableExistsLT'`(I)
}

/// Nat.decidableExistsLE'
public extension Nat {
  func `decidableExistsLE'`(_ I: @escaping (Nat) -> Decidable) -> Decidable {
    func _f_1(_ m: Nat) -> Decidable {
      I(m)
    }
    let _x_3: Nat = 1
    let _x_4 = self + _x_3
    let _x_5 = _x_4.`decidableExistsLT'`(_f_1)
    if Decidable_decide(_x_5) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func `Nat_decidableExistsLE'`(_ k: Nat, _ I: @escaping (Nat) -> Decidable) -> Decidable {
  k.`decidableExistsLE'`(I)
}

/// Nat.decidableBallLT
public extension Nat {
  func decidableBallLT(_ x_3: @escaping (Nat) -> Decidable) -> Decidable {
    func _f_4(_ n: Nat) -> Decidable {
      x_3(n)
    }
    if self == 0 {
      return Decidable.isTrue
    } else {
      let n_7: Nat = self - 1
      let _x_8 = n_7.decidableBallLT(_f_4)
      if Decidable_decide(_x_8) {
        let _x_12 = x_3(n_7)
        if Decidable_decide(_x_12) {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      } else {
        return Decidable.isFalse
      }
    }
  }
}

@inline(__always) public func Nat_decidableBallLT(_ x_1: Nat, _ x_3: @escaping (Nat) -> Decidable) -> Decidable {
  x_1.decidableBallLT(x_3)
}

/// Nat.decidableExistsLE
public extension Nat {
  func decidableExistsLE(_ inst_1: @escaping (Nat) -> Decidable) -> Decidable {
    let _x_2: Nat = 1
    let _x_3 = self + _x_2
    let _x_4 = _x_3.decidableExistsLT(inst_1)
    if Decidable_decide(_x_4) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func Nat_decidableExistsLE(_ inst_1: @escaping (Nat) -> Decidable, _ n: Nat) -> Decidable {
  n.decidableExistsLE(inst_1)
}

