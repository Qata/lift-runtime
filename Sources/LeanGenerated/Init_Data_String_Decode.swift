// Swift v3 compiler output
// Module: src.Init.Data.String.Decode
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// ByteArray.utf8DecodeChar?.FirstByte
public enum `ByteArray_utf8DecodeChar?_FirstByte`: @unchecked Sendable {
  case invalid
  case done
  case oneMore
  case twoMore
  case threeMore
}

/// UInt8.instDecidableIsUTF8FirstByte._aux_1
public func UInt8_instDecidableIsUTF8FirstByte__aux_1(_ c: UInt8) -> Decidable {
  let _x_1: UInt8 = 0
  let _x_2: UInt8 = UInt8_land(c, _x_1)
  let _x_3: UInt8 = 0
  let _x_4: Bool = _x_2 == _x_3
  if _x_4 {
    return Decidable.isTrue
  } else {
    let _x_6: UInt8 = 0
    let _x_7: UInt8 = UInt8_land(c, _x_6)
    let _x_8: UInt8 = 0
    let _x_9: Bool = _x_7 == _x_8
    if _x_9 {
      return Decidable.isTrue
    } else {
      let _x_11: UInt8 = 0
      let _x_12: UInt8 = UInt8_land(c, _x_11)
      let _x_13: UInt8 = 0
      let _x_14: Bool = _x_12 == _x_13
      if _x_14 {
        return Decidable.isTrue
      } else {
        let _x_16: UInt8 = 0
        let _x_17: UInt8 = UInt8_land(c, _x_16)
        let _x_18: UInt8 = 0
        let _x_19: Bool = _x_17 == _x_18
        if _x_19 {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      }
    }
  }
}

/// UInt8.utf8ByteSize
@inline(__always) public func UInt8_utf8ByteSize(_ c: UInt8) -> Nat {
  let _x_1: UInt8 = 0
  let _x_2: UInt8 = UInt8_land(c, _x_1)
  let _x_3: UInt8 = 0
  let _x_4: Bool = _x_2 == _x_3
  if _x_4 {
    return 1
  } else {
    let _x_6: UInt8 = 0
    let _x_7: UInt8 = UInt8_land(c, _x_6)
    let _x_8: UInt8 = 0
    let _x_9: Bool = _x_7 == _x_8
    if _x_9 {
      return 2
    } else {
      let _x_11: UInt8 = 0
      let _x_12: UInt8 = UInt8_land(c, _x_11)
      let _x_13: Bool = _x_12 == _x_6
      if _x_13 {
        return 3
      } else {
        return 4
      }
    }
  }
}

/// ByteArray.validateUTF8At
@inline(__always) public func ByteArray_validateUTF8At(_ bytes: Array<UInt8>, _ i: Nat) -> Bool {
  let _x_1: Nat = ByteArray_size(bytes)
  let _x_2: Bool = i < _x_1
  if _x_2 {
    let _x_4: UInt8 = ByteArray_get(bytes, i)
    let _x_5: UInt8 = 0
    let _x_6: UInt8 = UInt8_land(_x_4, _x_5)
    let _x_7: UInt8 = 0
    let _x_9: Bool = _x_6 == _x_7
    if _x_9 {
      return _x_9
    } else {
      let _x_10: UInt8 = 0
      let _x_11: UInt8 = UInt8_land(_x_4, _x_10)
      let _x_12: UInt8 = 0
      let _x_14: Bool = _x_11 == _x_12
      if _x_14 {
        let _x_105: Nat = 1
        let _x_106: Nat = i + _x_105
        let _x_107: Bool = _x_106 < _x_1
        if _x_107 {
          let _x_108: UInt8 = ByteArray_get(bytes, _x_106)
          let _x_109: UInt8 = 0
          let _x_110: UInt8 = UInt8_land(_x_108, _x_109)
          let _x_111: UInt8 = 0
          let _x_113: Bool = _x_110 == _x_111
          if _x_113 {
            let _x_114: UInt8 = ByteArray_get(bytes, i)
            let _x_115: UInt8 = 0
            let `b₀`: UInt8 = UInt8_land(_x_114, _x_115)
            let _x_116: UInt8 = 0
            let `b₁`: UInt8 = UInt8_land(_x_108, _x_116)
            let _x_117: UInt32 = UInt8_toUInt32(`b₀`)
            let _x_118: UInt32 = 0
            let _x_119: UInt32 = UInt32_shiftLeft(_x_117, _x_118)
            let _x_120: UInt32 = UInt8_toUInt32(`b₁`)
            let r: UInt32 = UInt32_lor(_x_119, _x_120)
            let _x_121: UInt32 = 0
            return _x_121 <= r
          } else {
            return _x_113
          }
        } else {
          return _x_9
        }
      } else {
        let _x_15: UInt8 = 0
        let _x_16: UInt8 = UInt8_land(_x_4, _x_15)
        let _x_18: Bool = _x_16 == _x_10
        if _x_18 {
          let _x_67: Nat = 2
          let _x_68: Nat = i + _x_67
          let _x_69: Bool = _x_68 < _x_1
          if _x_69 {
            let _x_70: Nat = 1
            let _x_71: Nat = i + _x_70
            let _x_72: UInt8 = ByteArray_get(bytes, _x_71)
            let _x_73: UInt8 = 0
            let _x_74: UInt8 = UInt8_land(_x_72, _x_73)
            let _x_75: UInt8 = 0
            let _x_77: Bool = _x_74 == _x_75
            if _x_77 {
              let _x_78: UInt8 = ByteArray_get(bytes, _x_68)
              let _x_79: UInt8 = UInt8_land(_x_78, _x_73)
              let _x_81: Bool = _x_79 == _x_75
              if _x_81 {
                let _x_82: UInt8 = ByteArray_get(bytes, i)
                let _x_83: UInt8 = 0
                let `b₀`: UInt8 = UInt8_land(_x_82, _x_83)
                let _x_84: UInt8 = 0
                let `b₁`: UInt8 = UInt8_land(_x_72, _x_84)
                let `b₂`: UInt8 = UInt8_land(_x_78, _x_84)
                let _x_85: UInt32 = UInt8_toUInt32(`b₀`)
                let _x_86: UInt32 = 0
                let _x_87: UInt32 = UInt32_shiftLeft(_x_85, _x_86)
                let _x_88: UInt32 = UInt8_toUInt32(`b₁`)
                let _x_89: UInt32 = 0
                let _x_90: UInt32 = UInt32_shiftLeft(_x_88, _x_89)
                let _x_91: UInt32 = UInt32_lor(_x_87, _x_90)
                let _x_92: UInt32 = UInt8_toUInt32(`b₂`)
                let r: UInt32 = UInt32_lor(_x_91, _x_92)
                let _x_93: UInt32 = 0
                let _x_94: Bool = _x_93 <= r
                if _x_94 {
                  let _x_97: UInt32 = 0
                  let _x_98: Bool = r < _x_97
                  if _x_98 {
                    return _x_81
                  } else {
                    let _x_100: UInt32 = 0
                    let _x_101: Bool = _x_100 < r
                    if _x_101 {
                      return _x_81
                    } else {
                      return _x_14
                    }
                  }
                } else {
                  return _x_14
                }
              } else {
                return _x_81
              }
            } else {
              return _x_77
            }
          } else {
            return _x_14
          }
        } else {
          let _x_19: UInt8 = 0
          let _x_20: UInt8 = UInt8_land(_x_4, _x_19)
          let _x_22: Bool = _x_20 == _x_15
          if _x_22 {
            let _x_23: Nat = 3
            let _x_24: Nat = i + _x_23
            let _x_25: Bool = _x_24 < _x_1
            if _x_25 {
              let _x_26: Nat = 1
              let _x_27: Nat = i + _x_26
              let _x_28: UInt8 = ByteArray_get(bytes, _x_27)
              let _x_29: UInt8 = 0
              let _x_30: UInt8 = UInt8_land(_x_28, _x_29)
              let _x_31: UInt8 = 0
              let _x_33: Bool = _x_30 == _x_31
              if _x_33 {
                let _x_34: Nat = 2
                let _x_35: Nat = i + _x_34
                let _x_36: UInt8 = ByteArray_get(bytes, _x_35)
                let _x_37: UInt8 = UInt8_land(_x_36, _x_29)
                let _x_39: Bool = _x_37 == _x_31
                if _x_39 {
                  let _x_40: UInt8 = ByteArray_get(bytes, _x_24)
                  let _x_41: UInt8 = UInt8_land(_x_40, _x_29)
                  let _x_43: Bool = _x_41 == _x_31
                  if _x_43 {
                    let _x_44: UInt8 = ByteArray_get(bytes, i)
                    let _x_45: UInt8 = 0
                    let `b₀`: UInt8 = UInt8_land(_x_44, _x_45)
                    let _x_46: UInt8 = 0
                    let `b₁`: UInt8 = UInt8_land(_x_28, _x_46)
                    let `b₂`: UInt8 = UInt8_land(_x_36, _x_46)
                    let `b₃`: UInt8 = UInt8_land(_x_40, _x_46)
                    let _x_47: UInt32 = UInt8_toUInt32(`b₀`)
                    let _x_48: UInt32 = 0
                    let _x_49: UInt32 = UInt32_shiftLeft(_x_47, _x_48)
                    let _x_50: UInt32 = UInt8_toUInt32(`b₁`)
                    let _x_51: UInt32 = 0
                    let _x_52: UInt32 = UInt32_shiftLeft(_x_50, _x_51)
                    let _x_53: UInt32 = UInt32_lor(_x_49, _x_52)
                    let _x_54: UInt32 = UInt8_toUInt32(`b₂`)
                    let _x_55: UInt32 = 0
                    let _x_56: UInt32 = UInt32_shiftLeft(_x_54, _x_55)
                    let _x_57: UInt32 = UInt32_lor(_x_53, _x_56)
                    let _x_58: UInt32 = UInt8_toUInt32(`b₃`)
                    let r: UInt32 = UInt32_lor(_x_57, _x_58)
                    let _x_59: UInt32 = 0
                    let _x_60: Bool = _x_59 <= r
                    if _x_60 {
                      let _x_63: UInt32 = 0
                      let _x_64: Bool = r <= _x_63
                      if _x_64 {
                        return _x_43
                      } else {
                        return _x_18
                      }
                    } else {
                      return _x_18
                    }
                  } else {
                    return _x_43
                  }
                } else {
                  return _x_39
                }
              } else {
                return _x_33
              }
            } else {
              return _x_18
            }
          } else {
            return _x_22
          }
        }
      }
    }
  } else {
    return false
  }
}

/// _private.src.Init.Data.String.Decode.0.ByteArray.utf8DecodeChar?.FirstByte.utf8ByteSize
public func `ByteArray_utf8DecodeChar?_FirstByte_utf8ByteSize`(_ x_1: `ByteArray_utf8DecodeChar?_FirstByte`) -> Nat {
  switch x_1 {
  case .invalid:
    return 0
  case .done:
    return 1
  case .oneMore:
    return 2
  case .twoMore:
    return 3
  case .threeMore:
    return 4
  default:
    fatalError("unreachable")
  }
}

