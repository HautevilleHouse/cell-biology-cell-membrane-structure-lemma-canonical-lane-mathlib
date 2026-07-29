import HautevilleHouse.CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneProteinOrganizationPackage where
  integralProteinsEmbedded : Prop
  peripheralProteinsAttached : Prop
  transmembraneDomains : Prop
  proteinMobility : Prop
  receptorPresentation : Prop

structure MembraneProteinOrganizationEvidence (P : MembraneProteinOrganizationPackage) where
  integralProteinsEmbeddedClosed : P.integralProteinsEmbedded
  peripheralProteinsAttachedClosed : P.peripheralProteinsAttached
  transmembraneDomainsClosed : P.transmembraneDomains
  proteinMobilityClosed : P.proteinMobility
  receptorPresentationClosed : P.receptorPresentation

def MembraneProteinOrganizationClosed (P : MembraneProteinOrganizationPackage) : Prop :=
  P.integralProteinsEmbedded ∧ P.peripheralProteinsAttached ∧ P.transmembraneDomains ∧ P.proteinMobility ∧ P.receptorPresentation

theorem membrane_protein_organization_closed_from_evidence
    (P : MembraneProteinOrganizationPackage) (E : MembraneProteinOrganizationEvidence P) :
    MembraneProteinOrganizationClosed P := by
  exact And.intro E.integralProteinsEmbeddedClosed
    (And.intro E.peripheralProteinsAttachedClosed
      (And.intro E.transmembraneDomainsClosed
        (And.intro E.proteinMobilityClosed E.receptorPresentationClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse