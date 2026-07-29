import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure PellEquation (D : ℕ) where
  D : ℕ
  squareFree : D > 0 ∧ ∀ p : ℕ, Nat.Prime p → (p^2 ∣ D) → False

structure FundamentalSolutionPackage (D : ℕ) (P : PellEquation D) where
  x : ℤ
  y : ℤ
  solvesEquation : x^2 - (D : ℤ) * y^2 = 1
  minimalX : ∀ (x' : ℤ) (y' : ℤ), x'^2 - (D : ℤ) * y'^2 = 1 → |x'| ≥ |x|

def convergentsToSolution {D : ℕ} (P : PellEquation D) (A : PeriodicCFPackage (quadraticIrrationalFromD D)) : Option (ℤ × ℤ) := by
  sorry

structure PellFromCFPackage (D : ℕ) (P : PellEquation D) where
  continuedFractionApproach : Prop
  fundamentalSolution : FundamentalSolutionPackage D P
  approachClosed : continuedFractionApproach
  closed : Prop

structure PellFromCFEvidence (D : ℕ) (P : PellEquation D) (C : PellFromCFPackage D P) where
  approachClosedClosed : C.approachClosed
  closedClosed : C.closed

def PellFromCFClosed (D : ℕ) (P : PellEquation D) (C : PellFromCFPackage D P) : Prop :=
  C.approachClosed ∧ C.closed

theorem pell_from_cf_closed_from_evidence (D : ℕ) (P : PellEquation D)
    (C : PellFromCFPackage D P) (E : PellFromCFEvidence D P C) : PellFromCFClosed D P C := by
  exact And.intro E.approachClosedClosed E.closedClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse