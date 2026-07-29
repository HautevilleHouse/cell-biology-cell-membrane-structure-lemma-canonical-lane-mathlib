import HautevilleHouse.CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerCompositionPackage where
  phospholipidBilayerPresent : Prop
  hydrophobicCore : Prop
  hydrophilicHeads : Prop
  cholesterolModulation : Prop
  asymmetryMaintained : Prop

structure LipidBilayerCompositionEvidence (C : LipidBilayerCompositionPackage) where
  phospholipidBilayerPresentClosed : C.phospholipidBilayerPresent
  hydrophobicCoreClosed : C.hydrophobicCore
  hydrophilicHeadsClosed : C.hydrophilicHeads
  cholesterolModulationClosed : C.cholesterolModulation
  asymmetryMaintainedClosed : C.asymmetryMaintained

def LipidBilayerCompositionClosed (C : LipidBilayerCompositionPackage) : Prop :=
  C.phospholipidBilayerPresent ∧ C.hydrophobicCore ∧ C.hydrophilicHeads ∧ C.cholesterolModulation ∧ C.asymmetryMaintained

theorem lipid_bilayer_composition_closed_from_evidence
    (C : LipidBilayerCompositionPackage) (E : LipidBilayerCompositionEvidence C) :
    LipidBilayerCompositionClosed C := by
  exact And.intro E.phospholipidBilayerPresentClosed
    (And.intro E.hydrophobicCoreClosed
      (And.intro E.hydrophilicHeadsClosed
        (And.intro E.cholesterolModulationClosed E.asymmetryMaintainedClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse