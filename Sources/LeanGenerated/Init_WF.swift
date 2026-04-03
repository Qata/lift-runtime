// Swift v3 compiler output
// Module: src.Init.WF
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// wfParam
public func wfParam<A>(_ a: A) -> A {
  a
}

/// Prod.Lex.instDecidableRelOfDecidableEq
public func Prod_Lex_instDecidableRelOfDecidableEq<A: Equatable & Equatable, B: Equatable>(_ `αeqDec`: @escaping (A, A) -> Decidable, _ rDec: @escaping (A, A) -> Decidable, _ sDec: @escaping (B, B) -> Decidable, _ x_1: Prod<A, B>, _ x_2: Prod<A, B>) -> Decidable {
  let fst_3 = x_1.fst
  let snd_4 = x_1.snd
  let fst_5 = x_2.fst
  let snd_6 = x_2.snd
  let _x_7 = sDec(snd_4, snd_6)
  let _x_8 = `αeqDec`(fst_3, fst_5)
  let _x_9 = rDec(fst_3, fst_5)
  if Decidable_decide(_x_9) {
    return Decidable.isTrue
  } else {
    if Decidable_decide(_x_8) {
      if Decidable_decide(_x_7) {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    } else {
      return Decidable.isFalse
    }
  }
}

