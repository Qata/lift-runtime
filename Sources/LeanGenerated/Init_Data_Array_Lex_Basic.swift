// Swift v3 compiler output
// Module: src.Init.Data.Array.Lex.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.lex
public func Array_lex<A: Equatable & Equatable>(_ `as`: Array<A>, _ bs: Array<A>) -> Bool {
  let _x_2: Nat = 0
  let _x_3: Nat = Array_size(`as`)
  let _x_4: Nat = Array_size(bs)
  func _jp_5(_ _y_6: Nat) -> Bool {
    let _x_7: Decidable = Nat_decLt(_x_3, _x_4)
    func _jp_8(_ _y_9: MProd<Bool?, ()>) -> Bool {
      let _x_10: Bool? = _y_9.fst
      if let val_12 = _x_10 {
        return val_12
      } else {
        return Decidable_decide(_x_7)
      }
    }
    let _x_13: Nat? = Nat?.some(_x_2)
    let _x_14: Std_Rxo_Iterator<Nat> = Std_Rxo_Iterator<Nat>(_x_13, _y_6)
    let _x_15: Std_Iter<Std_Rxo_Iterator<Nat>, Nat> = Std_Iter<Std_Rxo_Iterator<Nat>, Nat>(_x_14)
    let _x_16: Std_IterM<Std_Rxo_Iterator<Nat>, A> = Std_Iter_toIterM(_x_15)
    let internalState_17: Std_Rxo_Iterator<Nat> = _x_16.internalState
    let next_18: Nat? = internalState_17.next
    let upperBound_19: Nat = internalState_17.upperBound
    let _x_20: Bool? = nil
    let _x_21: () = ()
    let _x_22: MProd<Bool?, ()> = MProd<Bool?, ()>(_x_20, _x_21)
    func _f_23(_ next: Nat, _ acc: MProd<Bool?, ()>, _ G: @escaping (Nat, MProd<Bool?, ()>) -> MProd<Bool?, ()>) -> MProd<Bool?, ()> {
      let _x_24: Bool = next < upperBound_19
      if _x_24 {
        let _x_25 = Array_getInternal(`as`, next)
        let _x_26 = Array_getInternal(bs, next)
        let _x_27: Bool = lt(_x_25, _x_26)
        if _x_27 {
          let _x_35: Bool? = Bool?.some(_x_27)
          return MProd<Bool?, ()>(_x_35, _x_21)
        } else {
          let _x_29: Bool = _x_25 == _x_26
          if _x_29 {
            let _x_32: Nat = 1
            let _x_33: Nat = next + _x_32
            return G(_x_33, _x_22)
          } else {
            let _x_30: Bool? = Bool?.some(_x_27)
            return MProd<Bool?, ()>(_x_30, _x_21)
          }
        }
      } else {
        return acc
      }
    }
    if let val_37 = next_18 {
      let _x_38: MProd<Bool?, ()> = `WellFounded_opaqueFix₃`(_f_23, val_37, _x_22)
      return _jp_8(_x_38      )
    } else {
      return _jp_8(_x_22      )
    }
  }
  let _x_39: Bool = _x_3 <= _x_4
  if _x_39 {
    return _jp_5(_x_3    )
  } else {
    return _jp_5(_x_4    )
  }
}

