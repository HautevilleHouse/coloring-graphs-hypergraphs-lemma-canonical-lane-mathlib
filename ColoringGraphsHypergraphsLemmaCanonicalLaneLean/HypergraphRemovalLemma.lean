import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure HypergraphRemovalLemmaPackage where
  hypergraph : Type u
  removalLemma : Prop
  applicationToColoring : Prop

def HypergraphRemovalLemmaClosed (R : HypergraphRemovalLemmaPackage) : Prop :=
  R.removalLemma ∧ R.applicationToColoring

structure HypergraphRemovalLemmaEvidence (R : HypergraphRemovalLemmaPackage) where
  removalLemmaClosed : R.removalLemma
  applicationToColoringClosed : R.applicationToColoring

theorem hypergraph_removal_lemma_closed_from_evidence
    (R : HypergraphRemovalLemmaPackage) (E : HypergraphRemovalLemmaEvidence R) :
    HypergraphRemovalLemmaClosed R := by
  exact And.intro E.removalLemmaClosed E.applicationToColoringClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse