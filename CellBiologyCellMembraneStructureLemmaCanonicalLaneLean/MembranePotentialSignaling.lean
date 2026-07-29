import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembranePotentialSignalingPackage (L : LipidBilayerPackage) (T : MembraneProteinTransportPackage L) where
  restingPotential : Prop
  ionConcentrationGradient : Prop
  actionPotential : Prop
  voltageGatedChannels : Prop
  receptorMediatedSignaling : Prop

structure MembranePotentialSignalingEvidence {L : LipidBilayerPackage}
    {T : MembraneProteinTransportPackage L}
    (S : MembranePotentialSignalingPackage L T) where
  restingPotentialClosed : S.restingPotential
  ionConcentrationGradientClosed : S.ionConcentrationGradient
  actionPotentialClosed : S.actionPotential
  voltageGatedChannelsClosed : S.voltageGatedChannels
  receptorMediatedSignalingClosed : S.receptorMediatedSignaling

def MembranePotentialSignalingClosed {L : LipidBilayerPackage}
    {T : MembraneProteinTransportPackage L}
    (S : MembranePotentialSignalingPackage L T) : Prop :=
  S.restingPotential ∧ S.ionConcentrationGradient ∧
  S.actionPotential ∧ S.voltageGatedChannels ∧ S.receptorMediatedSignaling

theorem membrane_potential_signaling_closed_from_evidence
    {L : LipidBilayerPackage} {T : MembraneProteinTransportPackage L}
    (S : MembranePotentialSignalingPackage L T)
    (E : MembranePotentialSignalingEvidence S) : MembranePotentialSignalingClosed S := by
  exact And.intro E.restingPotentialClosed
    (And.intro E.ionConcentrationGradientClosed
      (And.intro E.actionPotentialClosed
        (And.intro E.voltageGatedChannelsClosed E.receptorMediatedSignalingClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse