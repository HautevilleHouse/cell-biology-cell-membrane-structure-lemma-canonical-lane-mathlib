import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerSealingPackage where
  lipidBilayerExists : Prop
  hydrophobicEffect : Prop
  selfSealingProperty : Prop
  membraneImpermeability : Prop

structure LipidBilayerSealingEvidence (L : LipidBilayerSealingPackage) where
  lipidBilayerExistsClosed : L.lipidBilayerExists
  hydrophobicEffectClosed : L.hydrophobicEffect
  selfSealingPropertyClosed : L.selfSealingProperty
  membraneImpermeabilityClosed : L.membraneImpermeability

def LipidBilayerSealingClosed (L : LipidBilayerSealingPackage) : Prop :=
  L.lipidBilayerExists ∧ L.hydrophobicEffect ∧ L.selfSealingProperty ∧ L.membraneImpermeability

theorem lipid_bilayer_sealing_closed_from_evidence
    (L : LipidBilayerSealingPackage) (E : LipidBilayerSealingEvidence L) :
    LipidBilayerSealingClosed L := by
  exact And.intro E.lipidBilayerExistsClosed
    (And.intro E.hydrophobicEffectClosed
      (And.intro E.selfSealingPropertyClosed E.membraneImpermeabilityClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse