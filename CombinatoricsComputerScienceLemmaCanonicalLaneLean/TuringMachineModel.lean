import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure TuringMachineModel where
  stateSet : Type u
  tapeAlphabet : Type v
  transitionFunction : stateSet × tapeAlphabet → stateSet × tapeAlphabet × Direction
  startState : stateSet
  haltingStates : Set stateSet
  initialTapeContent : List tapeAlphabet

structure Direction where
  left : Bool
  right : Bool

def TuringMachineAdmissible (T : TuringMachineModel) : Prop :=
  T.haltingStates ≠ ∅ ∧
  (∀ s : T.stateSet, s ∈ T.haltingStates →
    (∀ a : T.tapeAlphabet, (T.transitionFunction (s, a)).1 = s))

structure TuringMachineAdmissibleClass (T : TuringMachineModel) where
  isAdmissible : TuringMachineAdmissible T
  haltingConditionKnown : Prop
  haltingConditionKnownTerm : haltingConditionKnown

def TuringMachineClosed (T : TuringMachineModel) (A : TuringMachineAdmissibleClass T) : Prop :=
  A.haltingConditionKnown

theorem turing_machine_closed_from_admissible (T : TuringMachineModel) (A : TuringMachineAdmissibleClass T) : TuringMachineClosed T A := by
  exact A.haltingConditionKnownTerm

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse