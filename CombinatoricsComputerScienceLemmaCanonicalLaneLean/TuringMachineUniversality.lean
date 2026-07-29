import CombinatoricsComputerScienceLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  transition : states → alphabet → states × alphabet × Bool  -- Bool indicates direction
  initialState : states
  haltState : states

structure TuringMachineUniversalityPackage where
  universalMachine : TuringMachine
  canSimulate : TuringMachine → Prop
  simulationCorrect : Prop
  universalityClosed : Prop

def TuringMachineUniversalityClosed (U : TuringMachineUniversalityPackage) : Prop :=
  U.universalityClosed

theorem turing_machine_universality_closed_from_evidence (U : TuringMachineUniversalityPackage) (h : U.simulationCorrect) : TuringMachineUniversalityClosed U := by
  exact h

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse
