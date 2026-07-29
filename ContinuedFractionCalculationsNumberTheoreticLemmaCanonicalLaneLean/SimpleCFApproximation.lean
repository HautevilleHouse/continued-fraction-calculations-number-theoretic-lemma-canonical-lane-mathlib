import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure SimpleCFApproximationPackage where
  rationalNumber : ℚ
  convergents : List ℚ
  length : ℕ
  finite : Prop
  continuedFractionComplete : Prop

structure SimpleCFApproximationEvidence (C : SimpleCFApproximationPackage) where
  finiteClosed : C.finite
  continuedFractionCompleteClosed : C.continuedFractionComplete

def SimpleCFApproximationClosed (C : SimpleCFApproximationPackage) : Prop :=
  C.finite ∧ C.continuedFractionComplete

theorem simple_cf_approximation_closed_from_evidence (C : SimpleCFApproximationPackage) (E : SimpleCFApproximationEvidence C) : SimpleCFApproximationClosed C := by
  exact And.intro E.finiteClosed E.continuedFractionCompleteClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse