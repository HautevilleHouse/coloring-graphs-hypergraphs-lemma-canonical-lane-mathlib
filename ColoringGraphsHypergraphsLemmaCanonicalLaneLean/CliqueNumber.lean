import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure Graph := (Vertex : Type u) (EdgeSet : Set (Vertex × Vertex))

def clique (G : Graph) (k : ℕ) : Prop :=
  ∃ (S : Finset G.Vertex), S.card = k ∧ ∀ (u v : G.Vertex), u ∈ S → v ∈ S → u ≠ v → (u, v) ∈ G.EdgeSet

def cliqueNumber (G : Graph) : ℕ :=
  Nat.find { k | ∃ (n : ℕ), clique G n ∧ ∀ m, clique G m → m ≤ n }

theorem cliqueNumberLowerBound (G : Graph) : clique G (cliqueNumber G) :=
  by
    have hNonempty : Nonempty { k | ∃ (n : ℕ), clique G n ∧ ∀ m, clique G m → m ≤ n } := by
      refine ⟨0, 0, ?_, λ m hm => Nat.zero_le _⟩
      refine ⟨∅, Finset.card_empty, λ u v hu hv hne => ?_⟩
      exfalso; exact hne (Finset.not_mem_empty.mp hu)
    have hNat := Nat.find_spec (h := hNonempty)
    rcases hNat with ⟨n, hclique, hmax⟩
    have hCliqueNum : cliqueNumber G = n := by
      apply Nat.find_eq_iff.mpr
      constructor
      · exact ⟨n, hclique, hmax⟩
      · intro m hm
        apply hmax m hm
    rw [hCliqueNum]
    exact hclique

theorem cliqueNumberUpperBound (G : Graph) : ∀ k, clique G k → k ≤ cliqueNumber G :=
  by
    intro k h
    have hNonempty : Nonempty { k | ∃ (n : ℕ), clique G n ∧ ∀ m, clique G m → m ≤ n } := by
      refine ⟨0, 0, ?_, λ m hm => Nat.zero_le _⟩
      refine ⟨∅, Finset.card_empty, λ u v hu hv hne => ?_⟩
      exfalso; exact hne (Finset.not_mem_empty.mp hu)
    have hNat := Nat.find_spec (h := hNonempty)
    rcases hNat with ⟨n, hclique, hmax⟩
    have hCliqueNum : cliqueNumber G = n := by
      apply Nat.find_eq_iff.mpr
      constructor
      · exact ⟨n, hclique, hmax⟩
      · intro m hm
        apply hmax m hm
    rw [hCliqueNum]
    apply hmax k h

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse