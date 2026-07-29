import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure CellMembraneAdmittedObject where
  membraneType : Type u
  structureValidated : Prop
  functionValidated : Prop
  conclusion : structureValidated ∧ functionValidated

structure AdmissibleClass where
  object : CellMembraneAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.structureValidated ∧ A.object.functionValidated) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse