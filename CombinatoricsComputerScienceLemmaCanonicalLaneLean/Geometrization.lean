import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure GeometrizationPackage (A : AdmissibleClass) where
  finiteStructureAlternative : Prop
  thickThinDecomposition : Prop
  primeComponentsClassified : Prop
  simplyConnectedCaseForcesStructure : Prop

structure GeometrizationEvidence (A : AdmissibleClass) (Z : GeometrizationPackage A) where
  finiteStructureAlternativeClosed : Z.finiteStructureAlternative
  thickThinDecompositionClosed : Z.thickThinDecomposition
  primeComponentsClassifiedClosed : Z.primeComponentsClassified
  simplyConnectedCaseForcesStructureClosed : Z.simplyConnectedCaseForcesStructure

def GeometrizationClosed (A : AdmissibleClass) (Z : GeometrizationPackage A) : Prop :=
  Z.finiteStructureAlternative ∧ Z.thickThinDecomposition ∧
  Z.primeComponentsClassified ∧ Z.simplyConnectedCaseForcesStructure

theorem geometrization_closed_from_evidence (A : AdmissibleClass) (Z : GeometrizationPackage A) (E : GeometrizationEvidence A Z) : GeometrizationClosed A Z := by
  exact And.intro E.finiteStructureAlternativeClosed
    (And.intro E.thickThinDecompositionClosed
      (And.intro E.primeComponentsClassifiedClosed E.simplyConnectedCaseForcesStructureClosed))

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse