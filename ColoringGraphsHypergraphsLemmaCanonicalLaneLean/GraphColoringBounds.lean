import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure GraphColoringBoundPackage where
  graph : Type u
  maxDegree : Nat
  cliqueNumber : Nat
  chromaticNumberUpperBound : Prop
  deltaPlusOneBound : Prop

structure GraphColoringBoundEvidence (P : GraphColoringBoundPackage) where
  chromaticNumberUpperBoundClosed : P.chromaticNumberUpperBound
  deltaPlusOneBoundClosed : P.deltaPlusOneBound

def GraphColoringBoundClosed (P : GraphColoringBoundPackage) : Prop :=
  P.chromaticNumberUpperBound ∧ P.deltaPlusOneBound

theorem graph_coloring_bound_closed_from_evidence (P : GraphColoringBoundPackage)
    (E : GraphColoringBoundEvidence P) : GraphColoringBoundClosed P := by
  exact And.intro E.chromaticNumberUpperBoundClosed E.deltaPlusOneBoundClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse