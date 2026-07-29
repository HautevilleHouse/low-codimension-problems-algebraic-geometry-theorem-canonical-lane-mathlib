import canonicalLaneMathlib.AdmissibleClass

/-!
# Lefschetz Hyperplane Package

The Lefschetz hyperplane theorem in low codimension relates the topology of a
projective variety X to that of a hyperplane section Y. For low codimension,
the result extends to higher codimension linear sections, connecting to the
formal geometric properties of the variety.
-/

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure LefschetzHyperplanePackage (V : AlgebraicVarietyPackage) where
  projectiveVariety : V.carrier
  hyperplaneSection : V.carrier
  embeddingCondition : Prop
  topologyComparison : Prop
  lowCodimensionExtension : Prop

def LefschetzHyperplaneClosed {V : AlgebraicVarietyPackage}
    (P : LefschetzHyperplanePackage V) : Prop :=
  P.embeddingCondition ∧ P.topologyComparison ∧ P.lowCodimensionExtension

structure LefschetzHyperplaneEvidence {V : AlgebraicVarietyPackage}
    (P : LefschetzHyperplanePackage V) where
  embeddingConditionClosed : P.embeddingCondition
  topologyComparisonClosed : P.topologyComparison
  lowCodimensionExtensionClosed : P.lowCodimensionExtension

theorem lefschetz_hyperplane_closed_from_evidence
    {V : AlgebraicVarietyPackage} (P : LefschetzHyperplanePackage V)
    (E : LefschetzHyperplaneEvidence P) : LefschetzHyperplaneClosed P := by
  exact And.intro E.embeddingConditionClosed
    (And.intro E.topologyComparisonClosed E.lowCodimensionExtensionClosed)

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
