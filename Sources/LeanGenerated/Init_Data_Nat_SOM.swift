// Swift v3 compiler output
// Module: src.Init.Data.Nat.SOM
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.SOM.Expr
public indirect enum Nat_SOM_Expr: @unchecked Sendable {
  case num(Nat)
  case `var`(Any)
  case add(Nat_SOM_Expr, Nat_SOM_Expr)
  case mul(Nat_SOM_Expr, Nat_SOM_Expr)
}

/// _private.src.Init.Data.Nat.SOM.0.Nat.SOM.Poly.add.go
public func Nat_SOM_Poly_add_go(_ fuel: Nat, _ `p₁`: List<Prod<Nat, List<Nat>>>, _ `p₂`: List<Prod<Nat, List<Nat>>>) -> List<Prod<Nat, List<Nat>>> {
  if fuel == 0 {
    return List_appendTR(`p₁`, `p₂`)
  } else {
    let n_3: Nat = fuel - 1
    switch `p₂` {
    case .`nil`:
      return `p₁`
    case .cons(let head_4, let tail_5):
      switch `p₁` {
      case .`nil`:
        return `p₂`
      case .cons(let head_6, let tail_7):
        let fst_8 = head_6.fst
        let snd_9 = head_6.snd
        let fst_10 = head_4.fst
        let snd_11 = head_4.snd
        let _x_12: (Nat, Nat) -> Decidable = { _pa0, _pa1 in instDecidableEqNat(_pa0, _pa1) }
        let _x_13: (Nat, Nat) -> Decidable = { _pa0, _pa1 in Nat_decLt(_pa0, _pa1) }
        let _x_14 = List_decidableLT(_x_12, _x_13, snd_9, snd_11)
        let _x_15 = Decidable_decide(_x_14)
        if _x_15 {
          let _x_31 = Nat_SOM_Poly_add_go(n_3, tail_7, `p₂`)
          return List<Prod<Nat, List<Nat>>>.cons(head_6, _x_31)
        } else {
          let _x_16: (Nat, Nat) -> Decidable = { _pa0, _pa1 in instDecidableEqNat(_pa0, _pa1) }
          let _x_17: (Nat, Nat) -> Decidable = { _pa0, _pa1 in Nat_decLt(_pa0, _pa1) }
          let _x_18 = List_decidableLT(_x_16, _x_17, snd_11, snd_9)
          let _x_19 = Decidable_decide(_x_18)
          if _x_19 {
            let _x_29 = Nat_SOM_Poly_add_go(n_3, `p₁`, tail_5)
            return List<Prod<Nat, List<Nat>>>.cons(head_4, _x_29)
          } else {
            let _x_20 = fst_8 + fst_10
            let _x_21: Nat = 0
            let _x_23 = _x_20 == _x_21
            if _x_23 {
              return Nat_SOM_Poly_add_go(n_3, tail_7, tail_5)
            } else {
              let _x_24 = fst_8 + fst_10
              let _x_25: Prod<Nat, List<Nat>> = Prod<Nat, List<Nat>>(_x_24, snd_9)
              let _x_26 = Nat_SOM_Poly_add_go(n_3, tail_7, tail_5)
              return List<Prod<Nat, List<Nat>>>.cons(_x_25, _x_26)
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

/// _private.src.Init.Data.Nat.SOM.0.Nat.SOM.Mon.mul.go
public func Nat_SOM_Mon_mul_go(_ fuel: Nat, _ `m₁`: List<Nat>, _ `m₂`: List<Nat>) -> List<Nat> {
  if fuel == 0 {
    return List_appendTR(`m₁`, `m₂`)
  } else {
    let n_2: Nat = fuel - 1
    switch `m₂` {
    case .`nil`:
      return `m₁`
    case .cons(let head_3, let tail_4):
      switch `m₁` {
      case .`nil`:
        return `m₂`
      case .cons(let head_5, let tail_6):
        let _x_7 = head_5 < head_3
        if _x_7 {
          let _x_14 = Nat_SOM_Mon_mul_go(n_2, tail_6, `m₂`)
          return List<Nat>.cons(head_5, _x_14)
        } else {
          let _x_8 = head_3 < head_5
          if _x_8 {
            let _x_12 = Nat_SOM_Mon_mul_go(n_2, `m₁`, tail_4)
            return List<Nat>.cons(head_3, _x_12)
          } else {
            let _x_9 = Nat_SOM_Mon_mul_go(n_2, tail_6, tail_4)
            let _x_10: List<Nat> = List<Nat>.cons(head_3, _x_9)
            return List<Nat>.cons(head_5, _x_10)
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

