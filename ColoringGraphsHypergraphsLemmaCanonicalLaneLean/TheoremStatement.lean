import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColoringGraphsHypergraphsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  hypergraphConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "ColoringGraphsHypergraphsLemmaCanonicalLaneLean"
def sourceDescription : String := "Coloring Graphs Hypergraphs Lemma"
def sourceTheoremBoundaryClaimBoundary : String := "carried classical remainder"
def baselineCertificateLane : String := "hypergraph_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundaryClaimBoundary,
    hypergraphConstrainedStatement := "hypergraph-constrained theorem certificate through bridge and gate",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalization"
  }

end ColoringGraphsHypergraphsLemmaCanonicalLaneLean
end HautevilleHouse