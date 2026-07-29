import canonicalLaneMathlib.AdmissibleClass
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure HypergraphColoringPackage where
  vertexSet : Type
  hyperedgeSet : Set (Set vertexSet)
  hyperedgeSizeLowerBound : ℕ
  chromaticNumber : ℕ
  properColoringExists : Prop
  lowerBound : Prop
  upperBound : Prop

structure HypergraphColoringEvidence (H : HypergraphColoringPackage) where
  properColoringExistsClosed : H.properColoringExists
  lowerBoundClosed : H.lowerBound
  upperBoundClosed : H.upperBound

def HypergraphColoringClosed (H : HypergraphColoringPackage) : Prop :=
  H.properColoringExists ∧ H.lowerBound ∧ H.upperBound

theorem hypergraph_coloring_closed_from_evidence (H : HypergraphColoringPackage)
    (E : HypergraphColoringEvidence H) : HypergraphColoringClosed H := by
  exact And.intro E.properColoringExistsClosed
    (And.intro E.lowerBoundClosed E.upperBoundClosed)

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse