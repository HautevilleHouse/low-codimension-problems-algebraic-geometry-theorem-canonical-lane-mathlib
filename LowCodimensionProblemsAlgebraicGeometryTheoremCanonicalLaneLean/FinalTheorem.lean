import canonicalLaneMathlib.AdmissibleClass
import LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean.BridgeLemmas
import LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

def ConstrainedLowCodimensionAlgebraicGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_low_codimension_algebraic_geometry_endgame (A : AdmissibleClass) :
    ConstrainedLowCodimensionAlgebraicGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
