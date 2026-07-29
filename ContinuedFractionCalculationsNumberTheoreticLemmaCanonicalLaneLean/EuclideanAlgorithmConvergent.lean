import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure EuclideanAlgorithmConvergentPackage where
  a : ℕ
  b : ℕ
  gcdValue : ℕ
  continuedFractionList : List ℕ
  convergentValue : ℚ
  convergenceProperty : Prop
  gcdProperty : Prop

structure EuclideanAlgorithmConvergentEvidence (E : EuclideanAlgorithmConvergentPackage) where
  convergencePropertyClosed : E.convergenceProperty
  gcdPropertyClosed : E.gcdProperty

def EuclideanAlgorithmConvergentClosed (E : EuclideanAlgorithmConvergentPackage) : Prop :=
  E.convergenceProperty ∧ E.gcdProperty

theorem euclidean_algorithm_convergent_closed_from_evidence
    (E : EuclideanAlgorithmConvergentPackage)
    (Ev : EuclideanAlgorithmConvergentEvidence E) : EuclideanAlgorithmConvergentClosed E :=
  And.intro Ev.convergencePropertyClosed Ev.gcdPropertyClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse