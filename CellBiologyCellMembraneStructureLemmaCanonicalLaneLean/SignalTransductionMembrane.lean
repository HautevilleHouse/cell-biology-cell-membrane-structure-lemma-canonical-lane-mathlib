import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure SignalTransductionMembranePackage where
  receptorType : Type u
  signalBinding : Prop
  intracellularCascade : Prop
  signalAmplification : Prop

structure SignalTransductionMembraneEvidence (S : SignalTransductionMembranePackage) where
  signalBindingClosed : S.signalBinding
  intracellularCascadeClosed : S.intracellularCascade
  signalAmplificationClosed : S.signalAmplification

def SignalTransductionMembraneClosed (S : SignalTransductionMembranePackage) : Prop :=
  S.signalBinding ∧ S.intracellularCascade ∧ S.signalAmplification

theorem signal_transduction_membrane_closed_from_evidence (S : SignalTransductionMembranePackage)
    (E : SignalTransductionMembraneEvidence S) : SignalTransductionMembraneClosed S := by
  exact And.intro E.signalBindingClosed (And.intro E.intracellularCascadeClosed E.signalAmplificationClosed)

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse