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
        let _x_7: Bool = head_5 < head_3
        if _x_7 {
          let _x_14: List<Nat> = Nat_SOM_Mon_mul_go(n_2, tail_6, `m₂`)
          return List<Nat>.cons(head_5, _x_14)
        } else {
          let _x_8: Bool = head_3 < head_5
          if _x_8 {
            let _x_12: List<Nat> = Nat_SOM_Mon_mul_go(n_2, `m₁`, tail_4)
            return List<Nat>.cons(head_3, _x_12)
          } else {
            let _x_9: List<Nat> = Nat_SOM_Mon_mul_go(n_2, tail_6, tail_4)
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

