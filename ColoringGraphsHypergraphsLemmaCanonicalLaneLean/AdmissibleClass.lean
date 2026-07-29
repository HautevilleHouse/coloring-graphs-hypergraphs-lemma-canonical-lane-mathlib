import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure ColoringAdmissibleObject where
  graph : Type
  vertices : Set graph
  edges : Set (graph × graph)
  hypergraph : Type
  hyperedges : Set (Set hypergraph)
  coloringExistence : Prop
  admissible : Prop

structure AdmissibleClass where
  object : ColoringAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse