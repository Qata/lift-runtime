// Swift v3 compiler output
// Module: src.Init.Meta.Defs
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.getSepElems
@inline(__always) public func Array_getSepElems<A>(_ `as`: Array<A>) -> Array<A> {
  func _f_1(_ x1_2: Prod<Bool, Array<A>>, _ x2_3: Any) -> Prod<Bool, Array<A>> {
    let fst_4: Bool = x1_2.fst
    let snd_5: Array<A> = x1_2.snd
    if fst_4 {
      let _x_8: Bool = false
      let _x_9: Array<A> = Array_push(snd_5, x2_3)
      return Prod<Bool, Array<A>>(_x_8, _x_9)
    } else {
      let _x_6: Bool = true
      return Prod<Bool, Array<A>>(_x_6, snd_5)
    }
  }
  let _x_11: Nat = 0
  let _x_12: Array<A> = Array_emptyWithCapacity(_x_11)
  let _x_13: Nat = Array_size(`as`)
  let _x_15: Bool = _x_11 < _x_13
  if _x_15 {
    let _x_18: Bool = true
    let _x_19: Prod<Bool, Array<A>> = Prod(_x_18, _x_12)
    let _x_20: Bool = _x_13 <= _x_13
    if _x_20 {
      let _x_29: UInt = 0
      let _x_30: UInt = USize_ofNat(_x_13)
      let _x_31: Prod<Bool, Array<A>> = Array_foldlMUnsafe_fold(_f_1, `as`, _x_29, _x_30, _x_19)
      return _x_31.snd
    } else {
      switch _x_15 {
      case .isFalse:
        return _x_12
      case .isTrue:
        let _x_24: UInt = 0
        let _x_25: UInt = USize_ofNat(_x_13)
        let _x_26: Prod<Bool, Array<A>> = Array_foldlMUnsafe_fold(_f_1, `as`, _x_24, _x_25, _x_19)
        return _x_26.snd
      default:
        fatalError("unreachable")
      }
    }
  } else {
    return _x_12
  }
}

