import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure SzemerediRegularityPackage where
  epsilonPartition : Prop
  regularityLemma : Prop
  applicationToColoring : Prop

def SzemerediRegularityClosed (S : SzemerediRegularityPackage) : Prop :=
  S.epsilonPartition ∧ S.regularityLemma ∧ S.applicationToColoring

structure SzemerediRegularityEvidence (S : SzemerediRegularityPackage) where
  epsilonPartitionClosed : S.epsilonPartition
  regularityLemmaClosed : S.regularityLemma
  applicationToColoringClosed : S.applicationToColoring

theorem szemerédi_regularity_closed_from_evidence
    (S : SzemerediRegularityPackage) (E : SzemerediRegularityEvidence S) :
    SzemerediRegularityClosed S := by
  exact And.intro E.epsilonPartitionClosed
    (And.intro E.regularityLemmaClosed E.applicationToColoringClosed)

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse