import CombinatoricsComputerScienceLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ComputabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ComputabilityAdmittedObject where
  space : ComputabilitySpace
  turingComplete : Prop
  decidableSet : Set (ComputabilitySpace.carrier)
  haltingProblem : Prop
  undecidable : Prop
  conclusion : undecidable

structure EndgameState where
  object : ComputabilityAdmittedObject

def ComputabilityWitnessClosed (O : ComputabilityAdmittedObject) : Prop :=
  O.undecidable

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse
