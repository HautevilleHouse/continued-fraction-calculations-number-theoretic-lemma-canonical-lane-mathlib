import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure InfiniteContinuedFractionPackage where
  α : ℝ
  irrational : Prop
  aSequence : ℕ → ℕ
  convergents : ℕ → ℚ
  limitAgreement : Prop
  infiniteExpansionGiven : Prop

structure InfiniteContinuedFractionEvidence (I : InfiniteContinuedFractionPackage) where
  limitAgreementClosed : I.limitAgreement
  infiniteExpansionGivenClosed : I.infiniteExpansionGiven

def InfiniteContinuedFractionClosed (I : InfiniteContinuedFractionPackage) : Prop :=
  I.limitAgreement ∧ I.infiniteExpansionGiven

theorem infinite_continued_fraction_closed_from_evidence
    (I : InfiniteContinuedFractionPackage)
    (Ev : InfiniteContinuedFractionEvidence I) : InfiniteContinuedFractionClosed I :=
  And.intro Ev.limitAgreementClosed Ev.infiniteExpansionGivenClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse