import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure EuclideanAlgorithmCFPackage where
  a : ℕ
  b : ℕ
  gcdComputed : ℕ
  continuedFractionExpansion : List ℕ
  termCount : ℕ
  terminates : Prop
  correctness : Prop

structure EuclideanAlgorithmCFEvidence (E : EuclideanAlgorithmCFPackage) where
  terminatesClosed : E.terminates
  correctnessClosed : E.correctness

def EuclideanAlgorithmCFClosed (E : EuclideanAlgorithmCFPackage) : Prop :=
  E.terminates ∧ E.correctness

theorem euclidean_algorithm_cf_closed_from_evidence (E : EuclideanAlgorithmCFPackage) (Ev : EuclideanAlgorithmCFEvidence E) :
    EuclideanAlgorithmCFClosed E := by
  exact And.intro Ev.terminatesClosed Ev.correctnessClosed

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse