import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AlgebraicVariety
  universalPropertySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : universalPropertySatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VarietyWitnessClosed A.object ∧ (A.universalPropertySatisfied ∨ A.remainderRecorded)

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
