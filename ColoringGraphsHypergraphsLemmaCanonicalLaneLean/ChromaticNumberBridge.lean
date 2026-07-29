import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.ColoringGraphAdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-- The bridge closure condition for a coloring admissible object: the hypergraph admits a proper coloring with the given chromatic number. -/
def bridgeClosed (A : AdmissibleClass) : Prop :=
  coloringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse