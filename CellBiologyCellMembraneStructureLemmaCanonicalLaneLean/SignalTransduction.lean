import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.MembraneProtein

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure SignalTransductionPackage where
  receptorBinding : Prop
  conformationalChange : Prop
  secondMessenger : Prop
  intracellularResponse : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  receptorBindingClosed : S.receptorBinding
  conformationalChangeClosed : S.conformationalChange
  secondMessengerClosed : S.secondMessenger
  intracellularResponseClosed : S.intracellularResponse

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.receptorBinding ∧ S.conformationalChange ∧ S.secondMessenger ∧ S.intracellularResponse

theorem signal_transduction_closed_from_evidence (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.secondMessengerClosed E.intracellularResponseClosed))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse