// Swift v3 compiler output
// Module: src.Init.Classical
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Classical.decidable_of_decidable_not
public func Classical_decidable_of_decidable_not(_ h: Decidable) -> Decidable {
  if Decidable_decide(h) {
    return Decidable.isFalse
  } else {
    return Decidable.isTrue
  }
}

