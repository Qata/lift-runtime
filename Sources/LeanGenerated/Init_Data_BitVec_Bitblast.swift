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

/// BitVec.adcb
public func BitVec_adcb(_ x: Bool, _ y: Bool, _ c: Bool) -> Prod<Bool, Bool> {
  func _jp_1(_ _y_2: Bool) -> Prod<Bool, Bool> {
    func _jp_3(_ _y_4: Decidable) -> Prod<Bool, Bool> {
      let _x_5 = Decidable_decide(_y_4)
      if _x_5 {
        let _x_8: Bool = false
        return Prod<Bool, Bool>(_y_2, _x_8)
      } else {
        let _x_6: Bool = true
        return Prod<Bool, Bool>(_y_2, _x_6)
      }
    }
    func _jp_10(_ _y_11: Bool) -> Prod<Bool, Bool> {
      if x {
        if _y_11 {
          let _x_15: Decidable = Decidable.isTrue
          return _jp_3(_x_15          )
        } else {
          let _x_14: Decidable = Decidable.isFalse
          return _jp_3(_x_14          )
        }
      } else {
        if _y_11 {
          let _x_13: Decidable = Decidable.isFalse
          return _jp_3(_x_13          )
        } else {
          let _x_12: Decidable = Decidable.isTrue
          return _jp_3(_x_12          )
        }
      }
    }
    func _jp_16(_ _y_17: Decidable) -> Prod<Bool, Bool> {
      let _x_18 = Decidable_decide(_y_17)
      if _x_18 {
        let _x_20: Bool = false
        return _jp_10(_x_20        )
      } else {
        let _x_19: Bool = true
        return _jp_10(_x_19        )
      }
    }
    if y {
      if c {
        let _x_24: Decidable = Decidable.isTrue
        return _jp_16(_x_24        )
      } else {
        let _x_23: Decidable = Decidable.isFalse
        return _jp_16(_x_23        )
      }
    } else {
      if c {
        let _x_22: Decidable = Decidable.isFalse
        return _jp_16(_x_22        )
      } else {
        let _x_21: Decidable = Decidable.isTrue
        return _jp_16(_x_21        )
      }
    }
  }
  func _jp_25() -> Prod<Bool, Bool> {
    if x {
      if c {
        return _jp_1(c        )
      } else {
        if y {
          return _jp_1(c          )
        } else {
          return _jp_1(y          )
        }
      }
    } else {
      if y {
        return _jp_1(c        )
      } else {
        return _jp_1(y        )
      }
    }
  }
  if x {
    if y {
      return _jp_1(y      )
    } else {
      return _jp_25(      )
    }
  } else {
    return _jp_25(    )
  }
}

