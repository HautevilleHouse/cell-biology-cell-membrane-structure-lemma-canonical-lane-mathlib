import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerPackage where
  bilayerFormation : Prop
  hydrophobicEffect : Prop
  selfSealing : Prop
  fluidityAtPhysiologicalTemp : Prop
  selectivePermeability : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  bilayerFormationClosed : L.bilayerFormation
  hydrophobicEffectClosed : L.hydrophobicEffect
  selfSealingClosed : L.selfSealing
  fluidityAtPhysiologicalTempClosed : L.fluidityAtPhysiologicalTemp
  selectivePermeabilityClosed : L.selectivePermeability

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.bilayerFormation ∧ L.hydrophobicEffect ∧ L.selfSealing ∧
  L.fluidityAtPhysiologicalTemp ∧ L.selectivePermeability

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage)
    (E : LipidBilayerEvidence L) : LipidBilayerClosed L := by
  exact And.intro E.bilayerFormationClosed
    (And.intro E.hydrophobicEffectClosed
      (And.intro E.selfSealingClosed
        (And.intro E.fluidityAtPhysiologicalTempClosed
          E.selectivePermeabilityClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse