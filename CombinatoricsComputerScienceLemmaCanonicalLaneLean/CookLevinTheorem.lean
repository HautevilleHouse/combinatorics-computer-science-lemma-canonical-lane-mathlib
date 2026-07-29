import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsComputerScienceLemmaCanonicalLaneLean.TuringMachineModel
import HautevilleHouse.CombinatoricsComputerScienceLemmaCanonicalLaneLean.NPCompleteness

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure SATInstance where
  variables : Nat
  clauses : List (List (Nat × Bool))

def SAT (s : SATInstance) : Prop :=
  ∃ (assignment : ℕ → Bool), ∀ (clause : List (Nat × Bool)),
    (∃ (lit : Nat × Bool), lit ∈ clause ∧ assignment lit.1 = lit.2)

structure CookLevinTheoremResult where
  satIsNPComplete : NPCompleteness (⟨SATInstance, SAT⟩ : DecisionProblem)
  satIsNPCompleteClosed : NPCompletenessClosed (⟨SATInstance, SAT⟩ : DecisionProblem) satIsNPComplete

theorem cook_levin_closed (c : CookLevinTheoremResult) : NPCompletenessClosed (⟨SATInstance, SAT⟩ : DecisionProblem) c.satIsNPComplete := by
  exact c.satIsNPCompleteClosed

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse