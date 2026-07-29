import CombinatoricsComputerScienceLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

def ConstrainedCompCSClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compcs_endgame (A : AdmissibleClass) :
    ConstrainedCompCSClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse
