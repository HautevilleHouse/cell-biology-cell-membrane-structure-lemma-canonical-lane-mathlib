import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.CellMembraneMathlibObjects

/-!
# Lipid Bilayer Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerPackage where
  bilayerFormation : Prop
  hydrophobicEffect : Prop
  membraneThickness : Prop
  permeability : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  bilayerFormationClosed : L.bilayerFormation
  hydrophobicEffectClosed : L.hydrophobicEffect
  membraneThicknessClosed : L.membraneThickness
  permeabilityClosed : L.permeability

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.bilayerFormation ∧ L.hydrophobicEffect ∧ L.membraneThickness ∧ L.permeability

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) :
    LipidBilayerClosed L := by
  exact And.intro E.bilayerFormationClosed
    (And.intro E.hydrophobicEffectClosed
      (And.intro E.membraneThicknessClosed E.permeabilityClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse