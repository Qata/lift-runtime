// Swift v3 compiler output
// Module: src.Init.Data.PLift
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// instDecidableEqPLift_src.decEq
public func instDecidableEqPLift_decEq<A>(_ inst_2: @escaping (A, A) -> Decidable, _ x_3: PLift<A>, _ x_4: PLift<A>) -> Decidable {
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

