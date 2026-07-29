import CombinatoricsComputerScienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  transition : states × alphabet → states × alphabet × ℤ
  initial : states
  halting : states → Prop

structure HaltingProblemOracle (M : TuringMachine) where
  haltingDecider : (m : TuringMachine) → ℕ → Bool
  correctness : ∀ (m : TuringMachine) (input : ℕ), haltingDecider m input = true ↔ ∃ t : ℕ, m.halting (run m input t)

structure AdmittedHaltingObject where
  tm : TuringMachine
  oracle : HaltingProblemOracle tm
  contradictionDerived : Prop
  conclusion : contradictionDerived

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse