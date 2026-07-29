import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure ListColoringPackage where
  graph : Type u
  listAssignment : vertexSet -> List colorSet
  listChromaticNumber : Nat
  kChoosable : Prop
  listColoringExists : Prop

structure ListColoringEvidence (P : ListColoringPackage) where
  kChoosableClosed : P.kChoosable
  listColoringExistsClosed : P.listColoringExists

def ListColoringClosed (P : ListColoringPackage) : Prop :=
  P.kChoosable ∧ P.listColoringExists

theorem list_coloring_closed_from_evidence (P : ListColoringPackage)
    (E : ListColoringEvidence P) : ListColoringClosed P := by
  exact And.intro E.kChoosableClosed E.listColoringExistsClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse