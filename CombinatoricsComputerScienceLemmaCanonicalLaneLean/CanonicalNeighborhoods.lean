import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure CanonicalNeighborhoodsPackage (A : AdmissibleClass) where
  highDensityRegionCovered : Prop
  sparseGraphDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderAlgorithm : Prop

structure CanonicalNeighborhoodsEvidence (A : AdmissibleClass) (C : CanonicalNeighborhoodsPackage A) where
  highDensityRegionCoveredClosed : C.highDensityRegionCovered
  sparseGraphDecompositionClosed : C.sparseGraphDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderAlgorithmClosed : C.persistenceUnderAlgorithm

def CanonicalNeighborhoodsClosed (A : AdmissibleClass) (C : CanonicalNeighborhoodsPackage A) : Prop :=
  C.highDensityRegionCovered ∧ C.sparseGraphDecomposition ∧
  C.scaleCompatibility ∧ C.persistenceUnderAlgorithm

theorem canonical_neighborhoods_closed_from_evidence (A : AdmissibleClass) (C : CanonicalNeighborhoodsPackage A) (E : CanonicalNeighborhoodsEvidence A C) : CanonicalNeighborhoodsClosed A C := by
  exact And.intro E.highDensityRegionCoveredClosed
    (And.intro E.sparseGraphDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderAlgorithmClosed))

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse