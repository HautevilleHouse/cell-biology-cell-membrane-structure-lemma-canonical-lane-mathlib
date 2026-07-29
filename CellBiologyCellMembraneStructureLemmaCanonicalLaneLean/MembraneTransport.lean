import HautevilleHouse.CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.MembraneProteins

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneTransportPackage (B : LipidBilayerPackage) (P : MembraneProteinPackage B) where
  passiveTransport : Prop
  activeTransport : Prop
  diffusion : Prop
  channelMediated : Prop

structure MembraneTransportEvidence {B : LipidBilayerPackage} {P : MembraneProteinPackage B}
    (T : MembraneTransportPackage B P) where
  passiveTransportClosed : T.passiveTransport
  activeTransportClosed : T.activeTransport
  diffusionClosed : T.diffusion
  channelMediatedClosed : T.channelMediated

def MembraneTransportClosed {B : LipidBilayerPackage} {P : MembraneProteinPackage B}
    (T : MembraneTransportPackage B P) : Prop :=
  T.passiveTransport ∧ T.activeTransport ∧ T.diffusion ∧ T.channelMediated

theorem membrane_transport_closed_from_evidence {B : LipidBilayerPackage} {P : MembraneProteinPackage B}
    (T : MembraneTransportPackage B P) (E : MembraneTransportEvidence T) :
    MembraneTransportClosed T := by
  exact And.intro E.passiveTransportClosed
    (And.intro E.activeTransportClosed
      (And.intro E.diffusionClosed E.channelMediatedClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse