import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.AffineScheme

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheorem

structure AlgebraicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  structureSheaf : carrier → Type

structure AlgebraicAdmittedObject where
  space : AlgebraicSpace
  lowCodimensionCondition : Prop
  coherenceCondition : Prop
  universalProperty : Prop
  conclusion : universalProperty

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.universalProperty

end LowCodimensionProblemsAlgebraicGeometryTheorem
end HautevilleHouse
