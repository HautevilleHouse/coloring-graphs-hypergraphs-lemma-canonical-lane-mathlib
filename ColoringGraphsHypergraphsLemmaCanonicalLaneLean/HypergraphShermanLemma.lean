import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure HypergraphShermanPackage where
  hypergraph : Type u
  rank : Nat
  discrepancy : Prop
  coloringExists : Prop
  polychromaticColoring : Prop

structure HypergraphShermanEvidence (P : HypergraphShermanPackage) where
  discrepancyClosed : P.discrepancy
  coloringExistsClosed : P.coloringExists
  polychromaticColoringClosed : P.polychromaticColoring

def HypergraphShermanClosed (P : HypergraphShermanPackage) : Prop :=
  P.discrepancy ∧ P.coloringExists ∧ P.polychromaticColoring

theorem hypergraph_sherman_closed_from_evidence (P : HypergraphShermanPackage)
    (E : HypergraphShermanEvidence P) : HypergraphShermanClosed P := by
  exact And.intro E.discrepancyClosed (And.intro E.coloringExistsClosed E.polychromaticColoringClosed)

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse