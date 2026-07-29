import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneProteinTopologyPackage where
  transmembraneDomain : Prop
  hydrophobicMatch : Prop
  orientationDeterminant : Prop
  glycosylationSites : Prop
  lipidModification : Prop
  membraneInsertionMechanism : Prop

structure MembraneProteinTopologyEvidence (T : MembraneProteinTopologyPackage) where
  transmembraneDomainClosed : T.transmembraneDomain
  hydrophobicMatchClosed : T.hydrophobicMatch
  orientationDeterminantClosed : T.orientationDeterminant
  glycosylationSitesClosed : T.glycosylationSites
  lipidModificationClosed : T.lipidModification
  membraneInsertionMechanismClosed : T.membraneInsertionMechanism

def MembraneProteinTopologyClosed (T : MembraneProteinTopologyPackage) : Prop :=
  T.transmembraneDomain ∧ T.hydrophobicMatch ∧ T.orientationDeterminant ∧ T.glycosylationSites ∧ T.lipidModification ∧ T.membraneInsertionMechanism

theorem membrane_protein_topology_closed_from_evidence
    (T : MembraneProteinTopologyPackage) (E : MembraneProteinTopologyEvidence T) :
    MembraneProteinTopologyClosed T := by
  exact And.intro E.transmembraneDomainClosed
    (And.intro E.hydrophobicMatchClosed
      (And.intro E.orientationDeterminantClosed
        (And.intro E.glycosylationSitesClosed
          (And.intro E.lipidModificationClosed
            T.membraneInsertionMechanism))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse