import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean

structure LegendreTheoremPackage where
  α : ℝ
  p : ℤ
  q : ℕ
  inequality : Prop
  approximationProperty : Prop
  implicationLegendre : Prop

structure LegendreTheoremEvidence (L : LegendreTheoremPackage) where
  inequalityClosed : L.inequality
  approximationPropertyClosed : L.approximationProperty
  implicationLegendreClosed : L.implicationLegendre

def LegendreTheoremClosed (L : LegendreTheoremPackage) : Prop :=
  L.inequality ∧ L.approximationProperty ∧ L.implicationLegendre

theorem legendre_theorem_closed_from_evidence
    (L : LegendreTheoremPackage)
    (Ev : LegendreTheoremEvidence L) : LegendreTheoremClosed L :=
  And.intro Ev.inequalityClosed
    (And.intro Ev.approximationPropertyClosed Ev.implicationLegendreClosed)

end ContinuedFractionCalculationsNumberTheoreticLemmaCanonicalLaneLean
end HautevilleHouse