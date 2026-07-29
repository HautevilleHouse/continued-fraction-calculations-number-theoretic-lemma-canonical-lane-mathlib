import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure QuadraticIrrationalPeriodicityPackage where
  quadraticIrrational : ℂ
  minimalPolynomial : Polynomial ℚ
  continuedFractionPeriodic : Prop
  periodLength : ℕ
  preperiodLength : ℕ

structure QuadraticIrrationalPeriodicityEvidence (Q : QuadraticIrrationalPeriodicityPackage) where
  quadraticIrrationalAlgebraic : Irrational Q.quadraticIrrational
  minimalPolynomialDegreeTwo : Q.minimalPolynomial.degree = 2
  continuedFractionPeriodicClosed : Q.continuedFractionPeriodic
  periodPositive : Q.periodLength > 0

def QuadraticIrrationalPeriodicityClosed (Q : QuadraticIrrationalPeriodicityPackage) : Prop :=
  Q.continuedFractionPeriodic ∧ Q.periodLength > 0

theorem quadratic_irrational_periodicity_closed_from_evidence
    (Q : QuadraticIrrationalPeriodicityPackage) (E : QuadraticIrrationalPeriodicityEvidence Q) :
    QuadraticIrrationalPeriodicityClosed Q := by
  exact And.intro E.continuedFractionPeriodicClosed E.periodPositive

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse
