import canonicaLaneMathlib.HyperplanePackage

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure LefschetzHyperplanePackage where
  ambientProjectiveSpace : Type u
  hyperplaneSection : Type v
  lefschetzCondition : Prop
  hardLefschetz : Prop
  primitiveDecomposition : Prop
  vanishingCycleStructure : Prop

def LefschetzHyperplaneClosed (L : LefschetzHyperplanePackage) : Prop :=
  L.lefschetzCondition ∧ L.hardLefschetz ∧ L.primitiveDecomposition ∧ L.vanishingCycleStructure

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse