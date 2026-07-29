import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure HypergraphColoringPackage where
  vertexSet : Type u
  hyperedgeSet : Type v
  colorSet : Type w
  coloring : vertexSet -> colorSet
  properOnEdges : Prop
  chromaticNumber : Nat
  boundedChromaticNumber : Prop

structure HypergraphColoringEvidence (P : HypergraphColoringPackage) where
  properOnEdgesClosed : P.properOnEdges
  boundedChromaticNumberClosed : P.boundedChromaticNumber

def HypergraphColoringClosed (P : HypergraphColoringPackage) : Prop :=
  P.properOnEdges ∧ P.boundedChromaticNumber

theorem hypergraph_coloring_closed_from_evidence (P : HypergraphColoringPackage)
    (E : HypergraphColoringEvidence P) : HypergraphColoringClosed P := by
  exact And.intro E.properOnEdgesClosed E.boundedChromaticNumberClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse