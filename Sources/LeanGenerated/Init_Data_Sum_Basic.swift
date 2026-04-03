// Swift v3 compiler output
// Module: src.Init.Data.Sum.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Sum.instDecidableRelSumLex
public extension Sum {
  func instDecidableRelSumLex(_ inst_3: @escaping (A, A) -> Decidable, _ inst_4: @escaping (B, B) -> Decidable, _ x_6: Sum<A, B>) -> Decidable {
    switch self {
    case .inl(let val_7):
      switch x_6 {
      case .inl(let val_8):
        let _x_9: Decidable = inst_3(val_7, val_8)
        switch _x_9 {
        case .isFalse:
          return Decidable.isFalse
        case .isTrue:
          return Decidable.isTrue
        default:
          fatalError("unreachable")
        }
      case .inr:
        return Decidable.isTrue
      default:
        fatalError("unreachable")
      }
    case .inr(let val_14):
      switch x_6 {
      case .inl:
        return Decidable.isFalse
      case .inr(let val_17):
        let _x_18: Decidable = inst_4(val_14, val_17)
        switch _x_18 {
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
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Sum_instDecidableRelSumLex<A, B>(_ inst_3: @escaping (A, A) -> Decidable, _ inst_4: @escaping (B, B) -> Decidable, _ x_5: Sum<A, B>, _ x_6: Sum<A, B>) -> Decidable {
  x_5.instDecidableRelSumLex(inst_3, inst_4, x_6)
}

/// Sum.getRight?
public extension Sum {
  var `getRight?`: B? {
    switch self {
    case .inl:
      return nil
    case .inr(let val_4):
      return B?.some(val_4)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `Sum_getRight?`<A, B>(_ x_1: Sum<A, B>) -> B? {
  x_1.`getRight?`
}

/// Sum.instBEq_src.beq
public func Sum_instBEq_beq<A: Equatable, B: Equatable>(_ x_5: Sum<A, B>, _ x_6: Sum<A, B>) -> Bool {
  switch x_5 {
  case .inl(let val_7):
    let val_8 = x_6.val_8
    return val_7 == val_8
  case .inr(let val_12):
    let val_13 = x_6.val_13
    return val_12 == val_13
  default:
    fatalError("unreachable")
  }
}

/// Sum.getLeft?
public extension Sum {
  var `getLeft?`: A? {
    switch self {
    case .inl(let val_2):
      return A?.some(val_2)
    case .inr:
      return nil
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `Sum_getLeft?`<A, B>(_ x_1: Sum<A, B>) -> A? {
  x_1.`getLeft?`
}

/// Sum.getRight
public extension Sum {
  var getRight: B {
    switch self {
    case .inl:
      fatalError("unreachable")
    case .inr(let val_4):
      return val_4
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Sum_getRight<A, B>(_ x_1: Sum<A, B>) -> B {
  x_1.getRight
}

/// Sum.isRight
public extension Sum {
  var isRight: Bool {
    switch self {
    case .inl:
      return false
    case .inr:
      return true
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Sum_isRight<A, B>(_ x_1: Sum<A, B>) -> Bool {
  x_1.isRight
}

/// Sum.getLeft
public extension Sum {
  var getLeft: A {
    switch self {
    case .inl(let val_3):
      return val_3
    case .inr:
      fatalError("unreachable")
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Sum_getLeft<A, B>(_ x_1: Sum<A, B>) -> A {
  x_1.getLeft
}

/// Sum.isLeft
public extension Sum {
  var isLeft: Bool {
    switch self {
    case .inl:
      return true
    case .inr:
      return false
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Sum_isLeft<A, B>(_ x_1: Sum<A, B>) -> Bool {
  x_1.isLeft
}

/// Sum.instDecidableLiftRel
public extension Sum {
  func instDecidableLiftRel<C, D>(_ inst_1: @escaping (A, C) -> Decidable, _ inst_2: @escaping (B, D) -> Decidable, _ x_4: Sum<C, D>) -> Decidable {
    switch self {
    case .inl(let val_5):
      switch x_4 {
      case .inl(let val_6):
        let _x_7: Decidable = inst_1(val_5, val_6)
        switch _x_7 {
        case .isFalse:
          return Decidable.isFalse
        case .isTrue:
          return Decidable.isTrue
        default:
          fatalError("unreachable")
        }
      case .inr:
        return Decidable.isFalse
      default:
        fatalError("unreachable")
      }
    case .inr(let val_12):
      switch x_4 {
      case .inl:
        return Decidable.isFalse
      case .inr(let val_15):
        let _x_16: Decidable = inst_2(val_12, val_15)
        switch _x_16 {
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
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Sum_instDecidableLiftRel<A, C, B, D>(_ inst_1: @escaping (A, C) -> Decidable, _ inst_2: @escaping (B, D) -> Decidable, _ x_3: Sum<A, B>, _ x_4: Sum<C, D>) -> Decidable {
  x_3.instDecidableLiftRel(inst_1, inst_2, x_4)
}

