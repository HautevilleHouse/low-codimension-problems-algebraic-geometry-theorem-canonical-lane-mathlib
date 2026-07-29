import canonicaLaneMathlib.StructurePackage

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure LowCodimensionStructurePackage where
  ambientSpace : Type u
  subvariety : Type v
  codimension : Nat
  smoothnessCondition : Prop
  deformationOpenness : Prop
  genericSmoothness : Prop

def LowCodimensionStructureClosed (P : LowCodimensionStructurePackage) : Prop :=
  P.smoothnessCondition ∧ P.deformationOpenness ∧ P.genericSmoothness

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse