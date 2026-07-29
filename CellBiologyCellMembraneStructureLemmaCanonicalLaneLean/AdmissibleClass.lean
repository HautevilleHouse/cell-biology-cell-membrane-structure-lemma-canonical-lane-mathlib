import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure AdmissibleMembraneObject where
  membraneStructure : Type u
  lipidBilayer : Prop
  membraneProteins : Prop
  fluidMosaicModel : Prop
  conclusion : lipidBilayer ∧ membraneProteins ∧ fluidMosaicModel

structure AdmissibleClass where
  object : AdmissibleMembraneObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.lipidBilayer ∧ A.object.membraneProteins ∧ A.object.fluidMosaicModel) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse
