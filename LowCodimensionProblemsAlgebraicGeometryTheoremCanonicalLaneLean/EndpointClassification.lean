import HautevilleHouse.LowCodimensionProblemsAlgebraicGeometryTheorem.RepresentationTheorem

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheorem

structure EndpointClassificationPackage where
  targetObject : AlgebraicSpace
  characteristicClass : Type
  codimensionDefect : Prop
  matchingInvariant : Prop

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.codimensionDefect ∧ E.matchingInvariant

theorem endpoint_classification_closed_from_evidence
    (E : EndpointClassificationPackage) (h : E.codimensionDefect) (h' : E.matchingInvariant) :
    EndpointClassificationClosed E := by
  exact And.intro h h'

end LowCodimensionProblemsAlgebraicGeometryTheorem
end HautevilleHouse
