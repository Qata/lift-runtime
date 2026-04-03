// Swift v3 compiler output
// Module: src.Init.Data.BitVec.Bitblast
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// BitVec.DivModState
public struct BitVec_DivModState: @unchecked Sendable {
  let w: Nat
  let wn: Nat
  let wr: Nat
  let q: Any
  let r: Any

  public init(_ w: Nat, _ wn: Nat, _ wr: Nat, _ q: Any, _ r: Any) {
    self.w = w
    self.wn = wn
    self.wr = wr
    self.q = q
    self.r = r
  }
}

/// BitVec.DivModArgs
public struct BitVec_DivModArgs: @unchecked Sendable {
  let w: Nat
  let n: Any
  let d: Any

  public init(_ w: Nat, _ n: Any, _ d: Any) {
    self.w = w
    self.n = n
    self.d = d
  }
}

/// Bool.atLeastTwo
@inline(__always) public func Bool_atLeastTwo(_ a: Bool, _ b: Bool, _ c: Bool) -> Bool {
  func _jp_1() -> Bool {
    return if a {
      if c {
        c
      } else {
        if b {
          c
        } else {
          b
        }
      }
    } else {
      if b {
        c
      } else {
        b
      }
    }
  }
  return if a {
    if b {
      b
    } else {
      _jp_1()
    }
  } else {
    _jp_1()
  }
}

