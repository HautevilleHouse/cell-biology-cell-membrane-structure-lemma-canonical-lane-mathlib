import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembraneTransportCorpus where
  passiveTransport : Prop
  activeTransport : Prop
  diffusionLaws : Prop
  osmosisRegulation : Prop
  ionPumpMechanism : Prop
  endocytosisExocytosis : Prop

structure MembraneTransportEvidence (T : MembraneTransportCorpus) where
  passiveTransportClosed : T.passiveTransport
  activeTransportClosed : T.activeTransport
  diffusionLawsClosed : T.diffusionLaws
  osmosisRegulationClosed : T.osmosisRegulation
  ionPumpMechanismClosed : T.ionPumpMechanism
  endocytosisExocytosisClosed : T.endocytosisExocytosis

def MembraneTransportClosed (T : MembraneTransportCorpus) : Prop :=
  T.passiveTransport ∧ T.activeTransport ∧ T.diffusionLaws ∧ T.osmosisRegulation ∧ T.ionPumpMechanism ∧ T.endocytosisExocytosis

theorem membrane_transport_closed_from_evidence
    (T : MembraneTransportCorpus) (E : MembraneTransportEvidence T) :
    MembraneTransportClosed T := by
  exact And.intro E.passiveTransportClosed
    (And.intro E.activeTransportClosed
      (And.intro E.diffusionLawsClosed
        (And.intro E.osmosisRegulationClosed
          (And.intro E.ionPumpMechanismClosed E.endocytosisExocytosisClosed))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse