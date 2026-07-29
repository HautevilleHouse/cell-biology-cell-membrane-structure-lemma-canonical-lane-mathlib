import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneSkeletonPackage where
  spectrinNetwork : Prop
  actinFilaments : Prop
  anchorageToIntegralProteins : Prop
  mechanicalSupport : Prop

structure MembraneSkeletonEvidence (M : MembraneSkeletonPackage) where
  spectrinNetworkClosed : M.spectrinNetwork
  actinFilamentsClosed : M.actinFilaments
  anchorageToIntegralProteinsClosed : M.anchorageToIntegralProteins
  mechanicalSupportClosed : M.mechanicalSupport

def MembraneSkeletonClosed (M : MembraneSkeletonPackage) : Prop :=
  M.spectrinNetwork ∧ M.actinFilaments ∧ M.anchorageToIntegralProteins ∧ M.mechanicalSupport

theorem membrane_skeleton_closed_from_evidence (M : MembraneSkeletonPackage) (E : MembraneSkeletonEvidence M) :
    MembraneSkeletonClosed M := by
  exact And.intro E.spectrinNetworkClosed
    (And.intro E.actinFilamentsClosed
      (And.intro E.anchorageToIntegralProteinsClosed E.mechanicalSupportClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse