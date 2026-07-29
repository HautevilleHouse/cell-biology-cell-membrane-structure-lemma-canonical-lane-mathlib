import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneProteinTransportPackage (L : LipidBilayerPackage) where
  integralProteins : Prop
  peripheralProteins : Prop
  transmembraneDomains : Prop
  activeTransport : Prop
  passiveTransport : Prop
  facilitatedDiffusion : Prop

structure MembraneProteinTransportEvidence {L : LipidBilayerPackage}
    (T : MembraneProteinTransportPackage L) where
  integralProteinsClosed : T.integralProteins
  peripheralProteinsClosed : T.peripheralProteins
  transmembraneDomainsClosed : T.transmembraneDomains
  activeTransportClosed : T.activeTransport
  passiveTransportClosed : T.passiveTransport
  facilitatedDiffusionClosed : T.facilitatedDiffusion

def MembraneProteinTransportClosed {L : LipidBilayerPackage}
    (T : MembraneProteinTransportPackage L) : Prop :=
  T.integralProteins ∧ T.peripheralProteins ∧ T.transmembraneDomains ∧
  T.activeTransport ∧ T.passiveTransport ∧ T.facilitatedDiffusion

theorem membrane_protein_transport_closed_from_evidence
    {L : LipidBilayerPackage} (T : MembraneProteinTransportPackage L)
    (E : MembraneProteinTransportEvidence T) : MembraneProteinTransportClosed T := by
  exact And.intro E.integralProteinsClosed
    (And.intro E.peripheralProteinsClosed
      (And.intro E.transmembraneDomainsClosed
        (And.intro E.activeTransportClosed
          (And.intro E.passiveTransportClosed E.facilitatedDiffusionClosed))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse