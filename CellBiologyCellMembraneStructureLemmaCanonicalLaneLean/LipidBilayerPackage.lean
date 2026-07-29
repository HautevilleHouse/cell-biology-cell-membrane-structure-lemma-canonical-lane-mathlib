import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.MembraneStructurePackage

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure LipidBilayerPackage where
  phospholipids : Prop
  hydrophilicHeads : Prop
  hydrophobicTails : Prop
  bilayerFormation : Prop
  fluidity : Prop

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.phospholipids ∧ L.hydrophilicHeads ∧ L.hydrophobicTails ∧ L.bilayerFormation ∧ L.fluidity

theorem lipid_bilayer_closed_self (L : LipidBilayerPackage) (h1 : L.phospholipids) (h2 : L.hydrophilicHeads) (h3 : L.hydrophobicTails) (h4 : L.bilayerFormation) (h5 : L.fluidity) : LipidBilayerClosed L := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse