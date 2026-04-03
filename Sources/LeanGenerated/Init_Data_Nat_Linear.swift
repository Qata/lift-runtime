// Swift v3 compiler output
// Module: src.Init.Data.Nat.Linear
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.Linear.Poly.cancelAux
public func Nat_Linear_Poly_cancelAux(_ fuel: Nat, _ `m₁`: List<Prod<Nat, Nat>>, _ `m₂`: List<Prod<Nat, Nat>>, _ `r₁`: List<Prod<Nat, Nat>>, _ `r₂`: List<Prod<Nat, Nat>>) -> Prod<List<Prod<Nat, Nat>>, List<Prod<Nat, Nat>>> {
  if fuel == 0 {
    let _x_1 = List_reverse(`r₁`)
    let _x_2 = List_appendTR(_x_1, `m₁`)
    let _x_3 = List_reverse(`r₂`)
    let _x_4 = List_appendTR(_x_3, `m₂`)
    return Prod<List<Prod<Nat, Nat>>, List<Prod<Nat, Nat>>>(_x_2, _x_4)
  } else {
    let n_6: Nat = fuel - 1
    switch `m₂` {
    case .`nil`:
      let _x_7 = List_reverse(`r₁`)
      let _x_8 = List_appendTR(_x_7, `m₁`)
      let _x_9 = List_reverse(`r₂`)
      return Prod<List<Prod<Nat, Nat>>, List<Prod<Nat, Nat>>>(_x_8, _x_9)
    case .cons(let head_11, let tail_12):
      switch `m₁` {
      case .`nil`:
        let _x_13 = List_reverse(`r₁`)
        let _x_14 = List_reverse(`r₂`)
        let _x_15 = List_appendTR(_x_14, `m₂`)
        return Prod<List<Prod<Nat, Nat>>, List<Prod<Nat, Nat>>>(_x_13, _x_15)
      case .cons(let head_17, let tail_18):
        let fst_19 = head_17.fst
        let snd_20 = head_17.snd
        let fst_21 = head_11.fst
        let snd_22 = head_11.snd
        let _x_23 = snd_20 < snd_22
        if _x_23 {
          let _x_38: List<Prod<Nat, Nat>> = List<Prod<Nat, Nat>>.cons(head_17, `r₁`)
          return Nat_Linear_Poly_cancelAux(n_6, tail_18, `m₂`, _x_38, `r₂`)
        } else {
          let _x_24 = snd_22 < snd_20
          if _x_24 {
            let _x_36: List<Prod<Nat, Nat>> = List<Prod<Nat, Nat>>.cons(head_11, `r₂`)
            return Nat_Linear_Poly_cancelAux(n_6, `m₁`, tail_12, `r₁`, _x_36)
          } else {
            let _x_25 = fst_19 < fst_21
            if _x_25 {
              let _x_32 = fst_21 - fst_19
              let _x_33: Prod<Nat, Nat> = Prod<Nat, Nat>(_x_32, snd_20)
              let _x_34: List<Prod<Nat, Nat>> = List<Prod<Nat, Nat>>.cons(_x_33, `r₂`)
              return Nat_Linear_Poly_cancelAux(n_6, tail_18, tail_12, `r₁`, _x_34)
            } else {
              let _x_26 = fst_21 < fst_19
              if _x_26 {
                let _x_28 = fst_19 - fst_21
                let _x_29: Prod<Nat, Nat> = Prod<Nat, Nat>(_x_28, snd_20)
                let _x_30: List<Prod<Nat, Nat>> = List<Prod<Nat, Nat>>.cons(_x_29, `r₁`)
                return Nat_Linear_Poly_cancelAux(n_6, tail_18, tail_12, _x_30, `r₂`)
              } else {
                return Nat_Linear_Poly_cancelAux(n_6, tail_18, tail_12, `r₁`, `r₂`)
              }
            }
          }
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// Nat.Linear.Poly.isNum?
public func `Nat_Linear_Poly_isNum?`(_ p: List<Prod<Nat, Nat>>) -> Nat? {
  switch p {
  case .`nil`:
    let _x_1: Nat = 0
    return Nat?.some(_x_1)
  case .cons(let head_3, let tail_4):
    let fst_5 = head_3.fst
    let snd_6 = head_3.snd
    switch tail_4 {
    case .`nil`:
      let _x_7: Nat = 100000000
      let _x_9 = snd_6 == _x_7
      if _x_9 {
        return Nat?.some(fst_5)
      } else {
        return nil
      }
    default:
      return nil
    }
  default:
    fatalError("unreachable")
  }
}

/// Nat.Linear.Poly.insert
public func Nat_Linear_Poly_insert(_ k: Nat, _ v: Nat, _ p: List<Prod<Nat, Nat>>) -> List<Prod<Nat, Nat>> {
  switch p {
  case .`nil`:
    let _x_1: Prod<Nat, Nat> = Prod<Nat, Nat>(k, v)
    return List<Prod<Nat, Nat>>.cons(_x_1, p)
  case .cons(let head_3, let tail_4):
    let fst_5 = head_3.fst
    let snd_6 = head_3.snd
    let _x_7 = v < snd_6
    if _x_7 {
      let _x_14: Prod<Nat, Nat> = Prod<Nat, Nat>(k, v)
      return List<Prod<Nat, Nat>>.cons(_x_14, p)
    } else {
      let _x_8 = v == snd_6
      if _x_8 {
        let _x_11 = k + fst_5
        let _x_12: Prod<Nat, Nat> = Prod<Nat, Nat>(_x_11, snd_6)
        return List<Prod<Nat, Nat>>.cons(_x_12, tail_4)
      } else {
        let _x_9 = Nat_Linear_Poly_insert(k, v, tail_4)
        return List<Prod<Nat, Nat>>.cons(head_3, _x_9)
      }
    }
  default:
    fatalError("unreachable")
  }
}

public let Nat_Linear_hugeFuel: Nat = {
  1000000
}()

public let Nat_Linear_fixedVar: Nat = {
  100000000
}()

/// Nat.Linear.Poly.norm.go
public func Nat_Linear_Poly_norm_go(_ p: List<Prod<Nat, Nat>>, _ r: List<Prod<Nat, Nat>>) -> List<Prod<Nat, Nat>> {
  switch p {
  case .`nil`:
    return r
  case .cons(let head_1, let tail_2):
    let fst_3 = head_1.fst
    let snd_4 = head_1.snd
    let _x_5 = Nat_Linear_Poly_insert(fst_3, snd_4, r)
    return Nat_Linear_Poly_norm_go(tail_2, _x_5)
  default:
    fatalError("unreachable")
  }
}

/// Nat.Linear.Poly.norm
public func Nat_Linear_Poly_norm(_ p: List<Prod<Nat, Nat>>) -> List<Prod<Nat, Nat>> {
  let _x_1: List<Prod<Nat, Nat>> = List<Prod<Nat, Nat>>.`nil`
  return Nat_Linear_Poly_norm_go(p, _x_1)
}

/// Nat.Linear.Poly.cancel
public func Nat_Linear_Poly_cancel(_ `p₁`: List<Prod<Nat, Nat>>, _ `p₂`: List<Prod<Nat, Nat>>) -> Prod<List<Prod<Nat, Nat>>, List<Prod<Nat, Nat>>> {
  let _x_1: Nat = 1000000
  let _x_2: List<Prod<Nat, Nat>> = List<Prod<Nat, Nat>>.`nil`
  return Nat_Linear_Poly_cancelAux(_x_1, `p₁`, `p₂`, _x_2, _x_2)
}

/// Nat.Linear.Poly.isNonZero
public func Nat_Linear_Poly_isNonZero(_ p: List<Prod<Nat, Nat>>) -> Bool {
  switch p {
  case .`nil`:
    return false
  case .cons(let head_2, let tail_3):
    let fst_4 = head_2.fst
    let snd_5 = head_2.snd
    let _x_6: Nat = 100000000
    let _x_8 = snd_5 == _x_6
    if _x_8 {
      let _x_10: Nat = 0
      return _x_10 < fst_4
    } else {
      return Nat_Linear_Poly_isNonZero(tail_3)
    }
  default:
    fatalError("unreachable")
  }
}

/// Nat.Linear.Poly.isZero
public func Nat_Linear_Poly_isZero(_ p: List<Prod<Nat, Nat>>) -> Bool {
  switch p {
  case .`nil`:
    return true
  default:
    return false
  }
}

