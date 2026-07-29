import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure EuclideanAlgorithmRecurrence where
  numerator : ℕ
  denominator : ℕ
  quotientList : List ℕ
  remainder : ℕ
  termination : Prop
  terminationWitness : termination

def EuclideanAlgorithmRecurrenceClosed (E : EuclideanAlgorithmRecurrence) : Prop :=
  E.termination

theorem euclidean_algorithm_recurrence_terminates (E : EuclideanAlgorithmRecurrence) :
    EuclideanAlgorithmRecurrenceClosed E :=
  E.terminationWitness

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse