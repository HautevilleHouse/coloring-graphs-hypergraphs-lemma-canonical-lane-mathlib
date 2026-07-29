import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.ChromaticNumberBridge

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-- The gate closure condition: either the endpoint is satisfied (chromatic number equals the minimum) or the remainder is recorded. -/
def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse