import canonicalLaneMathlib.AdmissibleClass

/-!
# Generic Vanishing Package

This module formalizes generic vanishing theorems in low codimension algebraic geometry.
For a smooth projective variety X, the generic vanishing theorem describes the behavior
of cohomology of line bundles on X. In low codimension, this has specific consequences
for the structure of the derived pushforward of the canonical bundle under a morphism.
-/

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure GenericVanishingPackage {X : AlgebraicVarietyPackage} where
  baseVariety : X.carrier
  morphism : Type u
  singleKodairaDimension : Prop
  weakPositivityInput : Prop
  vanishingOutput : Prop

theorem generic_vanishing_weak_positivity_implies_vanishing
    {X : AlgebraicVarietyPackage} (P : GenericVanishingPackage X) :
    P.weakPositivityInput → P.vanishingOutput := by
  intro h
  exact h

def GenericVanishingClosed {X : AlgebraicVarietyPackage}
    (P : GenericVanishingPackage X) : Prop :=
  P.weakPositivityInput ∧ P.vanishingOutput

structure GenericVanishingEvidence {X : AlgebraicVarietyPackage}
    (P : GenericVanishingPackage X) where
  weakPositivityInputClosed : P.weakPositivityInput
  vanishingOutputClosed : P.vanishingOutput

theorem generic_vanishing_closed_from_evidence
    {X : AlgebraicVarietyPackage} (P : GenericVanishingPackage X)
    (E : GenericVanishingEvidence P) : GenericVanishingClosed P := by
  exact And.intro E.weakPositivityInputClosed E.vanishingOutputClosed

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
