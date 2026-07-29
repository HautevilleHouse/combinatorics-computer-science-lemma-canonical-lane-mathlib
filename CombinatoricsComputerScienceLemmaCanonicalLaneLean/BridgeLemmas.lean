import CombinatoricsComputerScienceLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComputabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse
