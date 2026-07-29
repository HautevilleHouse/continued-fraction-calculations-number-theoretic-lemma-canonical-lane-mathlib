import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure DiophantineApproximationPackage (α : ℚ) where
  rationalApproximations : Stream ℚ
  denominatorGrowth : ℕ → ℕ
  approximationQuality : ℚ → Prop
  dirichletTheorem : Prop
  bestApproximationProperty : Prop
  closed : Prop

structure DiophantineApproximationEvidence (α : ℚ) (D : DiophantineApproximationPackage α) where
  dirichletTheoremClosed : D.dirichletTheorem
  bestApproximationPropertyClosed : D.bestApproximationProperty
  closedClosed : D.closed

def DiophantineApproximationClosed (α : ℚ) (D : DiophantineApproximationPackage α) : Prop :=
  D.dirichletTheorem ∧ D.bestApproximationProperty ∧ D.closed

theorem diophantine_approximation_closed_from_evidence (α : ℚ)
    (D : DiophantineApproximationPackage α) (E : DiophantineApproximationEvidence α D) :
    DiophantineApproximationClosed α D := by
  exact And.intro E.dirichletTheoremClosed (And.intro E.bestApproximationPropertyClosed E.closedClosed)

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse