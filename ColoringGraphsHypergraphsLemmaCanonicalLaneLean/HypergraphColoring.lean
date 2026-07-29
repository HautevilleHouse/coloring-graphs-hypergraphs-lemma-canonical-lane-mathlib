import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure Hypergraph where
  Vertex : Type u
  HyperedgeSet : Set (Set Vertex)
  noSingletonEdges : ∀ e ∈ HyperedgeSet, Set.Count e ≠ 1

def properHypergraphColoring {H : Hypergraph} (colors : Type v) (assignment : H.Vertex → colors) : Prop :=
  ∀ e ∈ H.HyperedgeSet, (∃ (u v : H.Vertex), u ∈ e ∧ v ∈ e ∧ assignment u ≠ assignment v)

def hypergraphChromaticNumber (H : Hypergraph) : ℕ :=
  Nat.find { n | ∃ (colors : Finset ℕ) (h : colors.card = n), ∃ (assignment : H.Vertex → ℕ),
    (∀ v, assignment v ∈ colors) ∧ properHypergraphColoring ℕ assignment }

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse