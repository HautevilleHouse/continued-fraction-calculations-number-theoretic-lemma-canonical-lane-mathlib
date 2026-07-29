import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure MobiusTransformation where
  a : ℤ
  b : ℤ
  c : ℤ
  d : ℤ
  determinantNonZero : a*d - b*c ≠ 0

def applyMobius (M : MobiusTransformation) (x : ℚ) : ℚ := sorry

structure ArithmeticCFPackage where
  sumClosed : Prop
  productClosed : Prop
  gosperAlgorithm : Prop
  hurwitzTheorem : Prop
  closed : Prop

structure ArithmeticCFEvidence (A : ArithmeticCFPackage) where
  sumClosedClosed : A.sumClosed
  productClosedClosed : A.productClosed
  gosperAlgorithmClosed : A.gosperAlgorithm
  hurwitzTheoremClosed : A.hurwitzTheorem
  closedClosed : A.closed

def ArithmeticCFClosed (A : ArithmeticCFPackage) : Prop :=
  A.sumClosed ∧ A.productClosed ∧ A.gosperAlgorithm ∧ A.hurwitzTheorem ∧ A.closed

theorem arithmetic_cf_closed_from_evidence (A : ArithmeticCFPackage) (E : ArithmeticCFEvidence A) :
    ArithmeticCFClosed A := by
  exact And.intro E.sumClosedClosed (And.intro E.productClosedClosed
    (And.intro E.gosperAlgorithmClosed (And.intro E.hurwitzTheoremClosed E.closedClosed)))

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse