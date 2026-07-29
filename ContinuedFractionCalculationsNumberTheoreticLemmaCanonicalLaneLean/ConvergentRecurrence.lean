import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ConvergentRecurrencePackage where
  h_km2 : ℕ → ℚ
  h_km1 : ℕ → ℚ
  h_k : ℕ → ℚ
  recurrenceRelation : Prop
  initialConditions : Prop
  determinantIdentiy : Prop

structure ConvergentRecurrenceEvidence (C : ConvergentRecurrencePackage) where
  recurrenceRelationClosed : C.recurrenceRelation
  initialConditionsClosed : C.initialConditions
  determinantIdentiyClosed : C.determinantIdentiy

def ConvergentRecurrenceClosed (C : ConvergentRecurrencePackage) : Prop :=
  C.recurrenceRelation ∧ C.initialConditions ∧ C.determinantIdentiy

theorem convergent_recurrence_closed_from_evidence (C : ConvergentRecurrencePackage) (E : ConvergentRecurrenceEvidence C) :
    ConvergentRecurrenceClosed C := by
  exact And.intro E.recurrenceRelationClosed (And.intro E.initialConditionsClosed E.determinantIdentiyClosed)

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse