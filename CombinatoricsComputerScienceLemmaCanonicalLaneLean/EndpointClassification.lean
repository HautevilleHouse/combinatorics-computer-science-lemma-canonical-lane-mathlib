import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure EndpointClassificationPackage (A : AdmissibleClass) where
  targetLanguage : Type u
  targetSemantics : Prop
  decidableProperty : Prop
  propertyDecidableStatement : Prop
  endpointMatchesLemmaStatement : Prop

structure EndpointClassificationEvidence (A : AdmissibleClass) (Epkg : EndpointClassificationPackage A) where
  decidablePropertyClosed : Epkg.decidableProperty
  propertyDecidableStatementClosed : Epkg.propertyDecidableStatement
  endpointMatchesLemmaStatementClosed : Epkg.endpointMatchesLemmaStatement

def EndpointClassificationClosed (A : AdmissibleClass) (Epkg : EndpointClassificationPackage A) : Prop :=
  Epkg.decidableProperty ∧ Epkg.propertyDecidableStatement ∧ Epkg.endpointMatchesLemmaStatement

theorem endpoint_classification_closed_from_evidence (A : AdmissibleClass) (Epkg : EndpointClassificationPackage A) (E : EndpointClassificationEvidence A Epkg) : EndpointClassificationClosed A Epkg := by
  exact And.intro E.decidablePropertyClosed
    (And.intro E.propertyDecidableStatementClosed E.endpointMatchesLemmaStatementClosed)

theorem endpoint_classification_supplies_mathlib_statement (A : AdmissibleClass) (Epkg : EndpointClassificationPackage A) : Epkg.propertyDecidableStatement := by
  exact Epkg.propertyDecidableStatement

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse