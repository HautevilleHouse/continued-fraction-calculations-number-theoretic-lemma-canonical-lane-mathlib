import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ConvergentRateDiophantinePackage where
  irrationalTarget : ℝ
  convergents : ℕ → ℚ
  approximationInequality : Prop
  rateExponent : ℕ
  measureZero : Prop

structure ConvergentRateDiophantineEvidence (D : ConvergentRateDiophantinePackage) where
  irrationalTargetIrrational : Irrational D.irrationalTarget
  convergentRecurrence : ∀ n : ℕ, D.convergents n ∈ ℚ
  approximationInequalityClosed : D.approximationInequality
  rateExponentPositive : D.rateExponent ≥ 1
  measureZeroClosed : D.measureZero

def ConvergentRateDiophantineClosed (D : ConvergentRateDiophantinePackage) : Prop :=
  D.approximationInequality ∧ D.measureZero

theorem convergent_rate_diophantine_closed_from_evidence
    (D : ConvergentRateDiophantinePackage) (E : ConvergentRateDiophantineEvidence D) :
    ConvergentRateDiophantineClosed D := by
  exact And.intro E.approximationInequalityClosed E.measureZeroClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse
