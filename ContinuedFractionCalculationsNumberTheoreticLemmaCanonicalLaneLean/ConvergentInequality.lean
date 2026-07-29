import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ConvergentInequalityPackage where
  a_n : Nat → ℚ
  b_n : Nat → ℚ
  convergentBound : Prop
  errorTermEstimate : Prop
  uniformConvergence : Prop

structure ConvergentInequalityEvidence (C : ConvergentInequalityPackage) where
  convergentBoundClosed : C.convergentBound
  errorTermEstimateClosed : C.errorTermEstimate
  uniformConvergenceClosed : C.uniformConvergence

def ConvergentInequalityClosed (C : ConvergentInequalityPackage) : Prop :=
  C.convergentBound ∧ C.errorTermEstimate ∧ C.uniformConvergence

theorem convergent_inequality_closed_from_evidence (C : ConvergentInequalityPackage) (E : ConvergentInequalityEvidence C) :
    ConvergentInequalityClosed C := by
  exact And.intro E.convergentBoundClosed (And.intro E.errorTermEstimateClosed E.uniformConvergenceClosed)

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse