import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.CellMembraneEvidenceTerms

/-!
# Cell Membrane Structure Proof Certificates
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerCertificate (L : LipidBilayerPackage) where
  bilayerFormation : Prop
  hydrophobicEffect : Prop
  membraneThickness : Prop
  permeability : Prop
  bilayerFormationClosed : bilayerFormation
  hydrophobicEffectClosed : hydrophobicEffect
  membraneThicknessClosed : membraneThickness
  permeabilityClosed : permeability
  bilayerEvidence : LipidBilayerEvidence L

def LipidBilayerCertificateClosed {L : LipidBilayerPackage} (C : LipidBilayerCertificate L) : Prop :=
  C.bilayerFormation ∧ C.hydrophobicEffect ∧ C.membraneThickness ∧ C.permeability ∧ LipidBilayerClosed L

theorem lipid_bilayer_certificate_closed {L : LipidBilayerPackage} (C : LipidBilayerCertificate L) :
    LipidBilayerCertificateClosed C := by
  exact And.intro C.bilayerFormationClosed
    (And.intro C.hydrophobicEffectClosed
      (And.intro C.membraneThicknessClosed
        (And.intro C.permeabilityClosed (lipid_bilayer_closed_from_evidence L C.bilayerEvidence))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse