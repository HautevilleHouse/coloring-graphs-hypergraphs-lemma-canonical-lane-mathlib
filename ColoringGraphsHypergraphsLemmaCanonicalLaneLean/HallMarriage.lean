import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure BipartiteGraph (L R : Type u) where
  EdgeSet : Set (L × R)

def matching {L R : Type u} (G : BipartiteGraph L R) (M : Set (L × R)) : Prop :=
  M ⊆ G.EdgeSet ∧
  (∀ (l : L), Set.card (M ∩ ({l} × Set.univ : Set (L × R))) ≤ 1) ∧
  (∀ (r : R), Set.card (M ∩ (Set.univ × {r} : Set (L × R))) ≤ 1)

theorem hallMarriageCondition {L R : Type u} [Finite L] (G : BipartiteGraph L R) :
  (∀ (S : Finset L), Finset.card S ≤ Set.card {r : R | ∃ l ∈ S, (l, r) ∈ G.EdgeSet}) ↔
  (∃ (M : Set (L × R)), matching G M ∧ (∀ l : L, ∃ r : R, (l, r) ∈ M)) :=
  by
    constructor
    · intro h
      sorry
    · intro h
      sorry

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse