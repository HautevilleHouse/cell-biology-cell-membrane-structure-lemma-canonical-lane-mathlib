import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.MembraneStructurePackage

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure TransportMechanismPackage where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  endocytosis : Prop
  exocytosis : Prop
  selectivePermeability : Prop

def TransportMechanismClosed (T : TransportMechanismPackage) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧ T.activeTransport ∧ T.endocytosis ∧ T.exocytosis ∧ T.selectivePermeability

theorem transport_mechanism_closed_self (T : TransportMechanismPackage) (h1 : T.passiveDiffusion) (h2 : T.facilitatedDiffusion) (h3 : T.activeTransport) (h4 : T.endocytosis) (h5 : T.exocytosis) (h6 : T.selectivePermeability) : TransportMechanismClosed T := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 h6))))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse