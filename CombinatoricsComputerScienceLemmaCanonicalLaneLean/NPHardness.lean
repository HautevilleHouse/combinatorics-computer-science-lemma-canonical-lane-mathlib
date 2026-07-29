import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure NPHardnessPackage where
  language : Type u
  certificate : Type v
  verifierPolynomialTime : Prop
  reductionFromSAT : Prop
  membershipInNP : Prop
  completeness : Prop

structure NPHardnessEvidence (N : NPHardnessPackage) where
  verifierPolynomialTimeClosed : N.verifierPolynomialTime
  reductionFromSATClosed : N.reductionFromSAT
  membershipInNPClosed : N.membershipInNP
  completenessClosed : N.completeness

def NPHardnessClosed (N : NPHardnessPackage) : Prop :=
  N.verifierPolynomialTime ∧ N.reductionFromSAT ∧
  N.membershipInNP ∧ N.completeness

theorem np_hardness_closed_from_evidence (N : NPHardnessPackage)
    (E : NPHardnessEvidence N) : NPHardnessClosed N := by
  exact And.intro E.verifierPolynomialTimeClosed
    (And.intro E.reductionFromSATClosed
      (And.intro E.membershipInNPClosed E.completenessClosed))

end HautevilleHouse
end HautevilleHouse
