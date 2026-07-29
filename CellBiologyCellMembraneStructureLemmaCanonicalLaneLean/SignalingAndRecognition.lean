import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure SignalingAndRecognitionPackage where
  receptorLigandBinding : Prop
  signalTransduction : Prop
  cellAdhesion : Prop
  cellCellRecognition : Prop
  immuneRecognition : Prop

structure SignalingAndRecognitionEvidence (S : SignalingAndRecognitionPackage) where
  receptorLigandBindingClosed : S.receptorLigandBinding
  signalTransductionClosed : S.signalTransduction
  cellAdhesionClosed : S.cellAdhesion
  cellCellRecognitionClosed : S.cellCellRecognition
  immuneRecognitionClosed : S.immuneRecognition

def SignalingAndRecognitionClosed (S : SignalingAndRecognitionPackage) : Prop :=
  S.receptorLigandBinding ∧ S.signalTransduction ∧ S.cellAdhesion ∧ S.cellCellRecognition ∧ S.immuneRecognition

theorem signaling_and_recognition_closed_from_evidence (S : SignalingAndRecognitionPackage) (E : SignalingAndRecognitionEvidence S) :
    SignalingAndRecognitionClosed S := by
  exact And.intro E.receptorLigandBindingClosed
    (And.intro E.signalTransductionClosed
      (And.intro E.cellAdhesionClosed
        (And.intro E.cellCellRecognitionClosed E.immuneRecognitionClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse