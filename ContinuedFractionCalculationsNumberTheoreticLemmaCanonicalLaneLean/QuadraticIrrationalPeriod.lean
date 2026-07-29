import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure QuadraticIrrationalPeriodPackage where
  d : ℕ
  nonSquare : Prop
  periodLength : ℕ
  fundamentalSolution : ℤ × ℤ
  pellEquationSatisfied : Prop
  periodDetected : Prop

structure QuadraticIrrationalPeriodEvidence (Q : QuadraticIrrationalPeriodPackage) where
  periodDetectedClosed : Q.periodDetected
  pellEquationSatisfiedClosed : Q.pellEquationSatisfied

def QuadraticIrrationalPeriodClosed (Q : QuadraticIrrationalPeriodPackage) : Prop :=
  Q.periodDetected ∧ Q.pellEquationSatisfied

theorem quadratic_irrational_period_closed_from_evidence
    (Q : QuadraticIrrationalPeriodPackage)
    (Ev : QuadraticIrrationalPeriodEvidence Q) : QuadraticIrrationalPeriodClosed Q :=
  And.intro Ev.periodDetectedClosed Ev.pellEquationSatisfiedClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse