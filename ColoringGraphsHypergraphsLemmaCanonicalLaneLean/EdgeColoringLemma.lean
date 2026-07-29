import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure EdgeColoringPackage where
  graph : Type u
  maxDegree : Nat
  edgeChromaticNumber : Nat
  vizingBound : Prop
  edgeProperColoring : Prop

structure EdgeColoringEvidence (P : EdgeColoringPackage) where
  vizingBoundClosed : P.vizingBound
  edgeProperColoringClosed : P.edgeProperColoring

def EdgeColoringClosed (P : EdgeColoringPackage) : Prop :=
  P.vizingBound ∧ P.edgeProperColoring

theorem edge_coloring_closed_from_evidence (P : EdgeColoringPackage)
    (E : EdgeColoringEvidence P) : EdgeColoringClosed P := by
  exact And.intro E.vizingBoundClosed E.edgeProperColoringClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse