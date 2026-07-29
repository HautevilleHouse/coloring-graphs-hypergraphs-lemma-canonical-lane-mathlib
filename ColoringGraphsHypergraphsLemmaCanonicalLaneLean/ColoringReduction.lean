import canonicalLaneMathlib.AdmissibleClass
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.GraphColoringPackage
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.HypergraphColoringPackage

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure ColoringReductionPackage where
  source : GraphColoringPackage
  target : HypergraphColoringPackage
  reductionMap : source.vertexSet → target.vertexSet
  reductionPreservesColoring : Prop
  reductionPreservesParameter : Prop

structure ColoringReductionEvidence (R : ColoringReductionPackage) where
  reductionPreservesColoringClosed : R.reductionPreservesColoring
  reductionPreservesParameterClosed : R.reductionPreservesParameter

def ColoringReductionClosed (R : ColoringReductionPackage) : Prop :=
  R.reductionPreservesColoring ∧ R.reductionPreservesParameter

theorem coloring_reduction_closed_from_evidence (R : ColoringReductionPackage)
    (E : ColoringReductionEvidence R) : ColoringReductionClosed R := by
  exact And.intro E.reductionPreservesColoringClosed
    E.reductionPreservesParameterClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse