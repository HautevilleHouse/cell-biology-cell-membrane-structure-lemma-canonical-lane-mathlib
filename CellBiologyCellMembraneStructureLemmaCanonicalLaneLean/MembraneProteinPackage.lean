import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.MembraneStructurePackage

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneProteinPackage where
  integralProteins : Prop
  peripheralProteins : Prop
  transmembraneDomains : Prop
  receptorFunctions : Prop
  transportProteins : Prop
  channelProteins : Prop

def MembraneProteinClosed (M : MembraneProteinPackage) : Prop :=
  M.integralProteins ∧ M.peripheralProteins ∧ M.transmembraneDomains ∧ M.receptorFunctions ∧ M.transportProteins ∧ M.channelProteins

theorem membrane_protein_closed_self (M : MembraneProteinPackage) (h1 : M.integralProteins) (h2 : M.peripheralProteins) (h3 : M.transmembraneDomains) (h4 : M.receptorFunctions) (h5 : M.transportProteins) (h6 : M.channelProteins) : MembraneProteinClosed M := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 h6))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse