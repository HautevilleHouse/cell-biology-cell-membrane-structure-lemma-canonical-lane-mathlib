import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneCytoskeletonInteractionPackage (L : LipidBilayerPackage) (T : MembraneProteinTransportPackage L) where
  cortexActinNetwork : Prop
  spectrinTetramers : Prop
  anchoringProteins : Prop
  membraneRafts : Prop
  cytoskeletalAttachmentProteins : Prop
  mechanicalStability : Prop

structure MembraneCytoskeletonInteractionEvidence {L : LipidBilayerPackage}
    {T : MembraneProteinTransportPackage L}
    (I : MembraneCytoskeletonInteractionPackage L T) where
  cortexActinNetworkClosed : I.cortexActinNetwork
  spectrinTetramersClosed : I.spectrinTetramers
  anchoringProteinsClosed : I.anchoringProteins
  membraneRaftsClosed : I.membraneRafts
  cytoskeletalAttachmentProteinsClosed : I.cytoskeletalAttachmentProteins
  mechanicalStabilityClosed : I.mechanicalStability

def MembraneCytoskeletonInteractionClosed {L : LipidBilayerPackage}
    {T : MembraneProteinTransportPackage L}
    (I : MembraneCytoskeletonInteractionPackage L T) : Prop :=
  I.cortexActinNetwork ∧ I.spectrinTetramers ∧ I.anchoringProteins ∧
  I.membraneRafts ∧ I.cytoskeletalAttachmentProteins ∧ I.mechanicalStability

theorem membrane_cytoskeleton_interaction_closed_from_evidence
    {L : LipidBilayerPackage} {T : MembraneProteinTransportPackage L}
    (I : MembraneCytoskeletonInteractionPackage L T)
    (E : MembraneCytoskeletonInteractionEvidence I) : MembraneCytoskeletonInteractionClosed I := by
  exact And.intro E.cortexActinNetworkClosed
    (And.intro E.spectrinTetramersClosed
      (And.intro E.anchoringProteinsClosed
        (And.intro E.membraneRaftsClosed
          (And.intro E.cytoskeletalAttachmentProteinsClosed E.mechanicalStabilityClosed))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse