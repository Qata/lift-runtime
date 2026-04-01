/-
  Lean definitions designed to stress-test the Swift backend transforms.
  All type names are prefixed with `T` to avoid conflicting with Init types.
  Compile with: lean -w swift-runtime/Sources/LeanGenerated/TransformTests.swift swift-runtime/Tests/LeanSource/SwiftTransformTests.lean
-/

-- ============================================================
-- 1. Method rewrite: self as first param
-- ============================================================

inductive TColor where
  | red | green | blue

def TColor.isWarm : TColor → Bool
  | .red => true
  | _ => false

def TColor.name : TColor → String
  | .red => "red"
  | .green => "green"
  | .blue => "blue"

-- ============================================================
-- 2. Method rewrite: self as later param (generic subsumption)
-- ============================================================

inductive TPair (α β : Type) where
  | mk : α → β → TPair α β

def TPair.fst : TPair α β → α
  | .mk a _ => a

def TPair.snd : TPair α β → β
  | .mk _ b => b

def TPair.mapFst (f : α → γ) : TPair α β → TPair γ β
  | .mk a b => .mk (f a) b

def TPair.mapSnd (f : β → γ) : TPair α β → TPair α γ
  | .mk a b => .mk a (f b)

-- Self uses second generic (β), function's first generic (α) is the mapper
def TPair.foldRight (f : β → γ → γ) (init : γ) : TPair α β → γ
  | .mk _ b => f b init

-- ============================================================
-- 3. Property rewrite: zero non-self params → computed property
-- ============================================================

inductive TMaybe (α : Type) where
  | nothing
  | just : α → TMaybe α

def TMaybe.isJust : TMaybe α → Bool
  | .nothing => false
  | .just _ => true

def TMaybe.isNothing : TMaybe α → Bool
  | .just _ => false
  | .nothing => true

-- ============================================================
-- 4. Constrained extension: Equatable constraint
-- ============================================================

def TMaybe.contains [BEq α] (val : α) : TMaybe α → Bool
  | .nothing => false
  | .just x => x == val

-- ============================================================
-- 5. Thin wrapper elimination
-- ============================================================

def TColor.isNotWarm (c : TColor) : Bool :=
  !c.isWarm

-- ============================================================
-- 6. Constant folding: globals
-- ============================================================

def tConst : Nat := 42

def tBigConst : Nat := 999999999999999999999

-- ============================================================
-- 7. Return elision: single expression body
-- ============================================================

def TColor.toggle : TColor → TColor
  | .red => .blue
  | .blue => .red
  | .green => .green

-- ============================================================
-- 8. Return elision with join points
-- ============================================================

def tTripleOr (a b c : Bool) : Bool :=
  if a then true
  else if b then true
  else c

-- ============================================================
-- 9. Names with ? and !
-- ============================================================

def TMaybe.get! [Inhabited α] : TMaybe α → α
  | .just x => x
  | .nothing => panic! "TMaybe.get! on nothing"

def TMaybe.orElse? (fallback : TMaybe α) : TMaybe α → TMaybe α
  | .nothing => fallback
  | .just x => .just x

-- ============================================================
-- 10. Multi-generic type with various param positions
-- ============================================================

inductive TEither (α β : Type) where
  | left : α → TEither α β
  | right : β → TEither α β

def TEither.isLeft : TEither α β → Bool
  | .left _ => true
  | .right _ => false

def TEither.isRight : TEither α β → Bool
  | .left _ => false
  | .right _ => true

def TEither.mapLeft (f : α → γ) : TEither α β → TEither γ β
  | .left a => .left (f a)
  | .right b => .right b

def TEither.mapRight (f : β → γ) : TEither α β → TEither α γ
  | .left a => .left a
  | .right b => .right (f b)

-- Both generics constrained
def TEither.isEq [BEq α] [BEq β] : TEither α β → TEither α β → Bool
  | .left a, .left b => a == b
  | .right a, .right b => a == b
  | _, _ => false

-- ============================================================
-- 11. Recursive type → indirect enum
-- ============================================================

inductive TTree (α : Type) where
  | leaf : α → TTree α
  | node : TTree α → TTree α → TTree α

def TTree.size : TTree α → Nat
  | .leaf _ => 1
  | .node l r => l.size + r.size
