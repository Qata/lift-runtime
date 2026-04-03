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
public func instDecidableEqULift_decEq<A: Equatable>(_ inst_2: @escaping (A, A) -> Decidable, _ x_3: A, _ x_4: A) -> Decidable {
  let _x_7 = inst_2(x_3, x_4)
  if Decidable_decide(_x_7) {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

