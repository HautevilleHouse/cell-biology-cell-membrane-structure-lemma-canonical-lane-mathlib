import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureLemmaCanonicalLaneLean

structure MembranePotentialPackage where
  ionConcentrationGradient : Prop
  nernstPotential : Prop
  goldmanHodgkinKatzEquation : Prop
  restingPotential : Prop
  actionPotential : Prop

structure MembranePotentialEvidence (M : MembranePotentialPackage) where
  ionConcentrationGradientClosed : M.ionConcentrationGradient
  nernstPotentialClosed : M.nernstPotential
  goldmanHodgkinKatzEquationClosed : M.goldmanHodgkinKatzEquation
  restingPotentialClosed : M.restingPotential
  actionPotentialClosed : M.actionPotential

def MembranePotentialClosed (M : MembranePotentialPackage) : Prop :=
  M.ionConcentrationGradient ∧ M.nernstPotential ∧ M.goldmanHodgkinKatzEquation ∧ M.restingPotential ∧ M.actionPotential

theorem membrane_potential_closed_from_evidence (M : MembranePotentialPackage) (E : MembranePotentialEvidence M) :
    MembranePotentialClosed M := by
  exact And.intro E.ionConcentrationGradientClosed
    (And.intro E.nernstPotentialClosed
      (And.intro E.goldmanHodgkinKatzEquationClosed
        (And.intro E.restingPotentialClosed E.actionPotentialClosed)))

end CellBiologyCellMembraneStructureLemmaCanonicalLaneLean
end HautevilleHouse