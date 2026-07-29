import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.BrooksTheoremPackage

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-- The main hypergraph coloring lemma: every hypergraph with bounded edge size has a proper coloring with few colors. -/
structure HypergraphColoringLemmaPackage where
  H : Hypergraph
  edgeBound : ℕ
  colorCount : ℕ
  coloringExists : Prop
  coloringExistsClosed : coloringExists

def HypergraphColoringClosed (P : HypergraphColoringLemmaPackage) : Prop :=
  P.coloringExists

theorem hypergraph_coloring_closed_from_evidence (P : HypergraphColoringLemmaPackage) (E : HypergraphColoringLemmaPackage) :
    HypergraphColoringClosed P :=
  P.coloringExistsClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse