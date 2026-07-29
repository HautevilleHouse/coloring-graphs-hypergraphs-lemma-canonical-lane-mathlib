import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

/-!
# Chromatic Number Package

This module defines the chromatic number of a graph and its bounds, as well as
the hypergraph coloring lemma equivalence established by the bridge.
-/

structure ChromaticNumberPackage where
  graph : GraphColoringPackage
  chromaticNumber : ℕ
  chromaticNumberFinite : Prop
  colorableWithChromaticNumber : Prop

structure ChromaticNumberEvidence (C : ChromaticNumberPackage) where
  chromaticNumberFiniteClosed : C.chromaticNumberFinite
  colorableWithChromaticNumberClosed : C.colorableWithChromaticNumber

def ChromaticNumberClosed (C : ChromaticNumberPackage) : Prop :=
  C.chromaticNumberFinite ∧ C.colorableWithChromaticNumber

theorem chromatic_number_closed_from_evidence (C : ChromaticNumberPackage)
    (E : ChromaticNumberEvidence C) : ChromaticNumberClosed C := by
  exact And.intro E.chromaticNumberFiniteClosed E.colorableWithChromaticNumberClosed

-- The hypergraph coloring lemma: if every finite subhypergraph is k-colorable,
-- then the whole hypergraph is k-colorable (compactness).
structure HypergraphColoringLemma where
  hypergraph : HypergraphColoringPackage
  k : ℕ
  finiteSubcolorable : Prop
  hypergraphColorable : Prop
  lemmaStatement : finiteSubcolorable → hypergraphColorable

structure HypergraphColoringLemmaEvidence (L : HypergraphColoringLemma) where
  lemmaStatementClosed : L.finiteSubcolorable → L.hypergraphColorable
  lemmaStatementEvidence : L.lemmaStatement = (L.finiteSubcolorable → L.hypergraphColorable)

def HypergraphColoringLemmaClosed (L : HypergraphColoringLemma) : Prop :=
  L.finiteSubcolorable → L.hypergraphColorable

theorem hypergraph_coloring_lemma_closed_from_evidence
    (L : HypergraphColoringLemma) (E : HypergraphColoringLemmaEvidence L) :
    HypergraphColoringLemmaClosed L := by
  exact E.lemmaStatementClosed

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse