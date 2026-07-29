import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure FluidMosaicModelPackage where
  lipidBilayerSealing : LipidBilayerSealingPackage
  lipidBilayerSealingEvidence : LipidBilayerSealingEvidence lipidBilayerSealing
  lipidMobility : Prop
  proteinMobility : Prop
  lateralDiffusion : Prop
  transversalDiffusion : Prop
  membraneAsymmetry : Prop

structure FluidMosaicModelEvidence (F : FluidMosaicModelPackage) where
  lipidMobilityClosed : F.lipidMobility
  proteinMobilityClosed : F.proteinMobility
  lateralDiffusionClosed : F.lateralDiffusion
  transversalDiffusionClosed : F.transversalDiffusion
  membraneAsymmetryClosed : F.membraneAsymmetry

def FluidMosaicModelClosed (F : FluidMosaicModelPackage) : Prop :=
  F.lipidMobility ∧ F.proteinMobility ∧ F.lateralDiffusion ∧ F.transversalDiffusion ∧ F.membraneAsymmetry

theorem fluid_mosaic_model_closed_from_evidence
    (F : FluidMosaicModelPackage) (E : FluidMosaicModelEvidence F) :
    FluidMosaicModelClosed F := by
  exact And.intro E.lipidMobilityClosed
    (And.intro E.proteinMobilityClosed
      (And.intro E.lateralDiffusionClosed
        (And.intro E.transversalDiffusionClosed E.membraneAsymmetryClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse