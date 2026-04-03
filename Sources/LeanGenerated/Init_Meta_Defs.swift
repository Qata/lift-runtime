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
  func _f_1(_ x1_2: Prod<Bool, Array<A>>, _ x2_3: A) -> Prod<Bool, Array<A>> {
    let fst_4 = x1_2.fst
    let snd_5 = x1_2.snd
    if fst_4 {
      let _x_8: Bool = false
      let _x_9 = Array_push(snd_5, x2_3)
      return Prod<Bool, Array<A>>(_x_8, _x_9)
    } else {
      let _x_6: Bool = true
      return Prod<Bool, Array<A>>(_x_6, snd_5)
    }
  }
  let _x_11: Nat = 0
  let _x_12: Array<A> = Array_emptyWithCapacity(_x_11)
  let _x_13 = Array_size(`as`)
  let _x_15 = _x_11 < _x_13
  if _x_15 {
    let _x_18: Bool = true
    let _x_19: Prod<Bool, Array<A>> = Prod<Bool, Array<A>>(_x_18, _x_12)
    let _x_20 = _x_13 <= _x_13
    if _x_20 {
      let _x_29: UInt = 0
      let _x_30 = USize_ofNat(_x_13)
      let _x_31 = Array_foldlMUnsafe_fold(_f_1, `as`, _x_29, _x_30, _x_19)
      return _x_31.snd
    } else {
      if Decidable_decide(_x_15) {
        let _x_24: UInt = 0
        let _x_25 = USize_ofNat(_x_13)
        let _x_26 = Array_foldlMUnsafe_fold(_f_1, `as`, _x_24, _x_25, _x_19)
        return _x_26.snd
      } else {
        return _x_12
      }
    }
  } else {
    return _x_12
  }
}

