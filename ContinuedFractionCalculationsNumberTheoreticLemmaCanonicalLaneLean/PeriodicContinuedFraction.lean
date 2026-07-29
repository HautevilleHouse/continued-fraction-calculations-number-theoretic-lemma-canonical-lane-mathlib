import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure PeriodicContinuedFractionPackage where
  alpha : ℚ
  preperiodLength : ℕ
  periodLength : ℕ
  lagrangeTheorem : Prop
  galoisTheorem : Prop

structure PeriodicContinuedFractionEvidence (P : PeriodicContinuedFractionPackage) where
  lagrangeTheoremClosed : P.lagrangeTheorem
  galoisTheoremClosed : P.galoisTheorem

def PeriodicContinuedFractionClosed (P : PeriodicContinuedFractionPackage) : Prop :=
  P.lagrangeTheorem ∧ P.galoisTheorem

theorem periodic_continued_fraction_closed_from_evidence (P : PeriodicContinuedFractionPackage) (E : PeriodicContinuedFractionEvidence P) :
    PeriodicContinuedFractionClosed P := by
  exact And.intro E.lagrangeTheoremClosed E.galoisTheoremClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse