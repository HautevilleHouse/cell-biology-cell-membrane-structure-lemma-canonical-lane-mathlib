import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellMembraneSpace where
  carrier : Type u
  lipidBilayer : Prop
  fluidMosaic : Prop

structure CellMembraneAdmittedObject where
  space : CellMembraneSpace
  membraneClosed : Prop
  proteinDistribution : Prop
  conclusion : space.fluidMosaic

structure CellMembraneEndgameState where
  object : CellMembraneAdmittedObject

def CellMembraneWitnessClosed (O : CellMembraneAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse