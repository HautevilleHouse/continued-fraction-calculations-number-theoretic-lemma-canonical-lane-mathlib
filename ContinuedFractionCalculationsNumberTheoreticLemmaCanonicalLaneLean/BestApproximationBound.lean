import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure BestApproximationBoundPackage where
  α : ℝ
  n : ℕ
  convergent : ℚ
  distance : ℝ
  bound : ℝ
  distanceLtBound : Prop
  bestApproximationProperty : Prop

structure BestApproximationBoundEvidence (B : BestApproximationBoundPackage) where
  distanceLtBoundClosed : B.distanceLtBound
  bestApproximationPropertyClosed : B.bestApproximationProperty

def BestApproximationBoundClosed (B : BestApproximationBoundPackage) : Prop :=
  B.distanceLtBound ∧ B.bestApproximationProperty

theorem best_approximation_bound_closed_from_evidence
    (B : BestApproximationBoundPackage)
    (Ev : BestApproximationBoundEvidence B) : BestApproximationBoundClosed B :=
  And.intro Ev.distanceLtBoundClosed Ev.bestApproximationPropertyClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse