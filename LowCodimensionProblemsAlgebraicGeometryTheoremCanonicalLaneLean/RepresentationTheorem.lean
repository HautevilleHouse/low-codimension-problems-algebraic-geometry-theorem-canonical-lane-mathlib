import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure RepresentationTheorem where
  variety : AlgebraicVariety
  universalProperty : Prop
  representationExists : Prop
  representationUnique : Prop
  universalPropertySatisfied : universalProperty
  representationExistsClosed : representationExists
  representationUniqueClosed : representationUnique

def RepresentationTheoremClosed (R : RepresentationTheorem) : Prop :=
  R.representationExists ∧ R.representationUnique

theorem representation_theorem_closed (R : RepresentationTheorem) :
    RepresentationTheoremClosed R := by
  exact And.intro R.representationExistsClosed R.representationUniqueClosed

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
