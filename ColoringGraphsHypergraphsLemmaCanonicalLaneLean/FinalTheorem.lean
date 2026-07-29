import canonicalLaneMathlib.AdmissibleClass
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.GraphColoring
import ColoringGraphsHypergraphsLemmaCanonicalLaneLean.ChromaticNumber

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

def ConstrainedColoringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coloring_endgame (A : AdmissibleClass) :
    ConstrainedColoringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse