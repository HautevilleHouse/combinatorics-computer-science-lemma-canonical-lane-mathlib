import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure AlgorithmComplexityPackage where
  algorithm : Type u
  inputSize : Type v
  runtimeBound : Prop
  correctness : Prop
  optimality : Prop

structure AlgorithmComplexityEvidence (A : AlgorithmComplexityPackage) where
  runtimeBoundClosed : A.runtimeBound
  correctnessClosed : A.correctness
  optimalityClosed : A.optimality

def AlgorithmComplexityClosed (A : AlgorithmComplexityPackage) : Prop :=
  A.runtimeBound ∧ A.correctness ∧ A.optimality

theorem algorithm_complexity_closed_from_evidence (A : AlgorithmComplexityPackage)
    (E : AlgorithmComplexityEvidence A) : AlgorithmComplexityClosed A := by
  exact And.intro E.runtimeBoundClosed
    (And.intro E.correctnessClosed E.optimalityClosed)

end HautevilleHouse
end HautevilleHouse
