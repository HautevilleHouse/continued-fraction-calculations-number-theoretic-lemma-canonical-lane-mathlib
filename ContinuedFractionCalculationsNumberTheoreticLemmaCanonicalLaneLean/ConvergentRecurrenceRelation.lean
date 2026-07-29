import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ConvergentRecurrenceRelationPackage where
  aSequence : ℕ → ℕ
  numerators : ℕ → ℤ
  denominators : ℕ → ℤ
  recurrenceProven : Prop
  numeratorDenominatorProperty : Prop

structure ConvergentRecurrenceRelationEvidence (C : ConvergentRecurrenceRelationPackage) where
  recurrenceProvenClosed : C.recurrenceProven
  numeratorDenominatorPropertyClosed : C.numeratorDenominatorProperty

def ConvergentRecurrenceRelationClosed (C : ConvergentRecurrenceRelationPackage) : Prop :=
  C.recurrenceProven ∧ C.numeratorDenominatorProperty

theorem convergent_recurrence_relation_closed_from_evidence
    (C : ConvergentRecurrenceRelationPackage)
    (Ev : ConvergentRecurrenceRelationEvidence C) : ConvergentRecurrenceRelationClosed C :=
  And.intro Ev.recurrenceProvenClosed Ev.numeratorDenominatorPropertyClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse