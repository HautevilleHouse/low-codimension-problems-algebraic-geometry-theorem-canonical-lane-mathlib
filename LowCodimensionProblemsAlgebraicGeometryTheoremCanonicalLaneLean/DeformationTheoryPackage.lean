import canonicaLaneMathlib.DeformationPackage

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure DeformationTheoryPackage where
  kuranishiFamily : Type u
  smoothnessOfDeformations : Prop
  unobstructednessCondition : Prop
  universalFamily : Prop
  rigidityResult : Prop

def DeformationTheoryClosed (D : DeformationTheoryPackage) : Prop :=
  D.smoothnessOfDeformations ∧ D.unobstructednessCondition ∧ D.universalFamily ∧ D.rigidityResult

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse