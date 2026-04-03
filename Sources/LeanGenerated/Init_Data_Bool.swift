// Swift v3 compiler output
// Module: src.Init.Data.Bool
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Bool.toNat
public func Bool_toNat(_ b: Bool) -> Nat {
  if b {
    return 1
  } else {
    return 0
  }
}

/// Bool.instDecidableLt_src
public func Bool_instDecidableLt_src(_ x: Bool, _ y: Bool) -> Decidable {
  if x {
    return Decidable.isFalse
  } else {
    if y {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

/// Bool.toInt
public func Bool_toInt(_ b: Bool) -> SignedNat {
  if b {
    let _x_3: Nat = 1
    return SignedNat(_x_3)
  } else {
    let _x_1: Nat = 0
    return SignedNat(_x_1)
  }
}

/// Bool.instDecidableExistsOfDecidablePred_src
public func Bool_instDecidableExistsOfDecidablePred_src(_ inst: @escaping (Bool) -> Decidable) -> Decidable {
  let _x_1: Bool = true
  let _x_2 = inst(_x_1)
  if Decidable_decide(_x_2) {
    return Decidable.isTrue
  } else {
    let _x_4: Bool = false
    let _x_5 = inst(_x_4)
    if Decidable_decide(_x_5) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

/// Bool.instDecidableForallOfDecidablePred_src
public func Bool_instDecidableForallOfDecidablePred_src(_ inst: @escaping (Bool) -> Decidable) -> Decidable {
  let _x_1: Bool = true
  let _x_2 = inst(_x_1)
  if Decidable_decide(_x_2) {
    let _x_6: Bool = false
    let _x_7 = inst(_x_6)
    if Decidable_decide(_x_7) {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isFalse
  }
}

/// Bool.instDecidableLe_src
public func Bool_instDecidableLe_src(_ x: Bool, _ y: Bool) -> Decidable {
  if x {
    if y {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    return Decidable.isTrue
  }
}

/// Bool.xor
@inline(__always) public func Bool_xor(_ a: Bool, _ b: Bool) -> Bool {
  func _jp_1(_ _y_2: Decidable) -> Bool {
    let _x_3 = Decidable_decide(_y_2)
    if _x_3 {
      return false
    } else {
      return true
    }
  }
  if a {
    if b {
      let _x_9: Decidable = Decidable.isTrue
      return _jp_1(_x_9      )
    } else {
      let _x_8: Decidable = Decidable.isFalse
      return _jp_1(_x_8      )
    }
  } else {
    if b {
      let _x_7: Decidable = Decidable.isFalse
      return _jp_1(_x_7      )
    } else {
      let _x_6: Decidable = Decidable.isTrue
      return _jp_1(_x_6      )
    }
  }
}

