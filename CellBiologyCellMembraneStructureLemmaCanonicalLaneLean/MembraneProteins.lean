import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneProteinsPackage where
  integralProteins : Prop
  peripheralProteins : Prop
  transmembraneDomains : Prop
  receptorFunction : Prop
  transportFunction : Prop

structure MembraneProteinsEvidence (P : MembraneProteinsPackage) where
  integralProteinsClosed : P.integralProteins
  peripheralProteinsClosed : P.peripheralProteins
  transmembraneDomainsClosed : P.transmembraneDomains
  receptorFunctionClosed : P.receptorFunction
  transportFunctionClosed : P.transportFunction

def MembraneProteinsClosed (P : MembraneProteinsPackage) : Prop :=
  P.integralProteins ∧ P.peripheralProteins ∧ P.transmembraneDomains ∧ P.receptorFunction ∧ P.transportFunction

theorem membrane_proteins_closed_from_evidence (P : MembraneProteinsPackage) (E : MembraneProteinsEvidence P) :
    MembraneProteinsClosed P := by
  exact And.intro E.integralProteinsClosed
    (And.intro E.peripheralProteinsClosed
      (And.intro E.transmembraneDomainsClosed
        (And.intro E.receptorFunctionClosed E.transportFunctionClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse