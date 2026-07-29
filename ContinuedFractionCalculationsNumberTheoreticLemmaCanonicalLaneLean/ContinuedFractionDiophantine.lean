import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure DiophantineApproximationPackage where
  irrational : ℝ
  bestApproximations : List (ℤ × ℤ)
  errorBounds : Prop
  dirichletTheoremApplied : Prop
  hurwitzTheoremApplied : Prop

structure DiophantineApproximationEvidence (D : DiophantineApproximationPackage) where
  errorBoundsClosed : D.errorBounds
  dirichletTheoremAppliedClosed : D.dirichletTheoremApplied
  hurwitzTheoremAppliedClosed : D.hurwitzTheoremApplied

def DiophantineApproximationClosed (D : DiophantineApproximationPackage) : Prop :=
  D.errorBounds ∧ D.dirichletTheoremApplied ∧ D.hurwitzTheoremApplied

theorem diophantine_approximation_closed_from_evidence (D : DiophantineApproximationPackage) (E : DiophantineApproximationEvidence D) : DiophantineApproximationClosed D := by
  exact And.intro E.errorBoundsClosed (And.intro E.dirichletTheoremAppliedClosed E.hurwitzTheoremAppliedClosed)

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse