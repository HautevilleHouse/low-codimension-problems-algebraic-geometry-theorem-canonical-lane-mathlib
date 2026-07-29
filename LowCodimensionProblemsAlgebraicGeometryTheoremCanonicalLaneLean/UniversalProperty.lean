import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure AlgebraicVariety where
  carrier : Type u
  structureSheaf : Type v
  dimension : Nat
  lowCodimension : Prop
  conclusion : lowCodimension

def VarietyWitnessClosed (V : AlgebraicVariety) : Prop :=
  V.lowCodimension

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
