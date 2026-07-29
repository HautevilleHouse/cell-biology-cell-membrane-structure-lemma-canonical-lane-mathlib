import HautevilleHouse.CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerPackage where
  hydrophilicHeads : Prop
  hydrophobicTails : Prop
  bilayerFormation : Prop
  fluidMosaic : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  hydrophilicHeadsClosed : L.hydrophilicHeads
  hydrophobicTailsClosed : L.hydrophobicTails
  bilayerFormationClosed : L.bilayerFormation
  fluidMosaicClosed : L.fluidMosaic

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.hydrophilicHeads ∧ L.hydrophobicTails ∧ L.bilayerFormation ∧ L.fluidMosaic

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) :
    LipidBilayerClosed L := by
  exact And.intro E.hydrophilicHeadsClosed
    (And.intro E.hydrophobicTailsClosed
      (And.intro E.bilayerFormationClosed E.fluidMosaicClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse