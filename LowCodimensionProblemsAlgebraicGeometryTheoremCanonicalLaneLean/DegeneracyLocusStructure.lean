import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryTheorem

structure DegeneracyLocusPackage where
  vectorBundle : Type u
  baseVariety : Type v
  rank : Nat
  sectionSpace : Type w
  expectedCodimension : Nat
  genericLocusReduced : Prop
  expectedCodimensionTerm : expectedCodimension ≤ rank
  genericLocusReducedTerm : genericLocusReduced

structure DegeneracyLocusEvidence (P : DegeneracyLocusPackage) where
  expectedCodimensionClosed : P.expectedCodimension ≤ P.rank
  genericLocusReducedClosed : P.genericLocusReduced

def DegeneracyLocusClosed (P : DegeneracyLocusPackage) : Prop :=
  P.expectedCodimension ≤ P.rank ∧ P.genericLocusReduced

theorem degeneracy_locus_closed_from_evidence (P : DegeneracyLocusPackage)
    (E : DegeneracyLocusEvidence P) : DegeneracyLocusClosed P := by
  exact And.intro E.expectedCodimensionClosed E.genericLocusReducedClosed

end LowCodimensionProblemsAlgebraicGeometryTheorem
end HautevilleHouse