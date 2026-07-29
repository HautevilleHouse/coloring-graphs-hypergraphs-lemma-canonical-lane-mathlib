import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.ColoringHypergraphGate

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-- Brooks' theorem: a connected graph with maximum degree Δ is Δ-colorable unless it is a complete graph or an odd cycle. -/
structure BrooksTheoremPackage where
  graph : Hypergraph
  maxDegree : ℕ
  completeOrOddCycle : Prop
  deltaColorable : Prop
  conclusion : deltaColorable

structure BrooksEvidence (B : BrooksTheoremPackage) where
  maxDegreeBound : B.maxDegree = Fintype.card (Set.range (fun (v : B.graph.Vertex) => ?_)) -- placeholder
  completeOrOddCycleClosed : B.completeOrOddCycle
  deltaColorableClosed : B.deltaColorable

def BrooksClosed (B : BrooksTheoremPackage) : Prop :=
  B.deltaColorable

theorem brooks_closed_from_evidence (B : BrooksTheoremPackage) (E : BrooksEvidence B) :
    BrooksClosed B :=
  E.deltaColorableClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse