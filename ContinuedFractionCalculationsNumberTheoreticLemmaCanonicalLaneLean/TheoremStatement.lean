import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure ContinuedFractionAdmittedObject where
  continuedFraction : Prop
  convergents : Prop
  approximationProperty : Prop
  conclusion : approximationProperty

structure ContinuedFractionEndgameState where
  object : ContinuedFractionAdmittedObject

def ContinuedFractionWitnessClosed (O : ContinuedFractionAdmittedObject) : Prop :=
  O.approximationProperty

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse
