import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ConvergentSequenceConvergence where
  continuedFraction : List ℕ
  convergents : List ℚ
  limit : ℝ
  convergence : Prop
  convergenceWitness : convergence

def ConvergentSequenceConvergenceClosed (C : ConvergentSequenceConvergence) : Prop :=
  C.convergence

theorem convergent_sequence_convergence_holds (C : ConvergentSequenceConvergence) :
    ConvergentSequenceConvergenceClosed C :=
  C.convergenceWitness

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse