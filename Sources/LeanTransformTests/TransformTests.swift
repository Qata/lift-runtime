// Swift v3 compiler output
// Module: «swift-runtime».Tests.LeanSource.SwiftTransformTests
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// TPair
public struct TPair<A, B>: @unchecked Sendable {
  let field0: A
  let field1: B

  public init(_ field0: A, _ field1: B) {
    self.field0 = field0
    self.field1 = field1
  }
}

/// TMaybe
public enum TMaybe<A>: @unchecked Sendable {
  case nothing
  case just(A)
}

/// TEither
public enum TEither<A, B>: @unchecked Sendable {
  case left(A)
  case right(B)
}

/// TTree
public indirect enum TTree<A>: @unchecked Sendable {
  case leaf(A)
  case node(TTree<A>, TTree<A>)
}

/// TColor
public enum TColor: @unchecked Sendable {
  case red
  case green
  case blue
}

public let tConst: Nat = {
  42
}()

/// tTripleOr
public func tTripleOr(_ a: Bool, _ b: Bool, _ c: Bool) -> Bool {
  let _x_1: Bool = true
  return if a {
    _x_1
  } else {
    if b {
      _x_1
    } else {
      c
    }
  }
}

/// TPair.snd
public extension TPair {
  var snd: B {
    let a_2 = self.field0
    return self.field1
  }
}

public let tBigConst: Nat = {
  999999999999999999999
}()

/// TEither.isRight
public extension TEither {
  var isRight: Bool {
    switch self {
    case .left:
      false
    case .right:
      true
    default:
      fatalError("unreachable")
    }
  }
}

/// TPair.foldRight
public extension TPair {
  func foldRight<C>(_ f: @escaping (B, C) -> C, _ `init`: C) -> C {
    let a_2 = self.field0
    let a_3 = self.field1
    return f(a_3, `init`)
  }
}

/// TEither.ctorIdx
public extension TEither {
  var ctorIdx: Nat {
    switch self {
    case .left:
      0
    case .right:
      1
    default:
      fatalError("unreachable")
    }
  }
}

/// TTree.size
public extension TTree {
  var size: Nat {
    switch self {
    case .leaf:
      return 1
    case .node(let a_4, let a_5):
      let _x_6: Nat = a_4.size
      let _x_7: Nat = a_5.size
      return _x_6 + _x_7
    default:
      fatalError("unreachable")
    }
  }
}

/// TEither.isLeft
public extension TEither {
  var isLeft: Bool {
    switch self {
    case .left:
      true
    case .right:
      false
    default:
      fatalError("unreachable")
    }
  }
}

/// TEither.mapRight
public extension TEither {
  func mapRight<C>(_ f: @escaping (B) -> C) -> TEither<A, C> {
    switch self {
    case .left(let a_2):
      return TEither<A, C>.left(a_2)
    case .right(let a_4):
      let _x_5 = f(a_4)
      return TEither<A, C>.right(_x_5)
    default:
      fatalError("unreachable")
    }
  }
}

/// TPair.mapSnd
public extension TPair {
  func mapSnd<C>(_ f: @escaping (B) -> C) -> TPair<A, C> {
    let a_2 = self.field0
    let a_3 = self.field1
    let _x_4 = f(a_3)
    return TPair<A, C>(a_2, _x_4)
  }
}

/// TMaybe.contains
public extension TMaybe where A: Equatable {
  func contains(_ val: A) -> Bool {
    switch self {
    case .nothing:
      return false
    case .just(let a_4):
      return a_4 == val
    default:
      fatalError("unreachable")
    }
  }
}

/// TMaybe.isJust
public extension TMaybe {
  var isJust: Bool {
    switch self {
    case .nothing:
      false
    case .just:
      true
    default:
      fatalError("unreachable")
    }
  }
}

/// TColor.name
public extension TColor {
  var name: String {
    switch self {
    case .red:
      "red"
    case .green:
      "green"
    case .blue:
      "blue"
    default:
      fatalError("unreachable")
    }
  }
}

/// TColor.isWarm
public extension TColor {
  var isWarm: Bool {
    switch self {
    case .red:
      true
    default:
      false
    }
  }
}

/// TEither.mapLeft
public extension TEither {
  func mapLeft<C>(_ f: @escaping (A) -> C) -> TEither<C, B> {
    switch self {
    case .left(let a_2):
      let _x_3 = f(a_2)
      return TEither<C, B>.left(_x_3)
    case .right(let a_5):
      return TEither<C, B>.right(a_5)
    default:
      fatalError("unreachable")
    }
  }
}

/// TColor.toggle
public extension TColor {
  var toggle: TColor {
    switch self {
    case .red:
      TColor.blue
    case .green:
      self
    case .blue:
      TColor.red
    default:
      fatalError("unreachable")
    }
  }
}

/// TPair.fst
public extension TPair {
  var fst: A {
    let a_2: A = self.field0
    let a_3 = self.field1
    return a_2
  }
}

/// TPair.mapFst
public extension TPair {
  func mapFst<C>(_ f: @escaping (A) -> C) -> TPair<C, B> {
    let a_2 = self.field0
    let a_3 = self.field1
    let _x_4 = f(a_2)
    return TPair<C, B>(_x_4, a_3)
  }
}

/// TMaybe.ctorIdx
public extension TMaybe {
  var ctorIdx: Nat {
    switch self {
    case .nothing:
      0
    case .just:
      1
    default:
      fatalError("unreachable")
    }
  }
}

/// TMaybe.isNothing
public extension TMaybe {
  var isNothing: Bool {
    switch self {
    case .nothing:
      true
    case .just:
      false
    default:
      fatalError("unreachable")
    }
  }
}

/// TEither.isEq
public extension TEither where A: Equatable, B: Equatable {
  func isEq(_ x_4: TEither<A, B>) -> Bool {
    switch self {
    case .left(let a_5):
      switch x_4 {
      case .left(let a_6):
        return a_5 == a_6
      default:
        return false
      }
    case .right(let a_10):
      switch x_4 {
      case .right(let a_11):
        return a_10 == a_11
      default:
        return false
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// TColor.toCtorIdx
public extension TColor {
  var toCtorIdx: Nat {
    self.ctorIdx
  }
}

/// TColor.isNotWarm
public extension TColor {
  var isNotWarm: Bool {
    let _x_1: Bool = self.isWarm
    if _x_1 {
      return false
    } else {
      return true
    }
  }
}

/// TMaybe.orElse?
public extension TMaybe {
  func `orElse?`(_ x_1: TMaybe<A>) -> TMaybe<A> {
    switch x_1 {
    case .nothing:
      self
    case .just:
      x_1
    default:
      fatalError("unreachable")
    }
  }
}

/// TColor.ctorIdx
public extension TColor {
  var ctorIdx: Nat {
    switch self {
    case .red:
      0
    case .green:
      1
    case .blue:
      2
    default:
      fatalError("unreachable")
    }
  }
}

/// TTree.ctorIdx
public extension TTree {
  var ctorIdx: Nat {
    switch self {
    case .leaf:
      0
    case .node:
      1
    default:
      fatalError("unreachable")
    }
  }
}

