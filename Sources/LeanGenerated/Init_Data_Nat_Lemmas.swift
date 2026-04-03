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
    let _x_5: Decidable = _x_4.decidableBallLT(_f_2)
    switch _x_5 {
    case .isFalse:
      return Decidable.isFalse
    case .isTrue:
      return Decidable.isTrue
    default:
      fatalError("unreachable")
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
      let _x_4: Decidable = h(n_3)
      let _x_5: Decidable = n_3.decidableExistsLT(h)
      switch _x_5 {
      case .isFalse:
        switch _x_4 {
        case .isFalse:
          return Decidable.isFalse
        case .isTrue:
          return Decidable.isTrue
        default:
          fatalError("unreachable")
        }
      case .isTrue:
        return Decidable.isTrue
      default:
        fatalError("unreachable")
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
      let _x_5: Decidable = n_4.`decidableExistsLT'`(_f_1)
      switch _x_5 {
      case .isFalse:
        let _x_7: Decidable = I(n_4)
        switch _x_7 {
        case .isFalse:
          return Decidable.isFalse
        case .isTrue:
          return Decidable.isTrue
        default:
          fatalError("unreachable")
        }
      case .isTrue:
        return Decidable.isTrue
      default:
        fatalError("unreachable")
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
    let _x_4: Nat = self + _x_3
    let _x_5: Decidable = _x_4.`decidableExistsLT'`(_f_1)
    switch _x_5 {
    case .isFalse:
      return Decidable.isFalse
    case .isTrue:
      return Decidable.isTrue
    default:
      fatalError("unreachable")
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
      let _x_8: Decidable = n_7.decidableBallLT(_f_4)
      switch _x_8 {
      case .isFalse:
        return Decidable.isFalse
      case .isTrue:
        let _x_12: Decidable = x_3(n_7)
        switch _x_12 {
        case .isFalse:
          return Decidable.isFalse
        case .isTrue:
          return Decidable.isTrue
        default:
          fatalError("unreachable")
        }
      default:
        fatalError("unreachable")
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
    let _x_3: Nat = self + _x_2
    let _x_4: Decidable = _x_3.decidableExistsLT(inst_1)
    switch _x_4 {
    case .isFalse:
      return Decidable.isFalse
    case .isTrue:
      return Decidable.isTrue
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Nat_decidableExistsLE(_ inst_1: @escaping (Nat) -> Decidable, _ n: Nat) -> Decidable {
  n.decidableExistsLE(inst_1)
}

