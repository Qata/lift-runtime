// Swift v3 compiler output
// Module: src.Init.Data.Array.InsertionSort
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.Array.InsertionSort.0.Array.insertionSort.swapLoop
public func Array_insertionSort_swapLoop<A: Equatable>(_ lt: @escaping (A, A) -> Bool, _ xs: Array<A>, _ j: Nat) -> Array<A> {
  if j == 0 {
    return xs
  } else {
    let n_1: Nat = j - 1
    let _x_2 = Array_getInternal(xs, j)
    let _x_3 = Array_getInternal(xs, n_1)
    let _x_4: Bool = lt(_x_2, _x_3)
    if _x_4 {
      let _x_5: Array<A> = Array_swap(xs, j, n_1)
      return Array_insertionSort_swapLoop(lt, _x_5, n_1)
    } else {
      return xs
    }
  }
}

/// _private.src.Init.Data.Array.InsertionSort.0.Array.insertionSort.traverse
public func Array_insertionSort_traverse<A: Equatable>(_ lt: @escaping (A, A) -> Bool, _ xs: Array<A>, _ i: Nat, _ fuel: Nat) -> Array<A> {
  if fuel == 0 {
    return xs
  } else {
    let n_1: Nat = fuel - 1
    let _x_2: Nat = Array_size(xs)
    let _x_3: Bool = i < _x_2
    if _x_3 {
      let _x_4: Array<A> = Array_insertionSort_swapLoop(lt, xs, i)
      let _x_5: Nat = 1
      let _x_6: Nat = i + _x_5
      return Array_insertionSort_traverse(lt, _x_4, _x_6, n_1)
    } else {
      return xs
    }
  }
}

/// Array.insertionSort
@inline(__always) public func Array_insertionSort<A: Equatable>(_ xs: Array<A>, _ lt: @escaping (A, A) -> Bool) -> Array<A> {
  let _x_1: Nat = 0
  let _x_2: Nat = Array_size(xs)
  return Array_insertionSort_traverse(lt, xs, _x_1, _x_2)
}

