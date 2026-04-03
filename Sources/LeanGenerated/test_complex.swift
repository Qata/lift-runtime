// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Expr
public indirect enum Expr: @unchecked Sendable {
  case lit(Nat)
  case add(Expr, Expr)
  case mul(Expr, Expr)
}

/// Point
public struct Point: @unchecked Sendable {
  let x: Nat
  let y: Nat

  public init(_ x: Nat, _ y: Nat) {
    self.x = x
    self.y = y
  }
}

/// mapAccum
public func mapAccum<A, B, C>(_ f: @escaping (A, B) -> Prod<A, C>, _ s: A, _ xs: List<B>) -> Prod<A, List<C>> {
  switch xs {
  case .`nil`:
    let _x_1: List<C> = List<C>.`nil`
    return Prod<A, List<C>>(s, _x_1)
  case .cons(let head_3, let tail_4):
    let _x_5 = f(s, head_3)
    let fst_6 = _x_5.fst
    let snd_7 = _x_5.snd
    let _x_8 = mapAccum(f, fst_6, tail_4)
    let fst_9 = _x_8.fst
    let snd_10 = _x_8.snd
    let _x_11: List<C> = List<C>.cons(snd_7, snd_10)
    return Prod<A, List<C>>(fst_9, _x_11)
  default:
    fatalError("unreachable")
  }
}

/// instBEqPoint.beq
public func instBEqPoint_beq(_ x_1: Point, _ x_2: Point) -> Bool {
  let x_3 = x_1.x
  let y_4 = x_1.y
  let x_5 = x_2.x
  let y_6 = x_2.y
  let _x_8 = x_3 == x_5
  if _x_8 {
    return y_4 == y_6
  } else {
    return _x_8
  }
}

/// Expr.depth
public extension Expr {
  var depth: Nat {
    func _jp_2(_ a: Expr, _ b: Expr) -> Nat {
      let _x_3: Nat = 1
      let _x_4 = a.depth
      let _x_5 = b.depth
      let _x_6 = _x_4 <= _x_5
      if _x_6 {
        return _x_3 + _x_5
      } else {
        return _x_3 + _x_4
      }
    }
    switch self {
    case .lit:
      return 0
    case .add(let a_13, let a_14):
      return _jp_2(a_13, a_14      )
    case .mul(let a_15, let a_16):
      return _jp_2(a_15, a_16      )
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Expr_depth(_ x_1: Expr) -> Nat {
  x_1.depth
}

/// Expr.eval
public extension Expr {
  var eval: Nat {
    switch self {
    case .lit(let a_2):
      return a_2
    case .add(let a_3, let a_4):
      let _x_5 = a_3.eval
      let _x_6 = a_4.eval
      return _x_5 + _x_6
    case .mul(let a_8, let a_9):
      let _x_10 = a_8.eval
      let _x_11 = a_9.eval
      return _x_10 * _x_11
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Expr_eval(_ x_1: Expr) -> Nat {
  x_1.eval
}

/// Expr.simplify
public extension Expr {
  var simplify: Expr {
    func _jp_2(_ a: Expr, _ b: Expr) -> Expr {
      let _x_3 = a.simplify
      let _x_4 = b.simplify
      return Expr.add(_x_3, _x_4)
    }
    func _jp_6() -> Expr {
      let _x_7: Nat = 0
      return Expr.lit(_x_7)
    }
    func _jp_9(_ a: Expr, _ b: Expr) -> Expr {
      let _x_10 = a.simplify
      let _x_11 = b.simplify
      return Expr.mul(_x_10, _x_11)
    }
    switch self {
    case .add(let a_13, let a_14):
      switch a_13 {
      case .lit(let a_15):
        let _x_16: Nat = 0
        let _x_17 = a_15 == _x_16
        if _x_17 {
          return a_14.simplify
        } else {
          switch a_14 {
          case .lit(let a_18):
            let _x_19 = a_18 == _x_16
            if _x_19 {
              return a_13.simplify
            } else {
              return _jp_2(a_13, a_14              )
            }
          default:
            return _jp_2(a_13, a_14            )
          }
        }
      default:
        switch a_14 {
        case .lit(let a_22):
          let _x_23: Nat = 0
          let _x_24 = a_22 == _x_23
          if _x_24 {
            return a_13.simplify
          } else {
            return _jp_2(a_13, a_14            )
          }
        default:
          return _jp_2(a_13, a_14          )
        }
      }
    case .mul(let a_26, let a_27):
      switch a_26 {
      case .lit(let a_28):
        let _x_29: Nat = 0
        let _x_30 = a_28 == _x_29
        if _x_30 {
          return _jp_6(          )
        } else {
          let _x_31: Nat = 1
          let _x_32 = a_28 == _x_31
          if _x_32 {
            switch a_27 {
            case .lit(let a_37):
              let _x_38 = a_37 == _x_29
              if _x_38 {
                return _jp_6(                )
              } else {
                let _x_39 = a_37 == _x_31
                if _x_39 {
                  let _x_41: Expr = Expr.lit(_x_31)
                  return _x_41.simplify
                } else {
                  return a_27.simplify
                }
              }
            default:
              return a_27.simplify
            }
          } else {
            switch a_27 {
            case .lit(let a_33):
              let _x_34 = a_33 == _x_29
              if _x_34 {
                return _jp_6(                )
              } else {
                let _x_35 = a_33 == _x_31
                if _x_35 {
                  return a_26.simplify
                } else {
                  return _jp_9(a_26, a_27                  )
                }
              }
            default:
              return _jp_9(a_26, a_27              )
            }
          }
        }
      default:
        switch a_27 {
        case .lit(let a_44):
          let _x_45: Nat = 0
          let _x_46 = a_44 == _x_45
          if _x_46 {
            return _jp_6(            )
          } else {
            let _x_47: Nat = 1
            let _x_48 = a_44 == _x_47
            if _x_48 {
              return a_26.simplify
            } else {
              return _jp_9(a_26, a_27              )
            }
          }
        default:
          return _jp_9(a_26, a_27          )
        }
      }
    default:
      return self
    }
  }
}

@inline(__always) public func Expr_simplify(_ x_1: Expr) -> Expr {
  x_1.simplify
}

/// Point.add
public extension Point {
  func add(_ q: Point) -> Point {
    let _x_1 = self.x
    let _x_2 = q.x
    let _x_3 = _x_1 + _x_2
    let _x_4 = self.y
    let _x_5 = q.y
    let _x_6 = _x_4 + _x_5
    return Point(_x_3, _x_6)
  }
}

@inline(__always) public func Point_add(_ p: Point, _ q: Point) -> Point {
  p.add(q)
}

/// Expr.ctorIdx
public extension Expr {
  var ctorIdx: Nat {
    switch self {
    case .lit:
      return 0
    case .add:
      return 1
    case .mul:
      return 2
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Expr_ctorIdx(_ x: Expr) -> Nat {
  x.ctorIdx
}

/// Point.scale
public extension Point {
  func scale(_ n: Nat) -> Point {
    let _x_1 = self.x
    let _x_2 = _x_1 * n
    let _x_3 = self.y
    let _x_4 = _x_3 * n
    return Point(_x_2, _x_4)
  }
}

@inline(__always) public func Point_scale(_ p: Point, _ n: Nat) -> Point {
  p.scale(n)
}

/// Point.dist
public extension Point {
  func dist(_ q: Point) -> Nat {
    func _jp_1(_ _y_2: Nat) -> Nat {
      let _x_3 = q.y
      let _x_4 = self.y
      let _x_5 = _x_3 <= _x_4
      if _x_5 {
        let _x_10 = _x_4 - _x_3
        return _y_2 + _x_10
      } else {
        let _x_7 = _x_3 - _x_4
        return _y_2 + _x_7
      }
    }
    let _x_12 = q.x
    let _x_13 = self.x
    let _x_14 = _x_12 <= _x_13
    if _x_14 {
      let _x_18 = _x_13 - _x_12
      return _jp_1(_x_18      )
    } else {
      let _x_16 = _x_12 - _x_13
      return _jp_1(_x_16      )
    }
  }
}

@inline(__always) public func Point_dist(_ p: Point, _ q: Point) -> Nat {
  p.dist(q)
}

