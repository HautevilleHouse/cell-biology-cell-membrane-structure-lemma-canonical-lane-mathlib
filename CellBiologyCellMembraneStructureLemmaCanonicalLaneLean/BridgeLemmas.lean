import CellBiologyCellMembraneStructureLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.lipidBilayer ∧ A.object.membraneProteins ∧ A.object.fluidMosaicModel

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse
