// Swift v3 compiler output
// Module: src.Init.Data.ULift
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// instDecidableEqULift_src.decEq
public func instDecidableEqULift_decEq<A>(_ inst_2: @escaping (A, A) -> Decidable, _ x_3: ULift<A>, _ x_4: ULift<A>) -> Decidable {
  let _x_7: Decidable = inst_2(down_5, down_6)
  switch _x_7 {
  case .isFalse:
    return Decidable.isFalse
  case .isTrue:
    return Decidable.isTrue
  default:
    fatalError("unreachable")
  }
}

