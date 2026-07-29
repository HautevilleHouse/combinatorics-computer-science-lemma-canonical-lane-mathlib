import CombinatoricsComputerScienceLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ComputabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComputabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse
