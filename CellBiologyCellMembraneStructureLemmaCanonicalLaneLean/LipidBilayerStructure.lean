import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerPackage where
  lipidMolecules : Type u
  phospholipidBilayer : Type v
  hydrocarbonTails : Prop
  hydrophilicHeads : Prop
  fluidMosaicModel : Prop
  selfSealingProperty : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  hydrocarbonTailsClosed : L.hydrocarbonTails
  hydrophilicHeadsClosed : L.hydrophilicHeads
  fluidMosaicModelClosed : L.fluidMosaicModel
  selfSealingPropertyClosed : L.selfSealingProperty

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.hydrocarbonTails ∧ L.hydrophilicHeads ∧ L.fluidMosaicModel ∧ L.selfSealingProperty

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) :
    LipidBilayerClosed L := by
  exact And.intro E.hydrocarbonTailsClosed
    (And.intro E.hydrophilicHeadsClosed
      (And.intro E.fluidMosaicModelClosed E.selfSealingPropertyClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse