import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure Graph where
  Vertex : Type u
  EdgeSet : Set (Vertex × Vertex)
  irreflexive : ∀ v : Vertex, (v, v) ∉ EdgeSet
  symmetric : ∀ (u v : Vertex), (u, v) ∈ EdgeSet ↔ (v, u) ∈ EdgeSet

def properColoring (G : Graph) (colors : Type v) (assignment : G.Vertex → colors) : Prop :=
  ∀ (u v : G.Vertex), (u, v) ∈ G.EdgeSet → assignment u ≠ assignment v

def chromaticNumber (G : Graph) : ℕ :=
  Nat.find { n | ∃ (colors : Finset ℕ) (h : colors.card = n), ∃ (assignment : G.Vertex → ℕ),
    (∀ v, assignment v ∈ colors) ∧ properColoring G ℕ assignment }

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse