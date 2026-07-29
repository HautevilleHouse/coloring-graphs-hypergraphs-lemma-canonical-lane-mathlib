import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-- An admissible object for the coloring-graphs-hypergraphs setting: a hypergraph together with vertex coloring. -/
structure Hypergraph where
  Vertex : Type
  Edge : Type
  incidence : Edge → Set Vertex
  finite : Fintype Vertex
  finiteEdge : Fintype Edge

structure Coloring where
  color : Vertex → ℕ
  proper : ∀ (e : Edge), ∃ (v w : Vertex), v ≠ w ∧ v ∈ e ∧ w ∈ e ∧ color v ≠ color w

structure ColoringAdmittedObject where
  H : Hypergraph
  χ : Coloring H
  chromaticNumber : ℕ
  chromaticNumberMinimal : ∀ (C : Coloring H), Fintype.card (Set.range (C.color)) ≥ chromaticNumber
  
def coloringWitnessClosed (O : ColoringAdmittedObject) : Prop :=
  O.chromaticNumberMinimal (O.χ)

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse