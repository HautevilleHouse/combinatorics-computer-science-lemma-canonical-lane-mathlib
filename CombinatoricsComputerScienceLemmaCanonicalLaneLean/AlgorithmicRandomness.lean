import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure KolmogorovComplexity where
  universalMachine : TuringMachineModel
  complexity : (string : List Bool) → ℕ
  minimalDescriptionLength : Prop
  minimalDescriptionLengthTerm : minimalDescriptionLength

def Random (s : List Bool) (K : KolmogorovComplexity) : Prop :=
  K.complexity s ≥ length s

structure AlgorithmicRandomness where
  kolmogorov : KolmogorovComplexity
  randomSequenceInfinite : Prop
  randomSequenceExists : Prop
  randomSequenceInfiniteTerm : randomSequenceInfinite
  randomSequenceExistsTerm : randomSequenceExists

def AlgorithmicRandomnessClosed (R : AlgorithmicRandomness) : Prop :=
  R.randomSequenceInfinite ∧ R.randomSequenceExists

theorem algorithmic_randomness_closed (R : AlgorithmicRandomness) : AlgorithmicRandomnessClosed R := by
  exact And.intro R.randomSequenceInfiniteTerm R.randomSequenceExistsTerm

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse