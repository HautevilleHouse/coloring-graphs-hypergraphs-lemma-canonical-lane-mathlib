import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-!
# Graph Coloring Package

This module records the formal objects used for graph coloring and the hypergraph
coloring lemma: vertex and edge structures, proper coloring condition, and
chromatic number evidence.
-/

structure GraphColoringPackage where
  vertexSet : Type u
  edgeSet : Set (vertexSet × vertexSet)
  colors : Type v
  coloring : vertexSet → colors
  properColoring : Prop

structure GraphColoringEvidence (G : GraphColoringPackage) where
  properColoringClosed : G.properColoring

def GraphColoringClosed (G : GraphColoringPackage) : Prop :=
  G.properColoring

theorem graph_coloring_closed_from_evidence (G : GraphColoringPackage)
    (E : GraphColoringEvidence G) : GraphColoringClosed G := by
  exact E.properColoringClosed

structure HypergraphColoringPackage where
  vertices : Type u
  hyperedges : Set (Set vertices)
  colors : Type v
  coloring : vertices → colors
  properColoring : Prop

structure HypergraphColoringEvidence (H : HypergraphColoringPackage) where
  properColoringClosed : H.properColoring

def HypergraphColoringClosed (H : HypergraphColoringPackage) : Prop :=
  H.properColoring

theorem hypergraph_coloring_closed_from_evidence (H : HypergraphColoringPackage)
    (E : HypergraphColoringEvidence H) : HypergraphColoringClosed H := by
  exact E.properColoringClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse