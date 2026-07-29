import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheorem

structure CohomologicalConstraintPackage where
  variety : Type u
  cohomologyRing : Type v
  constraintClass : cohomologyRing
  vanishingCondition : Prop
  vanishingConditionTerm : vanishingCondition

structure CohomologicalConstraintEvidence (C : CohomologicalConstraintPackage) where
  vanishingConditionClosed : C.vanishingCondition

def CohomologicalConstraintClosed (C : CohomologicalConstraintPackage) : Prop :=
  C.vanishingCondition

theorem cohomological_constraint_closed_from_evidence (C : CohomologicalConstraintPackage)
    (E : CohomologicalConstraintEvidence C) : CohomologicalConstraintClosed C := by
  exact E.vanishingConditionClosed

end LowCodimensionProblemsAlgebraicGeometryTheorem
end HautevilleHouse