import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure PermeabilityBarrierPackage where
  selectivePermeability : Prop
  transportProteins : Prop
  ionGradients : Prop
  barrierFunction : Prop

structure PermeabilityBarrierEvidence (P : PermeabilityBarrierPackage) where
  selectivePermeabilityClosed : P.selectivePermeability
  transportProteinsClosed : P.transportProteins
  ionGradientsClosed : P.ionGradients
  barrierFunctionClosed : P.barrierFunction

def PermeabilityBarrierClosed (P : PermeabilityBarrierPackage) : Prop :=
  P.selectivePermeability ∧ P.transportProteins ∧ P.ionGradients ∧ P.barrierFunction

theorem permeability_barrier_closed_from_evidence (P : PermeabilityBarrierPackage)
    (E : PermeabilityBarrierEvidence P) : PermeabilityBarrierClosed P := by
  exact And.intro E.selectivePermeabilityClosed
    (And.intro E.transportProteinsClosed
      (And.intro E.ionGradientsClosed E.barrierFunctionClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse
