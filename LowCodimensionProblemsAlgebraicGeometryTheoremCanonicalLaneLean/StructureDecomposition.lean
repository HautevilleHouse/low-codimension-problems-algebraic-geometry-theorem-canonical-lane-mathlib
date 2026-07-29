import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure DecompositionPackage where
  variety : AlgebraicVariety
  components : List AlgebraicVariety
  decompositionExists : Prop
  irreducibility : Prop
  dimensionPreserved : Prop
  decompositionExistsClosed : decompositionExists
  irreducibilityClosed : irreducibility
  dimensionPreservedClosed : dimensionPreserved

def DecompositionClosed (D : DecompositionPackage) : Prop :=
  D.decompositionExists ∧ D.irreducibility ∧ D.dimensionPreserved

theorem decomposition_closed (D : DecompositionPackage) :
    DecompositionClosed D := by
  exact And.intro D.decompositionExistsClosed
    (And.intro D.irreducibilityClosed D.dimensionPreservedClosed)

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
