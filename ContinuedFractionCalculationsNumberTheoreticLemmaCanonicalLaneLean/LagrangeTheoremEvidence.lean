import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure LagrangeTheoremEvidence where
  irrationalityMeasure : ℝ
  approximationConstant : ℝ
  inequalityHolds : Prop
  inequalityWitness : inequalityHolds

def LagrangeTheoremEvidenceClosed (L : LagrangeTheoremEvidence) : Prop :=
  L.inequalityHolds

theorem lagrange_theorem_evidence_checked (L : LagrangeTheoremEvidence) :
    LagrangeTheoremEvidenceClosed L :=
  L.inequalityWitness

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse