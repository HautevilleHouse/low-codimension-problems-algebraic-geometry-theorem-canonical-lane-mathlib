import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure ClassificationSurfacePackage where
  surface : Type u
  kodairaDimension : ℤ
  minimalModel : Bool
  birationalClassification : Prop
  canonicalBundleClass : Prop
  pluriGenusBounds : Prop

structure ClassificationSurfaceEvidence (C : ClassificationSurfacePackage) where
  minimalModelClosed : C.minimalModel
  birationalClassificationClosed : C.birationalClassification
  canonicalBundleClassClosed : C.canonicalBundleClass
  pluriGenusBoundsClosed : C.pluriGenusBounds

def ClassificationSurfaceClosed (C : ClassificationSurfacePackage) : Prop :=
  C.minimalModel ∧ C.birationalClassification ∧
  C.canonicalBundleClass ∧ C.pluriGenusBounds

theorem classification_surface_closed_from_evidence
    (C : ClassificationSurfacePackage) (E : ClassificationSurfaceEvidence C) :
    ClassificationSurfaceClosed C := by
  exact And.intro E.minimalModelClosed
    (And.intro E.birationalClassificationClosed
      (And.intro E.canonicalBundleClassClosed E.pluriGenusBoundsClosed))

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse
