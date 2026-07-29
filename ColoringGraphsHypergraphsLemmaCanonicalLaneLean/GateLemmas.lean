import canonicalLaneMathlib.AdmissibleClass
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse