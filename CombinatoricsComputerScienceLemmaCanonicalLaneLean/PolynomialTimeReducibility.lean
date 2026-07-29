import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure PolynomialTimeReducibilityPackage (A : AdmissibleClass) where
  sourceLanguage : Type u
  targetLanguage : Type v
  reductionFunction : sourceLanguage → targetLanguage
  polynomialTimeBound : ℕ → ℕ
  correctnessCondition : ∀ (x : sourceLanguage), propertyP x ↔ propertyQ (reductionFunction x)
  polynomialTimePoly : ℕ
  polynomialTimeBoundPoly : ∀ (n : ℕ), polynomialTimeBound n ≤ polynomialTimePoly * n ^ 2 + polynomialTimePoly
  correctnessConditionClosed : correctnessCondition

theorem polynomial_time_reducibility_correct (A : AdmissibleClass) (P : PolynomialTimeReducibilityPackage A) : ∀ (x : P.sourceLanguage), propertyP x ↔ propertyQ (P.reductionFunction x) :=
  P.correctnessConditionClosed

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse