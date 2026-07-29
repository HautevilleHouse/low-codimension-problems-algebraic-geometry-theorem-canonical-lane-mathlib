import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheorem

structure BertiniPackage where
  ambientVariety : Type u
  linearSystem : Type v
  genericMember : Type w
  smoothnessCondition : Prop
  smoothnessConditionTerm : smoothnessCondition

structure BertiniEvidence (B : BertiniPackage) where
  smoothnessConditionClosed : B.smoothnessCondition

def BertiniClosed (B : BertiniPackage) : Prop :=
  B.smoothnessCondition

theorem bertini_closed_from_evidence (B : BertiniPackage)
    (E : BertiniEvidence B) : BertiniClosed B := by
  exact E.smoothnessConditionClosed

end LowCodimensionProblemsAlgebraicGeometryTheorem
end HautevilleHouse