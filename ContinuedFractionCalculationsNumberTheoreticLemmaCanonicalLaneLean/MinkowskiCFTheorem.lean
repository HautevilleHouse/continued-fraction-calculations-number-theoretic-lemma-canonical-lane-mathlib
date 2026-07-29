import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure MinkowskiCFTheoremPackage where
  symmetricConvexBody : Set (ℤ × ℤ)
  latticePointExists : ℤ × ℤ
  determinantCondition : ℤ
  minkowskiTheoremApplied : Prop
  continuedFractionBound : Prop

structure MinkowskiCFTheoremEvidence (M : MinkowskiCFTheoremPackage) where
  minkowskiTheoremAppliedClosed : M.minkowskiTheoremApplied
  continuedFractionBoundClosed : M.continuedFractionBound

def MinkowskiCFTheoremClosed (M : MinkowskiCFTheoremPackage) : Prop :=
  M.minkowskiTheoremApplied ∧ M.continuedFractionBound

theorem minkowski_cf_theorem_closed_from_evidence (M : MinkowskiCFTheoremPackage) (E : MinkowskiCFTheoremEvidence M) : MinkowskiCFTheoremClosed M := by
  exact And.intro E.minkowskiTheoremAppliedClosed E.continuedFractionBoundClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse