import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.HypergraphColoringLemma

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-- The Erdős–Ko–Rado theorem for intersecting families of subsets. Relevant to hypergraph coloring via independent sets. -/
structure ErdosKoRadoPackage where
  n : ℕ
  k : ℕ
  intersectingFamily : Set (Finset (Fin n))
  familySizeBound : ℕ
  maxSize : Prop
  conclusion : Finset.card intersectingFamily ≤ familySizeBound

def ErdosKoRadoClosed (E : ErdosKoRadoPackage) : Prop :=
  E.conclusion

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse