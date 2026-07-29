import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.CellMembraneLipidBilayer

/-!
# Cell Membrane Evidence Terms
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerEvidenceTerms (L : LipidBilayerPackage) where
  bilayerFormation : L.bilayerFormation
  hydrophobicEffect : L.hydrophobicEffect
  membraneThickness : L.membraneThickness
  permeability : L.permeability
  lipidBilayerClosed : LipidBilayerClosed L

def LipidBilayerPackage.evidenceTerms (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) :
    LipidBilayerEvidenceTerms L := {
  bilayerFormation := E.bilayerFormationClosed
  hydrophobicEffect := E.hydrophobicEffectClosed
  membraneThickness := E.membraneThicknessClosed
  permeability := E.permeabilityClosed
  lipidBilayerClosed := lipid_bilayer_closed_from_evidence L E
}

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse