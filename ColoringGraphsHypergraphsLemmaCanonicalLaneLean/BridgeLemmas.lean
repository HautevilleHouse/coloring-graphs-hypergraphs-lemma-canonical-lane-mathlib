import canonicalLaneMathlib.AdmissibleClass
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.coloringExistence

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admissible

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse