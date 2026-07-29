import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure ErdosStonePackage where
  graphFamily : Type u
  extremalFunction : Nat → Nat → Nat
  erdosStoneBound : Prop

def ErdosStoneClosed (E : ErdosStonePackage) : Prop :=
  E.erdosStoneBound

structure ErdosStoneEvidence (E : ErdosStonePackage) where
  erdosStoneBoundClosed : E.erdosStoneBound

theorem erdos_stone_closed_from_evidence (E : ErdosStonePackage)
    (Ev : ErdosStoneEvidence E) : ErdosStoneClosed E := by
  exact Ev.erdosStoneBoundClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse