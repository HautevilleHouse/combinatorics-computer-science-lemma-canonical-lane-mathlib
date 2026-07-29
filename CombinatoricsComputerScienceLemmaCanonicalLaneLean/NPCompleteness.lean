import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsComputerScienceLemmaCanonicalLaneLean.TuringMachineModel

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure DecisionProblem where
  instanceType : Type u
  question : instanceType → Prop

structure Reduction (A B : DecisionProblem) where
  map : A.instanceType → B.instanceType
  preservesAnswer : ∀ (x : A.instanceType), A.question x ↔ B.question (map x)

structure NPCompleteness (P : DecisionProblem) where
  isNP : Prop
  isNPHard : ∀ (Q : DecisionProblem), Q.isNP → Reduction Q P
  isNPClosed : isNP
  isNPHardClosed : isNPHard

def NPCompletenessClosed (P : DecisionProblem) (C : NPCompleteness P) : Prop :=
  C.isNP ∧ C.isNPHard

theorem np_completeness_closed (P : DecisionProblem) (C : NPCompleteness P) : NPCompletenessClosed P C := by
  exact And.intro C.isNPClosed C.isNPHardClosed

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse