import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure RationalApproximationRatePackage where
  theta : ℝ
  approximationConstant : ℝ
  bestApproximationSequence : ℕ → ℚ
  dirichletBound : Prop
  rothTheoremApplied : Prop

structure RationalApproximationRateEvidence (R : RationalApproximationRatePackage) where
  dirichletBoundClosed : R.dirichletBound
  rothTheoremAppliedClosed : R.rothTheoremApplied

def RationalApproximationRateClosed (R : RationalApproximationRatePackage) : Prop :=
  R.dirichletBound ∧ R.rothTheoremApplied

theorem rational_approximation_rate_closed_from_evidence (R : RationalApproximationRatePackage) (E : RationalApproximationRateEvidence R) :
    RationalApproximationRateClosed R := by
  exact And.intro E.dirichletBoundClosed E.rothTheoremAppliedClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse