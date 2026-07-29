import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ContinuedFractionApproximationPackage where
  rationalInput : ℚ
  continuedFractionTerms : List ℕ
  convergents : List ℚ
  bestApproximationProperty : Prop
  approximationError : ℚ

structure ContinuedFractionApproximationEvidence (C : ContinuedFractionApproximationPackage) where
  rationalInputCorrect : C.rationalInput = (C.convergents.last! : ℚ)
  continuedFractionTermsFinite : C.continuedFractionTerms ≠ []
  convergentsNonempty : C.convergents ≠ []
  bestApproximationPropertyClosed : C.bestApproximationProperty

def ContinuedFractionApproximationClosed (C : ContinuedFractionApproximationPackage) : Prop :=
  C.bestApproximationProperty

theorem continued_fraction_approximation_closed_from_evidence
    (C : ContinuedFractionApproximationPackage) (E : ContinuedFractionApproximationEvidence C) :
    ContinuedFractionApproximationClosed C := by
  exact E.bestApproximationPropertyClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse
