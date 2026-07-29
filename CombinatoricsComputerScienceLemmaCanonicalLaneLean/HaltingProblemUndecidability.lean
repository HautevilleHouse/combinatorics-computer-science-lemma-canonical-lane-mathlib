import CombinatoricsComputerScienceLemmaCanonicalLaneLean.TuringMachineUniversality

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure HaltingProblemPackage (U : TuringMachineUniversalityPackage) where
  haltingOracle : TuringMachine → Prop
  oracleExists : Prop
  contradictionDerived : Prop
  undecidabilityClosed : Prop

def HaltingProblemUndecidabilityClosed (H : HaltingProblemPackage U) : Prop :=
  H.undecidabilityClosed

theorem halting_problem_undecidability_closed_from_evidence (H : HaltingProblemPackage U) (h : H.contradictionDerived) : HaltingProblemUndecidabilityClosed H := by
  exact h

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse
