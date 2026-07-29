import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneProteinPackage where
  integralProtein : Prop
  peripheralProtein : Prop
  lipidAnchoredProtein : Prop
  transmembraneDomain : Prop

structure MembraneProteinEvidence (P : MembraneProteinPackage) where
  integralProteinClosed : P.integralProtein
  peripheralProteinClosed : P.peripheralProtein
  lipidAnchoredProteinClosed : P.lipidAnchoredProtein
  transmembraneDomainClosed : P.transmembraneDomain

def MembraneProteinClosed (P : MembraneProteinPackage) : Prop :=
  P.integralProtein ∧ P.peripheralProtein ∧ P.lipidAnchoredProtein ∧ P.transmembraneDomain

theorem membrane_protein_closed_from_evidence (P : MembraneProteinPackage) (E : MembraneProteinEvidence P) :
    MembraneProteinClosed P := by
  exact And.intro E.integralProteinClosed
    (And.intro E.peripheralProteinClosed
      (And.intro E.lipidAnchoredProteinClosed E.transmembraneDomainClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse