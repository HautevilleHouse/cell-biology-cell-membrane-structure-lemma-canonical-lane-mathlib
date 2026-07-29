import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure PhospholipidBilayerPackage where
  hydrophilicHeads : Prop
  hydrophobicTails : Prop
  fluidMosaicModel : Prop
  selfSealingProperty : Prop
  permeabilityBarrier : Prop

structure PhospholipidBilayerEvidence (P : PhospholipidBilayerPackage) where
  hydrophilicHeadsClosed : P.hydrophilicHeads
  hydrophobicTailsClosed : P.hydrophobicTails
  fluidMosaicModelClosed : P.fluidMosaicModel
  selfSealingPropertyClosed : P.selfSealingProperty
  permeabilityBarrierClosed : P.permeabilityBarrier

def PhospholipidBilayerClosed (P : PhospholipidBilayerPackage) : Prop :=
  P.hydrophilicHeads ∧ P.hydrophobicTails ∧ P.fluidMosaicModel ∧ P.selfSealingProperty ∧ P.permeabilityBarrier

theorem phospholipid_bilayer_closed_from_evidence (P : PhospholipidBilayerPackage) (E : PhospholipidBilayerEvidence P) :
    PhospholipidBilayerClosed P := by
  exact And.intro E.hydrophilicHeadsClosed
    (And.intro E.hydrophobicTailsClosed
      (And.intro E.fluidMosaicModelClosed
        (And.intro E.selfSealingPropertyClosed E.permeabilityBarrierClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse