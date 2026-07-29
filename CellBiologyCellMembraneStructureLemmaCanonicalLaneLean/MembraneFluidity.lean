import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneFluidityPackage where
  lipidComposition : Type u
  phaseTransitionTemperature : Prop
  fluidityRegulation : Prop
  membraneFusion : Prop

structure MembraneFluidityEvidence (F : MembraneFluidityPackage) where
  phaseTransitionTemperatureClosed : F.phaseTransitionTemperature
  fluidityRegulationClosed : F.fluidityRegulation
  membraneFusionClosed : F.membraneFusion

def MembraneFluidityClosed (F : MembraneFluidityPackage) : Prop :=
  F.phaseTransitionTemperature ∧ F.fluidityRegulation ∧ F.membraneFusion

theorem membrane_fluidity_closed_from_evidence (F : MembraneFluidityPackage)
    (E : MembraneFluidityEvidence F) : MembraneFluidityClosed F := by
  exact And.intro E.phaseTransitionTemperatureClosed (And.intro E.fluidityRegulationClosed E.membraneFusionClosed)

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse