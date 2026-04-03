// Swift v3 compiler output
// Module: src.Init.Data.List.Attach
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.List.Attach.0.List.attachWithImpl
@inline(__always) public func List_attachWithImpl<A>(_ l: List<A>) -> List<A> {
  l
}

/// List.unattach
public extension List {
  var unattach: List<A> {
    func _f_1(_ x_2: A) -> A {
      x_2
    }
    let _x_4: List<A> = List<A>.`nil`
    return List_mapTR_loop(_f_1, self, _x_4)
  }
}

@inline(__always) public func List_unattach<A>(_ l: List<A>) -> List<A> {
  l.unattach
}

