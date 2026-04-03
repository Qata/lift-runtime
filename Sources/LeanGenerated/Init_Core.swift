// Swift v3 compiler output
// Module: src.Init.Core
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Sigma
public struct Sigma<A>: @unchecked Sendable {
  let `β`: (A) -> ()
  let fst: A
  let snd: Any

  public init(_ `β`: @escaping (A) -> (), _ fst: A, _ snd: Any) {
    self.`β` = `β`
    self.fst = fst
    self.snd = snd
  }
}

/// PNonScalar
public struct PNonScalar: @unchecked Sendable {
  let v: Nat

  public init(_ v: Nat) {
    self.v = v
  }
}

/// NonScalar
public struct NonScalar: @unchecked Sendable {
  let val: Nat

  public init(_ val: Nat) {
    self.val = val
  }
}

public let Task_Priority_dedicated: Nat = {
  9
}()

/// PSum.ctorIdx
public extension PSum {
  var ctorIdx: Nat {
    switch self {
    case .inl:
      return 0
    case .inr:
      return 1
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func PSum_ctorIdx<A, B>(_ x: PSum<A, B>) -> Nat {
  x.ctorIdx
}

/// instDecidableEqOfLawfulBEq
public func instDecidableEqOfLawfulBEq<A: Equatable>(_ x: A, _ y: A) -> Decidable {
  let _x_4 = x == y
  if _x_4 {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// flip
@inline(__always) public func flip<A, B, C>(_ f: @escaping (A, B) -> C, _ b: B, _ a: A) -> C {
  f(a, b)
}

/// instDecidableEqProd_src
public func instDecidableEqProd_src<A: Equatable, B: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ inst_2: @escaping (B, B) -> Decidable, _ x_3: Prod<A, B>, _ x_4: Prod<A, B>) -> Decidable {
  let fst_5 = x_3.fst
  let snd_6 = x_3.snd
  let fst_7 = x_4.fst
  let snd_8 = x_4.snd
  let _x_9 = inst_2(snd_6, snd_8)
  let _x_10 = inst_1(fst_5, fst_7)
  if Decidable_decide(_x_10) {
    if Decidable_decide(_x_9) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// instDecidableEqSigma
public func instDecidableEqSigma<A: Equatable>(_ `h₁`: @escaping (A, A) -> Decidable, _ `h₂`: @escaping (A) -> Decidable, _ x_1: Sigma<A>, _ x_2: Sigma<A>) -> Decidable {
  let fst_3 = x_1.fst
  let snd_4 = x_1.snd
  let fst_5 = x_2.fst
  let snd_6 = x_2.snd
  let _x_7 = `h₁`(fst_3, fst_5)
  if Decidable_decide(_x_7) {
    let _x_11 = `h₂`(fst_3)
    if Decidable_decide(_x_11) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// DoResultSBC.ctorIdx
public extension DoResultSBC {
  var ctorIdx: Nat {
    switch self {
    case .pureReturn:
      return 0
    case .`break`:
      return 1
    case .`continue`:
      return 2
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func DoResultSBC_ctorIdx<A, B>(_ x: DoResultSBC<A, B>) -> Nat {
  x.ctorIdx
}

/// instDecidableEqPEmpty_src
public func instDecidableEqPEmpty_src(_ a: Never, _ b: Never) -> Decidable {
  fatalError("unreachable")
}

public let instDecidableTrue_src: Decidable = {
  Decidable.isTrue
}()

/// bne
@inline(__always) public func bne<A: Equatable>(_ a: A, _ b: A) -> Bool {
  let _x_3 = a == b
  if _x_3 {
    return false
  } else {
    return true
  }
}

/// instDecidableIff
@inline(__always) public func instDecidableIff(_ inst_1: Decidable, _ inst_2: Decidable) -> Decidable {
  if Decidable_decide(inst_1) {
    if Decidable_decide(inst_2) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    if Decidable_decide(inst_2) {
      return Decidable.isFalse
    } else {
      return Decidable.isTrue
    }
  }
}

/// DoResultPR.ctorIdx
public extension DoResultPR {
  var ctorIdx: Nat {
    switch self {
    case .pure:
      return 0
    case .`return`:
      return 1
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func DoResultPR_ctorIdx<A, B, C>(_ x: DoResultPR<A, B, C>) -> Nat {
  x.ctorIdx
}

/// instDecidableEqEmpty_src
public func instDecidableEqEmpty_src(_ a: Never, _ b: Never) -> Decidable {
  fatalError("unreachable")
}

/// instDecidableDite_src
@inline(__always) public func instDecidableDite_src(_ dC: Decidable, _ dT: Decidable, _ dE: Decidable) -> Decidable {
  if Decidable_decide(dC) {
    return dT
  } else {
    return dE
  }
}

/// eagerReduce
public func eagerReduce<A>(_ a: A) -> A {
  a
}

public let Task_Priority_default: Nat = {
  0
}()

public let Task_Priority_max: Nat = {
  8
}()

/// Sum.ctorIdx
public extension Sum {
  var ctorIdx: Nat {
    switch self {
    case .inl:
      return 0
    case .inr:
      return 1
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Sum_ctorIdx<A, B>(_ x: Sum<A, B>) -> Nat {
  x.ctorIdx
}

/// DoResultBC.ctorIdx
public extension DoResultBC {
  var ctorIdx: Nat {
    switch self {
    case .`break`:
      return 0
    case .`continue`:
      return 1
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func DoResultBC_ctorIdx<A>(_ x: DoResultBC<A>) -> Nat {
  x.ctorIdx
}

/// DoResultPRBC.ctorIdx
public extension DoResultPRBC {
  var ctorIdx: Nat {
    switch self {
    case .pure:
      return 0
    case .`return`:
      return 1
    case .`break`:
      return 2
    case .`continue`:
      return 3
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func DoResultPRBC_ctorIdx<A, B, C>(_ x: DoResultPRBC<A, B, C>) -> Nat {
  x.ctorIdx
}

public let instDecidableFalse_src: Decidable = {
  Decidable.isFalse
}()

/// instDecidableEqSum.decEq
public func instDecidableEqSum_decEq<A: Equatable, B: Equatable>(_ inst_3: @escaping (A, A) -> Decidable, _ inst_4: @escaping (B, B) -> Decidable, _ x_5: Sum<A, B>, _ x_6: Sum<A, B>) -> Decidable {
  switch x_5 {
  case .inl(let val_7):
    switch x_6 {
    case .inl(let val_8):
      let _x_9 = inst_3(val_7, val_8)
      if Decidable_decide(_x_9) {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    case .inr:
      return Decidable.isFalse
    default:
      fatalError("unreachable")
    }
  case .inr(let val_16):
    switch x_6 {
    case .inl:
      return Decidable.isFalse
    case .inr(let val_19):
      let _x_20 = inst_4(val_16, val_19)
      if Decidable_decide(_x_20) {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    default:
      fatalError("unreachable")
    }
  default:
    fatalError("unreachable")
  }
}

/// instDecidableEqPUnit_src
public func instDecidableEqPUnit_src(_ a: (), _ b: ()) -> Decidable {
  Decidable.isTrue
}

/// instBEqOption_src.beq
public func instBEqOption_beq<A: Equatable>(_ x_3: A?, _ x_4: A?) -> Bool {
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

/// noConfusionEnum
@inline(__always) public func noConfusionEnum<A, B: Equatable>(_ inst: @escaping (B, B) -> Decidable, _ f: @escaping (A) -> B, _ x: A, _ y: A) -> Any {
  func _f_1(_ x: Any) -> Any {
    x
  }
  let _x_2 = f(x)
  let _x_3 = f(y)
  let _x_4 = inst(_x_2, _x_3)
  if Decidable_decide(_x_4) {
    return _f_1
  } else {
    fatalError("unreachable")
  }
}

/// Prod.map
public extension Prod {
  func map<C, D>(_ f: @escaping (A) -> C, _ g: @escaping (B) -> D) -> Prod<C, D> {
    let fst_2 = self.fst
    let snd_3 = self.snd
    let _x_4 = f(fst_2)
    let _x_5 = g(snd_3)
    return Prod<C, D>(_x_4, _x_5)
  }
}

@inline(__always) public func Prod_map<A, C, B, D>(_ f: @escaping (A) -> C, _ g: @escaping (B) -> D, _ x_1: Prod<A, B>) -> Prod<C, D> {
  x_1.map(f, g)
}

/// Subtype.instDecidableEq_src
public func Subtype_instDecidableEq_src<A: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ x_2: A, _ x_3: A) -> Decidable {
  let _x_8 = inst_1(x_2, x_3)
  if Decidable_decide(_x_8) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// iteInduction
public func iteInduction<A>(_ inst: Decidable, _ t: A, _ e: A) -> () {
  if Decidable_decide(inst) {
    return
  } else {
    return
  }
}

/// decidable_of_decidable_of_eq
@inline(__always) public func decidable_of_decidable_of_eq(_ inst_1: Decidable) -> Decidable {
  if Decidable_decide(inst_1) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// inline
public func inline<A>(_ a: A) -> A {
  a
}

/// instDecidableEqOfIff
public func instDecidableEqOfIff(_ d: Decidable) -> Decidable {
  if Decidable_decide(d) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// decidable_of_decidable_of_iff
@inline(__always) public func decidable_of_decidable_of_iff(_ inst_1: Decidable) -> Decidable {
  if Decidable_decide(inst_1) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

