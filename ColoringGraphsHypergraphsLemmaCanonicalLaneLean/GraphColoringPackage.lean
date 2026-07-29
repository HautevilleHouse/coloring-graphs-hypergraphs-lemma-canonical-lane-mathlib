import canonicalLaneMathlib.AdmissibleClass
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure GraphColoringPackage where
  vertexSet : Type
  edgeSet : Set (vertexSet × vertexSet)
  chromaticNumber : ℕ
  properColoringExists : Prop
  lowerBound : Prop
  upperBound : Prop

structure GraphColoringEvidence (G : GraphColoringPackage) where
  properColoringExistsClosed : G.properColoringExists
  lowerBoundClosed : G.lowerBound
  upperBoundClosed : G.upperBound

def GraphColoringClosed (G : GraphColoringPackage) : Prop :=
  G.properColoringExists ∧ G.lowerBound ∧ G.upperBound

theorem graph_coloring_closed_from_evidence (G : GraphColoringPackage)
    (E : GraphColoringEvidence G) : GraphColoringClosed G := by
  exact And.intro E.properColoringExistsClosed
    (And.intro E.lowerBoundClosed E.upperBoundClosed)

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse