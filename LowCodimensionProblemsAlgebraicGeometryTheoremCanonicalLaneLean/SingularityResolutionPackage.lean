import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure SingularityResolutionPackage where
  surface : Type u
  topology : TopologicalSpace surface
  algebraicStructure : Prop
  isolatedSingularities : Prop
  resolutionExists : Prop
  resolutionBirational : Prop
  exceptionalDivisors : Prop
  minimalModel : Prop

structure SingularityResolutionEvidence (P : SingularityResolutionPackage) where
  algebraicStructureClosed : P.algebraicStructure
  isolatedSingularitiesClosed : P.isolatedSingularities
  resolutionExistsClosed : P.resolutionExists
  resolutionBirationalClosed : P.resolutionBirational
  exceptionalDivisorsClosed : P.exceptionalDivisors
  minimalModelClosed : P.minimalModel

def SingularityResolutionClosed (P : SingularityResolutionPackage) : Prop :=
  P.algebraicStructure ∧ P.isolatedSingularities ∧ P.resolutionExists ∧
  P.resolutionBirational ∧ P.exceptionalDivisors ∧ P.minimalModel

theorem singularity_resolution_closed_from_evidence
    (P : SingularityResolutionPackage) (E : SingularityResolutionEvidence P) :
    SingularityResolutionClosed P := by
  exact And.intro E.algebraicStructureClosed
    (And.intro E.isolatedSingularitiesClosed
      (And.intro E.resolutionExistsClosed
        (And.intro E.resolutionBirationalClosed
          (And.intro E.exceptionalDivisorsClosed E.minimalModelClosed))))

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
