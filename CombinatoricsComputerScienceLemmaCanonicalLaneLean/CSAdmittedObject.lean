import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsComputerScienceLemmaCanonicalLaneLean

/-- A minimal structure representing a CS-admitted object.
    It contains a computational statement (e.g., a complexity class) and a conclusion
    that the object is witnessed closed. -/
structure CSAdmittedObject where
  statement : Prop
  conclusion : statement

/-- A witness closed predicate for CSAdmittedObject. -/
def CSWitnessClosed (O : CSAdmittedObject) : Prop :=
  O.statement

end CombinatoricsComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse
