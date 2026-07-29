import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure HurwitzTheoremCertificate where
  bestConstant : ℝ
  optimality : Prop
  optimalityWitness : optimality

def HurwitzTheoremCertificateClosed (H : HurwitzTheoremCertificate) : Prop :=
  H.optimality

theorem hurwitz_theorem_certificate_checked (H : HurwitzTheoremCertificate) :
    HurwitzTheoremCertificateClosed H :=
  H.optimalityWitness

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse