// Swift v3 compiler output
// Module: src.Init.Data.String.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// String.decLE
public func String_decLE(_ `s₁`: String, _ `s₂`: String) -> Decidable {
  let _x_1 = String_decidableLT(`s₂`, `s₁`)
  if Decidable_decide(_x_1) {
    return Decidable.isFalse
  } else {
    return Decidable.isTrue
  }
}

/// String.fromUTF8!
@inline(__always) public func `String_fromUTF8!`(_ a: Array<UInt8>) -> String {
  let _x_1 = instDecidableIsValidUTF8_src(a)
  if Decidable_decide(_x_1) {
    return String(a)
  } else {
    let _x_3: String = "src.Init.Data.String.Basic"
    let _x_4: String = "String.fromUTF8!"
    let _x_5: Nat = 193
    let _x_6: Nat = 46
    let _x_7: String = "invalid UTF-8 string"
    let _x_8 = mkPanicMessageWithDecl(_x_3, _x_4, _x_5, _x_6, _x_7)
    return panic(_x_8)
  }
}

/// instDecidableIsValidUTF8_src
public func instDecidableIsValidUTF8_src(_ b: Array<UInt8>) -> Decidable {
  let _x_1 = ByteArray_validateUTF8(b)
  if _x_1 {
    return Decidable.isTrue
  } else {
    return Decidable.isFalse
  }
}

/// String.fromUTF8?
@inline(__always) public func `String_fromUTF8?`(_ a: Array<UInt8>) -> String? {
  let _x_1 = instDecidableIsValidUTF8_src(a)
  if Decidable_decide(_x_1) {
    let _x_3: String = String(a)
    return String?.some(_x_3)
  } else {
    return nil
  }
}

/// ByteArray.validateUTF8.go
public func ByteArray_validateUTF8_go(_ b: Array<UInt8>, _ i: Nat) -> Bool {
  func _jp_1(_ _y_2: Nat) -> Bool {
    let _x_3 = i + _y_2
    return ByteArray_validateUTF8_go(b, _x_3)
  }
  func _jp_5(_ _y_6: Bool) -> Bool {
    if _y_6 {
      let _x_7 = ByteArray_get(b, i)
      let _x_8: UInt8 = 0
      let _x_9 = UInt8_land(_x_7, _x_8)
      let _x_10: UInt8 = 0
      let _x_11 = _x_9 == _x_10
      if _x_11 {
        let _x_28: Nat = 1
        return _jp_1(_x_28        )
      } else {
        let _x_13: UInt8 = 0
        let _x_14 = UInt8_land(_x_7, _x_13)
        let _x_15: UInt8 = 0
        let _x_16 = _x_14 == _x_15
        if _x_16 {
          let _x_26: Nat = 2
          return _jp_1(_x_26          )
        } else {
          let _x_18: UInt8 = 0
          let _x_19 = UInt8_land(_x_7, _x_18)
          let _x_20 = _x_19 == _x_13
          if _x_20 {
            let _x_24: Nat = 3
            return _jp_1(_x_24            )
          } else {
            let _x_22: Nat = 4
            return _jp_1(_x_22            )
          }
        }
      }
    } else {
      return _y_6
    }
  }
  let _x_29 = ByteArray_size(b)
  let _x_30 = i < _x_29
  if _x_30 {
    let _x_32 = ByteArray_size(b)
    let _x_33 = i < _x_32
    if _x_33 {
      let _x_35 = ByteArray_get(b, i)
      let _x_36: UInt8 = 0
      let _x_37 = UInt8_land(_x_35, _x_36)
      let _x_38: UInt8 = 0
      let _x_40 = _x_37 == _x_38
      if _x_40 {
        return _jp_5(_x_40        )
      } else {
        let _x_41: UInt8 = 0
        let _x_42 = UInt8_land(_x_35, _x_41)
        let _x_43: UInt8 = 0
        let _x_45 = _x_42 == _x_43
        if _x_45 {
          let _x_130: Nat = 1
          let _x_131 = i + _x_130
          let _x_132 = _x_131 < _x_32
          if _x_132 {
            let _x_133 = ByteArray_get(b, _x_131)
            let _x_134 = UInt8_land(_x_133, _x_43)
            let _x_136 = _x_134 == _x_36
            if _x_136 {
              let _x_137: UInt8 = 0
              let `b₀` = UInt8_land(_x_35, _x_137)
              let _x_138: UInt8 = 0
              let `b₁` = UInt8_land(_x_133, _x_138)
              let _x_139 = UInt8_toUInt32(`b₀`)
              let _x_140: UInt32 = 0
              let _x_141 = UInt32_shiftLeft(_x_139, _x_140)
              let _x_142 = UInt8_toUInt32(`b₁`)
              let r = UInt32_lor(_x_141, _x_142)
              let _x_143: UInt32 = 0
              let _x_145 = _x_143 <= r
              return _jp_5(_x_145              )
            } else {
              return _jp_5(_x_136              )
            }
          } else {
            return _jp_5(_x_40            )
          }
        } else {
          let _x_46: UInt8 = 0
          let _x_47 = UInt8_land(_x_35, _x_46)
          let _x_49 = _x_47 == _x_41
          if _x_49 {
            let _x_95: Nat = 2
            let _x_96 = i + _x_95
            let _x_97 = _x_96 < _x_32
            if _x_97 {
              let _x_98: Nat = 1
              let _x_99 = i + _x_98
              let _x_100 = ByteArray_get(b, _x_99)
              let _x_101 = UInt8_land(_x_100, _x_43)
              let _x_103 = _x_101 == _x_36
              if _x_103 {
                let _x_104 = ByteArray_get(b, _x_96)
                let _x_105 = UInt8_land(_x_104, _x_43)
                let _x_107 = _x_105 == _x_36
                if _x_107 {
                  let _x_108: UInt8 = 0
                  let `b₀` = UInt8_land(_x_35, _x_108)
                  let _x_109: UInt8 = 0
                  let `b₁` = UInt8_land(_x_100, _x_109)
                  let `b₂` = UInt8_land(_x_104, _x_109)
                  let _x_110 = UInt8_toUInt32(`b₀`)
                  let _x_111: UInt32 = 0
                  let _x_112 = UInt32_shiftLeft(_x_110, _x_111)
                  let _x_113 = UInt8_toUInt32(`b₁`)
                  let _x_114: UInt32 = 0
                  let _x_115 = UInt32_shiftLeft(_x_113, _x_114)
                  let _x_116 = UInt32_lor(_x_112, _x_115)
                  let _x_117 = UInt8_toUInt32(`b₂`)
                  let r = UInt32_lor(_x_116, _x_117)
                  let _x_118: UInt32 = 0
                  let _x_119 = _x_118 <= r
                  if _x_119 {
                    let _x_122: UInt32 = 0
                    let _x_123 = r < _x_122
                    if _x_123 {
                      return _jp_5(_x_107                      )
                    } else {
                      let _x_125: UInt32 = 0
                      let _x_126 = _x_125 < r
                      if _x_126 {
                        return _jp_5(_x_107                        )
                      } else {
                        return _jp_5(_x_45                        )
                      }
                    }
                  } else {
                    return _jp_5(_x_45                    )
                  }
                } else {
                  return _jp_5(_x_107                  )
                }
              } else {
                return _jp_5(_x_103                )
              }
            } else {
              return _jp_5(_x_45              )
            }
          } else {
            let _x_50: UInt8 = 0
            let _x_51 = UInt8_land(_x_35, _x_50)
            let _x_53 = _x_51 == _x_46
            if _x_53 {
              let _x_54: Nat = 3
              let _x_55 = i + _x_54
              let _x_56 = _x_55 < _x_32
              if _x_56 {
                let _x_57: Nat = 1
                let _x_58 = i + _x_57
                let _x_59 = ByteArray_get(b, _x_58)
                let _x_60 = UInt8_land(_x_59, _x_43)
                let _x_62 = _x_60 == _x_36
                if _x_62 {
                  let _x_63: Nat = 2
                  let _x_64 = i + _x_63
                  let _x_65 = ByteArray_get(b, _x_64)
                  let _x_66 = UInt8_land(_x_65, _x_43)
                  let _x_68 = _x_66 == _x_36
                  if _x_68 {
                    let _x_69 = ByteArray_get(b, _x_55)
                    let _x_70 = UInt8_land(_x_69, _x_43)
                    let _x_72 = _x_70 == _x_36
                    if _x_72 {
                      let _x_73: UInt8 = 0
                      let `b₀` = UInt8_land(_x_35, _x_73)
                      let _x_74: UInt8 = 0
                      let `b₁` = UInt8_land(_x_59, _x_74)
                      let `b₂` = UInt8_land(_x_65, _x_74)
                      let `b₃` = UInt8_land(_x_69, _x_74)
                      let _x_75 = UInt8_toUInt32(`b₀`)
                      let _x_76: UInt32 = 0
                      let _x_77 = UInt32_shiftLeft(_x_75, _x_76)
                      let _x_78 = UInt8_toUInt32(`b₁`)
                      let _x_79: UInt32 = 0
                      let _x_80 = UInt32_shiftLeft(_x_78, _x_79)
                      let _x_81 = UInt32_lor(_x_77, _x_80)
                      let _x_82 = UInt8_toUInt32(`b₂`)
                      let _x_83: UInt32 = 0
                      let _x_84 = UInt32_shiftLeft(_x_82, _x_83)
                      let _x_85 = UInt32_lor(_x_81, _x_84)
                      let _x_86 = UInt8_toUInt32(`b₃`)
                      let r = UInt32_lor(_x_85, _x_86)
                      let _x_87: UInt32 = 0
                      let _x_88 = _x_87 <= r
                      if _x_88 {
                        let _x_91: UInt32 = 0
                        let _x_92 = r <= _x_91
                        if _x_92 {
                          return _jp_5(_x_72                          )
                        } else {
                          return _jp_5(_x_49                          )
                        }
                      } else {
                        return _jp_5(_x_49                        )
                      }
                    } else {
                      return _jp_5(_x_72                      )
                    }
                  } else {
                    return _jp_5(_x_68                    )
                  }
                } else {
                  return _jp_5(_x_62                  )
                }
              } else {
                return _jp_5(_x_49                )
              }
            } else {
              return _jp_5(_x_53              )
            }
          }
        }
      }
    } else {
      return false
    }
  } else {
    return true
  }
}

