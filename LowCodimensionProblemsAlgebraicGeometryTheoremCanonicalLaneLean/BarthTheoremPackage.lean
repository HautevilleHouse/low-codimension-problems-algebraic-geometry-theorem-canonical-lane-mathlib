import canonicaLaneMathlib.BarthPackage

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean

structure BarthTheoremPackage where
  ambientComplexManifold : Type u
  subvarietyRank : Nat
  codimensionCondition : Prop
  restrictionIsomorphism : Prop
  connectivityCondition : Prop
  lefschetzTypeResult : Prop

def BarthTheoremClosed (B : BarthTheoremPackage) : Prop :=
  B.codimensionCondition ∧ B.restrictionIsomorphism ∧ B.connectivityCondition ∧ B.lefschetzTypeResult

end LowCodimensionProblemsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse