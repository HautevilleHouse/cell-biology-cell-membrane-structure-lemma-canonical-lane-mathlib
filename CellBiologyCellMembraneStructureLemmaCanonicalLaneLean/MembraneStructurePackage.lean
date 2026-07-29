import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure CellMembraneAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  fluidMosaicModel : Prop
  lipidBilayer : Prop
  proteinsEmbedded : Prop
  semipermeable : Prop
  conclusion : fluidMosaicModel ∧ lipidBilayer ∧ proteinsEmbedded ∧ semipermeable

def CellMembraneWitnessClosed (O : CellMembraneAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse