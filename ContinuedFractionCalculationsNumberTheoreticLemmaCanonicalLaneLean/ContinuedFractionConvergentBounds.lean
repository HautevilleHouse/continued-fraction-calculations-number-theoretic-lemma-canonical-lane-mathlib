import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ContinuedFractionTerm (α : Type) [LinearOrderedCommRing α] where
  floorPart : α
  fractionalPart : α
  fractionalPartNeZero : fractionalPart ≠ 0

def standardContinuedFraction {α : Type} [LinearOrderedRing α] [Archimedean α] (x : α) : Stream α := by
  sorry

structure ConvergentBoundsPackage {α : Type} [LinearOrderedCommRing α] [Archimedean α] where
  sequence : Stream α
  convergents : Stream (ℚ × ℚ)  -- numerator denominator pairs
  errorBounds : Stream (α × α)  -- lower and upper error bounds
  errorDecay : Prop
  approximationClosed : Prop

structure ConvergentBoundsEvidence {α : Type} [LinearOrderedCommRing α] [Archimedean α]
    (C : ConvergentBoundsPackage α) where
  errorDecayClosed : C.errorDecay
  approximationClosedClosed : C.approximationClosed

def ConvergentBoundsClosed {α : Type} [LinearOrderedCommRing α] [Archimedean α]
    (C : ConvergentBoundsPackage α) : Prop :=
  C.errorDecay ∧ C.approximationClosed

theorem convergent_bounds_closed_from_evidence {α : Type} [LinearOrderedCommRing α] [Archimedean α]
    (C : ConvergentBoundsPackage α) (E : ConvergentBoundsEvidence C) : ConvergentBoundsClosed C := by
  exact And.intro E.errorDecayClosed E.approximationClosedClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse