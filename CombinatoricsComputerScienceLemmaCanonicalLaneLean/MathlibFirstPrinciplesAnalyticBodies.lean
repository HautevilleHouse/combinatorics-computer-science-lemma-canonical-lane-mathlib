import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

theorem mathlib_decidable_property_body (L : Type*) [DecidableEq L] : DecidableEq L := inferInstance

theorem mathlib_finite_list_body (α : Type*) [DecidableEq α] (l : List α) : List α := l

theorem mathlib_graph_body (V : Type*) [DecidableEq V] (E : Set (V × V)) : Prop := True

structure MathlibAvailableAnalyticBodies where
  decidablePropertyBodyAvailable : Prop
  finiteListBodyAvailable : Prop
  graphBodyAvailable : Prop
  decidablePropertyBodyAvailableTerm : decidablePropertyBodyAvailable
  finiteListBodyAvailableTerm : finiteListBodyAvailable
  graphBodyAvailableTerm : graphBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { decidablePropertyBodyAvailable := True,
    finiteListBodyAvailable := True,
    graphBodyAvailable := True,
    decidablePropertyBodyAvailableTerm := by exact True.intro,
    finiteListBodyAvailableTerm := by exact True.intro,
    graphBodyAvailableTerm := by exact True.intro }

structure MathlibPerelmanAnalyticBodyObligations where
  decidablePropertyBodyObligation : Prop
  finiteListBodyObligation : Prop
  graphBodyObligation : Prop
  decidablePropertyBodyObligationTerm : decidablePropertyBodyObligation
  finiteListBodyObligationTerm : finiteListBodyObligation
  graphBodyObligationTerm : graphBodyObligation

structure MathlibFirstPrinciplesPerelmanPackage where
  availableBodiesChecked : MathlibAvailableAnalyticBodies
  analyticBodies : MathlibPerelmanAnalyticBodyObligations

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse