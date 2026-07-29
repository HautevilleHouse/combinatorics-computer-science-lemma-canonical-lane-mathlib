import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure TimeHierarchyPackage where
  timeConstructible : Nat → Prop
  strictInclusion : Prop
  diagonalization : Prop
  simulation : Prop
  paddingTrick : Prop

structure TimeHierarchyEvidence (T : TimeHierarchyPackage) where
  diagonalizationClosed : T.diagonalization
  simulationClosed : T.simulation
  paddingTrickClosed : T.paddingTrick

def TimeHierarchyClosed (T : TimeHierarchyPackage) : Prop :=
  T.diagonalization ∧ T.simulation ∧ T.paddingTrick

theorem time_hierarchy_closed_from_evidence (T : TimeHierarchyPackage)
    (E : TimeHierarchyEvidence T) : TimeHierarchyClosed T := by
  exact And.intro E.diagonalizationClosed
    (And.intro E.simulationClosed E.paddingTrickClosed)

end HautevilleHouse
end HautevilleHouse
