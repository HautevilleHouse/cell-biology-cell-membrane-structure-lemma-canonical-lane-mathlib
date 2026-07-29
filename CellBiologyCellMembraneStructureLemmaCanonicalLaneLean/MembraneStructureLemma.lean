import HautevilleHouse.CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.MembraneTransport

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneStructureLemmaPackage (B : LipidBilayerPackage) (P : MembraneProteinPackage B)
    (T : MembraneTransportPackage B P) where
  selectivePermeability : Prop
  compartmentalization : Prop
  signalingPlatform : Prop
  structuralSupport : Prop

structure MembraneStructureLemmaEvidence {B : LipidBilayerPackage} {P : MembraneProteinPackage B}
    {T : MembraneTransportPackage B P} (M : MembraneStructureLemmaPackage B P T) where
  selectivePermeabilityClosed : M.selectivePermeability
  compartmentalizationClosed : M.compartmentalization
  signalingPlatformClosed : M.signalingPlatform
  structuralSupportClosed : M.structuralSupport

def MembraneStructureLemmaClosed {B : LipidBilayerPackage} {P : MembraneProteinPackage B}
    {T : MembraneTransportPackage B P} (M : MembraneStructureLemmaPackage B P T) : Prop :=
  M.selectivePermeability ∧ M.compartmentalization ∧ M.signalingPlatform ∧ M.structuralSupport

theorem membrane_structure_lemma_closed_from_evidence {B : LipidBilayerPackage} {P : MembraneProteinPackage B}
    {T : MembraneTransportPackage B P} (M : MembraneStructureLemmaPackage B P T)
    (E : MembraneStructureLemmaEvidence M) : MembraneStructureLemmaClosed M := by
  exact And.intro E.selectivePermeabilityClosed
    (And.intro E.compartmentalizationClosed
      (And.intro E.signalingPlatformClosed E.structuralSupportClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse